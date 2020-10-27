\ Model RentalCar1
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  - 15 cars + 67.8 Hcars[Glasgow,0] + 67.8 Hcars[Glasgow,1]
   + 67.8 Hcars[Glasgow,2] + 67.8 Hcars[Glasgow,3] + 67.8 Hcars[Glasgow,4]
   + 67.8 Hcars[Glasgow,5] + 69.025 Hcars[Manchester,0]
   + 69.025 Hcars[Manchester,1] + 69.025 Hcars[Manchester,2]
   + 69.025 Hcars[Manchester,3] + 69.025 Hcars[Manchester,4]
   + 69.025 Hcars[Manchester,5] + 69.27 Hcars[Birmingham,0]
   + 69.27 Hcars[Birmingham,1] + 69.27 Hcars[Birmingham,2]
   + 69.27 Hcars[Birmingham,3] + 69.27 Hcars[Birmingham,4]
   + 69.27 Hcars[Birmingham,5] + 69.515 Hcars[Plymouth,0]
   + 69.515 Hcars[Plymouth,1] + 69.515 Hcars[Plymouth,2]
   + 69.515 Hcars[Plymouth,3] + 69.515 Hcars[Plymouth,4]
   + 69.515 Hcars[Plymouth,5] - 20 TUDcars[Glasgow,Manchester,0]
   - 20 TUDcars[Glasgow,Manchester,1] - 20 TUDcars[Glasgow,Manchester,2]
   - 20 TUDcars[Glasgow,Manchester,3] - 20 TUDcars[Glasgow,Manchester,4]
   - 20 TUDcars[Glasgow,Manchester,5] - 30 TUDcars[Glasgow,Birmingham,0]
   - 30 TUDcars[Glasgow,Birmingham,1] - 30 TUDcars[Glasgow,Birmingham,2]
   - 30 TUDcars[Glasgow,Birmingham,3] - 30 TUDcars[Glasgow,Birmingham,4]
   - 30 TUDcars[Glasgow,Birmingham,5] - 50 TUDcars[Glasgow,Plymouth,0]
   - 50 TUDcars[Glasgow,Plymouth,1] - 50 TUDcars[Glasgow,Plymouth,2]
   - 50 TUDcars[Glasgow,Plymouth,3] - 50 TUDcars[Glasgow,Plymouth,4]
   - 50 TUDcars[Glasgow,Plymouth,5] - 20 TUDcars[Manchester,Glasgow,0]
   - 20 TUDcars[Manchester,Glasgow,1] - 20 TUDcars[Manchester,Glasgow,2]
   - 20 TUDcars[Manchester,Glasgow,3] - 20 TUDcars[Manchester,Glasgow,4]
   - 20 TUDcars[Manchester,Glasgow,5] - 15 TUDcars[Manchester,Birmingham,0]
   - 15 TUDcars[Manchester,Birmingham,1]
   - 15 TUDcars[Manchester,Birmingham,2]
   - 15 TUDcars[Manchester,Birmingham,3]
   - 15 TUDcars[Manchester,Birmingham,4]
   - 15 TUDcars[Manchester,Birmingham,5]
   - 35 TUDcars[Manchester,Plymouth,0] - 35 TUDcars[Manchester,Plymouth,1]
   - 35 TUDcars[Manchester,Plymouth,2] - 35 TUDcars[Manchester,Plymouth,3]
   - 35 TUDcars[Manchester,Plymouth,4] - 35 TUDcars[Manchester,Plymouth,5]
   - 30 TUDcars[Birmingham,Glasgow,0] - 30 TUDcars[Birmingham,Glasgow,1]
   - 30 TUDcars[Birmingham,Glasgow,2] - 30 TUDcars[Birmingham,Glasgow,3]
   - 30 TUDcars[Birmingham,Glasgow,4] - 30 TUDcars[Birmingham,Glasgow,5]
   - 15 TUDcars[Birmingham,Manchester,0]
   - 15 TUDcars[Birmingham,Manchester,1]
   - 15 TUDcars[Birmingham,Manchester,2]
   - 15 TUDcars[Birmingham,Manchester,3]
   - 15 TUDcars[Birmingham,Manchester,4]
   - 15 TUDcars[Birmingham,Manchester,5]
   - 25 TUDcars[Birmingham,Plymouth,0] - 25 TUDcars[Birmingham,Plymouth,1]
   - 25 TUDcars[Birmingham,Plymouth,2] - 25 TUDcars[Birmingham,Plymouth,3]
   - 25 TUDcars[Birmingham,Plymouth,4] - 25 TUDcars[Birmingham,Plymouth,5]
   - 50 TUDcars[Plymouth,Glasgow,0] - 50 TUDcars[Plymouth,Glasgow,1]
   - 50 TUDcars[Plymouth,Glasgow,2] - 50 TUDcars[Plymouth,Glasgow,3]
   - 50 TUDcars[Plymouth,Glasgow,4] - 50 TUDcars[Plymouth,Glasgow,5]
   - 35 TUDcars[Plymouth,Manchester,0] - 35 TUDcars[Plymouth,Manchester,1]
   - 35 TUDcars[Plymouth,Manchester,2] - 35 TUDcars[Plymouth,Manchester,3]
   - 35 TUDcars[Plymouth,Manchester,4] - 35 TUDcars[Plymouth,Manchester,5]
   - 25 TUDcars[Plymouth,Birmingham,0] - 25 TUDcars[Plymouth,Birmingham,1]
   - 25 TUDcars[Plymouth,Birmingham,2] - 25 TUDcars[Plymouth,Birmingham,3]
   - 25 TUDcars[Plymouth,Birmingham,4] - 25 TUDcars[Plymouth,Birmingham,5]
   - 20 TDcars[Glasgow,Manchester,0] - 20 TDcars[Glasgow,Manchester,1]
   - 20 TDcars[Glasgow,Manchester,2] - 20 TDcars[Glasgow,Manchester,3]
   - 20 TDcars[Glasgow,Manchester,4] - 20 TDcars[Glasgow,Manchester,5]
   - 30 TDcars[Glasgow,Birmingham,0] - 30 TDcars[Glasgow,Birmingham,1]
   - 30 TDcars[Glasgow,Birmingham,2] - 30 TDcars[Glasgow,Birmingham,3]
   - 30 TDcars[Glasgow,Birmingham,4] - 30 TDcars[Glasgow,Birmingham,5]
   - 50 TDcars[Glasgow,Plymouth,0] - 50 TDcars[Glasgow,Plymouth,1]
   - 50 TDcars[Glasgow,Plymouth,2] - 50 TDcars[Glasgow,Plymouth,3]
   - 50 TDcars[Glasgow,Plymouth,4] - 50 TDcars[Glasgow,Plymouth,5]
   - 20 TDcars[Manchester,Glasgow,0] - 20 TDcars[Manchester,Glasgow,1]
   - 20 TDcars[Manchester,Glasgow,2] - 20 TDcars[Manchester,Glasgow,3]
   - 20 TDcars[Manchester,Glasgow,4] - 20 TDcars[Manchester,Glasgow,5]
   - 15 TDcars[Manchester,Birmingham,0]
   - 15 TDcars[Manchester,Birmingham,1]
   - 15 TDcars[Manchester,Birmingham,2]
   - 15 TDcars[Manchester,Birmingham,3]
   - 15 TDcars[Manchester,Birmingham,4]
   - 15 TDcars[Manchester,Birmingham,5] - 35 TDcars[Manchester,Plymouth,0]
   - 35 TDcars[Manchester,Plymouth,1] - 35 TDcars[Manchester,Plymouth,2]
   - 35 TDcars[Manchester,Plymouth,3] - 35 TDcars[Manchester,Plymouth,4]
   - 35 TDcars[Manchester,Plymouth,5] - 30 TDcars[Birmingham,Glasgow,0]
   - 30 TDcars[Birmingham,Glasgow,1] - 30 TDcars[Birmingham,Glasgow,2]
   - 30 TDcars[Birmingham,Glasgow,3] - 30 TDcars[Birmingham,Glasgow,4]
   - 30 TDcars[Birmingham,Glasgow,5] - 15 TDcars[Birmingham,Manchester,0]
   - 15 TDcars[Birmingham,Manchester,1]
   - 15 TDcars[Birmingham,Manchester,2]
   - 15 TDcars[Birmingham,Manchester,3]
   - 15 TDcars[Birmingham,Manchester,4]
   - 15 TDcars[Birmingham,Manchester,5] - 25 TDcars[Birmingham,Plymouth,0]
   - 25 TDcars[Birmingham,Plymouth,1] - 25 TDcars[Birmingham,Plymouth,2]
   - 25 TDcars[Birmingham,Plymouth,3] - 25 TDcars[Birmingham,Plymouth,4]
   - 25 TDcars[Birmingham,Plymouth,5] - 50 TDcars[Plymouth,Glasgow,0]
   - 50 TDcars[Plymouth,Glasgow,1] - 50 TDcars[Plymouth,Glasgow,2]
   - 50 TDcars[Plymouth,Glasgow,3] - 50 TDcars[Plymouth,Glasgow,4]
   - 50 TDcars[Plymouth,Glasgow,5] - 35 TDcars[Plymouth,Manchester,0]
   - 35 TDcars[Plymouth,Manchester,1] - 35 TDcars[Plymouth,Manchester,2]
   - 35 TDcars[Plymouth,Manchester,3] - 35 TDcars[Plymouth,Manchester,4]
   - 35 TDcars[Plymouth,Manchester,5] - 25 TDcars[Plymouth,Birmingham,0]
   - 25 TDcars[Plymouth,Birmingham,1] - 25 TDcars[Plymouth,Birmingham,2]
   - 25 TDcars[Plymouth,Birmingham,3] - 25 TDcars[Plymouth,Birmingham,4]
   - 25 TDcars[Plymouth,Birmingham,5] + 0 RPcars[Glasgow,0]
   + 0 RPcars[Glasgow,1] + 0 RPcars[Glasgow,2] + 0 RPcars[Glasgow,3]
   + 0 RPcars[Glasgow,4] + 0 RPcars[Glasgow,5] + 0 RPcars[Plymouth,0]
   + 0 RPcars[Plymouth,1] + 0 RPcars[Plymouth,2] + 0 RPcars[Plymouth,3]
   + 0 RPcars[Plymouth,4] + 0 RPcars[Plymouth,5]
