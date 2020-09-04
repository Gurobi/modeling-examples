\ Model CurveFitting
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  u[1] + u[2] + u[3] + u[4] + u[5] + u[6] + u[7] + u[8] + u[9] + u[10]
   + u[11] + u[12] + u[13] + u[14] + u[15] + u[16] + u[17] + u[18] + u[19]
   + v[1] + v[2] + v[3] + v[4] + v[5] + v[6] + v[7] + v[8] + v[9] + v[10]
   + v[11] + v[12] + v[13] + v[14] + v[15] + v[16] + v[17] + v[18] + v[19]
   + 0 z
Subject To
 deviations[1]: a + u[1] - v[1] = 1
 deviations[2]: a + 0.5 b + u[2] - v[2] = 0.9
 deviations[3]: a + b + u[3] - v[3] = 0.7
 deviations[4]: a + 1.5 b + u[4] - v[4] = 1.5
 deviations[5]: a + 1.9 b + u[5] - v[5] = 2
 deviations[6]: a + 2.5 b + u[6] - v[6] = 2.4
 deviations[7]: a + 3 b + u[7] - v[7] = 3.2
 deviations[8]: a + 3.5 b + u[8] - v[8] = 2
 deviations[9]: a + 4 b + u[9] - v[9] = 2.7
 deviations[10]: a + 4.5 b + u[10] - v[10] = 3.5
 deviations[11]: a + 5 b + u[11] - v[11] = 1
 deviations[12]: a + 5.5 b + u[12] - v[12] = 4
 deviations[13]: a + 6 b + u[13] - v[13] = 3.6
 deviations[14]: a + 6.6 b + u[14] - v[14] = 2.7
 deviations[15]: a + 7 b + u[15] - v[15] = 5.7
 deviations[16]: a + 7.6 b + u[16] - v[16] = 4.6
 deviations[17]: a + 8.5 b + u[17] - v[17] = 6
 deviations[18]: a + 9 b + u[18] - v[18] = 6.8
 deviations[19]: a + 10 b + u[19] - v[19] = 7.3
Bounds
 a free
 b free
End
