\ Model widgets
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  ArtN_can_produce[Baltimore] + ArtN_can_produce[Cleveland]
   + ArtN_can_produce[Little_Rock] + ArtN_can_produce[Birmingham]
   + ArtN_can_produce[Charleston] + ArtP_must_produce[Baltimore]
   + ArtP_must_produce[Cleveland] + ArtP_must_produce[Little_Rock]
   + ArtP_must_produce[Birmingham] + ArtP_must_produce[Charleston]
   + ArtP_meet_demand[Columbia] + ArtN_meet_demand[Columbia]
   + ArtP_meet_demand[Indianapolis] + ArtN_meet_demand[Indianapolis]
   + ArtP_meet_demand[Lexington] + ArtN_meet_demand[Lexington]
   + ArtP_meet_demand[Nashville] + ArtN_meet_demand[Nashville]
   + ArtP_meet_demand[Richmond] + ArtN_meet_demand[Richmond]
   + ArtP_meet_demand[St._Louis] + ArtN_meet_demand[St._Louis]
Subject To
 can_produce[Baltimore]: prod_ship[Baltimore,Columbia]
   + prod_ship[Baltimore,Indianapolis] + prod_ship[Baltimore,Lexington]
   + prod_ship[Baltimore,Nashville] + prod_ship[Baltimore,Richmond]
   + prod_ship[Baltimore,St._Louis] - ArtN_can_produce[Baltimore] <= 180
 can_produce[Cleveland]: prod_ship[Cleveland,Columbia]
   + prod_ship[Cleveland,Indianapolis] + prod_ship[Cleveland,Lexington]
   + prod_ship[Cleveland,Nashville] + prod_ship[Cleveland,Richmond]
   + prod_ship[Cleveland,St._Louis] - ArtN_can_produce[Cleveland] <= 200
 can_produce[Little_Rock]: prod_ship[Little_Rock,Columbia]
   + prod_ship[Little_Rock,Indianapolis] + prod_ship[Little_Rock,Lexington]
   + prod_ship[Little_Rock,Nashville] + prod_ship[Little_Rock,Richmond]
   + prod_ship[Little_Rock,St._Louis] - ArtN_can_produce[Little_Rock]
   <= 140
 can_produce[Birmingham]: prod_ship[Birmingham,Columbia]
   + prod_ship[Birmingham,Indianapolis] + prod_ship[Birmingham,Lexington]
   + prod_ship[Birmingham,Nashville] + prod_ship[Birmingham,Richmond]
   + prod_ship[Birmingham,St._Louis] - ArtN_can_produce[Birmingham] <= 80
 can_produce[Charleston]: prod_ship[Charleston,Columbia]
   + prod_ship[Charleston,Indianapolis] + prod_ship[Charleston,Lexington]
   + prod_ship[Charleston,Nashville] + prod_ship[Charleston,Richmond]
   + prod_ship[Charleston,St._Louis] - ArtN_can_produce[Charleston] <= 180
 must_produce[Baltimore]: prod_ship[Baltimore,Columbia]
   + prod_ship[Baltimore,Indianapolis] + prod_ship[Baltimore,Lexington]
   + prod_ship[Baltimore,Nashville] + prod_ship[Baltimore,Richmond]
   + prod_ship[Baltimore,St._Louis] + ArtP_must_produce[Baltimore] >= 162
 must_produce[Cleveland]: prod_ship[Cleveland,Columbia]
   + prod_ship[Cleveland,Indianapolis] + prod_ship[Cleveland,Lexington]
   + prod_ship[Cleveland,Nashville] + prod_ship[Cleveland,Richmond]
   + prod_ship[Cleveland,St._Louis] + ArtP_must_produce[Cleveland] >= 180
 must_produce[Little_Rock]: prod_ship[Little_Rock,Columbia]
   + prod_ship[Little_Rock,Indianapolis] + prod_ship[Little_Rock,Lexington]
   + prod_ship[Little_Rock,Nashville] + prod_ship[Little_Rock,Richmond]
   + prod_ship[Little_Rock,St._Louis] + ArtP_must_produce[Little_Rock]
   >= 126
 must_produce[Birmingham]: prod_ship[Birmingham,Columbia]
   + prod_ship[Birmingham,Indianapolis] + prod_ship[Birmingham,Lexington]
   + prod_ship[Birmingham,Nashville] + prod_ship[Birmingham,Richmond]
   + prod_ship[Birmingham,St._Louis] + ArtP_must_produce[Birmingham] >= 72
 must_produce[Charleston]: prod_ship[Charleston,Columbia]
   + prod_ship[Charleston,Indianapolis] + prod_ship[Charleston,Lexington]
   + prod_ship[Charleston,Nashville] + prod_ship[Charleston,Richmond]
   + prod_ship[Charleston,St._Louis] + ArtP_must_produce[Charleston]
   >= 162
 meet_demand[Columbia]: prod_ship[Baltimore,Columbia]
   + prod_ship[Cleveland,Columbia] + prod_ship[Little_Rock,Columbia]
   + prod_ship[Birmingham,Columbia] + prod_ship[Charleston,Columbia]
   + ArtP_meet_demand[Columbia] - ArtN_meet_demand[Columbia] = 89
 meet_demand[Indianapolis]: prod_ship[Baltimore,Indianapolis]
   + prod_ship[Cleveland,Indianapolis]
   + prod_ship[Little_Rock,Indianapolis]
   + prod_ship[Birmingham,Indianapolis]
   + prod_ship[Charleston,Indianapolis] + ArtP_meet_demand[Indianapolis]
   - ArtN_meet_demand[Indianapolis] = 95
 meet_demand[Lexington]: prod_ship[Baltimore,Lexington]
   + prod_ship[Cleveland,Lexington] + prod_ship[Little_Rock,Lexington]
   + prod_ship[Birmingham,Lexington] + prod_ship[Charleston,Lexington]
   + ArtP_meet_demand[Lexington] - ArtN_meet_demand[Lexington] = 121
 meet_demand[Nashville]: prod_ship[Baltimore,Nashville]
   + prod_ship[Cleveland,Nashville] + prod_ship[Little_Rock,Nashville]
   + prod_ship[Birmingham,Nashville] + prod_ship[Charleston,Nashville]
   + ArtP_meet_demand[Nashville] - ArtN_meet_demand[Nashville] = 101
 meet_demand[Richmond]: prod_ship[Baltimore,Richmond]
   + prod_ship[Cleveland,Richmond] + prod_ship[Little_Rock,Richmond]
   + prod_ship[Birmingham,Richmond] + prod_ship[Charleston,Richmond]
   + ArtP_meet_demand[Richmond] - ArtN_meet_demand[Richmond] = 116
 meet_demand[St._Louis]: prod_ship[Baltimore,St._Louis]
   + prod_ship[Cleveland,St._Louis] + prod_ship[Little_Rock,St._Louis]
   + prod_ship[Birmingham,St._Louis] + prod_ship[Charleston,St._Louis]
   + ArtP_meet_demand[St._Louis] - ArtN_meet_demand[St._Louis] = 181
