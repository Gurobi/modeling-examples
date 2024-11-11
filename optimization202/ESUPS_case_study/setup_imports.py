from src.analysis import AnalysisParameters, Analyzer
from src.dashboard_utils.dashboard_files import (
    calc_exisiting_stock_df,
    create_disaster_totals,
    create_priority_change,
    create_province_assess_df,
    item_stock_assess,
    reallocation_dashboard_files,
)
from src.dashboard_utils.dashboard_utils import get_scenario
from src.dashboard_utils.dashboard_value_objects import (
    BalMetricsDashboard,
    ItemProvinceAssessDF,
    ProvinceAssessDF,
    ProvinceLookupDF,
)
from src.dashboard_utils.dauls_utils import calc_duals_by_warehouse
from src.path import DASHBOARD_OUTPUT_PATH, DATA_DIR
from src.reading import CsvProblemReader


from IPython.display import Image
import ipywidgets as widgets
import sys
from IPython.display import display
from IPython.display import clear_output

import ipywidgets as widgets
from IPython.display import display, clear_output
import warnings
import pandas as pd

import matplotlib.pyplot as plt
import networkx as nx

import plotly.express as px
import numpy as np

def question_1():
    out = widgets.Output()

    alternativ = widgets.RadioButtons(
        options=[('w+f', 1), 
                 ('3w+5f', 2),
                 ('2w+4f', 3)],
        description='',
        disabled=False
    )

    check = widgets.Button(description="Check")

    def sjekksvar(b):
        a = int(alternativ.value)
        right_answer = 2
        if a == right_answer: 
            color = '\x1b[6;30;42m' + "Correct! We're trying to maximize the relief we can provide by adding \n more or fewer items, and this equation describes the relief each item will add." + '\x1b[0m' + "\n"  # green color
        else:
            if a == 1:
                color = '\x1b[5;30;41m' + "Not Quite. Remember that the value these items provide isn't the same." + '\x1b[0m' + "\n"  # red color
            if a == 3:
                color = '\x1b[5;30;41m' + "Not Quite. These are the constraints. What are we trying to maximize or minimize?" + '\x1b[0m' + "\n"  # red color
        
        with out:
            clear_output()
            print(color)
    
    print('\033[1m', '1) What is the Objective Function?', '\033[0m')
    display(alternativ)
    display(check)
    display(out)

    check.on_click(sjekksvar)

def question_2():
    out = widgets.Output()

    alternativ = widgets.RadioButtons(
        options=[('2w+4f', 1), 
                 ('w+f', 2),
                 ('3w+5f', 3)],
        description='',
        disabled=False
    )

    check = widgets.Button(description="Check")

    def sjekksvar(b):
        a = int(alternativ.value)
        right_answer = 1
        if a == right_answer: 
            color = '\x1b[6;30;42m' + "Correct! This equation represents the cargo space constraint,\n which is based on the space each item takes up in the vehicle." + '\x1b[0m' + "\n"  # green color
        else:
            if a == 2:
                color = '\x1b[5;30;41m' + "Not Quite. This could be an objective function, but it doesn't represent the cargo space constraint." + '\x1b[0m' + "\n"  # red color
            if a == 3:
                color = '\x1b[5;30;41m' + "Not Quite. This is the objective function, not the constraint related to cargo space." + '\x1b[0m' + "\n"  # red color
        
        with out:
            clear_output()
            print(color)
    
    print('\033[1m', '2) Which equation represents the cargo space constraint?', '\033[0m')
    display(alternativ)
    display(check)
    display(out)

    check.on_click(sjekksvar)

def question_3():
    out = widgets.Output()

    alternativ = widgets.RadioButtons(
        options=[('f <= 30', 1), 
                 ('w + f <= 50', 2),
                 ('2w + 4f <= 100', 3)],
        description='',
        disabled=False
    )

    check = widgets.Button(description="Check")

    def sjekksvar(b):
        a = int(alternativ.value)
        right_answer = 1
        if a == right_answer: 
            color = '\x1b[6;30;42m' + "Correct! This equation represents the maximum number of food packs that can be delivered due to supply chain limitations." + '\x1b[0m' + "\n"  # green color
        else:
            if a == 2:
                color = '\x1b[5;30;41m' + "Not Quite. This could represent a combined constraint, but it doesn't capture the limit on food packs." + '\x1b[0m' + "\n"  # red color
            if a == 3:
                color = '\x1b[5;30;41m' + "Not Quite. This is the cargo space constraint, not the limit on food packs." + '\x1b[0m' + "\n"  # red color
        
        with out:
            clear_output()
            print(color)
    
    print('\033[1m', '3) Which equation represents the limit on the number of food packs?', '\033[0m')
    display(alternativ)
    display(check)
    display(out)

    check.on_click(sjekksvar)

