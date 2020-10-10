\ Model ConstraintOptimization
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  b[0] - b[3] - b[5]
Subject To
 C123: - b[0] + b[1] + b[2] + b[3] <= 0
 C1248: - b[0] + b[1] + b[2] + b[4] + b[8] <= 0
 C1267: - b[0] + b[1] + b[2] + b[6] + b[7] <= 0
 C1356: - b[0] + b[1] + b[3] + b[5] + b[6] <= 0
 C2346: - b[0] + b[2] + b[3] + b[4] + b[6] <= 0
 C25678: - b[0] + b[2] + b[5] + b[6] + b[7] + b[8] <= 0
 R1238: - b[0] + b[1] + b[2] + b[3] + b[8] >= 1
 R1257: - b[0] + b[1] + b[2] + b[5] + b[7] >= 1
 R1347: - b[0] + b[1] + b[3] + b[4] + b[7] >= 1
 R15678: - b[0] + b[1] + b[5] + b[6] + b[7] + b[8] >= 1
 R2345: - b[0] + b[2] + b[3] + b[4] + b[5] >= 1
 R34678: - b[0] + b[3] + b[4] + b[6] + b[7] + b[8] >= 1
 DV1_2: b[1] - b[2] >= 0
 DV2_3: b[2] - b[3] >= 0
 DV3_4: b[3] - b[4] >= 0
 DV4_5: b[4] - b[5] >= 0
 DV5_6: b[5] - b[6] >= 0
 DV6_7: b[6] - b[7] >= 0
 DV7_8: b[7] - b[8] >= 0
Bounds
End
