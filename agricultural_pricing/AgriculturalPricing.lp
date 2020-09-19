\ Model AgriculturalPricing
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
 [ 2 qvar[milk] * pvar[milk] + 2 qvar[butter] * pvar[butter]
   + 2 qvar[cheese1] * pvar[cheese1] + 2 qvar[cheese2] * pvar[cheese2]
   ] / 2 
Subject To
 fatCap[fat]: 0.04 qvar[milk] + 0.8 qvar[butter] + 0.35 qvar[cheese1]
   + 0.25 qvar[cheese2] <= 600
 fatCap[dryMatter]: 0.09 qvar[milk] + 0.02 qvar[butter] + 0.3 qvar[cheese1]
   + 0.4 qvar[cheese2] <= 750
 priceIndex: 4.82 pvar[milk] + 0.32 pvar[butter] + 0.21 pvar[cheese1]
   + 0.07 pvar[cheese2] <= 1.939
 elasMilk: 0.2074688796680498 qvar[milk] + 1.346801346801347 pvar[milk]
   = 1.4
 elasButter: 3.125 qvar[butter] + 3.75 pvar[butter] = 3.7
 elasCheese1: 4.761904761904762 qvar[cheese1]
   + 1.047619047619048 pvar[cheese1] - 0.1226993865030675 pvar[cheese2]
   = 2
 elasCheese2: 14.28571428571429 qvar[cheese2]
   - 0.3809523809523809 pvar[cheese1] + 0.49079754601227 pvar[cheese2] = 1
Bounds
End