# To test the questions, you can call each function in a Jupyter notebook cell.
# question_1()
# question_2()
# question_3()

def problem_1():
    question_1()
    question_2()
    question_3()

def get_distance_matrix(dataset):
    #print('Disaster:',dataset.disasters[2].type.id)
    BucketsNeeded=list(dataset.disaster_affected_totals.values())[2]
    #print('Buckets Needed:',BucketsNeeded)

    relevant_warehouses=[[key[0],key[1], dataset.inventory[key]] for key in dataset.inventory.keys() if key[1].id=='Buckets']
    b=0
    for i in relevant_warehouses:
        b+=i[2]
    #print('Bucket Avalible:',b)
    #print(relevant_warehouses[0])
    warehouse_location=sorted([a[0].id for a in relevant_warehouses])
    disaster_location=dataset.disasters[2].impacted_locations[0].location.id
    #print('Disaster Location:', disaster_location)


    df=pd.read_csv('data/madagascar/distanceMatrix.csv')
    df_filtered = df[df['depotGglAddressAscii'].isin(warehouse_location)]


    df_filtered = df_filtered[df_filtered['disasterGglAddressAscii']==disaster_location]#.reset_index(drop=True)
    #df_filtered
    df_filtered.sort_values(by='depotCity',inplace=True)
    df_filtered.reset_index(drop=True,inplace=True)

    #print([x==y for x,y in zip(df_filtered['depotGglAddressAscii'],warehouse_location)])
    return df_filtered, relevant_warehouses, BucketsNeeded

def get_probs(dataset):
    #len(dataset.probabilities)
    dataset.disaster_affected_totals.values()
    demand=[min(x,40811) for x in dataset.disaster_affected_totals.values()]
    #print(demand)
    #print(len(demand))
    #print(len(relevant_warehouses))
    probs=list(dataset.probabilities.values())
    return demand, probs

def flowchart():
    # Define the nodes and edges of the flow diagram
    nodes = ["CSV", "Data \nReader", "Data \nClass", "Analysis", "Worker", "Scope", "Problem \nInstance", "Solver"]
    edges = [("CSV", "Data \nReader"), 
            ("Data \nReader", "Data \nClass"), 
            ("Data \nClass", "Analysis"), 
            ("Analysis", "Worker"), 
            ("Worker", "Scope"), 
            ("Scope", "Problem \nInstance"), 
            ("Problem \nInstance", "Solver"), 
            ("Solver", "Analysis")]

    # Create directed graph
    G = nx.DiGraph()
    G.add_nodes_from(nodes)
    G.add_edges_from(edges)

    # Define a new layout for a more organized appearance
    pos = {
        "CSV": (0, 3),
        "Data \nReader": (1, 3),
        "Data \nClass": (2, 3),
        "Analysis": (3, 3),
        "Worker": (3, 2),
        "Scope": (3, 1),
        "Problem \nInstance": (4, 1),
        "Solver": (5, 1)
    }

    # Plot the graph with a more visually appealing layout and style
    plt.figure(figsize=(12, 6))
    nx.draw(G, pos, with_labels=True, 
            node_color='#66c2a5', font_size=13, font_weight='bold', 
            node_size=5400, arrowsize=20, edge_color='#1f78b4', 
            edgecolors='black', linewidths=2)

    # Add title and improve display
    plt.title("Production Logical Flow", fontsize=14, fontweight='bold')
    plt.axis('off')  # Hide axis
    plt.show()


def q1_p2():
    # Output area for feedback
    out1 = widgets.Output()

    # Options for the first question
    alternativ1 = widgets.RadioButtons(
        options=[
            ('Maximum demand for each type of item.', 1), 
            ('Total time available on weaving and packaging machines.', 2),
            ('The profit each pack of items generates.', 3),
            ('The number of items that must be manufactured for quality control.', 4)
        ],
        description='',
        disabled=False
    )

    # Button to check the answer
    check1 = widgets.Button(description="Check")

    # Function to check the answer for the first question
    def sjekksvar1(b):
        a = int(alternativ1.value)
        right_answer = 4
        if a == right_answer: 
            color = '\x1b[6;30;42m' + "Correct! The constraint is that exactly 150 items must be manufactured for quality control." + '\x1b[0m' + "\n"  # green color
        else:
            if a == 1:
                color = '\x1b[5;30;41m' + "Not Quite. The maximum demand tells us how much we can produce without exceeding what is needed, but it does not limit the total production to exactly 150 items." + '\x1b[0m' + "\n"  # red color
            elif a == 2:
                color = '\x1b[5;30;41m' + "Not Quite. The time available on machines restricts how long they can operate, but it doesn't limit the total number of items to exactly 150." + '\x1b[0m' + "\n"  # red color
            elif a == 3:
                color = '\x1b[5;30;41m' + "Not Quite. Profit is an objective to maximize, but it is not a constraint that limits production to exactly 150 items." + '\x1b[0m' + "\n"  # red color

        with out1:
            clear_output()
            print(color)

    # Display the first question
    print('\033[1m', '1) What is the main constraint that limits the total production of items in this manufacturing setup?', '\033[0m')
    display(alternativ1)
    display(check1)
    display(out1)

    # Connect the button to the function
    check1.on_click(sjekksvar1)

