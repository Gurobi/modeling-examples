\ Model PowerGeneration
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  - 4200 ngen[0,0] - 2100 ngen[0,1] - 4200 ngen[0,2] - 2100 ngen[0,3]
   - 4200 ngen[0,4] + 5850 ngen[1,0] + 2925 ngen[1,1] + 5850 ngen[1,2]
   + 2925 ngen[1,3] + 5850 ngen[1,4] - 9000 ngen[2,0] - 4500 ngen[2,1]
   - 9000 ngen[2,2] - 4500 ngen[2,3] - 9000 ngen[2,4] + 2000 nstart[0,0]
   + 2000 nstart[0,1] + 2000 nstart[0,2] + 2000 nstart[0,3]
   + 2000 nstart[0,4] + 1000 nstart[1,0] + 1000 nstart[1,1]
   + 1000 nstart[1,2] + 1000 nstart[1,3] + 1000 nstart[1,4]
   + 500 nstart[2,0] + 500 nstart[2,1] + 500 nstart[2,2] + 500 nstart[2,3]
   + 500 nstart[2,4] + 12 genoutput[0,0] + 6 genoutput[0,1]
   + 12 genoutput[0,2] + 6 genoutput[0,3] + 12 genoutput[0,4]
   + 7.8 genoutput[1,0] + 3.9 genoutput[1,1] + 7.8 genoutput[1,2]
   + 3.9 genoutput[1,3] + 7.8 genoutput[1,4] + 18 genoutput[2,0]
   + 9 genoutput[2,1] + 18 genoutput[2,2] + 9 genoutput[2,3]
   + 18 genoutput[2,4]
Subject To
 R0: ngen[0,0] <= 12
 R1: ngen[0,1] <= 12
 R2: ngen[0,2] <= 12
 R3: ngen[0,3] <= 12
 R4: ngen[0,4] <= 12
 R5: ngen[1,0] <= 10
 R6: ngen[1,1] <= 10
 R7: ngen[1,2] <= 10
 R8: ngen[1,3] <= 10
 R9: ngen[1,4] <= 10
 R10: ngen[2,0] <= 5
 R11: ngen[2,1] <= 5
 R12: ngen[2,2] <= 5
 R13: ngen[2,3] <= 5
 R14: ngen[2,4] <= 5
 R15: - 850 ngen[0,0] + genoutput[0,0] >= 0
 R16: - 850 ngen[0,1] + genoutput[0,1] >= 0
 R17: - 850 ngen[0,2] + genoutput[0,2] >= 0
 R18: - 850 ngen[0,3] + genoutput[0,3] >= 0
 R19: - 850 ngen[0,4] + genoutput[0,4] >= 0
 R20: - 1250 ngen[1,0] + genoutput[1,0] >= 0
 R21: - 1250 ngen[1,1] + genoutput[1,1] >= 0
 R22: - 1250 ngen[1,2] + genoutput[1,2] >= 0
 R23: - 1250 ngen[1,3] + genoutput[1,3] >= 0
 R24: - 1250 ngen[1,4] + genoutput[1,4] >= 0
 R25: - 1500 ngen[2,0] + genoutput[2,0] >= 0
 R26: - 1500 ngen[2,1] + genoutput[2,1] >= 0
 R27: - 1500 ngen[2,2] + genoutput[2,2] >= 0
 R28: - 1500 ngen[2,3] + genoutput[2,3] >= 0
 R29: - 1500 ngen[2,4] + genoutput[2,4] >= 0
 R30: - 2000 ngen[0,0] + genoutput[0,0] <= 0
 R31: - 2000 ngen[0,1] + genoutput[0,1] <= 0
 R32: - 2000 ngen[0,2] + genoutput[0,2] <= 0
 R33: - 2000 ngen[0,3] + genoutput[0,3] <= 0
 R34: - 2000 ngen[0,4] + genoutput[0,4] <= 0
 R35: - 1750 ngen[1,0] + genoutput[1,0] <= 0
 R36: - 1750 ngen[1,1] + genoutput[1,1] <= 0
 R37: - 1750 ngen[1,2] + genoutput[1,2] <= 0
 R38: - 1750 ngen[1,3] + genoutput[1,3] <= 0
 R39: - 1750 ngen[1,4] + genoutput[1,4] <= 0
 R40: - 4000 ngen[2,0] + genoutput[2,0] <= 0
 R41: - 4000 ngen[2,1] + genoutput[2,1] <= 0
 R42: - 4000 ngen[2,2] + genoutput[2,2] <= 0
 R43: - 4000 ngen[2,3] + genoutput[2,3] <= 0
 R44: - 4000 ngen[2,4] + genoutput[2,4] <= 0
 R45: genoutput[0,0] + genoutput[1,0] + genoutput[2,0] >= 15000
 R46: genoutput[0,1] + genoutput[1,1] + genoutput[2,1] >= 30000
 R47: genoutput[0,2] + genoutput[1,2] + genoutput[2,2] >= 25000
 R48: genoutput[0,3] + genoutput[1,3] + genoutput[2,3] >= 40000
 R49: genoutput[0,4] + genoutput[1,4] + genoutput[2,4] >= 27000
 R50: 2000 ngen[0,0] + 1750 ngen[1,0] + 4000 ngen[2,0] >= 17250
 R51: 2000 ngen[0,1] + 1750 ngen[1,1] + 4000 ngen[2,1] >= 34500
 R52: 2000 ngen[0,2] + 1750 ngen[1,2] + 4000 ngen[2,2] >= 28750
 R53: 2000 ngen[0,3] + 1750 ngen[1,3] + 4000 ngen[2,3] >= 46000
 R54: 2000 ngen[0,4] + 1750 ngen[1,4] + 4000 ngen[2,4] >= 31050
 R55: ngen[0,0] - nstart[0,0] <= 5
 R56: ngen[1,0] - nstart[1,0] <= 5
 R57: ngen[2,0] - nstart[2,0] <= 5
 R58: - ngen[0,0] + ngen[0,1] - nstart[0,1] <= 0
 R59: - ngen[0,1] + ngen[0,2] - nstart[0,2] <= 0
 R60: - ngen[0,2] + ngen[0,3] - nstart[0,3] <= 0
 R61: - ngen[0,3] + ngen[0,4] - nstart[0,4] <= 0
 R62: - ngen[1,0] + ngen[1,1] - nstart[1,1] <= 0
 R63: - ngen[1,1] + ngen[1,2] - nstart[1,2] <= 0
 R64: - ngen[1,2] + ngen[1,3] - nstart[1,3] <= 0
 R65: - ngen[1,3] + ngen[1,4] - nstart[1,4] <= 0
 R66: - ngen[2,0] + ngen[2,1] - nstart[2,1] <= 0
 R67: - ngen[2,1] + ngen[2,2] - nstart[2,2] <= 0
 R68: - ngen[2,2] + ngen[2,3] - nstart[2,3] <= 0
 R69: - ngen[2,3] + ngen[2,4] - nstart[2,4] <= 0
Bounds
Generals
 ngen[0,0] ngen[0,1] ngen[0,2] ngen[0,3] ngen[0,4] ngen[1,0] ngen[1,1]
 ngen[1,2] ngen[1,3] ngen[1,4] ngen[2,0] ngen[2,1] ngen[2,2] ngen[2,3]
 ngen[2,4] nstart[0,0] nstart[0,1] nstart[0,2] nstart[0,3] nstart[0,4]
 nstart[1,0] nstart[1,1] nstart[1,2] nstart[1,3] nstart[1,4] nstart[2,0]
 nstart[2,1] nstart[2,2] nstart[2,3] nstart[2,4]
End
