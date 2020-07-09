\ Model workforce5
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize multi-objectives
  TotalSlack: Priority=2 Weight=1 AbsTol=0 RelTol=0.2
   totSlack
  Fairness: Priority=1 Weight=1 AbsTol=0 RelTol=0
   - minShift + maxShift
Subject To
 shiftRequirement[Mon1]: x[Bob,Mon1] + x[Ed,Mon1] + x[Fred,Mon1]
   + x[Gu,Mon1] + Slack[Mon1] = 3
 shiftRequirement[Tue2]: x[Amy,Tue2] + x[Bob,Tue2] + x[Dan,Tue2]
   + x[Ed,Tue2] + x[Fred,Tue2] + x[Gu,Tue2] + Slack[Tue2] = 2
 shiftRequirement[Wed3]: x[Amy,Wed3] + x[Cathy,Wed3] + x[Dan,Wed3]
   + x[Ed,Wed3] + x[Fred,Wed3] + x[Gu,Wed3] + Slack[Wed3] = 4
 shiftRequirement[Thu4]: x[Cathy,Thu4] + x[Ed,Thu4] + Slack[Thu4] = 4
 shiftRequirement[Fri5]: x[Amy,Fri5] + x[Bob,Fri5] + x[Cathy,Fri5]
   + x[Dan,Fri5] + x[Ed,Fri5] + x[Gu,Fri5] + Slack[Fri5] = 5
 shiftRequirement[Sat6]: x[Bob,Sat6] + x[Dan,Sat6] + x[Fred,Sat6]
   + x[Gu,Sat6] + Slack[Sat6] = 6
 shiftRequirement[Sun7]: x[Amy,Sun7] + x[Cathy,Sun7] + x[Ed,Sun7]
   + x[Gu,Sun7] + Slack[Sun7] = 5
 shiftRequirement[Mon8]: x[Bob,Mon8] + x[Cathy,Mon8] + x[Dan,Mon8]
   + x[Ed,Mon8] + x[Fred,Mon8] + x[Gu,Mon8] + Slack[Mon8] = 2
 shiftRequirement[Tue9]: x[Amy,Tue9] + x[Cathy,Tue9] + x[Dan,Tue9]
   + x[Ed,Tue9] + x[Fred,Tue9] + x[Gu,Tue9] + Slack[Tue9] = 2
 shiftRequirement[Wed10]: x[Amy,Wed10] + x[Cathy,Wed10] + x[Dan,Wed10]
   + x[Gu,Wed10] + Slack[Wed10] = 3
 shiftRequirement[Thu11]: x[Amy,Thu11] + x[Bob,Thu11] + x[Cathy,Thu11]
   + x[Dan,Thu11] + x[Ed,Thu11] + x[Gu,Thu11] + Slack[Thu11] = 4
 shiftRequirement[Fri12]: x[Amy,Fri12] + x[Cathy,Fri12] + x[Dan,Fri12]
   + x[Fred,Fri12] + x[Gu,Fri12] + Slack[Fri12] = 6
 shiftRequirement[Sat13]: x[Amy,Sat13] + x[Bob,Sat13] + x[Cathy,Sat13]
   + x[Dan,Sat13] + x[Ed,Sat13] + x[Fred,Sat13] + x[Gu,Sat13]
   + Slack[Sat13] = 7
 shiftRequirement[Sun14]: x[Amy,Sun14] + x[Cathy,Sun14] + x[Dan,Sun14]
   + x[Ed,Sun14] + x[Fred,Sun14] + x[Gu,Sun14] + Slack[Sun14] = 5
 totSlack: - Slack[Mon1] - Slack[Tue2] - Slack[Wed3] - Slack[Thu4]
   - Slack[Fri5] - Slack[Sat6] - Slack[Sun7] - Slack[Mon8] - Slack[Tue9]
   - Slack[Wed10] - Slack[Thu11] - Slack[Fri12] - Slack[Sat13]
   - Slack[Sun14] + totSlack = 0
 totShifts[Amy]: - x[Amy,Tue2] - x[Amy,Wed3] - x[Amy,Fri5] - x[Amy,Sun7]
   - x[Amy,Tue9] - x[Amy,Wed10] - x[Amy,Thu11] - x[Amy,Fri12]
   - x[Amy,Sat13] - x[Amy,Sun14] + TotShifts[Amy] = 0
 totShifts[Bob]: - x[Bob,Mon1] - x[Bob,Tue2] - x[Bob,Fri5] - x[Bob,Sat6]
   - x[Bob,Mon8] - x[Bob,Thu11] - x[Bob,Sat13] + TotShifts[Bob] = 0
 totShifts[Cathy]: - x[Cathy,Wed3] - x[Cathy,Thu4] - x[Cathy,Fri5]
   - x[Cathy,Sun7] - x[Cathy,Mon8] - x[Cathy,Tue9] - x[Cathy,Wed10]
   - x[Cathy,Thu11] - x[Cathy,Fri12] - x[Cathy,Sat13] - x[Cathy,Sun14]
   + TotShifts[Cathy] = 0
 totShifts[Dan]: - x[Dan,Tue2] - x[Dan,Wed3] - x[Dan,Fri5] - x[Dan,Sat6]
   - x[Dan,Mon8] - x[Dan,Tue9] - x[Dan,Wed10] - x[Dan,Thu11] - x[Dan,Fri12]
   - x[Dan,Sat13] - x[Dan,Sun14] + TotShifts[Dan] = 0
 totShifts[Ed]: - x[Ed,Mon1] - x[Ed,Tue2] - x[Ed,Wed3] - x[Ed,Thu4]
   - x[Ed,Fri5] - x[Ed,Sun7] - x[Ed,Mon8] - x[Ed,Tue9] - x[Ed,Thu11]
   - x[Ed,Sat13] - x[Ed,Sun14] + TotShifts[Ed] = 0
 totShifts[Fred]: - x[Fred,Mon1] - x[Fred,Tue2] - x[Fred,Wed3]
   - x[Fred,Sat6] - x[Fred,Mon8] - x[Fred,Tue9] - x[Fred,Fri12]
   - x[Fred,Sat13] - x[Fred,Sun14] + TotShifts[Fred] = 0
 totShifts[Gu]: - x[Gu,Mon1] - x[Gu,Tue2] - x[Gu,Wed3] - x[Gu,Fri5]
   - x[Gu,Sat6] - x[Gu,Sun7] - x[Gu,Mon8] - x[Gu,Tue9] - x[Gu,Wed10]
   - x[Gu,Thu11] - x[Gu,Fri12] - x[Gu,Sat13] - x[Gu,Sun14] + TotShifts[Gu]
   = 0
