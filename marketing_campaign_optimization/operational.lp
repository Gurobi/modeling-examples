\ Model Operational
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  2050 assign[k1,c1,p1] + 1050 assign[k1,c1,p2] + 1950 assign[k1,c2,p1]
   + 950 assign[k1,c2,p2] + 2000 assign[k1,c3,p1] + 1000 assign[k1,c3,p2]
   + 2100 assign[k1,c4,p1] + 1100 assign[k1,c4,p2] + 1900 assign[k1,c5,p1]
   + 900 assign[k1,c5,p2] + 3000 assign[k2,c6,p1] + 2000 assign[k2,c6,p2]
   + 2900 assign[k2,c7,p1] + 1900 assign[k2,c7,p2] + 3050 assign[k2,c8,p1]
   + 2050 assign[k2,c8,p2] + 3100 assign[k2,c9,p1] + 3100 assign[k2,c9,p2]
   + 2950 assign[k2,c10,p1] + 2950 assign[k2,c10,p2]
Subject To
 prodOffers_k1,p1: assign[k1,c1,p1] + assign[k1,c2,p1] + assign[k1,c3,p1]
   + assign[k1,c4,p1] + assign[k1,c5,p1] = 2
 prodOffers_k1,p2: assign[k1,c1,p2] + assign[k1,c2,p2] + assign[k1,c3,p2]
   + assign[k1,c4,p2] + assign[k1,c5,p2] = 2
 prodOffers_k2,p1: assign[k2,c6,p1] + assign[k2,c7,p1] + assign[k2,c8,p1]
   + assign[k2,c9,p1] + assign[k2,c10,p1] = 0
 prodOffers_k2,p2: assign[k2,c6,p2] + assign[k2,c7,p2] + assign[k2,c8,p2]
   + assign[k2,c9,p2] + assign[k2,c10,p2] = 0
 custOffers_k1,c1: assign[k1,c1,p1] + assign[k1,c1,p2] <= 1
 custOffers_k1,c2: assign[k1,c2,p1] + assign[k1,c2,p2] <= 1
 custOffers_k1,c3: assign[k1,c3,p1] + assign[k1,c3,p2] <= 1
 custOffers_k1,c4: assign[k1,c4,p1] + assign[k1,c4,p2] <= 1
 custOffers_k1,c5: assign[k1,c5,p1] + assign[k1,c5,p2] <= 1
 custOffers_k2,c6: assign[k2,c6,p1] + assign[k2,c6,p2] <= 1
 custOffers_k2,c7: assign[k2,c7,p1] + assign[k2,c7,p2] <= 1
 custOffers_k2,c8: assign[k2,c8,p1] + assign[k2,c8,p2] <= 1
 custOffers_k2,c9: assign[k2,c9,p1] + assign[k2,c9,p2] <= 1
 custOffers_k2,c10: assign[k2,c10,p1] + assign[k2,c10,p2] <= 1
Bounds
Binaries
 assign[k1,c1,p1] assign[k1,c1,p2] assign[k1,c2,p1] assign[k1,c2,p2]
 assign[k1,c3,p1] assign[k1,c3,p2] assign[k1,c4,p1] assign[k1,c4,p2]
 assign[k1,c5,p1] assign[k1,c5,p2] assign[k2,c6,p1] assign[k2,c6,p2]
 assign[k2,c7,p1] assign[k2,c7,p2] assign[k2,c8,p1] assign[k2,c8,p2]
 assign[k2,c9,p1] assign[k2,c9,p2] assign[k2,c10,p1] assign[k2,c10,p2]
End