def q2_p2():
    # Output area for feedback
    out2 = widgets.Output()

    # Options for the second question
    alternativ2 = widgets.RadioButtons(
        options=[('w+f', 1), 
                 ('3w+5f', 2),
                 ('2w+4f', 3)],
        description='',
        disabled=False
    )

    # Button to check the answer
    check2 = widgets.Button(description="Check")

    # Function to check the answer for the second question
    def sjekksvar2(b):
        a = int(alternativ2.value)
        right_answer = 3
        if a == right_answer: 
            color = '\x1b[6;30;42m' + "Correct! The objective is to maximize profit, which depends on the profit associated with each type of item." + '\x1b[0m' + "\n"  # green color
        else:
            if a == 1:
                color = '\x1b[5;30;41m' + "Not Quite. The weaving and packaging time are constraints, but they do not directly impact the profit maximization objective." + '\x1b[0m' + "\n"  # red color
            elif a == 2:
                color = '\x1b[5;30;41m' + "Not Quite. The maximum demand limits production, but maximizing profit focuses on which items provide the highest profit, not their demand." + '\x1b[0m' + "\n"  # red color
            elif a == 4:
                color = '\x1b[5;30;41m' + "Not Quite. The total time available on machines is a constraint that limits production capacity, but maximizing profit is about choosing the most profitable items within that capacity." + '\x1b[0m' + "\n"  # red color

        with out2:
            clear_output()
            print(color)

        # Display the second question
        print('\033[1m', '2) If the NGO wants to maximize the profit from the manufactured items, which factor should they primarily consider?', '\033[0m')
        display(alternativ2)
        display(check2)
        display(out2)

        # Connect the button to the function
        check2.on_click(sjekksvar2)

def problem_2():
    q1_p2()
    q2_p2()




def q_3_1():
    out = widgets.Output()

    alternativ = widgets.RadioButtons(
        options=[('-1', 1), 
                 ('0', 2),
                 ('1', 3)],
        description='',
        disabled=False
    )

    check = widgets.Button(description="Check")

    def sjekksvar(b):
        a = int(alternativ.value)
        right_answer = 2
        if a == right_answer: 
            color = '\x1b[6;30;42m' + "Correct! We use the form probability times value so .5*(-1) + .5*(1) = 0 " + '\x1b[0m' + "\n"  # green color
        else:
            if a == 1:
                color = '\x1b[5;30;41m' + "Not Quite. Remember we multiple each outcome with its probability then add them" + '\x1b[0m' + "\n"  # red color
            elif a == 3:
                color = '\x1b[5;30;41m' + "Not Quite. Remember we multiple each outcome with its probability then add them" + '\x1b[0m' + "\n"  # red color
    
        with out:
            clear_output()
            print(color)
    
    print('\033[1m', '1) What is the Objective Function?', '\033[0m')
    display(alternativ)
    display(check)
    display(out)

    check.on_click(sjekksvar)
def q_3_2():
    out = widgets.Output()

    alternativ = widgets.RadioButtons(
        options=[('0', 1), 
                 ('1/2', 2),
                 ('1', 3)],
        description='',
        disabled=False
    )

    check = widgets.Button(description="Check")

    def sjekksvar(b):
        a = int(alternativ.value)
        right_answer = 3
        if a == right_answer: 
            color = '\x1b[6;30;42m' + "Correct! We use the form probability times value so .5*(5) + .5*(-3) = 4 " + '\x1b[0m' + "\n"  # green color
        else:
            if a == 1:
                color = '\x1b[5;30;41m' + "Not Quite. Remember we multiple each outcome with its probability then add them" + '\x1b[0m' + "\n"  # red color
            elif a == 2:
                color = '\x1b[5;30;41m' + "Not Quite. Remember we multiple each outcome with its probability then add them" + '\x1b[0m' + "\n"  # red color
    
        with out:
            clear_output()
            print(color)
    
    print('\033[1m', '1) What is the Objective Function?', '\033[0m')
    display(alternativ)
    display(check)
    display(out)

    check.on_click(sjekksvar)