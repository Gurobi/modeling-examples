\ Model StaticModel
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
 
Subject To
 static_balance[coal]: 0.9 static_prod[coal] - 0.5 static_prod[steel]
   - 0.4 static_prod[transport] = 60
 static_balance[steel]: - 0.1 static_prod[coal] + 0.9 static_prod[steel]
   - 0.2 static_prod[transport] = 60
 static_balance[transport]: - 0.2 static_prod[coal]
   - 0.1 static_prod[steel] + 0.8 static_prod[transport] = 30
Bounds
End
