import plotly.graph_objects as go
from PIL import Image
import gurobipy as gp
import requests
import urllib.request
from io import BytesIO #try 1

def show_map(buildings, building_names, building_coordinates, demand, truck_coordinates, placed_trucks = []):
    """displays the Burrito Optimization map with labels for open truck locations, buildings with demand, and placed trucks [optional].  This is intended to be used in the Gurobi Days Intro to Modeling course"""
    
    y_max = 550
    
    truck_spot_x = [value[0] for key, value in truck_coordinates.items()]
    truck_spot_y = [y_max - value[1] for key, value in truck_coordinates.items()]
    trucks = [key for key, value in truck_coordinates.items()]
    
    building_x = [value[0] for key, value in building_coordinates.items()]
    building_y = [y_max - value[1] for key, value in building_coordinates.items()]
    demand = [value for key, value in demand.items()]
    building_names = [value for key, value in building_names.items()]
    
    if placed_trucks:
        placed_truck_spot_x = [value[0] for key, value in truck_coordinates.items() if key in placed_trucks]
        placed_truck_spot_y = [y_max - value[1] for key, value in truck_coordinates.items() if key in placed_trucks]
        placed_trucks = [key for key, value in truck_coordinates.items() if key in placed_trucks]
    
    # Create figure
    url = 'https://raw.githubusercontent.com/Gurobi/modeling-examples/master/burrito_optimization_game/util/minimap.png'   
    response = requests.get(url)
    minimap = Image.open(BytesIO(response.content))
    fig = go.Figure()

    # Add trace for truck spots
    fig.add_trace(
        go.Scatter(x=truck_spot_x, y=truck_spot_y, 
                   hovertemplate=trucks, 
                   name="Open truck spots",
                   mode='markers',
                   marker_color='rgba(135, 206, 250, 0.0)',
                   marker_line_color='darkblue',
                   marker_line_width=2, 
                   marker_size=10
                   )
    )

    # Add trace for placed trucks
    if placed_trucks:
        fig.add_trace(
            go.Scatter(x=placed_truck_spot_x, y=placed_truck_spot_y, 
                       hovertemplate=placed_trucks, 
                       name="Truck added to the map",
                       mode='markers',
                       marker_color='darkblue',
                       marker_line_color='darkblue',
                       marker_line_width=2, 
                       marker_size=10
                       )
        )

    # Add trace for buildings
    fig.add_trace(
        go.Scatter(x=building_x, y=building_y, 
                   hovertemplate=building_names,
                   name="Buildings with customer demand",
                   mode='markers',
                   marker_color='red',
                   marker_opacity=0.5,
                   marker_line_width=0, 
                   marker_size=demand
                   )
    )

    # Add minimap image
    fig.add_layout_image(
            dict(
                source=minimap,
                xref="x",
                yref="y",
                x=0,
                y=550,
                sizex=500,
                sizey=550,
                sizing="stretch",
                opacity=0.9,
                layer="below")
    )

    # Set templates
    fig.update_layout(template="simple_white")
    fig.update_xaxes(range=[0, 500], visible=False)
    fig.update_yaxes(range=[0,550], visible=False,
                    scaleanchor = "x",scaleratio = 1)
    fig.update_layout(showlegend=True)
    
    fig.update_layout(
        title="Burrito Optimization Game Map",
    )
    
    fig.show()
    
