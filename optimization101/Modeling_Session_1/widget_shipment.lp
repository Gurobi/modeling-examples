\ Model widgets
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  4.5 prod_ship[Baltimore,Columbia] + 5.09 prod_ship[Baltimore,Indianapolis]
   + 4.33 prod_ship[Baltimore,Lexington]
   + 5.96 prod_ship[Baltimore,Nashville]
   + 1.96 prod_ship[Baltimore,Richmond]
   + 7.3 prod_ship[Baltimore,St._Louis]
   + 2.43 prod_ship[Cleveland,Columbia]
   + 2.37 prod_ship[Cleveland,Indianapolis]
   + 2.54 prod_ship[Cleveland,Lexington]
   + 4.13 prod_ship[Cleveland,Nashville]
   + 3.2 prod_ship[Cleveland,Richmond]
   + 4.88 prod_ship[Cleveland,St._Louis]
   + 6.42 prod_ship[Little_Rock,Columbia]
   + 4.83 prod_ship[Little_Rock,Indianapolis]
   + 3.39 prod_ship[Little_Rock,Lexington]
   + 4.4 prod_ship[Little_Rock,Nashville]
   + 7.44 prod_ship[Little_Rock,Richmond]
   + 2.92 prod_ship[Little_Rock,St._Louis]
   + 3.33 prod_ship[Birmingham,Columbia]
   + 4.33 prod_ship[Birmingham,Indianapolis]
   + 3.38 prod_ship[Birmingham,Lexington]
   + 1.53 prod_ship[Birmingham,Nashville]
   + 5.95 prod_ship[Birmingham,Richmond]
   + 4.01 prod_ship[Birmingham,St._Louis]
   + 3.02 prod_ship[Charleston,Columbia]
   + 2.61 prod_ship[Charleston,Indianapolis]
   + 1.61 prod_ship[Charleston,Lexington]
   + 4.44 prod_ship[Charleston,Nashville]
   + 2.36 prod_ship[Charleston,Richmond]
   + 4.6 prod_ship[Charleston,St._Louis]
Subject To
 meet_demand[Columbia]: prod_ship[Baltimore,Columbia]
   + prod_ship[Cleveland,Columbia] + prod_ship[Little_Rock,Columbia]
   + prod_ship[Birmingham,Columbia] + prod_ship[Charleston,Columbia] >= 89
 meet_demand[Indianapolis]: prod_ship[Baltimore,Indianapolis]
   + prod_ship[Cleveland,Indianapolis]
   + prod_ship[Little_Rock,Indianapolis]
   + prod_ship[Birmingham,Indianapolis]
   + prod_ship[Charleston,Indianapolis] >= 95
 meet_demand[Lexington]: prod_ship[Baltimore,Lexington]
   + prod_ship[Cleveland,Lexington] + prod_ship[Little_Rock,Lexington]
   + prod_ship[Birmingham,Lexington] + prod_ship[Charleston,Lexington]
   >= 121
 meet_demand[Nashville]: prod_ship[Baltimore,Nashville]
   + prod_ship[Cleveland,Nashville] + prod_ship[Little_Rock,Nashville]
   + prod_ship[Birmingham,Nashville] + prod_ship[Charleston,Nashville]
   >= 101
 meet_demand[Richmond]: prod_ship[Baltimore,Richmond]
   + prod_ship[Cleveland,Richmond] + prod_ship[Little_Rock,Richmond]
   + prod_ship[Birmingham,Richmond] + prod_ship[Charleston,Richmond]
   >= 116
 meet_demand[St._Louis]: prod_ship[Baltimore,St._Louis]
   + prod_ship[Cleveland,St._Louis] + prod_ship[Little_Rock,St._Louis]
   + prod_ship[Birmingham,St._Louis] + prod_ship[Charleston,St._Louis]
   >= 181
 can_produce[Baltimore]: prod_ship[Baltimore,Columbia]
   + prod_ship[Baltimore,Indianapolis] + prod_ship[Baltimore,Lexington]
   + prod_ship[Baltimore,Nashville] + prod_ship[Baltimore,Richmond]
   + prod_ship[Baltimore,St._Louis] <= 180
 can_produce[Cleveland]: prod_ship[Cleveland,Columbia]
   + prod_ship[Cleveland,Indianapolis] + prod_ship[Cleveland,Lexington]
   + prod_ship[Cleveland,Nashville] + prod_ship[Cleveland,Richmond]
   + prod_ship[Cleveland,St._Louis] <= 200
 can_produce[Little_Rock]: prod_ship[Little_Rock,Columbia]
   + prod_ship[Little_Rock,Indianapolis] + prod_ship[Little_Rock,Lexington]
   + prod_ship[Little_Rock,Nashville] + prod_ship[Little_Rock,Richmond]
   + prod_ship[Little_Rock,St._Louis] <= 140
 can_produce[Birmingham]: prod_ship[Birmingham,Columbia]
   + prod_ship[Birmingham,Indianapolis] + prod_ship[Birmingham,Lexington]
   + prod_ship[Birmingham,Nashville] + prod_ship[Birmingham,Richmond]
   + prod_ship[Birmingham,St._Louis] <= 80
 can_produce[Charleston]: prod_ship[Charleston,Columbia]
   + prod_ship[Charleston,Indianapolis] + prod_ship[Charleston,Lexington]
   + prod_ship[Charleston,Nashville] + prod_ship[Charleston,Richmond]
   + prod_ship[Charleston,St._Louis] <= 180
 must_produce[Baltimore]: prod_ship[Baltimore,Columbia]
   + prod_ship[Baltimore,Indianapolis] + prod_ship[Baltimore,Lexington]
   + prod_ship[Baltimore,Nashville] + prod_ship[Baltimore,Richmond]
   + prod_ship[Baltimore,St._Louis] >= 135
 must_produce[Cleveland]: prod_ship[Cleveland,Columbia]
   + prod_ship[Cleveland,Indianapolis] + prod_ship[Cleveland,Lexington]
   + prod_ship[Cleveland,Nashville] + prod_ship[Cleveland,Richmond]
   + prod_ship[Cleveland,St._Louis] >= 150
 must_produce[Little_Rock]: prod_ship[Little_Rock,Columbia]
   + prod_ship[Little_Rock,Indianapolis] + prod_ship[Little_Rock,Lexington]
   + prod_ship[Little_Rock,Nashville] + prod_ship[Little_Rock,Richmond]
   + prod_ship[Little_Rock,St._Louis] >= 105
 must_produce[Birmingham]: prod_ship[Birmingham,Columbia]
   + prod_ship[Birmingham,Indianapolis] + prod_ship[Birmingham,Lexington]
   + prod_ship[Birmingham,Nashville] + prod_ship[Birmingham,Richmond]
   + prod_ship[Birmingham,St._Louis] >= 60
 must_produce[Charleston]: prod_ship[Charleston,Columbia]
   + prod_ship[Charleston,Indianapolis] + prod_ship[Charleston,Lexington]
   + prod_ship[Charleston,Nashville] + prod_ship[Charleston,Richmond]
   + prod_ship[Charleston,St._Louis] >= 135
Bounds
End
