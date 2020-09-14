\ Model opencastMining
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  - 1500 extract[4] + 1000 extract[6] - 1500 extract[8] - 1000 extract[9]
   - 1000 extract[10] - 1500 extract[11] - 2000 extract[12]
   - 1500 extract[13] - 1500 extract[14] - 2000 extract[15]
   - 2500 extract[16] + 2000 extract[17] + 2000 extract[18]
   - 2000 extract[19] - 4000 extract[22] - 2000 extract[23]
   - 2000 extract[24] - 5000 extract[25] + 16000 extract[26]
   + 4000 extract[27] + 2000 extract[28] + 2000 extract[30]
Subject To
 extractionConstrs[30,26]: - extract[26] + extract[30] <= 0
 extractionConstrs[30,27]: - extract[27] + extract[30] <= 0
 extractionConstrs[30,28]: - extract[28] + extract[30] <= 0
 extractionConstrs[30,29]: - extract[29] + extract[30] <= 0
 extractionConstrs[29,21]: - extract[21] + extract[29] <= 0
 extractionConstrs[29,22]: - extract[22] + extract[29] <= 0
 extractionConstrs[29,24]: - extract[24] + extract[29] <= 0
 extractionConstrs[29,25]: - extract[25] + extract[29] <= 0
 extractionConstrs[28,20]: - extract[20] + extract[28] <= 0
 extractionConstrs[28,21]: - extract[21] + extract[28] <= 0
 extractionConstrs[28,23]: - extract[23] + extract[28] <= 0
 extractionConstrs[28,24]: - extract[24] + extract[28] <= 0
 extractionConstrs[27,18]: - extract[18] + extract[27] <= 0
 extractionConstrs[27,19]: - extract[19] + extract[27] <= 0
 extractionConstrs[27,21]: - extract[21] + extract[27] <= 0
 extractionConstrs[27,22]: - extract[22] + extract[27] <= 0
 extractionConstrs[26,17]: - extract[17] + extract[26] <= 0
 extractionConstrs[26,18]: - extract[18] + extract[26] <= 0
 extractionConstrs[26,20]: - extract[20] + extract[26] <= 0
 extractionConstrs[26,21]: - extract[21] + extract[26] <= 0
 extractionConstrs[25,11]: - extract[11] + extract[25] <= 0
 extractionConstrs[25,12]: - extract[12] + extract[25] <= 0
 extractionConstrs[25,15]: - extract[15] + extract[25] <= 0
 extractionConstrs[25,16]: - extract[16] + extract[25] <= 0
 extractionConstrs[24,10]: - extract[10] + extract[24] <= 0
 extractionConstrs[24,11]: - extract[11] + extract[24] <= 0
 extractionConstrs[24,14]: - extract[14] + extract[24] <= 0
 extractionConstrs[24,15]: - extract[15] + extract[24] <= 0
 extractionConstrs[23,9]: - extract[9] + extract[23] <= 0
 extractionConstrs[23,10]: - extract[10] + extract[23] <= 0
 extractionConstrs[23,13]: - extract[13] + extract[23] <= 0
 extractionConstrs[23,14]: - extract[14] + extract[23] <= 0
 extractionConstrs[22,7]: - extract[7] + extract[22] <= 0
 extractionConstrs[22,8]: - extract[8] + extract[22] <= 0
 extractionConstrs[22,11]: - extract[11] + extract[22] <= 0
 extractionConstrs[22,12]: - extract[12] + extract[22] <= 0
 extractionConstrs[21,6]: - extract[6] + extract[21] <= 0
 extractionConstrs[21,7]: - extract[7] + extract[21] <= 0
 extractionConstrs[21,10]: - extract[10] + extract[21] <= 0
 extractionConstrs[21,11]: - extract[11] + extract[21] <= 0
 extractionConstrs[20,5]: - extract[5] + extract[20] <= 0
 extractionConstrs[20,6]: - extract[6] + extract[20] <= 0
 extractionConstrs[20,9]: - extract[9] + extract[20] <= 0
 extractionConstrs[20,10]: - extract[10] + extract[20] <= 0
 extractionConstrs[19,3]: - extract[3] + extract[19] <= 0
 extractionConstrs[19,4]: - extract[4] + extract[19] <= 0
 extractionConstrs[19,7]: - extract[7] + extract[19] <= 0
 extractionConstrs[19,8]: - extract[8] + extract[19] <= 0
 extractionConstrs[18,2]: - extract[2] + extract[18] <= 0
 extractionConstrs[18,3]: - extract[3] + extract[18] <= 0
 extractionConstrs[18,6]: - extract[6] + extract[18] <= 0
 extractionConstrs[18,7]: - extract[7] + extract[18] <= 0
 extractionConstrs[17,1]: - extract[1] + extract[17] <= 0
 extractionConstrs[17,2]: - extract[2] + extract[17] <= 0
 extractionConstrs[17,5]: - extract[5] + extract[17] <= 0
 extractionConstrs[17,6]: - extract[6] + extract[17] <= 0
Bounds
 extract[1] <= 1
 extract[2] <= 1
 extract[3] <= 1
 extract[4] <= 1
 extract[5] <= 1
 extract[6] <= 1
 extract[7] <= 1
 extract[8] <= 1
 extract[9] <= 1
 extract[10] <= 1
 extract[11] <= 1
 extract[12] <= 1
 extract[13] <= 1
 extract[14] <= 1
 extract[15] <= 1
 extract[16] <= 1
 extract[17] <= 1
 extract[18] <= 1
 extract[19] <= 1
 extract[20] <= 1
 extract[21] <= 1
 extract[22] <= 1
 extract[23] <= 1
 extract[24] <= 1
 extract[25] <= 1
 extract[26] <= 1
 extract[27] <= 1
 extract[28] <= 1
 extract[29] <= 1
 extract[30] <= 1
End
