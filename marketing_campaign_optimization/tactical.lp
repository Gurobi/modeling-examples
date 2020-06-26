\ Model Tactical
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  2000 allocate[k1,p1] + 1000 allocate[k1,p2] + 3000 allocate[k2,p1]
   + 2000 allocate[k2,p2] - 10000 budget_correction
Subject To
 maxOffers[k1]: allocate[k1,p1] + allocate[k1,p2] <= 5
 maxOffers[k2]: allocate[k2,p1] + allocate[k2,p2] <= 5
 budget: 200 allocate[k1,p1] + 100 allocate[k1,p2] + 300 allocate[k2,p1]
   + 200 allocate[k2,p2] - budget_correction <= 200
 min_offers[p1]: allocate[k1,p1] + allocate[k2,p1] >= 2
 min_offers[p2]: allocate[k1,p2] + allocate[k2,p2] >= 2
 ROI: 1760 allocate[k1,p1] + 880 allocate[k1,p2] + 2640 allocate[k2,p1]
   + 1760 allocate[k2,p2] >= 0
Bounds
End