Subject To
 UDcarsNRD_L[Glasgow,0]: - UDcars[Glasgow,0] + 0.135 Hcars[Glasgow,3]
   + 0.108 Hcars[Glasgow,4] + 0.297 Hcars[Glasgow,5]
   + 0.03375 Hcars[Manchester,3] + 0.027 Hcars[Manchester,4]
   + 0.07425 Hcars[Manchester,5] + 0.03375 Hcars[Birmingham,3]
   + 0.027 Hcars[Birmingham,4] + 0.07425 Hcars[Birmingham,5]
   + 0.018 Hcars[Plymouth,3] + 0.0144 Hcars[Plymouth,4]
   + 0.0396 Hcars[Plymouth,5] + EUDcars[Glasgow,5]
   + TUDcars[Manchester,Glasgow,5] + TUDcars[Birmingham,Glasgow,5]
   + TUDcars[Plymouth,Glasgow,5] = 0
 UDcarsNRD_L[Glasgow,1]: - UDcars[Glasgow,1] + 0.297 Hcars[Glasgow,0]
   + 0.135 Hcars[Glasgow,4] + 0.108 Hcars[Glasgow,5]
   + 0.07425 Hcars[Manchester,0] + 0.03375 Hcars[Manchester,4]
   + 0.027 Hcars[Manchester,5] + 0.07425 Hcars[Birmingham,0]
   + 0.03375 Hcars[Birmingham,4] + 0.027 Hcars[Birmingham,5]
   + 0.0396 Hcars[Plymouth,0] + 0.018 Hcars[Plymouth,4]
   + 0.0144 Hcars[Plymouth,5] + EUDcars[Glasgow,0]
   + TUDcars[Manchester,Glasgow,0] + TUDcars[Birmingham,Glasgow,0]
   + TUDcars[Plymouth,Glasgow,0] = 0
 UDcarsNRD_L[Glasgow,2]: - UDcars[Glasgow,2] + 0.108 Hcars[Glasgow,0]
   + 0.297 Hcars[Glasgow,1] + 0.135 Hcars[Glasgow,5]
   + 0.027 Hcars[Manchester,0] + 0.07425 Hcars[Manchester,1]
   + 0.03375 Hcars[Manchester,5] + 0.027 Hcars[Birmingham,0]
   + 0.07425 Hcars[Birmingham,1] + 0.03375 Hcars[Birmingham,5]
   + 0.0144 Hcars[Plymouth,0] + 0.0396 Hcars[Plymouth,1]
   + 0.018 Hcars[Plymouth,5] + EUDcars[Glasgow,1]
   + TUDcars[Manchester,Glasgow,1] + TUDcars[Birmingham,Glasgow,1]
   + TUDcars[Plymouth,Glasgow,1] = 0
 UDcarsNRD_L[Glasgow,3]: - UDcars[Glasgow,3] + 0.135 Hcars[Glasgow,0]
   + 0.108 Hcars[Glasgow,1] + 0.297 Hcars[Glasgow,2]
   + 0.03375 Hcars[Manchester,0] + 0.027 Hcars[Manchester,1]
   + 0.07425 Hcars[Manchester,2] + 0.03375 Hcars[Birmingham,0]
   + 0.027 Hcars[Birmingham,1] + 0.07425 Hcars[Birmingham,2]
   + 0.018 Hcars[Plymouth,0] + 0.0144 Hcars[Plymouth,1]
   + 0.0396 Hcars[Plymouth,2] + EUDcars[Glasgow,2]
   + TUDcars[Manchester,Glasgow,2] + TUDcars[Birmingham,Glasgow,2]
   + TUDcars[Plymouth,Glasgow,2] = 0
 UDcarsNRD_L[Glasgow,4]: - UDcars[Glasgow,4] + 0.135 Hcars[Glasgow,1]
   + 0.108 Hcars[Glasgow,2] + 0.297 Hcars[Glasgow,3]
   + 0.03375 Hcars[Manchester,1] + 0.027 Hcars[Manchester,2]
   + 0.07425 Hcars[Manchester,3] + 0.03375 Hcars[Birmingham,1]
   + 0.027 Hcars[Birmingham,2] + 0.07425 Hcars[Birmingham,3]
   + 0.018 Hcars[Plymouth,1] + 0.0144 Hcars[Plymouth,2]
   + 0.0396 Hcars[Plymouth,3] + EUDcars[Glasgow,3]
   + TUDcars[Manchester,Glasgow,3] + TUDcars[Birmingham,Glasgow,3]
   + TUDcars[Plymouth,Glasgow,3] = 0
 UDcarsNRD_L[Glasgow,5]: - UDcars[Glasgow,5] + 0.135 Hcars[Glasgow,2]
   + 0.108 Hcars[Glasgow,3] + 0.297 Hcars[Glasgow,4]
   + 0.03375 Hcars[Manchester,2] + 0.027 Hcars[Manchester,3]
   + 0.07425 Hcars[Manchester,4] + 0.03375 Hcars[Birmingham,2]
   + 0.027 Hcars[Birmingham,3] + 0.07425 Hcars[Birmingham,4]
   + 0.018 Hcars[Plymouth,2] + 0.0144 Hcars[Plymouth,3]
   + 0.0396 Hcars[Plymouth,4] + EUDcars[Glasgow,4]
   + TUDcars[Manchester,Glasgow,4] + TUDcars[Birmingham,Glasgow,4]
   + TUDcars[Plymouth,Glasgow,4] = 0
 UDcarsNRD_L[Plymouth,0]: - UDcars[Plymouth,0] + 0.0225 Hcars[Glasgow,3]
   + 0.018 Hcars[Glasgow,4] + 0.0495 Hcars[Glasgow,5]
   + 0.01125 Hcars[Manchester,3] + 0.009 Hcars[Manchester,4]
   + 0.02475 Hcars[Manchester,5] + 0.02475 Hcars[Birmingham,3]
   + 0.0198 Hcars[Birmingham,4] + 0.05445 Hcars[Birmingham,5]
   + 0.11925 Hcars[Plymouth,3] + 0.0954 Hcars[Plymouth,4]
   + 0.26235 Hcars[Plymouth,5] + EUDcars[Plymouth,5]
   + TUDcars[Glasgow,Plymouth,5] + TUDcars[Manchester,Plymouth,5]
   + TUDcars[Birmingham,Plymouth,5] = 0
 UDcarsNRD_L[Plymouth,1]: - UDcars[Plymouth,1] + 0.0495 Hcars[Glasgow,0]
   + 0.0225 Hcars[Glasgow,4] + 0.018 Hcars[Glasgow,5]
   + 0.02475 Hcars[Manchester,0] + 0.01125 Hcars[Manchester,4]
   + 0.009 Hcars[Manchester,5] + 0.05445 Hcars[Birmingham,0]
   + 0.02475 Hcars[Birmingham,4] + 0.0198 Hcars[Birmingham,5]
   + 0.26235 Hcars[Plymouth,0] + 0.11925 Hcars[Plymouth,4]
   + 0.0954 Hcars[Plymouth,5] + EUDcars[Plymouth,0]
   + TUDcars[Glasgow,Plymouth,0] + TUDcars[Manchester,Plymouth,0]
   + TUDcars[Birmingham,Plymouth,0] = 0
 UDcarsNRD_L[Plymouth,2]: - UDcars[Plymouth,2] + 0.018 Hcars[Glasgow,0]
   + 0.0495 Hcars[Glasgow,1] + 0.0225 Hcars[Glasgow,5]
   + 0.009 Hcars[Manchester,0] + 0.02475 Hcars[Manchester,1]
   + 0.01125 Hcars[Manchester,5] + 0.0198 Hcars[Birmingham,0]
   + 0.05445 Hcars[Birmingham,1] + 0.02475 Hcars[Birmingham,5]
   + 0.0954 Hcars[Plymouth,0] + 0.26235 Hcars[Plymouth,1]
   + 0.11925 Hcars[Plymouth,5] + EUDcars[Plymouth,1]
   + TUDcars[Glasgow,Plymouth,1] + TUDcars[Manchester,Plymouth,1]
   + TUDcars[Birmingham,Plymouth,1] = 0
 UDcarsNRD_L[Plymouth,3]: - UDcars[Plymouth,3] + 0.0225 Hcars[Glasgow,0]
   + 0.018 Hcars[Glasgow,1] + 0.0495 Hcars[Glasgow,2]
   + 0.01125 Hcars[Manchester,0] + 0.009 Hcars[Manchester,1]
   + 0.02475 Hcars[Manchester,2] + 0.02475 Hcars[Birmingham,0]
   + 0.0198 Hcars[Birmingham,1] + 0.05445 Hcars[Birmingham,2]
   + 0.11925 Hcars[Plymouth,0] + 0.0954 Hcars[Plymouth,1]
   + 0.26235 Hcars[Plymouth,2] + EUDcars[Plymouth,2]
   + TUDcars[Glasgow,Plymouth,2] + TUDcars[Manchester,Plymouth,2]
   + TUDcars[Birmingham,Plymouth,2] = 0
 UDcarsNRD_L[Plymouth,4]: - UDcars[Plymouth,4] + 0.0225 Hcars[Glasgow,1]
   + 0.018 Hcars[Glasgow,2] + 0.0495 Hcars[Glasgow,3]
   + 0.01125 Hcars[Manchester,1] + 0.009 Hcars[Manchester,2]
   + 0.02475 Hcars[Manchester,3] + 0.02475 Hcars[Birmingham,1]
   + 0.0198 Hcars[Birmingham,2] + 0.05445 Hcars[Birmingham,3]
   + 0.11925 Hcars[Plymouth,1] + 0.0954 Hcars[Plymouth,2]
   + 0.26235 Hcars[Plymouth,3] + EUDcars[Plymouth,3]
   + TUDcars[Glasgow,Plymouth,3] + TUDcars[Manchester,Plymouth,3]
   + TUDcars[Birmingham,Plymouth,3] = 0
 UDcarsNRD_L[Plymouth,5]: - UDcars[Plymouth,5] + 0.0225 Hcars[Glasgow,2]
   + 0.018 Hcars[Glasgow,3] + 0.0495 Hcars[Glasgow,4]
   + 0.01125 Hcars[Manchester,2] + 0.009 Hcars[Manchester,3]
   + 0.02475 Hcars[Manchester,4] + 0.02475 Hcars[Birmingham,2]
   + 0.0198 Hcars[Birmingham,3] + 0.05445 Hcars[Birmingham,4]
   + 0.11925 Hcars[Plymouth,2] + 0.0954 Hcars[Plymouth,3]
   + 0.26235 Hcars[Plymouth,4] + EUDcars[Plymouth,4]
   + TUDcars[Glasgow,Plymouth,4] + TUDcars[Manchester,Plymouth,4]
   + TUDcars[Birmingham,Plymouth,4] = 0
 UDcarsNRD_R[Glasgow,0]: - UDcars[Glasgow,0] + Hcars[Glasgow,0]
   + EUDcars[Glasgow,0] + TUDcars[Glasgow,Manchester,0]
   + TUDcars[Glasgow,Birmingham,0] + TUDcars[Glasgow,Plymouth,0] = 0
 UDcarsNRD_R[Glasgow,1]: - UDcars[Glasgow,1] + Hcars[Glasgow,1]
   + EUDcars[Glasgow,1] + TUDcars[Glasgow,Manchester,1]
   + TUDcars[Glasgow,Birmingham,1] + TUDcars[Glasgow,Plymouth,1] = 0
 UDcarsNRD_R[Glasgow,2]: - UDcars[Glasgow,2] + Hcars[Glasgow,2]
   + EUDcars[Glasgow,2] + TUDcars[Glasgow,Manchester,2]
   + TUDcars[Glasgow,Birmingham,2] + TUDcars[Glasgow,Plymouth,2] = 0
 UDcarsNRD_R[Glasgow,3]: - UDcars[Glasgow,3] + Hcars[Glasgow,3]
   + EUDcars[Glasgow,3] + TUDcars[Glasgow,Manchester,3]
   + TUDcars[Glasgow,Birmingham,3] + TUDcars[Glasgow,Plymouth,3] = 0
 UDcarsNRD_R[Glasgow,4]: - UDcars[Glasgow,4] + Hcars[Glasgow,4]
   + EUDcars[Glasgow,4] + TUDcars[Glasgow,Manchester,4]
   + TUDcars[Glasgow,Birmingham,4] + TUDcars[Glasgow,Plymouth,4] = 0
 UDcarsNRD_R[Glasgow,5]: - UDcars[Glasgow,5] + Hcars[Glasgow,5]
   + EUDcars[Glasgow,5] + TUDcars[Glasgow,Manchester,5]
   + TUDcars[Glasgow,Birmingham,5] + TUDcars[Glasgow,Plymouth,5] = 0
 UDcarsNRD_R[Plymouth,0]: - UDcars[Plymouth,0] + Hcars[Plymouth,0]
   + EUDcars[Plymouth,0] + TUDcars[Plymouth,Glasgow,0]
   + TUDcars[Plymouth,Manchester,0] + TUDcars[Plymouth,Birmingham,0] = 0
 UDcarsNRD_R[Plymouth,1]: - UDcars[Plymouth,1] + Hcars[Plymouth,1]
   + EUDcars[Plymouth,1] + TUDcars[Plymouth,Glasgow,1]
   + TUDcars[Plymouth,Manchester,1] + TUDcars[Plymouth,Birmingham,1] = 0
 UDcarsNRD_R[Plymouth,2]: - UDcars[Plymouth,2] + Hcars[Plymouth,2]
   + EUDcars[Plymouth,2] + TUDcars[Plymouth,Glasgow,2]
   + TUDcars[Plymouth,Manchester,2] + TUDcars[Plymouth,Birmingham,2] = 0
 UDcarsNRD_R[Plymouth,3]: - UDcars[Plymouth,3] + Hcars[Plymouth,3]
   + EUDcars[Plymouth,3] + TUDcars[Plymouth,Glasgow,3]
   + TUDcars[Plymouth,Manchester,3] + TUDcars[Plymouth,Birmingham,3] = 0
 UDcarsNRD_R[Plymouth,4]: - UDcars[Plymouth,4] + Hcars[Plymouth,4]
   + EUDcars[Plymouth,4] + TUDcars[Plymouth,Glasgow,4]
   + TUDcars[Plymouth,Manchester,4] + TUDcars[Plymouth,Birmingham,4] = 0
 UDcarsNRD_R[Plymouth,5]: - UDcars[Plymouth,5] + Hcars[Plymouth,5]
   + EUDcars[Plymouth,5] + TUDcars[Plymouth,Glasgow,5]
   + TUDcars[Plymouth,Manchester,5] + TUDcars[Plymouth,Birmingham,5] = 0
 UDcarsRD_L[Manchester,0]: - UDcars[Manchester,0] + 0.045 Hcars[Glasgow,3]
   + 0.036 Hcars[Glasgow,4] + 0.099 Hcars[Glasgow,5]
   + 0.12375 Hcars[Manchester,3] + 0.099 Hcars[Manchester,4]
   + 0.27225 Hcars[Manchester,5] + 0.045 Hcars[Birmingham,3]
   + 0.036 Hcars[Birmingham,4] + 0.099 Hcars[Birmingham,5]
   + 0.027 Hcars[Plymouth,3] + 0.0216 Hcars[Plymouth,4]
   + 0.0594 Hcars[Plymouth,5] + EUDcars[Manchester,5]
   + TUDcars[Glasgow,Manchester,5] + TUDcars[Birmingham,Manchester,5]
   + TUDcars[Plymouth,Manchester,5] + RPcars[Manchester,5] = 0
 UDcarsRD_L[Manchester,1]: - UDcars[Manchester,1] + 0.099 Hcars[Glasgow,0]
   + 0.045 Hcars[Glasgow,4] + 0.036 Hcars[Glasgow,5]
   + 0.27225 Hcars[Manchester,0] + 0.12375 Hcars[Manchester,4]
   + 0.099 Hcars[Manchester,5] + 0.099 Hcars[Birmingham,0]
   + 0.045 Hcars[Birmingham,4] + 0.036 Hcars[Birmingham,5]
   + 0.0594 Hcars[Plymouth,0] + 0.027 Hcars[Plymouth,4]
   + 0.0216 Hcars[Plymouth,5] + EUDcars[Manchester,0]
   + TUDcars[Glasgow,Manchester,0] + TUDcars[Birmingham,Manchester,0]
   + TUDcars[Plymouth,Manchester,0] + RPcars[Manchester,0] = 0
 UDcarsRD_L[Manchester,2]: - UDcars[Manchester,2] + 0.036 Hcars[Glasgow,0]
   + 0.099 Hcars[Glasgow,1] + 0.045 Hcars[Glasgow,5]
   + 0.099 Hcars[Manchester,0] + 0.27225 Hcars[Manchester,1]
   + 0.12375 Hcars[Manchester,5] + 0.036 Hcars[Birmingham,0]
   + 0.099 Hcars[Birmingham,1] + 0.045 Hcars[Birmingham,5]
   + 0.0216 Hcars[Plymouth,0] + 0.0594 Hcars[Plymouth,1]
   + 0.027 Hcars[Plymouth,5] + EUDcars[Manchester,1]
   + TUDcars[Glasgow,Manchester,1] + TUDcars[Birmingham,Manchester,1]
   + TUDcars[Plymouth,Manchester,1] + RPcars[Manchester,1] = 0
 UDcarsRD_L[Manchester,3]: - UDcars[Manchester,3] + 0.045 Hcars[Glasgow,0]
   + 0.036 Hcars[Glasgow,1] + 0.099 Hcars[Glasgow,2]
   + 0.12375 Hcars[Manchester,0] + 0.099 Hcars[Manchester,1]
   + 0.27225 Hcars[Manchester,2] + 0.045 Hcars[Birmingham,0]
   + 0.036 Hcars[Birmingham,1] + 0.099 Hcars[Birmingham,2]
   + 0.027 Hcars[Plymouth,0] + 0.0216 Hcars[Plymouth,1]
   + 0.0594 Hcars[Plymouth,2] + EUDcars[Manchester,2]
   + TUDcars[Glasgow,Manchester,2] + TUDcars[Birmingham,Manchester,2]
   + TUDcars[Plymouth,Manchester,2] + RPcars[Manchester,2] = 0
 UDcarsRD_L[Manchester,4]: - UDcars[Manchester,4] + 0.045 Hcars[Glasgow,1]
   + 0.036 Hcars[Glasgow,2] + 0.099 Hcars[Glasgow,3]
   + 0.12375 Hcars[Manchester,1] + 0.099 Hcars[Manchester,2]
   + 0.27225 Hcars[Manchester,3] + 0.045 Hcars[Birmingham,1]
   + 0.036 Hcars[Birmingham,2] + 0.099 Hcars[Birmingham,3]
   + 0.027 Hcars[Plymouth,1] + 0.0216 Hcars[Plymouth,2]
   + 0.0594 Hcars[Plymouth,3] + EUDcars[Manchester,3]
   + TUDcars[Glasgow,Manchester,3] + TUDcars[Birmingham,Manchester,3]
   + TUDcars[Plymouth,Manchester,3] + RPcars[Manchester,3] = 0
 UDcarsRD_L[Manchester,5]: - UDcars[Manchester,5] + 0.045 Hcars[Glasgow,2]
   + 0.036 Hcars[Glasgow,3] + 0.099 Hcars[Glasgow,4]
   + 0.12375 Hcars[Manchester,2] + 0.099 Hcars[Manchester,3]
   + 0.27225 Hcars[Manchester,4] + 0.045 Hcars[Birmingham,2]
   + 0.036 Hcars[Birmingham,3] + 0.099 Hcars[Birmingham,4]
   + 0.027 Hcars[Plymouth,2] + 0.0216 Hcars[Plymouth,3]
   + 0.0594 Hcars[Plymouth,4] + EUDcars[Manchester,4]
   + TUDcars[Glasgow,Manchester,4] + TUDcars[Birmingham,Manchester,4]
   + TUDcars[Plymouth,Manchester,4] + RPcars[Manchester,4] = 0
 UDcarsRD_L[Birmingham,0]: - UDcars[Birmingham,0] + 0.0225 Hcars[Glasgow,3]
   + 0.018 Hcars[Glasgow,4] + 0.0495 Hcars[Glasgow,5]
   + 0.05625 Hcars[Manchester,3] + 0.045 Hcars[Manchester,4]
   + 0.12375 Hcars[Manchester,5] + 0.1215 Hcars[Birmingham,3]
   + 0.0972 Hcars[Birmingham,4] + 0.2673 Hcars[Birmingham,5]
   + 0.06075 Hcars[Plymouth,3] + 0.0486 Hcars[Plymouth,4]
   + 0.13365 Hcars[Plymouth,5] + EUDcars[Birmingham,5]
   + TUDcars[Glasgow,Birmingham,5] + TUDcars[Manchester,Birmingham,5]
   + TUDcars[Plymouth,Birmingham,5] + RPcars[Birmingham,5] = 0
 UDcarsRD_L[Birmingham,1]: - UDcars[Birmingham,1] + 0.0495 Hcars[Glasgow,0]
   + 0.0225 Hcars[Glasgow,4] + 0.018 Hcars[Glasgow,5]
   + 0.12375 Hcars[Manchester,0] + 0.05625 Hcars[Manchester,4]
   + 0.045 Hcars[Manchester,5] + 0.2673 Hcars[Birmingham,0]
   + 0.1215 Hcars[Birmingham,4] + 0.0972 Hcars[Birmingham,5]
   + 0.13365 Hcars[Plymouth,0] + 0.06075 Hcars[Plymouth,4]
   + 0.0486 Hcars[Plymouth,5] + EUDcars[Birmingham,0]
   + TUDcars[Glasgow,Birmingham,0] + TUDcars[Manchester,Birmingham,0]
   + TUDcars[Plymouth,Birmingham,0] + RPcars[Birmingham,0] = 0
 UDcarsRD_L[Birmingham,2]: - UDcars[Birmingham,2] + 0.018 Hcars[Glasgow,0]
   + 0.0495 Hcars[Glasgow,1] + 0.0225 Hcars[Glasgow,5]
   + 0.045 Hcars[Manchester,0] + 0.12375 Hcars[Manchester,1]
   + 0.05625 Hcars[Manchester,5] + 0.0972 Hcars[Birmingham,0]
   + 0.2673 Hcars[Birmingham,1] + 0.1215 Hcars[Birmingham,5]
   + 0.0486 Hcars[Plymouth,0] + 0.13365 Hcars[Plymouth,1]
   + 0.06075 Hcars[Plymouth,5] + EUDcars[Birmingham,1]
   + TUDcars[Glasgow,Birmingham,1] + TUDcars[Manchester,Birmingham,1]
   + TUDcars[Plymouth,Birmingham,1] + RPcars[Birmingham,1] = 0
 UDcarsRD_L[Birmingham,3]: - UDcars[Birmingham,3] + 0.0225 Hcars[Glasgow,0]
   + 0.018 Hcars[Glasgow,1] + 0.0495 Hcars[Glasgow,2]
   + 0.05625 Hcars[Manchester,0] + 0.045 Hcars[Manchester,1]
   + 0.12375 Hcars[Manchester,2] + 0.1215 Hcars[Birmingham,0]
   + 0.0972 Hcars[Birmingham,1] + 0.2673 Hcars[Birmingham,2]
   + 0.06075 Hcars[Plymouth,0] + 0.0486 Hcars[Plymouth,1]
   + 0.13365 Hcars[Plymouth,2] + EUDcars[Birmingham,2]
   + TUDcars[Glasgow,Birmingham,2] + TUDcars[Manchester,Birmingham,2]
   + TUDcars[Plymouth,Birmingham,2] + RPcars[Birmingham,2] = 0
 UDcarsRD_L[Birmingham,4]: - UDcars[Birmingham,4] + 0.0225 Hcars[Glasgow,1]
   + 0.018 Hcars[Glasgow,2] + 0.0495 Hcars[Glasgow,3]
   + 0.05625 Hcars[Manchester,1] + 0.045 Hcars[Manchester,2]
   + 0.12375 Hcars[Manchester,3] + 0.1215 Hcars[Birmingham,1]
   + 0.0972 Hcars[Birmingham,2] + 0.2673 Hcars[Birmingham,3]
   + 0.06075 Hcars[Plymouth,1] + 0.0486 Hcars[Plymouth,2]
   + 0.13365 Hcars[Plymouth,3] + EUDcars[Birmingham,3]
   + TUDcars[Glasgow,Birmingham,3] + TUDcars[Manchester,Birmingham,3]
   + TUDcars[Plymouth,Birmingham,3] + RPcars[Birmingham,3] = 0
 UDcarsRD_L[Birmingham,5]: - UDcars[Birmingham,5] + 0.0225 Hcars[Glasgow,2]
   + 0.018 Hcars[Glasgow,3] + 0.0495 Hcars[Glasgow,4]
   + 0.05625 Hcars[Manchester,2] + 0.045 Hcars[Manchester,3]
   + 0.12375 Hcars[Manchester,4] + 0.1215 Hcars[Birmingham,2]
   + 0.0972 Hcars[Birmingham,3] + 0.2673 Hcars[Birmingham,4]
   + 0.06075 Hcars[Plymouth,2] + 0.0486 Hcars[Plymouth,3]
   + 0.13365 Hcars[Plymouth,4] + EUDcars[Birmingham,4]
   + TUDcars[Glasgow,Birmingham,4] + TUDcars[Manchester,Birmingham,4]
   + TUDcars[Plymouth,Birmingham,4] + RPcars[Birmingham,4] = 0
 UDcarsRD_R[Manchester,0]: - UDcars[Manchester,0] + Hcars[Manchester,0]
   + EUDcars[Manchester,0] + TUDcars[Manchester,Glasgow,0]
   + TUDcars[Manchester,Birmingham,0] + TUDcars[Manchester,Plymouth,0] = 0
 UDcarsRD_R[Manchester,1]: - UDcars[Manchester,1] + Hcars[Manchester,1]
   + EUDcars[Manchester,1] + TUDcars[Manchester,Glasgow,1]
   + TUDcars[Manchester,Birmingham,1] + TUDcars[Manchester,Plymouth,1] = 0
 UDcarsRD_R[Manchester,2]: - UDcars[Manchester,2] + Hcars[Manchester,2]
   + EUDcars[Manchester,2] + TUDcars[Manchester,Glasgow,2]
   + TUDcars[Manchester,Birmingham,2] + TUDcars[Manchester,Plymouth,2] = 0
 UDcarsRD_R[Manchester,3]: - UDcars[Manchester,3] + Hcars[Manchester,3]
   + EUDcars[Manchester,3] + TUDcars[Manchester,Glasgow,3]
   + TUDcars[Manchester,Birmingham,3] + TUDcars[Manchester,Plymouth,3] = 0
 UDcarsRD_R[Manchester,4]: - UDcars[Manchester,4] + Hcars[Manchester,4]
   + EUDcars[Manchester,4] + TUDcars[Manchester,Glasgow,4]
   + TUDcars[Manchester,Birmingham,4] + TUDcars[Manchester,Plymouth,4] = 0
 UDcarsRD_R[Manchester,5]: - UDcars[Manchester,5] + Hcars[Manchester,5]
   + EUDcars[Manchester,5] + TUDcars[Manchester,Glasgow,5]
   + TUDcars[Manchester,Birmingham,5] + TUDcars[Manchester,Plymouth,5] = 0
 UDcarsRD_R[Birmingham,0]: - UDcars[Birmingham,0] + Hcars[Birmingham,0]
   + EUDcars[Birmingham,0] + TUDcars[Birmingham,Glasgow,0]
   + TUDcars[Birmingham,Manchester,0] + TUDcars[Birmingham,Plymouth,0] = 0
 UDcarsRD_R[Birmingham,1]: - UDcars[Birmingham,1] + Hcars[Birmingham,1]
   + EUDcars[Birmingham,1] + TUDcars[Birmingham,Glasgow,1]
   + TUDcars[Birmingham,Manchester,1] + TUDcars[Birmingham,Plymouth,1] = 0
 UDcarsRD_R[Birmingham,2]: - UDcars[Birmingham,2] + Hcars[Birmingham,2]
   + EUDcars[Birmingham,2] + TUDcars[Birmingham,Glasgow,2]
   + TUDcars[Birmingham,Manchester,2] + TUDcars[Birmingham,Plymouth,2] = 0
 UDcarsRD_R[Birmingham,3]: - UDcars[Birmingham,3] + Hcars[Birmingham,3]
   + EUDcars[Birmingham,3] + TUDcars[Birmingham,Glasgow,3]
   + TUDcars[Birmingham,Manchester,3] + TUDcars[Birmingham,Plymouth,3] = 0
 UDcarsRD_R[Birmingham,4]: - UDcars[Birmingham,4] + Hcars[Birmingham,4]
   + EUDcars[Birmingham,4] + TUDcars[Birmingham,Glasgow,4]
   + TUDcars[Birmingham,Manchester,4] + TUDcars[Birmingham,Plymouth,4] = 0
 UDcarsRD_R[Birmingham,5]: - UDcars[Birmingham,5] + Hcars[Birmingham,5]
   + EUDcars[Birmingham,5] + TUDcars[Birmingham,Glasgow,5]
   + TUDcars[Birmingham,Manchester,5] + TUDcars[Birmingham,Plymouth,5] = 0
 DcarsNRD_L[Glasgow,0]: - Dcars[Glasgow,0] + 0.015 Hcars[Glasgow,3]
   + 0.012 Hcars[Glasgow,4] + 0.033 Hcars[Glasgow,5]
   + 0.00375 Hcars[Manchester,3] + 0.003 Hcars[Manchester,4]
   + 0.00825 Hcars[Manchester,5] + 0.00375 Hcars[Birmingham,3]
   + 0.003 Hcars[Birmingham,4] + 0.00825 Hcars[Birmingham,5]
   + 0.002 Hcars[Plymouth,3] + 0.0016 Hcars[Plymouth,4]
   + 0.0044 Hcars[Plymouth,5] + EDcars[Glasgow,5] = 0
 DcarsNRD_L[Glasgow,1]: - Dcars[Glasgow,1] + 0.033 Hcars[Glasgow,0]
   + 0.015 Hcars[Glasgow,4] + 0.012 Hcars[Glasgow,5]
   + 0.00825 Hcars[Manchester,0] + 0.00375 Hcars[Manchester,4]
   + 0.003 Hcars[Manchester,5] + 0.00825 Hcars[Birmingham,0]
   + 0.00375 Hcars[Birmingham,4] + 0.003 Hcars[Birmingham,5]
   + 0.0044 Hcars[Plymouth,0] + 0.002 Hcars[Plymouth,4]
   + 0.0016 Hcars[Plymouth,5] + EDcars[Glasgow,0] = 0
 DcarsNRD_L[Glasgow,2]: - Dcars[Glasgow,2] + 0.012 Hcars[Glasgow,0]
   + 0.033 Hcars[Glasgow,1] + 0.015 Hcars[Glasgow,5]
   + 0.003 Hcars[Manchester,0] + 0.00825 Hcars[Manchester,1]
   + 0.00375 Hcars[Manchester,5] + 0.003 Hcars[Birmingham,0]
   + 0.00825 Hcars[Birmingham,1] + 0.00375 Hcars[Birmingham,5]
   + 0.0016 Hcars[Plymouth,0] + 0.0044 Hcars[Plymouth,1]
   + 0.002 Hcars[Plymouth,5] + EDcars[Glasgow,1] = 0
 DcarsNRD_L[Glasgow,3]: - Dcars[Glasgow,3] + 0.015 Hcars[Glasgow,0]
   + 0.012 Hcars[Glasgow,1] + 0.033 Hcars[Glasgow,2]
   + 0.00375 Hcars[Manchester,0] + 0.003 Hcars[Manchester,1]
   + 0.00825 Hcars[Manchester,2] + 0.00375 Hcars[Birmingham,0]
   + 0.003 Hcars[Birmingham,1] + 0.00825 Hcars[Birmingham,2]
   + 0.002 Hcars[Plymouth,0] + 0.0016 Hcars[Plymouth,1]
   + 0.0044 Hcars[Plymouth,2] + EDcars[Glasgow,2] = 0
 DcarsNRD_L[Glasgow,4]: - Dcars[Glasgow,4] + 0.015 Hcars[Glasgow,1]
   + 0.012 Hcars[Glasgow,2] + 0.033 Hcars[Glasgow,3]
   + 0.00375 Hcars[Manchester,1] + 0.003 Hcars[Manchester,2]
   + 0.00825 Hcars[Manchester,3] + 0.00375 Hcars[Birmingham,1]
   + 0.003 Hcars[Birmingham,2] + 0.00825 Hcars[Birmingham,3]
   + 0.002 Hcars[Plymouth,1] + 0.0016 Hcars[Plymouth,2]
   + 0.0044 Hcars[Plymouth,3] + EDcars[Glasgow,3] = 0
 DcarsNRD_L[Glasgow,5]: - Dcars[Glasgow,5] + 0.015 Hcars[Glasgow,2]
   + 0.012 Hcars[Glasgow,3] + 0.033 Hcars[Glasgow,4]
   + 0.00375 Hcars[Manchester,2] + 0.003 Hcars[Manchester,3]
   + 0.00825 Hcars[Manchester,4] + 0.00375 Hcars[Birmingham,2]
   + 0.003 Hcars[Birmingham,3] + 0.00825 Hcars[Birmingham,4]
   + 0.002 Hcars[Plymouth,2] + 0.0016 Hcars[Plymouth,3]
   + 0.0044 Hcars[Plymouth,4] + EDcars[Glasgow,4] = 0
 DcarsNRD_L[Plymouth,0]: - Dcars[Plymouth,0] + 0.0025 Hcars[Glasgow,3]
   + 0.002 Hcars[Glasgow,4] + 0.0055 Hcars[Glasgow,5]
   + 0.00125 Hcars[Manchester,3] + 0.001 Hcars[Manchester,4]
   + 0.00275 Hcars[Manchester,5] + 0.00275 Hcars[Birmingham,3]
   + 0.0022 Hcars[Birmingham,4] + 0.00605 Hcars[Birmingham,5]
   + 0.01325 Hcars[Plymouth,3] + 0.0106 Hcars[Plymouth,4]
   + 0.02915 Hcars[Plymouth,5] + EDcars[Plymouth,5] = 0
 DcarsNRD_L[Plymouth,1]: - Dcars[Plymouth,1] + 0.0055 Hcars[Glasgow,0]
   + 0.0025 Hcars[Glasgow,4] + 0.002 Hcars[Glasgow,5]
   + 0.00275 Hcars[Manchester,0] + 0.00125 Hcars[Manchester,4]
   + 0.001 Hcars[Manchester,5] + 0.00605 Hcars[Birmingham,0]
   + 0.00275 Hcars[Birmingham,4] + 0.0022 Hcars[Birmingham,5]
   + 0.02915 Hcars[Plymouth,0] + 0.01325 Hcars[Plymouth,4]
   + 0.0106 Hcars[Plymouth,5] + EDcars[Plymouth,0] = 0
 DcarsNRD_L[Plymouth,2]: - Dcars[Plymouth,2] + 0.002 Hcars[Glasgow,0]
   + 0.0055 Hcars[Glasgow,1] + 0.0025 Hcars[Glasgow,5]
   + 0.001 Hcars[Manchester,0] + 0.00275 Hcars[Manchester,1]
   + 0.00125 Hcars[Manchester,5] + 0.0022 Hcars[Birmingham,0]
   + 0.00605 Hcars[Birmingham,1] + 0.00275 Hcars[Birmingham,5]
   + 0.0106 Hcars[Plymouth,0] + 0.02915 Hcars[Plymouth,1]
   + 0.01325 Hcars[Plymouth,5] + EDcars[Plymouth,1] = 0
 DcarsNRD_L[Plymouth,3]: - Dcars[Plymouth,3] + 0.0025 Hcars[Glasgow,0]
   + 0.002 Hcars[Glasgow,1] + 0.0055 Hcars[Glasgow,2]
   + 0.00125 Hcars[Manchester,0] + 0.001 Hcars[Manchester,1]
   + 0.00275 Hcars[Manchester,2] + 0.00275 Hcars[Birmingham,0]
   + 0.0022 Hcars[Birmingham,1] + 0.00605 Hcars[Birmingham,2]
   + 0.01325 Hcars[Plymouth,0] + 0.0106 Hcars[Plymouth,1]
   + 0.02915 Hcars[Plymouth,2] + EDcars[Plymouth,2] = 0
 DcarsNRD_L[Plymouth,4]: - Dcars[Plymouth,4] + 0.0025 Hcars[Glasgow,1]
   + 0.002 Hcars[Glasgow,2] + 0.0055 Hcars[Glasgow,3]
   + 0.00125 Hcars[Manchester,1] + 0.001 Hcars[Manchester,2]
   + 0.00275 Hcars[Manchester,3] + 0.00275 Hcars[Birmingham,1]
   + 0.0022 Hcars[Birmingham,2] + 0.00605 Hcars[Birmingham,3]
   + 0.01325 Hcars[Plymouth,1] + 0.0106 Hcars[Plymouth,2]
   + 0.02915 Hcars[Plymouth,3] + EDcars[Plymouth,3] = 0
 DcarsNRD_L[Plymouth,5]: - Dcars[Plymouth,5] + 0.0025 Hcars[Glasgow,2]
   + 0.002 Hcars[Glasgow,3] + 0.0055 Hcars[Glasgow,4]
   + 0.00125 Hcars[Manchester,2] + 0.001 Hcars[Manchester,3]
   + 0.00275 Hcars[Manchester,4] + 0.00275 Hcars[Birmingham,2]
   + 0.0022 Hcars[Birmingham,3] + 0.00605 Hcars[Birmingham,4]
   + 0.01325 Hcars[Plymouth,2] + 0.0106 Hcars[Plymouth,3]
   + 0.02915 Hcars[Plymouth,4] + EDcars[Plymouth,4] = 0
 DcarsNRD_R[Glasgow,0]: - Dcars[Glasgow,0] + EDcars[Glasgow,0]
   + TDcars[Glasgow,Manchester,0] + TDcars[Glasgow,Birmingham,0] = 0
 DcarsNRD_R[Glasgow,1]: - Dcars[Glasgow,1] + EDcars[Glasgow,1]
   + TDcars[Glasgow,Manchester,1] + TDcars[Glasgow,Birmingham,1] = 0
 DcarsNRD_R[Glasgow,2]: - Dcars[Glasgow,2] + EDcars[Glasgow,2]
   + TDcars[Glasgow,Manchester,2] + TDcars[Glasgow,Birmingham,2] = 0
 DcarsNRD_R[Glasgow,3]: - Dcars[Glasgow,3] + EDcars[Glasgow,3]
   + TDcars[Glasgow,Manchester,3] + TDcars[Glasgow,Birmingham,3] = 0
 DcarsNRD_R[Glasgow,4]: - Dcars[Glasgow,4] + EDcars[Glasgow,4]
   + TDcars[Glasgow,Manchester,4] + TDcars[Glasgow,Birmingham,4] = 0
 DcarsNRD_R[Glasgow,5]: - Dcars[Glasgow,5] + EDcars[Glasgow,5]
   + TDcars[Glasgow,Manchester,5] + TDcars[Glasgow,Birmingham,5] = 0
 DcarsNRD_R[Plymouth,0]: - Dcars[Plymouth,0] + EDcars[Plymouth,0]
   + TDcars[Plymouth,Manchester,0] + TDcars[Plymouth,Birmingham,0] = 0
 DcarsNRD_R[Plymouth,1]: - Dcars[Plymouth,1] + EDcars[Plymouth,1]
   + TDcars[Plymouth,Manchester,1] + TDcars[Plymouth,Birmingham,1] = 0
 DcarsNRD_R[Plymouth,2]: - Dcars[Plymouth,2] + EDcars[Plymouth,2]
   + TDcars[Plymouth,Manchester,2] + TDcars[Plymouth,Birmingham,2] = 0
 DcarsNRD_R[Plymouth,3]: - Dcars[Plymouth,3] + EDcars[Plymouth,3]
   + TDcars[Plymouth,Manchester,3] + TDcars[Plymouth,Birmingham,3] = 0
 DcarsNRD_R[Plymouth,4]: - Dcars[Plymouth,4] + EDcars[Plymouth,4]
   + TDcars[Plymouth,Manchester,4] + TDcars[Plymouth,Birmingham,4] = 0
 DcarsNRD_R[Plymouth,5]: - Dcars[Plymouth,5] + EDcars[Plymouth,5]
   + TDcars[Plymouth,Manchester,5] + TDcars[Plymouth,Birmingham,5] = 0
 DcarsRD_L[Manchester,0]: - Dcars[Manchester,0] + 0.005 Hcars[Glasgow,3]
   + 0.004 Hcars[Glasgow,4] + 0.011 Hcars[Glasgow,5]
   + 0.01375 Hcars[Manchester,3] + 0.011 Hcars[Manchester,4]
   + 0.03025 Hcars[Manchester,5] + 0.005 Hcars[Birmingham,3]
   + 0.004 Hcars[Birmingham,4] + 0.011 Hcars[Birmingham,5]
   + 0.003 Hcars[Plymouth,3] + 0.0024 Hcars[Plymouth,4]
   + 0.0066 Hcars[Plymouth,5] + EDcars[Manchester,5]
   + TDcars[Glasgow,Manchester,5] + TDcars[Birmingham,Manchester,5]
   + TDcars[Plymouth,Manchester,5] = 0
 DcarsRD_L[Manchester,1]: - Dcars[Manchester,1] + 0.011 Hcars[Glasgow,0]
   + 0.005 Hcars[Glasgow,4] + 0.004 Hcars[Glasgow,5]
   + 0.03025 Hcars[Manchester,0] + 0.01375 Hcars[Manchester,4]
   + 0.011 Hcars[Manchester,5] + 0.011 Hcars[Birmingham,0]
   + 0.005 Hcars[Birmingham,4] + 0.004 Hcars[Birmingham,5]
   + 0.0066 Hcars[Plymouth,0] + 0.003 Hcars[Plymouth,4]
   + 0.0024 Hcars[Plymouth,5] + EDcars[Manchester,0]
   + TDcars[Glasgow,Manchester,0] + TDcars[Birmingham,Manchester,0]
   + TDcars[Plymouth,Manchester,0] = 0
 DcarsRD_L[Manchester,2]: - Dcars[Manchester,2] + 0.004 Hcars[Glasgow,0]
   + 0.011 Hcars[Glasgow,1] + 0.005 Hcars[Glasgow,5]
   + 0.011 Hcars[Manchester,0] + 0.03025 Hcars[Manchester,1]
   + 0.01375 Hcars[Manchester,5] + 0.004 Hcars[Birmingham,0]
   + 0.011 Hcars[Birmingham,1] + 0.005 Hcars[Birmingham,5]
   + 0.0024 Hcars[Plymouth,0] + 0.0066 Hcars[Plymouth,1]
   + 0.003 Hcars[Plymouth,5] + EDcars[Manchester,1]
   + TDcars[Glasgow,Manchester,1] + TDcars[Birmingham,Manchester,1]
   + TDcars[Plymouth,Manchester,1] = 0
 DcarsRD_L[Manchester,3]: - Dcars[Manchester,3] + 0.005 Hcars[Glasgow,0]
   + 0.004 Hcars[Glasgow,1] + 0.011 Hcars[Glasgow,2]
   + 0.01375 Hcars[Manchester,0] + 0.011 Hcars[Manchester,1]
   + 0.03025 Hcars[Manchester,2] + 0.005 Hcars[Birmingham,0]
   + 0.004 Hcars[Birmingham,1] + 0.011 Hcars[Birmingham,2]
   + 0.003 Hcars[Plymouth,0] + 0.0024 Hcars[Plymouth,1]
   + 0.0066 Hcars[Plymouth,2] + EDcars[Manchester,2]
   + TDcars[Glasgow,Manchester,2] + TDcars[Birmingham,Manchester,2]
   + TDcars[Plymouth,Manchester,2] = 0
 DcarsRD_L[Manchester,4]: - Dcars[Manchester,4] + 0.005 Hcars[Glasgow,1]
   + 0.004 Hcars[Glasgow,2] + 0.011 Hcars[Glasgow,3]
   + 0.01375 Hcars[Manchester,1] + 0.011 Hcars[Manchester,2]
   + 0.03025 Hcars[Manchester,3] + 0.005 Hcars[Birmingham,1]
   + 0.004 Hcars[Birmingham,2] + 0.011 Hcars[Birmingham,3]
   + 0.003 Hcars[Plymouth,1] + 0.0024 Hcars[Plymouth,2]
   + 0.0066 Hcars[Plymouth,3] + EDcars[Manchester,3]
   + TDcars[Glasgow,Manchester,3] + TDcars[Birmingham,Manchester,3]
   + TDcars[Plymouth,Manchester,3] = 0
 DcarsRD_L[Manchester,5]: - Dcars[Manchester,5] + 0.005 Hcars[Glasgow,2]
   + 0.004 Hcars[Glasgow,3] + 0.011 Hcars[Glasgow,4]
   + 0.01375 Hcars[Manchester,2] + 0.011 Hcars[Manchester,3]
   + 0.03025 Hcars[Manchester,4] + 0.005 Hcars[Birmingham,2]
   + 0.004 Hcars[Birmingham,3] + 0.011 Hcars[Birmingham,4]
   + 0.003 Hcars[Plymouth,2] + 0.0024 Hcars[Plymouth,3]
   + 0.0066 Hcars[Plymouth,4] + EDcars[Manchester,4]
   + TDcars[Glasgow,Manchester,4] + TDcars[Birmingham,Manchester,4]
   + TDcars[Plymouth,Manchester,4] = 0
 DcarsRD_L[Birmingham,0]: - Dcars[Birmingham,0] + 0.0025 Hcars[Glasgow,3]
   + 0.002 Hcars[Glasgow,4] + 0.0055 Hcars[Glasgow,5]
   + 0.00625 Hcars[Manchester,3] + 0.005 Hcars[Manchester,4]
   + 0.01375 Hcars[Manchester,5] + 0.0135 Hcars[Birmingham,3]
   + 0.0108 Hcars[Birmingham,4] + 0.0297 Hcars[Birmingham,5]
   + 0.00675 Hcars[Plymouth,3] + 0.0054 Hcars[Plymouth,4]
   + 0.01485 Hcars[Plymouth,5] + EDcars[Birmingham,5]
   + TDcars[Glasgow,Birmingham,5] + TDcars[Manchester,Birmingham,5]
   + TDcars[Plymouth,Birmingham,5] = 0
 DcarsRD_L[Birmingham,1]: - Dcars[Birmingham,1] + 0.0055 Hcars[Glasgow,0]
   + 0.0025 Hcars[Glasgow,4] + 0.002 Hcars[Glasgow,5]
   + 0.01375 Hcars[Manchester,0] + 0.00625 Hcars[Manchester,4]
   + 0.005 Hcars[Manchester,5] + 0.0297 Hcars[Birmingham,0]
   + 0.0135 Hcars[Birmingham,4] + 0.0108 Hcars[Birmingham,5]
   + 0.01485 Hcars[Plymouth,0] + 0.00675 Hcars[Plymouth,4]
   + 0.0054 Hcars[Plymouth,5] + EDcars[Birmingham,0]
   + TDcars[Glasgow,Birmingham,0] + TDcars[Manchester,Birmingham,0]
   + TDcars[Plymouth,Birmingham,0] = 0
 DcarsRD_L[Birmingham,2]: - Dcars[Birmingham,2] + 0.002 Hcars[Glasgow,0]
   + 0.0055 Hcars[Glasgow,1] + 0.0025 Hcars[Glasgow,5]
   + 0.005 Hcars[Manchester,0] + 0.01375 Hcars[Manchester,1]
   + 0.00625 Hcars[Manchester,5] + 0.0108 Hcars[Birmingham,0]
   + 0.0297 Hcars[Birmingham,1] + 0.0135 Hcars[Birmingham,5]
   + 0.0054 Hcars[Plymouth,0] + 0.01485 Hcars[Plymouth,1]
   + 0.00675 Hcars[Plymouth,5] + EDcars[Birmingham,1]
   + TDcars[Glasgow,Birmingham,1] + TDcars[Manchester,Birmingham,1]
   + TDcars[Plymouth,Birmingham,1] = 0
 DcarsRD_L[Birmingham,3]: - Dcars[Birmingham,3] + 0.0025 Hcars[Glasgow,0]
   + 0.002 Hcars[Glasgow,1] + 0.0055 Hcars[Glasgow,2]
   + 0.00625 Hcars[Manchester,0] + 0.005 Hcars[Manchester,1]
   + 0.01375 Hcars[Manchester,2] + 0.0135 Hcars[Birmingham,0]
   + 0.0108 Hcars[Birmingham,1] + 0.0297 Hcars[Birmingham,2]
   + 0.00675 Hcars[Plymouth,0] + 0.0054 Hcars[Plymouth,1]
   + 0.01485 Hcars[Plymouth,2] + EDcars[Birmingham,2]
   + TDcars[Glasgow,Birmingham,2] + TDcars[Manchester,Birmingham,2]
   + TDcars[Plymouth,Birmingham,2] = 0
 DcarsRD_L[Birmingham,4]: - Dcars[Birmingham,4] + 0.0025 Hcars[Glasgow,1]
   + 0.002 Hcars[Glasgow,2] + 0.0055 Hcars[Glasgow,3]
   + 0.00625 Hcars[Manchester,1] + 0.005 Hcars[Manchester,2]
   + 0.01375 Hcars[Manchester,3] + 0.0135 Hcars[Birmingham,1]
   + 0.0108 Hcars[Birmingham,2] + 0.0297 Hcars[Birmingham,3]
   + 0.00675 Hcars[Plymouth,1] + 0.0054 Hcars[Plymouth,2]
   + 0.01485 Hcars[Plymouth,3] + EDcars[Birmingham,3]
   + TDcars[Glasgow,Birmingham,3] + TDcars[Manchester,Birmingham,3]
   + TDcars[Plymouth,Birmingham,3] = 0
 DcarsRD_L[Birmingham,5]: - Dcars[Birmingham,5] + 0.0025 Hcars[Glasgow,2]
   + 0.002 Hcars[Glasgow,3] + 0.0055 Hcars[Glasgow,4]
   + 0.00625 Hcars[Manchester,2] + 0.005 Hcars[Manchester,3]
   + 0.01375 Hcars[Manchester,4] + 0.0135 Hcars[Birmingham,2]
   + 0.0108 Hcars[Birmingham,3] + 0.0297 Hcars[Birmingham,4]
   + 0.00675 Hcars[Plymouth,2] + 0.0054 Hcars[Plymouth,3]
   + 0.01485 Hcars[Plymouth,4] + EDcars[Birmingham,4]
   + TDcars[Glasgow,Birmingham,4] + TDcars[Manchester,Birmingham,4]
   + TDcars[Plymouth,Birmingham,4] = 0
 DcarsND_R[Manchester,0]: - Dcars[Manchester,0] + EDcars[Manchester,0]
   + TDcars[Manchester,Glasgow,0] + TDcars[Manchester,Plymouth,0]
   + RPcars[Manchester,0] = 0
 DcarsND_R[Manchester,1]: - Dcars[Manchester,1] + EDcars[Manchester,1]
   + TDcars[Manchester,Glasgow,1] + TDcars[Manchester,Plymouth,1]
   + RPcars[Manchester,1] = 0
 DcarsND_R[Manchester,2]: - Dcars[Manchester,2] + EDcars[Manchester,2]
   + TDcars[Manchester,Glasgow,2] + TDcars[Manchester,Plymouth,2]
   + RPcars[Manchester,2] = 0
 DcarsND_R[Manchester,3]: - Dcars[Manchester,3] + EDcars[Manchester,3]
   + TDcars[Manchester,Glasgow,3] + TDcars[Manchester,Plymouth,3]
   + RPcars[Manchester,3] = 0
 DcarsND_R[Manchester,4]: - Dcars[Manchester,4] + EDcars[Manchester,4]
   + TDcars[Manchester,Glasgow,4] + TDcars[Manchester,Plymouth,4]
   + RPcars[Manchester,4] = 0
 DcarsND_R[Manchester,5]: - Dcars[Manchester,5] + EDcars[Manchester,5]
   + TDcars[Manchester,Glasgow,5] + TDcars[Manchester,Plymouth,5]
   + RPcars[Manchester,5] = 0
 DcarsND_R[Birmingham,0]: - Dcars[Birmingham,0] + EDcars[Birmingham,0]
   + TDcars[Birmingham,Glasgow,0] + TDcars[Birmingham,Plymouth,0]
   + RPcars[Birmingham,0] = 0
 DcarsND_R[Birmingham,1]: - Dcars[Birmingham,1] + EDcars[Birmingham,1]
   + TDcars[Birmingham,Glasgow,1] + TDcars[Birmingham,Plymouth,1]
   + RPcars[Birmingham,1] = 0
 DcarsND_R[Birmingham,2]: - Dcars[Birmingham,2] + EDcars[Birmingham,2]
   + TDcars[Birmingham,Glasgow,2] + TDcars[Birmingham,Plymouth,2]
   + RPcars[Birmingham,2] = 0
 DcarsND_R[Birmingham,3]: - Dcars[Birmingham,3] + EDcars[Birmingham,3]
   + TDcars[Birmingham,Glasgow,3] + TDcars[Birmingham,Plymouth,3]
   + RPcars[Birmingham,3] = 0
 DcarsND_R[Birmingham,4]: - Dcars[Birmingham,4] + EDcars[Birmingham,4]
   + TDcars[Birmingham,Glasgow,4] + TDcars[Birmingham,Plymouth,4]
   + RPcars[Birmingham,4] = 0
 DcarsND_R[Birmingham,5]: - Dcars[Birmingham,5] + EDcars[Birmingham,5]
   + TDcars[Birmingham,Glasgow,5] + TDcars[Birmingham,Plymouth,5]
   + RPcars[Birmingham,5] = 0
 carsConstr: - cars + UDcars[Glasgow,2] + UDcars[Manchester,2]
   + UDcars[Birmingham,2] + UDcars[Plymouth,2] + Dcars[Glasgow,2]
   + Dcars[Manchester,2] + Dcars[Birmingham,2] + Dcars[Plymouth,2]
   + 0.25 Hcars[Glasgow,0] + 0.45 Hcars[Glasgow,1]
   + 0.25 Hcars[Manchester,0] + 0.45 Hcars[Manchester,1]
   + 0.25 Hcars[Birmingham,0] + 0.45 Hcars[Birmingham,1]
   + 0.25 Hcars[Plymouth,0] + 0.45 Hcars[Plymouth,1] = 0
