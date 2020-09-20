\ Model MarketSharing
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  deliveryPointsPos + deliveryPointsNeg + spiritMarketPos + spiritMarketNeg
   + oilMarket1Pos + oilMarket1Neg + oilMarket2Pos + oilMarket2Neg
   + oilMarket3Pos + oilMarket3Neg + retailerAPos + retailerANeg
   + retailerBPos + retailerBNeg
Subject To
 DPConstrs: 11 allocate[1] + 47 allocate[2] + 44 allocate[3]
   + 25 allocate[4] + 10 allocate[5] + 26 allocate[6] + 26 allocate[7]
   + 54 allocate[8] + 18 allocate[9] + 51 allocate[10] + 20 allocate[11]
   + 105 allocate[12] + 7 allocate[13] + 16 allocate[14] + 34 allocate[15]
   + 100 allocate[16] + 50 allocate[17] + 21 allocate[18] + 11 allocate[19]
   + 19 allocate[20] + 14 allocate[21] + 10 allocate[22] + 11 allocate[23]
   + deliveryPointsPos - deliveryPointsNeg = 292
 SMConstr: 34 allocate[1] + 411 allocate[2] + 82 allocate[3]
   + 157 allocate[4] + 5 allocate[5] + 183 allocate[6] + 14 allocate[7]
   + 215 allocate[8] + 102 allocate[9] + 21 allocate[10] + 54 allocate[11]
   + 6 allocate[13] + 96 allocate[14] + 118 allocate[15] + 112 allocate[16]
   + 535 allocate[17] + 8 allocate[18] + 53 allocate[19] + 28 allocate[20]
   + 69 allocate[21] + 65 allocate[22] + 27 allocate[23] + spiritMarketPos
   - spiritMarketNeg = 958
 OM1Constr: 9 allocate[1] + 13 allocate[2] + 14 allocate[3]
   + 17 allocate[4] + 18 allocate[5] + 19 allocate[6] + 23 allocate[7]
   + 21 allocate[8] + oilMarket1Pos - oilMarket1Neg = 53.6
 OM2Constr: 9 allocate[9] + 11 allocate[10] + 17 allocate[11]
   + 18 allocate[12] + 18 allocate[13] + 17 allocate[14] + 22 allocate[15]
   + 24 allocate[16] + 36 allocate[17] + 43 allocate[18] + oilMarket2Pos
   - oilMarket2Neg = 86
 OM3Constr: 6 allocate[19] + 15 allocate[20] + 15 allocate[21]
   + 25 allocate[22] + 39 allocate[23] + oilMarket3Pos - oilMarket3Neg
   = 40
 AConstr: allocate[1] + allocate[2] + allocate[3] + allocate[5]
   + allocate[6] + allocate[10] + allocate[15] + allocate[20]
   + retailerAPos - retailerANeg = 3.2
 BConstr: allocate[4] + allocate[7] + allocate[8] + allocate[9]
   + allocate[11] + allocate[12] + allocate[13] + allocate[14]
   + allocate[16] + allocate[17] + allocate[18] + allocate[19]
   + allocate[21] + allocate[22] + allocate[23] + retailerBPos
   - retailerBNeg = 6
Bounds
 deliveryPointsPos <= 36.5
 deliveryPointsNeg <= 36.5
 spiritMarketPos <= 119.75
 spiritMarketNeg <= 119.75
 oilMarket1Pos <= 6.7
 oilMarket1Neg <= 6.7
 oilMarket2Pos <= 10.75
 oilMarket2Neg <= 10.75
 oilMarket3Pos <= 5
 oilMarket3Neg <= 5
 retailerAPos <= 0.4
 retailerANeg <= 0.4
 retailerBPos <= 0.75
 retailerBNeg <= 0.75
Binaries
 allocate[1] allocate[2] allocate[3] allocate[4] allocate[5] allocate[6]
 allocate[7] allocate[8] allocate[9] allocate[10] allocate[11] allocate[12]
 allocate[13] allocate[14] allocate[15] allocate[16] allocate[17]
 allocate[18] allocate[19] allocate[20] allocate[21] allocate[22]
 allocate[23]
End
