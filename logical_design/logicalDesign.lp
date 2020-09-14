\ Model logicalDesign
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  NORgate[1] + NORgate[2] + NORgate[3] + NORgate[4] + NORgate[5]
   + NORgate[6] + NORgate[7]
Subject To
 externalInputsA[1]: NORgate[1] - inputA[1] >= 0
 externalInputsA[2]: NORgate[2] - inputA[2] >= 0
 externalInputsA[3]: NORgate[3] - inputA[3] >= 0
 externalInputsA[4]: NORgate[4] - inputA[4] >= 0
 externalInputsA[5]: NORgate[5] - inputA[5] >= 0
 externalInputsA[6]: NORgate[6] - inputA[6] >= 0
 externalInputsA[7]: NORgate[7] - inputA[7] >= 0
 externalInputsA[1]: NORgate[1] - inputB[1] >= 0
 externalInputsA[2]: NORgate[2] - inputB[2] >= 0
 externalInputsA[3]: NORgate[3] - inputB[3] >= 0
 externalInputsA[4]: NORgate[4] - inputB[4] >= 0
 externalInputsA[5]: NORgate[5] - inputB[5] >= 0
 externalInputsA[6]: NORgate[6] - inputB[6] >= 0
 externalInputsA[7]: NORgate[7] - inputB[7] >= 0
 NORgate1: NORgate[2] + NORgate[3] + inputA[1] + inputB[1] <= 2
 NORgate2: NORgate[4] + NORgate[5] + inputA[2] + inputB[2] <= 2
 NORgate3: NORgate[6] + NORgate[7] + inputA[3] + inputB[3] <= 2
 outputSignals1_1[1]: output[1,1] + output[2,1] <= 1
 outputSignals1_1[2]: output[1,2] + output[2,2] <= 1
 outputSignals1_1[3]: output[1,3] + output[2,3] <= 1
 outputSignals1_1[4]: output[1,4] + output[2,4] <= 1
 outputSignals1_2[1]: output[1,1] + output[3,1] <= 1
 outputSignals1_2[2]: output[1,2] + output[3,2] <= 1
 outputSignals1_2[3]: output[1,3] + output[3,3] <= 1
 outputSignals1_2[4]: output[1,4] + output[3,4] <= 1
 outputSignals2_1[1]: output[2,1] + output[4,1] <= 1
 outputSignals2_1[2]: output[2,2] + output[4,2] <= 1
 outputSignals2_1[3]: output[2,3] + output[4,3] <= 1
 outputSignals2_1[4]: output[2,4] + output[4,4] <= 1
 outputSignals2_2[1]: output[2,1] + output[5,1] <= 1
 outputSignals2_2[2]: output[2,2] + output[5,2] <= 1
 outputSignals2_2[3]: output[2,3] + output[5,3] <= 1
 outputSignals2_2[4]: output[2,4] + output[5,4] <= 1
 outputSignals3_1[1]: output[3,1] + output[6,1] <= 1
 outputSignals3_1[2]: output[3,2] + output[6,2] <= 1
 outputSignals3_1[3]: output[3,3] + output[6,3] <= 1
 outputSignals3_1[4]: output[3,4] + output[6,4] <= 1
 outputSignals3_2[1]: output[3,1] + output[7,1] <= 1
 outputSignals3_2[2]: output[3,2] + output[7,2] <= 1
 outputSignals3_2[3]: output[3,3] + output[7,3] <= 1
 outputSignals3_2[4]: output[3,4] + output[7,4] <= 1
 outputSignals4[1,1]: output[1,1] <= 1
 outputSignals4[1,2]: output[1,2] <= 1
 outputSignals4[1,3]: inputA[1] + output[1,3] <= 1
 outputSignals4[1,4]: inputA[1] + output[1,4] <= 1
 outputSignals4[2,1]: output[2,1] <= 1
 outputSignals4[2,2]: output[2,2] <= 1
 outputSignals4[2,3]: inputA[2] + output[2,3] <= 1
 outputSignals4[2,4]: inputA[2] + output[2,4] <= 1
 outputSignals4[3,1]: output[3,1] <= 1
 outputSignals4[3,2]: output[3,2] <= 1
 outputSignals4[3,3]: inputA[3] + output[3,3] <= 1
 outputSignals4[3,4]: inputA[3] + output[3,4] <= 1
 outputSignals4[4,1]: output[4,1] <= 1
 outputSignals4[4,2]: output[4,2] <= 1
 outputSignals4[4,3]: inputA[4] + output[4,3] <= 1
 outputSignals4[4,4]: inputA[4] + output[4,4] <= 1
 outputSignals4[5,1]: output[5,1] <= 1
 outputSignals4[5,2]: output[5,2] <= 1
 outputSignals4[5,3]: inputA[5] + output[5,3] <= 1
 outputSignals4[5,4]: inputA[5] + output[5,4] <= 1
 outputSignals4[6,1]: output[6,1] <= 1
 outputSignals4[6,2]: output[6,2] <= 1
 outputSignals4[6,3]: inputA[6] + output[6,3] <= 1
 outputSignals4[6,4]: inputA[6] + output[6,4] <= 1
 outputSignals4[7,1]: output[7,1] <= 1
 outputSignals4[7,2]: output[7,2] <= 1
 outputSignals4[7,3]: inputA[7] + output[7,3] <= 1
 outputSignals4[7,4]: inputA[7] + output[7,4] <= 1
 outputSignals5[1,1]: output[1,1] <= 1
 outputSignals5[1,2]: inputB[1] + output[1,2] <= 1
 outputSignals5[1,3]: output[1,3] <= 1
 outputSignals5[1,4]: inputB[1] + output[1,4] <= 1
 outputSignals5[2,1]: output[2,1] <= 1
 outputSignals5[2,2]: inputB[2] + output[2,2] <= 1
 outputSignals5[2,3]: output[2,3] <= 1
 outputSignals5[2,4]: inputB[2] + output[2,4] <= 1
 outputSignals5[3,1]: output[3,1] <= 1
 outputSignals5[3,2]: inputB[3] + output[3,2] <= 1
 outputSignals5[3,3]: output[3,3] <= 1
 outputSignals5[3,4]: inputB[3] + output[3,4] <= 1
 outputSignals5[4,1]: output[4,1] <= 1
 outputSignals5[4,2]: inputB[4] + output[4,2] <= 1
 outputSignals5[4,3]: output[4,3] <= 1
 outputSignals5[4,4]: inputB[4] + output[4,4] <= 1
 outputSignals5[5,1]: output[5,1] <= 1
 outputSignals5[5,2]: inputB[5] + output[5,2] <= 1
 outputSignals5[5,3]: output[5,3] <= 1
 outputSignals5[5,4]: inputB[5] + output[5,4] <= 1
 outputSignals5[6,1]: output[6,1] <= 1
 outputSignals5[6,2]: inputB[6] + output[6,2] <= 1
 outputSignals5[6,3]: output[6,3] <= 1
 outputSignals5[6,4]: inputB[6] + output[6,4] <= 1
 outputSignals5[7,1]: output[7,1] <= 1
 outputSignals5[7,2]: inputB[7] + output[7,2] <= 1
 outputSignals5[7,3]: output[7,3] <= 1
 outputSignals5[7,4]: inputB[7] + output[7,4] <= 1
 outputSignals6[4,1]: - NORgate[4] + output[4,1] >= 0
 outputSignals6[4,2]: - NORgate[4] + inputB[4] + output[4,2] >= 0
 outputSignals6[4,3]: - NORgate[4] + inputA[4] + output[4,3] >= 0
 outputSignals6[4,4]: - NORgate[4] + inputA[4] + inputB[4] + output[4,4]
   >= 0
 outputSignals6[5,1]: - NORgate[5] + output[5,1] >= 0
 outputSignals6[5,2]: - NORgate[5] + inputB[5] + output[5,2] >= 0
 outputSignals6[5,3]: - NORgate[5] + inputA[5] + output[5,3] >= 0
 outputSignals6[5,4]: - NORgate[5] + inputA[5] + inputB[5] + output[5,4]
   >= 0
 outputSignals6[6,1]: - NORgate[6] + output[6,1] >= 0
 outputSignals6[6,2]: - NORgate[6] + inputB[6] + output[6,2] >= 0
 outputSignals6[6,3]: - NORgate[6] + inputA[6] + output[6,3] >= 0
 outputSignals6[6,4]: - NORgate[6] + inputA[6] + inputB[6] + output[6,4]
   >= 0
 outputSignals6[7,1]: - NORgate[7] + output[7,1] >= 0
 outputSignals6[7,2]: - NORgate[7] + inputB[7] + output[7,2] >= 0
 outputSignals6[7,3]: - NORgate[7] + inputA[7] + output[7,3] >= 0
 outputSignals6[7,4]: - NORgate[7] + inputA[7] + inputB[7] + output[7,4]
   >= 0
 outputSignals7[1,1]: - NORgate[1] + output[1,1] + output[2,1]
   + output[3,1] >= 0
 outputSignals7[1,2]: - NORgate[1] + inputB[1] + output[1,2] + output[2,2]
   + output[3,2] >= 0
 outputSignals7[1,3]: - NORgate[1] + inputA[1] + output[1,3] + output[2,3]
   + output[3,3] >= 0
 outputSignals7[1,4]: - NORgate[1] + inputA[1] + inputB[1] + output[1,4]
   + output[2,4] + output[3,4] >= 0
 outputSignals7[2,1]: - NORgate[1] + output[1,1] + output[2,1]
   + output[3,1] >= 0
 outputSignals7[2,2]: - NORgate[1] + inputB[1] + output[1,2] + output[2,2]
   + output[3,2] >= 0
 outputSignals7[2,3]: - NORgate[1] + inputA[1] + output[1,3] + output[2,3]
   + output[3,3] >= 0
 outputSignals7[2,4]: - NORgate[1] + inputA[1] + inputB[1] + output[1,4]
   + output[2,4] + output[3,4] >= 0
 outputSignals7[3,1]: - NORgate[1] + output[1,1] + output[2,1]
   + output[3,1] >= 0
 outputSignals7[3,2]: - NORgate[1] + inputB[1] + output[1,2] + output[2,2]
   + output[3,2] >= 0
 outputSignals7[3,3]: - NORgate[1] + inputA[1] + output[1,3] + output[2,3]
   + output[3,3] >= 0
 outputSignals7[3,4]: - NORgate[1] + inputA[1] + inputB[1] + output[1,4]
   + output[2,4] + output[3,4] >= 0
 outputSignals7[4,1]: - NORgate[1] + output[1,1] + output[2,1]
   + output[3,1] >= 0
 outputSignals7[4,2]: - NORgate[1] + inputB[1] + output[1,2] + output[2,2]
   + output[3,2] >= 0
 outputSignals7[4,3]: - NORgate[1] + inputA[1] + output[1,3] + output[2,3]
   + output[3,3] >= 0
 outputSignals7[4,4]: - NORgate[1] + inputA[1] + inputB[1] + output[1,4]
   + output[2,4] + output[3,4] >= 0
 outputSignals7[5,1]: - NORgate[1] + output[1,1] + output[2,1]
   + output[3,1] >= 0
 outputSignals7[5,2]: - NORgate[1] + inputB[1] + output[1,2] + output[2,2]
   + output[3,2] >= 0
 outputSignals7[5,3]: - NORgate[1] + inputA[1] + output[1,3] + output[2,3]
   + output[3,3] >= 0
 outputSignals7[5,4]: - NORgate[1] + inputA[1] + inputB[1] + output[1,4]
   + output[2,4] + output[3,4] >= 0
 outputSignals7[6,1]: - NORgate[1] + output[1,1] + output[2,1]
   + output[3,1] >= 0
 outputSignals7[6,2]: - NORgate[1] + inputB[1] + output[1,2] + output[2,2]
   + output[3,2] >= 0
 outputSignals7[6,3]: - NORgate[1] + inputA[1] + output[1,3] + output[2,3]
   + output[3,3] >= 0
 outputSignals7[6,4]: - NORgate[1] + inputA[1] + inputB[1] + output[1,4]
   + output[2,4] + output[3,4] >= 0
 outputSignals7[7,1]: - NORgate[1] + output[1,1] + output[2,1]
   + output[3,1] >= 0
 outputSignals7[7,2]: - NORgate[1] + inputB[1] + output[1,2] + output[2,2]
   + output[3,2] >= 0
 outputSignals7[7,3]: - NORgate[1] + inputA[1] + output[1,3] + output[2,3]
   + output[3,3] >= 0
 outputSignals7[7,4]: - NORgate[1] + inputA[1] + inputB[1] + output[1,4]
   + output[2,4] + output[3,4] >= 0
 outputSignals8[1,1]: - NORgate[2] + output[2,1] + output[4,1]
   + output[5,1] >= 0
 outputSignals8[1,2]: - NORgate[2] + inputB[2] + output[2,2] + output[4,2]
   + output[5,2] >= 0
 outputSignals8[1,3]: - NORgate[2] + inputA[2] + output[2,3] + output[4,3]
   + output[5,3] >= 0
 outputSignals8[1,4]: - NORgate[2] + inputA[2] + inputB[2] + output[2,4]
   + output[4,4] + output[5,4] >= 0
 outputSignals8[2,1]: - NORgate[2] + output[2,1] + output[4,1]
   + output[5,1] >= 0
 outputSignals8[2,2]: - NORgate[2] + inputB[2] + output[2,2] + output[4,2]
   + output[5,2] >= 0
 outputSignals8[2,3]: - NORgate[2] + inputA[2] + output[2,3] + output[4,3]
   + output[5,3] >= 0
 outputSignals8[2,4]: - NORgate[2] + inputA[2] + inputB[2] + output[2,4]
   + output[4,4] + output[5,4] >= 0
 outputSignals8[3,1]: - NORgate[2] + output[2,1] + output[4,1]
   + output[5,1] >= 0
 outputSignals8[3,2]: - NORgate[2] + inputB[2] + output[2,2] + output[4,2]
   + output[5,2] >= 0
 outputSignals8[3,3]: - NORgate[2] + inputA[2] + output[2,3] + output[4,3]
   + output[5,3] >= 0
 outputSignals8[3,4]: - NORgate[2] + inputA[2] + inputB[2] + output[2,4]
   + output[4,4] + output[5,4] >= 0
 outputSignals8[4,1]: - NORgate[2] + output[2,1] + output[4,1]
   + output[5,1] >= 0
 outputSignals8[4,2]: - NORgate[2] + inputB[2] + output[2,2] + output[4,2]
   + output[5,2] >= 0
 outputSignals8[4,3]: - NORgate[2] + inputA[2] + output[2,3] + output[4,3]
   + output[5,3] >= 0
 outputSignals8[4,4]: - NORgate[2] + inputA[2] + inputB[2] + output[2,4]
   + output[4,4] + output[5,4] >= 0
 outputSignals8[5,1]: - NORgate[2] + output[2,1] + output[4,1]
   + output[5,1] >= 0
 outputSignals8[5,2]: - NORgate[2] + inputB[2] + output[2,2] + output[4,2]
   + output[5,2] >= 0
 outputSignals8[5,3]: - NORgate[2] + inputA[2] + output[2,3] + output[4,3]
   + output[5,3] >= 0
 outputSignals8[5,4]: - NORgate[2] + inputA[2] + inputB[2] + output[2,4]
   + output[4,4] + output[5,4] >= 0
 outputSignals8[6,1]: - NORgate[2] + output[2,1] + output[4,1]
   + output[5,1] >= 0
 outputSignals8[6,2]: - NORgate[2] + inputB[2] + output[2,2] + output[4,2]
   + output[5,2] >= 0
 outputSignals8[6,3]: - NORgate[2] + inputA[2] + output[2,3] + output[4,3]
   + output[5,3] >= 0
 outputSignals8[6,4]: - NORgate[2] + inputA[2] + inputB[2] + output[2,4]
   + output[4,4] + output[5,4] >= 0
 outputSignals8[7,1]: - NORgate[2] + output[2,1] + output[4,1]
   + output[5,1] >= 0
 outputSignals8[7,2]: - NORgate[2] + inputB[2] + output[2,2] + output[4,2]
   + output[5,2] >= 0
 outputSignals8[7,3]: - NORgate[2] + inputA[2] + output[2,3] + output[4,3]
   + output[5,3] >= 0
 outputSignals8[7,4]: - NORgate[2] + inputA[2] + inputB[2] + output[2,4]
   + output[4,4] + output[5,4] >= 0
 outputSignals9[1,1]: - NORgate[3] + output[3,1] + output[6,1]
   + output[7,1] >= 0
 outputSignals9[1,2]: - NORgate[3] + inputB[3] + output[3,2] + output[6,2]
   + output[7,2] >= 0
 outputSignals9[1,3]: - NORgate[3] + inputA[3] + output[3,3] + output[6,3]
   + output[7,3] >= 0
 outputSignals9[1,4]: - NORgate[3] + inputA[3] + inputB[3] + output[3,4]
   + output[6,4] + output[7,4] >= 0
 outputSignals9[2,1]: - NORgate[3] + output[3,1] + output[6,1]
   + output[7,1] >= 0
 outputSignals9[2,2]: - NORgate[3] + inputB[3] + output[3,2] + output[6,2]
   + output[7,2] >= 0
 outputSignals9[2,3]: - NORgate[3] + inputA[3] + output[3,3] + output[6,3]
   + output[7,3] >= 0
 outputSignals9[2,4]: - NORgate[3] + inputA[3] + inputB[3] + output[3,4]
   + output[6,4] + output[7,4] >= 0
 outputSignals9[3,1]: - NORgate[3] + output[3,1] + output[6,1]
   + output[7,1] >= 0
 outputSignals9[3,2]: - NORgate[3] + inputB[3] + output[3,2] + output[6,2]
   + output[7,2] >= 0
 outputSignals9[3,3]: - NORgate[3] + inputA[3] + output[3,3] + output[6,3]
   + output[7,3] >= 0
 outputSignals9[3,4]: - NORgate[3] + inputA[3] + inputB[3] + output[3,4]
   + output[6,4] + output[7,4] >= 0
 outputSignals9[4,1]: - NORgate[3] + output[3,1] + output[6,1]
   + output[7,1] >= 0
 outputSignals9[4,2]: - NORgate[3] + inputB[3] + output[3,2] + output[6,2]
   + output[7,2] >= 0
 outputSignals9[4,3]: - NORgate[3] + inputA[3] + output[3,3] + output[6,3]
   + output[7,3] >= 0
 outputSignals9[4,4]: - NORgate[3] + inputA[3] + inputB[3] + output[3,4]
   + output[6,4] + output[7,4] >= 0
 outputSignals9[5,1]: - NORgate[3] + output[3,1] + output[6,1]
   + output[7,1] >= 0
 outputSignals9[5,2]: - NORgate[3] + inputB[3] + output[3,2] + output[6,2]
   + output[7,2] >= 0
 outputSignals9[5,3]: - NORgate[3] + inputA[3] + output[3,3] + output[6,3]
   + output[7,3] >= 0
 outputSignals9[5,4]: - NORgate[3] + inputA[3] + inputB[3] + output[3,4]
   + output[6,4] + output[7,4] >= 0
 outputSignals9[6,1]: - NORgate[3] + output[3,1] + output[6,1]
   + output[7,1] >= 0
 outputSignals9[6,2]: - NORgate[3] + inputB[3] + output[3,2] + output[6,2]
   + output[7,2] >= 0
 outputSignals9[6,3]: - NORgate[3] + inputA[3] + output[3,3] + output[6,3]
   + output[7,3] >= 0
 outputSignals9[6,4]: - NORgate[3] + inputA[3] + inputB[3] + output[3,4]
   + output[6,4] + output[7,4] >= 0
 outputSignals9[7,1]: - NORgate[3] + output[3,1] + output[6,1]
   + output[7,1] >= 0
 outputSignals9[7,2]: - NORgate[3] + inputB[3] + output[3,2] + output[6,2]
   + output[7,2] >= 0
 outputSignals9[7,3]: - NORgate[3] + inputA[3] + output[3,3] + output[6,3]
   + output[7,3] >= 0
 outputSignals9[7,4]: - NORgate[3] + inputA[3] + inputB[3] + output[3,4]
   + output[6,4] + output[7,4] >= 0
 gateOutput[1,1]: NORgate[1] - output[1,1] >= 0
 gateOutput[1,2]: NORgate[1] - output[1,2] >= 0
 gateOutput[1,3]: NORgate[1] - output[1,3] >= 0
 gateOutput[1,4]: NORgate[1] - output[1,4] >= 0
 gateOutput[2,1]: NORgate[2] - output[2,1] >= 0
 gateOutput[2,2]: NORgate[2] - output[2,2] >= 0
 gateOutput[2,3]: NORgate[2] - output[2,3] >= 0
 gateOutput[2,4]: NORgate[2] - output[2,4] >= 0
 gateOutput[3,1]: NORgate[3] - output[3,1] >= 0
 gateOutput[3,2]: NORgate[3] - output[3,2] >= 0
 gateOutput[3,3]: NORgate[3] - output[3,3] >= 0
 gateOutput[3,4]: NORgate[3] - output[3,4] >= 0
 gateOutput[4,1]: NORgate[4] - output[4,1] >= 0
 gateOutput[4,2]: NORgate[4] - output[4,2] >= 0
 gateOutput[4,3]: NORgate[4] - output[4,3] >= 0
 gateOutput[4,4]: NORgate[4] - output[4,4] >= 0
 gateOutput[5,1]: NORgate[5] - output[5,1] >= 0
 gateOutput[5,2]: NORgate[5] - output[5,2] >= 0
 gateOutput[5,3]: NORgate[5] - output[5,3] >= 0
 gateOutput[5,4]: NORgate[5] - output[5,4] >= 0
 gateOutput[6,1]: NORgate[6] - output[6,1] >= 0
 gateOutput[6,2]: NORgate[6] - output[6,2] >= 0
 gateOutput[6,3]: NORgate[6] - output[6,3] >= 0
 gateOutput[6,4]: NORgate[6] - output[6,4] >= 0
 gateOutput[7,1]: NORgate[7] - output[7,1] >= 0
 gateOutput[7,2]: NORgate[7] - output[7,2] >= 0
 gateOutput[7,3]: NORgate[7] - output[7,3] >= 0
 gateOutput[7,4]: NORgate[7] - output[7,4] >= 0
Bounds
 NORgate[1] = 1
 output[1,1] = 0
 output[1,2] = 1
 output[1,3] = 1
 output[1,4] = 0
Binaries
 NORgate[1] NORgate[2] NORgate[3] NORgate[4] NORgate[5] NORgate[6]
 NORgate[7] inputA[1] inputA[2] inputA[3] inputA[4] inputA[5] inputA[6]
 inputA[7] inputB[1] inputB[2] inputB[3] inputB[4] inputB[5] inputB[6]
 inputB[7] output[1,1] output[1,2] output[1,3] output[1,4] output[2,1]
 output[2,2] output[2,3] output[2,4] output[3,1] output[3,2] output[3,3]
 output[3,4] output[4,1] output[4,2] output[4,3] output[4,4] output[5,1]
 output[5,2] output[5,3] output[5,4] output[6,1] output[6,2] output[6,3]
 output[6,4] output[7,1] output[7,2] output[7,3] output[7,4]
End
