\ Model EconomicPlanning
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  0.3 production[steel,3] + 0.6 production[coal,1]
   + 0.2 production[transport,3] + 0.3 production[steel,2]
   + 0.6 production[coal,2] + 0.2 production[transport,2]
   + 0.3 production[steel,5] + 0.6 production[coal,3]
   + 0.2 production[transport,1] + 0.3 production[steel,4]
   + 0.6 production[coal,4] + 0.2 production[transport,5]
   + 0.6 production[coal,5] + 0.2 production[transport,4]
   + 0.3 production[steel,1] + 0.2 extra_cap[steel,3]
   + 0.4 extra_cap[coal,1] + 0.1 extra_cap[transport,3]
   + 0.2 extra_cap[steel,2] + 0.4 extra_cap[coal,2]
   + 0.1 extra_cap[transport,2] + 0.2 extra_cap[steel,5]
   + 0.4 extra_cap[coal,3] + 0.1 extra_cap[transport,1]
   + 0.2 extra_cap[steel,4] + 0.4 extra_cap[coal,4]
   + 0.1 extra_cap[transport,5] + 0.4 extra_cap[coal,5]
   + 0.1 extra_cap[transport,4] + 0.2 extra_cap[steel,1]
Subject To
 balance1[coal]: 0.5 production[steel,2] + 0.1 production[coal,2]
   + 0.4 production[transport,2] + stock[coal,1] + 0.7 extra_cap[steel,3]
   + 0.9 extra_cap[transport,3] + 0.1 extra_cap[coal,3] = 190
 balance1[steel]: 0.1 production[steel,2] + 0.1 production[coal,2]
   + 0.2 production[transport,2] + stock[steel,1] + 0.1 extra_cap[steel,3]
   + 0.2 extra_cap[transport,3] + 0.1 extra_cap[coal,3] = 120
 balance1[transport]: 0.1 production[steel,2] + 0.2 production[coal,2]
   + 0.2 production[transport,2] + stock[transport,1]
   + 0.1 extra_cap[steel,3] + 0.2 extra_cap[transport,3]
   + 0.2 extra_cap[coal,3] = 170
 balance_t[coal,2]: - 0.5 production[steel,3] - 0.4 production[transport,3]
   + production[coal,2] - 0.1 production[coal,3] + stock[coal,1]
   - stock[coal,2] - 0.7 extra_cap[steel,4] - 0.1 extra_cap[coal,4]
   - 0.9 extra_cap[transport,4] = 60
 balance_t[coal,3]: production[coal,3] - 0.5 production[steel,4]
   - 0.1 production[coal,4] - 0.4 production[transport,4] + stock[coal,2]
   - stock[coal,3] - 0.7 extra_cap[steel,5] - 0.9 extra_cap[transport,5]
   - 0.1 extra_cap[coal,5] = 60
 balance_t[coal,4]: - 0.5 production[steel,5] + production[coal,4]
   - 0.4 production[transport,5] - 0.1 production[coal,5] + stock[coal,3]
   - stock[coal,4] - 0.7 extra_cap[steel,6] - 0.9 extra_cap[transport,6]
   - 0.1 extra_cap[coal,6] = 60
 balance_t[steel,2]: - 0.1 production[steel,3]
   - 0.2 production[transport,3] + production[steel,2]
   - 0.1 production[coal,3] - stock[steel,2] + stock[steel,1]
   - 0.1 extra_cap[steel,4] - 0.1 extra_cap[coal,4]
   - 0.2 extra_cap[transport,4] = 60
 balance_t[steel,3]: production[steel,3] - 0.1 production[steel,4]
   - 0.1 production[coal,4] - 0.2 production[transport,4] - stock[steel,3]
   + stock[steel,2] - 0.1 extra_cap[steel,5] - 0.2 extra_cap[transport,5]
   - 0.1 extra_cap[coal,5] = 60
 balance_t[steel,4]: - 0.1 production[steel,5] + production[steel,4]
   - 0.2 production[transport,5] - 0.1 production[coal,5] + stock[steel,3]
   - stock[steel,4] - 0.1 extra_cap[steel,6] - 0.2 extra_cap[transport,6]
   - 0.1 extra_cap[coal,6] = 60
 balance_t[transport,2]: - 0.1 production[steel,3]
   - 0.2 production[transport,3] + production[transport,2]
   - 0.2 production[coal,3] - stock[transport,2] + stock[transport,1]
   - 0.1 extra_cap[steel,4] - 0.2 extra_cap[coal,4]
   - 0.2 extra_cap[transport,4] = 30
 balance_t[transport,3]: production[transport,3] - 0.1 production[steel,4]
   - 0.2 production[coal,4] - 0.2 production[transport,4]
   - stock[transport,3] + stock[transport,2] - 0.1 extra_cap[steel,5]
   - 0.2 extra_cap[transport,5] - 0.2 extra_cap[coal,5] = 30
 balance_t[transport,4]: - 0.1 production[steel,5]
   - 0.2 production[transport,5] - 0.2 production[coal,5]
   + production[transport,4] + stock[transport,3] - stock[transport,4]
   - 0.1 extra_cap[steel,6] - 0.2 extra_cap[transport,6]
   - 0.2 extra_cap[coal,6] = 30
 balance5[coal]: - 0.5 production[steel,6] - 0.4 production[transport,6]
   + production[coal,5] - 0.1 production[coal,6] + stock[coal,4]
   - stock[coal,5] = 60
 balance5[steel]: production[steel,5] - 0.1 production[steel,6]
   - 0.2 production[transport,6] - 0.1 production[coal,6] - stock[steel,5]
   + stock[steel,4] = 60
 balance5[transport]: - 0.1 production[steel,6]
   - 0.2 production[transport,6] + production[transport,5]
   - 0.2 production[coal,6] - stock[transport,5] + stock[transport,4] = 30
 steadyProduction[coal]: production[coal,6] >= 166.3967611336032
 steadyProduction[steel]: production[steel,6] >= 105.668016194332
 steadyProduction[transport]: production[transport,6] >= 92.30769230769229
 capacityConstr[steel,3]: production[steel,3] - extra_cap[steel,3]
   - extra_cap[steel,2] - extra_cap[steel,1] <= 350
 capacityConstr[coal,1]: production[coal,1] - extra_cap[coal,1] <= 300
 capacityConstr[transport,3]: production[transport,3]
   - extra_cap[transport,3] - extra_cap[transport,2]
   - extra_cap[transport,1] <= 280
 capacityConstr[steel,2]: production[steel,2] - extra_cap[steel,2]
   - extra_cap[steel,1] <= 350
 capacityConstr[coal,2]: production[coal,2] - extra_cap[coal,1]
   - extra_cap[coal,2] <= 300
 capacityConstr[transport,2]: production[transport,2]
   - extra_cap[transport,2] - extra_cap[transport,1] <= 280
 capacityConstr[steel,5]: production[steel,5] - extra_cap[steel,3]
   - extra_cap[steel,2] - extra_cap[steel,5] - extra_cap[steel,4]
   - extra_cap[steel,1] <= 350
 capacityConstr[coal,3]: production[coal,3] - extra_cap[coal,1]
   - extra_cap[coal,2] - extra_cap[coal,3] <= 300
 capacityConstr[transport,1]: production[transport,1]
   - extra_cap[transport,1] <= 280
 capacityConstr[steel,4]: production[steel,4] - extra_cap[steel,3]
   - extra_cap[steel,2] - extra_cap[steel,4] - extra_cap[steel,1] <= 350
 capacityConstr[coal,4]: production[coal,4] - extra_cap[coal,1]
   - extra_cap[coal,2] - extra_cap[coal,3] - extra_cap[coal,4] <= 300
 capacityConstr[transport,5]: production[transport,5]
   - extra_cap[transport,3] - extra_cap[transport,2]
   - extra_cap[transport,1] - extra_cap[transport,5]
   - extra_cap[transport,4] <= 280
 capacityConstr[coal,5]: production[coal,5] - extra_cap[coal,1]
   - extra_cap[coal,2] - extra_cap[coal,3] - extra_cap[coal,4]
   - extra_cap[coal,5] <= 300
 capacityConstr[transport,4]: production[transport,4]
   - extra_cap[transport,3] - extra_cap[transport,2]
   - extra_cap[transport,1] - extra_cap[transport,4] <= 280
 capacityConstr[steel,1]: production[steel,1] - extra_cap[steel,1] <= 350
Bounds
 production[coal,1] = 0
 production[transport,1] = 0
 production[steel,1] = 0
 extra_cap[coal,1] = 0
 extra_cap[steel,2] = 0
 extra_cap[coal,2] = 0
 extra_cap[transport,2] = 0
 extra_cap[transport,1] = 0
 extra_cap[steel,6] = 0
 extra_cap[transport,6] = 0
 extra_cap[coal,6] = 0
 extra_cap[steel,1] = 0
End