Bounds
 prod_ship[Baltimore,Columbia] >= 50
 prod_ship[Baltimore,Indianapolis] >= 50
 prod_ship[Baltimore,Lexington] >= 50
 prod_ship[Baltimore,Nashville] >= 50
 prod_ship[Baltimore,Richmond] >= 50
 prod_ship[Baltimore,St._Louis] >= 50
 prod_ship[Cleveland,Columbia] >= 50
 prod_ship[Cleveland,Indianapolis] >= 50
 prod_ship[Cleveland,Lexington] >= 50
 prod_ship[Cleveland,Nashville] >= 50
 prod_ship[Cleveland,Richmond] >= 50
 prod_ship[Cleveland,St._Louis] >= 50
 prod_ship[Little_Rock,Columbia] >= 50
 prod_ship[Little_Rock,Indianapolis] >= 50
 prod_ship[Little_Rock,Lexington] >= 50
 prod_ship[Little_Rock,Nashville] >= 50
 prod_ship[Little_Rock,Richmond] >= 50
 prod_ship[Little_Rock,St._Louis] >= 50
 prod_ship[Birmingham,Columbia] >= 50
 prod_ship[Birmingham,Indianapolis] >= 50
 prod_ship[Birmingham,Lexington] >= 50
 prod_ship[Birmingham,Nashville] >= 50
 prod_ship[Birmingham,Richmond] >= 50
 prod_ship[Birmingham,St._Louis] >= 50
 prod_ship[Charleston,Columbia] >= 50
 prod_ship[Charleston,Indianapolis] >= 50
 prod_ship[Charleston,Lexington] >= 50
 prod_ship[Charleston,Nashville] >= 50
 prod_ship[Charleston,Richmond] >= 50
 prod_ship[Charleston,St._Louis] >= 50
Semi-continuous
 prod_ship[Baltimore,Columbia] prod_ship[Baltimore,Indianapolis]
 prod_ship[Baltimore,Lexington] prod_ship[Baltimore,Nashville]
 prod_ship[Baltimore,Richmond] prod_ship[Baltimore,St._Louis]
 prod_ship[Cleveland,Columbia] prod_ship[Cleveland,Indianapolis]
 prod_ship[Cleveland,Lexington] prod_ship[Cleveland,Nashville]
 prod_ship[Cleveland,Richmond] prod_ship[Cleveland,St._Louis]
 prod_ship[Little_Rock,Columbia] prod_ship[Little_Rock,Indianapolis]
 prod_ship[Little_Rock,Lexington] prod_ship[Little_Rock,Nashville]
 prod_ship[Little_Rock,Richmond] prod_ship[Little_Rock,St._Louis]
 prod_ship[Birmingham,Columbia] prod_ship[Birmingham,Indianapolis]
 prod_ship[Birmingham,Lexington] prod_ship[Birmingham,Nashville]
 prod_ship[Birmingham,Richmond] prod_ship[Birmingham,St._Louis]
 prod_ship[Charleston,Columbia] prod_ship[Charleston,Indianapolis]
 prod_ship[Charleston,Lexington] prod_ship[Charleston,Nashville]
 prod_ship[Charleston,Richmond] prod_ship[Charleston,St._Louis]
End