Bounds
 Hcars[Glasgow,0] <= 100
 Hcars[Glasgow,1] <= 150
 Hcars[Glasgow,2] <= 135
 Hcars[Glasgow,3] <= 83
 Hcars[Glasgow,4] <= 120
 Hcars[Glasgow,5] <= 230
 Hcars[Manchester,0] <= 250
 Hcars[Manchester,1] <= 143
 Hcars[Manchester,2] <= 80
 Hcars[Manchester,3] <= 225
 Hcars[Manchester,4] <= 210
 Hcars[Manchester,5] <= 98
 Hcars[Birmingham,0] <= 95
 Hcars[Birmingham,1] <= 195
 Hcars[Birmingham,2] <= 242
 Hcars[Birmingham,3] <= 111
 Hcars[Birmingham,4] <= 70
 Hcars[Birmingham,5] <= 124
 Hcars[Plymouth,0] <= 160
 Hcars[Plymouth,1] <= 99
 Hcars[Plymouth,2] <= 55
 Hcars[Plymouth,3] <= 96
 Hcars[Plymouth,4] <= 115
 Hcars[Plymouth,5] <= 80
 RPcars[Glasgow,0] = 0
 RPcars[Glasgow,1] = 0
 RPcars[Glasgow,2] = 0
 RPcars[Glasgow,3] = 0
 RPcars[Glasgow,4] = 0
 RPcars[Glasgow,5] = 0
 RPcars[Manchester,0] <= 12
 RPcars[Manchester,1] <= 12
 RPcars[Manchester,2] <= 12
 RPcars[Manchester,3] <= 12
 RPcars[Manchester,4] <= 12
 RPcars[Manchester,5] <= 12
 RPcars[Birmingham,0] <= 20
 RPcars[Birmingham,1] <= 20
 RPcars[Birmingham,2] <= 20
 RPcars[Birmingham,3] <= 20
 RPcars[Birmingham,4] <= 20
 RPcars[Birmingham,5] <= 20
 RPcars[Plymouth,0] = 0
 RPcars[Plymouth,1] = 0
 RPcars[Plymouth,2] = 0
 RPcars[Plymouth,3] = 0
 RPcars[Plymouth,4] = 0
 RPcars[Plymouth,5] = 0
End