Bounds
Binaries
 x[Amy,Tue2] x[Amy,Wed3] x[Amy,Fri5] x[Amy,Sun7] x[Amy,Tue9] x[Amy,Wed10]
 x[Amy,Thu11] x[Amy,Fri12] x[Amy,Sat13] x[Amy,Sun14] x[Bob,Mon1]
 x[Bob,Tue2] x[Bob,Fri5] x[Bob,Sat6] x[Bob,Mon8] x[Bob,Thu11] x[Bob,Sat13]
 x[Cathy,Wed3] x[Cathy,Thu4] x[Cathy,Fri5] x[Cathy,Sun7] x[Cathy,Mon8]
 x[Cathy,Tue9] x[Cathy,Wed10] x[Cathy,Thu11] x[Cathy,Fri12] x[Cathy,Sat13]
 x[Cathy,Sun14] x[Dan,Tue2] x[Dan,Wed3] x[Dan,Fri5] x[Dan,Sat6] x[Dan,Mon8]
 x[Dan,Tue9] x[Dan,Wed10] x[Dan,Thu11] x[Dan,Fri12] x[Dan,Sat13]
 x[Dan,Sun14] x[Ed,Mon1] x[Ed,Tue2] x[Ed,Wed3] x[Ed,Thu4] x[Ed,Fri5]
 x[Ed,Sun7] x[Ed,Mon8] x[Ed,Tue9] x[Ed,Thu11] x[Ed,Sat13] x[Ed,Sun14]
 x[Fred,Mon1] x[Fred,Tue2] x[Fred,Wed3] x[Fred,Sat6] x[Fred,Mon8]
 x[Fred,Tue9] x[Fred,Fri12] x[Fred,Sat13] x[Fred,Sun14] x[Gu,Mon1]
 x[Gu,Tue2] x[Gu,Wed3] x[Gu,Fri5] x[Gu,Sat6] x[Gu,Sun7] x[Gu,Mon8]
 x[Gu,Tue9] x[Gu,Wed10] x[Gu,Thu11] x[Gu,Fri12] x[Gu,Sat13] x[Gu,Sun14]
General Constraints
 minShift: minShift = MIN ( TotShifts[Amy] , TotShifts[Bob] ,
   TotShifts[Cathy] , TotShifts[Dan] , TotShifts[Ed] , TotShifts[Fred] ,
   TotShifts[Gu] )
 maxShift: maxShift = MAX ( TotShifts[Amy] , TotShifts[Bob] ,
   TotShifts[Cathy] , TotShifts[Dan] , TotShifts[Ed] , TotShifts[Fred] ,
   TotShifts[Gu] )
End
