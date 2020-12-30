\ Model YieldManagement4
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  - 50000 planes + [ 240 p1ch[First,option1] * s1ich[sce1,First,option1]
   + 1680 p1ch[First,option1] * s1ich[sce2,First,option1]
   + 480 p1ch[First,option1] * s1ich[sce3,First,option1]
   + 200 p1ch[First,option2] * s1ich[sce1,First,option2]
   + 1400 p1ch[First,option2] * s1ich[sce2,First,option2]
   + 400 p1ch[First,option2] * s1ich[sce3,First,option2]
   + 190 p1ch[First,option3] * s1ich[sce1,First,option3]
   + 1330 p1ch[First,option3] * s1ich[sce2,First,option3]
   + 380 p1ch[First,option3] * s1ich[sce3,First,option3]
   + 180 p1ch[Business,option1] * s1ich[sce1,Business,option1]
   + 1260 p1ch[Business,option1] * s1ich[sce2,Business,option1]
   + 360 p1ch[Business,option1] * s1ich[sce3,Business,option1]
   + 160 p1ch[Business,option2] * s1ich[sce1,Business,option2]
   + 1120 p1ch[Business,option2] * s1ich[sce2,Business,option2]
   + 320 p1ch[Business,option2] * s1ich[sce3,Business,option2]
   + 120 p1ch[Business,option3] * s1ich[sce1,Business,option3]
   + 840 p1ch[Business,option3] * s1ich[sce2,Business,option3]
   + 240 p1ch[Business,option3] * s1ich[sce3,Business,option3]
   + 100 p1ch[Economy,option1] * s1ich[sce1,Economy,option1]
   + 700 p1ch[Economy,option1] * s1ich[sce2,Economy,option1]
   + 200 p1ch[Economy,option1] * s1ich[sce3,Economy,option1]
   + 60 p1ch[Economy,option2] * s1ich[sce1,Economy,option2]
   + 420 p1ch[Economy,option2] * s1ich[sce2,Economy,option2]
   + 120 p1ch[Economy,option2] * s1ich[sce3,Economy,option2]
   + 40 p1ch[Economy,option3] * s1ich[sce1,Economy,option3]
   + 280 p1ch[Economy,option3] * s1ich[sce2,Economy,option3]
   + 80 p1ch[Economy,option3] * s1ich[sce3,Economy,option3]
   + 28 p2ich[sce1,First,option1] * s2ijch[sce1,sce1,First,option1]
   + 196 p2ich[sce1,First,option1] * s2ijch[sce1,sce2,First,option1]
   + 56 p2ich[sce1,First,option1] * s2ijch[sce1,sce3,First,option1]
   + 26 p2ich[sce1,First,option2] * s2ijch[sce1,sce1,First,option2]
   + 182 p2ich[sce1,First,option2] * s2ijch[sce1,sce2,First,option2]
   + 52 p2ich[sce1,First,option2] * s2ijch[sce1,sce3,First,option2]
   + 23 p2ich[sce1,First,option3] * s2ijch[sce1,sce1,First,option3]
   + 161 p2ich[sce1,First,option3] * s2ijch[sce1,sce2,First,option3]
   + 46 p2ich[sce1,First,option3] * s2ijch[sce1,sce3,First,option3]
   + 22 p2ich[sce1,Business,option1] * s2ijch[sce1,sce1,Business,option1]
   + 154 p2ich[sce1,Business,option1] * s2ijch[sce1,sce2,Business,option1]
   + 44 p2ich[sce1,Business,option1] * s2ijch[sce1,sce3,Business,option1]
   + 18 p2ich[sce1,Business,option2] * s2ijch[sce1,sce1,Business,option2]
   + 126 p2ich[sce1,Business,option2] * s2ijch[sce1,sce2,Business,option2]
   + 36 p2ich[sce1,Business,option2] * s2ijch[sce1,sce3,Business,option2]
   + 15 p2ich[sce1,Business,option3] * s2ijch[sce1,sce1,Business,option3]
   + 105 p2ich[sce1,Business,option3] * s2ijch[sce1,sce2,Business,option3]
   + 30 p2ich[sce1,Business,option3] * s2ijch[sce1,sce3,Business,option3]
   + 14 p2ich[sce1,Economy,option1] * s2ijch[sce1,sce1,Economy,option1]
   + 98 p2ich[sce1,Economy,option1] * s2ijch[sce1,sce2,Economy,option1]
   + 28 p2ich[sce1,Economy,option1] * s2ijch[sce1,sce3,Economy,option1]
   + 8 p2ich[sce1,Economy,option2] * s2ijch[sce1,sce1,Economy,option2]
   + 56 p2ich[sce1,Economy,option2] * s2ijch[sce1,sce2,Economy,option2]
   + 16 p2ich[sce1,Economy,option2] * s2ijch[sce1,sce3,Economy,option2]
   + 7 p2ich[sce1,Economy,option3] * s2ijch[sce1,sce1,Economy,option3]
   + 49 p2ich[sce1,Economy,option3] * s2ijch[sce1,sce2,Economy,option3]
   + 14 p2ich[sce1,Economy,option3] * s2ijch[sce1,sce3,Economy,option3]
   + 196 p2ich[sce2,First,option1] * s2ijch[sce2,sce1,First,option1]
   + 1372 p2ich[sce2,First,option1] * s2ijch[sce2,sce2,First,option1]
   + 392 p2ich[sce2,First,option1] * s2ijch[sce2,sce3,First,option1]
   + 182 p2ich[sce2,First,option2] * s2ijch[sce2,sce1,First,option2]
   + 1274 p2ich[sce2,First,option2] * s2ijch[sce2,sce2,First,option2]
   + 364 p2ich[sce2,First,option2] * s2ijch[sce2,sce3,First,option2]
   + 161 p2ich[sce2,First,option3] * s2ijch[sce2,sce1,First,option3]
   + 1127 p2ich[sce2,First,option3] * s2ijch[sce2,sce2,First,option3]
   + 322 p2ich[sce2,First,option3] * s2ijch[sce2,sce3,First,option3]
   + 154 p2ich[sce2,Business,option1] * s2ijch[sce2,sce1,Business,option1]
   + 1078 p2ich[sce2,Business,option1] * s2ijch[sce2,sce2,Business,option1]
   + 308 p2ich[sce2,Business,option1] * s2ijch[sce2,sce3,Business,option1]
   + 126 p2ich[sce2,Business,option2] * s2ijch[sce2,sce1,Business,option2]
   + 882 p2ich[sce2,Business,option2] * s2ijch[sce2,sce2,Business,option2]
   + 252 p2ich[sce2,Business,option2] * s2ijch[sce2,sce3,Business,option2]
   + 105 p2ich[sce2,Business,option3] * s2ijch[sce2,sce1,Business,option3]
   + 735 p2ich[sce2,Business,option3] * s2ijch[sce2,sce2,Business,option3]
   + 210 p2ich[sce2,Business,option3] * s2ijch[sce2,sce3,Business,option3]
   + 98 p2ich[sce2,Economy,option1] * s2ijch[sce2,sce1,Economy,option1]
   + 686 p2ich[sce2,Economy,option1] * s2ijch[sce2,sce2,Economy,option1]
   + 196 p2ich[sce2,Economy,option1] * s2ijch[sce2,sce3,Economy,option1]
   + 56 p2ich[sce2,Economy,option2] * s2ijch[sce2,sce1,Economy,option2]
   + 392 p2ich[sce2,Economy,option2] * s2ijch[sce2,sce2,Economy,option2]
   + 112 p2ich[sce2,Economy,option2] * s2ijch[sce2,sce3,Economy,option2]
   + 49 p2ich[sce2,Economy,option3] * s2ijch[sce2,sce1,Economy,option3]
   + 343 p2ich[sce2,Economy,option3] * s2ijch[sce2,sce2,Economy,option3]
   + 98 p2ich[sce2,Economy,option3] * s2ijch[sce2,sce3,Economy,option3]
   + 56 p2ich[sce3,First,option1] * s2ijch[sce3,sce1,First,option1]
   + 392 p2ich[sce3,First,option1] * s2ijch[sce3,sce2,First,option1]
   + 112 p2ich[sce3,First,option1] * s2ijch[sce3,sce3,First,option1]
   + 52 p2ich[sce3,First,option2] * s2ijch[sce3,sce1,First,option2]
   + 364 p2ich[sce3,First,option2] * s2ijch[sce3,sce2,First,option2]
   + 104 p2ich[sce3,First,option2] * s2ijch[sce3,sce3,First,option2]
   + 46 p2ich[sce3,First,option3] * s2ijch[sce3,sce1,First,option3]
   + 322 p2ich[sce3,First,option3] * s2ijch[sce3,sce2,First,option3]
   + 92 p2ich[sce3,First,option3] * s2ijch[sce3,sce3,First,option3]
   + 44 p2ich[sce3,Business,option1] * s2ijch[sce3,sce1,Business,option1]
   + 308 p2ich[sce3,Business,option1] * s2ijch[sce3,sce2,Business,option1]
   + 88 p2ich[sce3,Business,option1] * s2ijch[sce3,sce3,Business,option1]
   + 36 p2ich[sce3,Business,option2] * s2ijch[sce3,sce1,Business,option2]
   + 252 p2ich[sce3,Business,option2] * s2ijch[sce3,sce2,Business,option2]
   + 72 p2ich[sce3,Business,option2] * s2ijch[sce3,sce3,Business,option2]
   + 30 p2ich[sce3,Business,option3] * s2ijch[sce3,sce1,Business,option3]
   + 210 p2ich[sce3,Business,option3] * s2ijch[sce3,sce2,Business,option3]
   + 60 p2ich[sce3,Business,option3] * s2ijch[sce3,sce3,Business,option3]
   + 28 p2ich[sce3,Economy,option1] * s2ijch[sce3,sce1,Economy,option1]
   + 196 p2ich[sce3,Economy,option1] * s2ijch[sce3,sce2,Economy,option1]
   + 56 p2ich[sce3,Economy,option1] * s2ijch[sce3,sce3,Economy,option1]
   + 16 p2ich[sce3,Economy,option2] * s2ijch[sce3,sce1,Economy,option2]
   + 112 p2ich[sce3,Economy,option2] * s2ijch[sce3,sce2,Economy,option2]
   + 32 p2ich[sce3,Economy,option2] * s2ijch[sce3,sce3,Economy,option2]
   + 14 p2ich[sce3,Economy,option3] * s2ijch[sce3,sce1,Economy,option3]
   + 98 p2ich[sce3,Economy,option3] * s2ijch[sce3,sce2,Economy,option3]
   + 28 p2ich[sce3,Economy,option3] * s2ijch[sce3,sce3,Economy,option3]
   + 3 p3ijch[sce1,sce1,First,option1] * s3ijkch[sce1,sce1,sce1,First,option1]
   + 21 p3ijch[sce1,sce1,First,option1] * s3ijkch[sce1,sce1,sce2,First,option1]
   + 6 p3ijch[sce1,sce1,First,option1] * s3ijkch[sce1,sce1,sce3,First,option1]
   + 1.8 p3ijch[sce1,sce1,First,option2] * s3ijkch[sce1,sce1,sce1,First,option2]
   + 12.6 p3ijch[sce1,sce1,First,option2] * s3ijkch[sce1,sce1,sce2,First,option2]
   + 3.6 p3ijch[sce1,sce1,First,option2] * s3ijkch[sce1,sce1,sce3,First,option2]
   + 1.7 p3ijch[sce1,sce1,First,option3] * s3ijkch[sce1,sce1,sce1,First,option3]
   + 11.9 p3ijch[sce1,sce1,First,option3] * s3ijkch[sce1,sce1,sce2,First,option3]
   + 3.4 p3ijch[sce1,sce1,First,option3] * s3ijkch[sce1,sce1,sce3,First,option3]
   + 1.64 p3ijch[sce1,sce1,Business,option1] * s3ijkch[sce1,sce1,sce1,Business,option1]
   + 11.48 p3ijch[sce1,sce1,Business,option1] * s3ijkch[sce1,sce1,sce2,Business,option1]
   + 3.28 p3ijch[sce1,sce1,Business,option1] * s3ijkch[sce1,sce1,sce3,Business,option1]
   + 1.6 p3ijch[sce1,sce1,Business,option2] * s3ijkch[sce1,sce1,sce1,Business,option2]
   + 11.2 p3ijch[sce1,sce1,Business,option2] * s3ijkch[sce1,sce1,sce2,Business,option2]
   + 3.2 p3ijch[sce1,sce1,Business,option2] * s3ijkch[sce1,sce1,sce3,Business,option2]
   + p3ijch[sce1,sce1,Business,option3] * s3ijkch[sce1,sce1,sce1,Business,option3]
   + 7 p3ijch[sce1,sce1,Business,option3] * s3ijkch[sce1,sce1,sce2,Business,option3]
   + 2 p3ijch[sce1,sce1,Business,option3] * s3ijkch[sce1,sce1,sce3,Business,option3]
   + 0.96 p3ijch[sce1,sce1,Economy,option1] * s3ijkch[sce1,sce1,sce1,Economy,option1]
   + 6.72 p3ijch[sce1,sce1,Economy,option1] * s3ijkch[sce1,sce1,sce2,Economy,option1]
   + 1.92 p3ijch[sce1,sce1,Economy,option1] * s3ijkch[sce1,sce1,sce3,Economy,option1]
   + 0.94 p3ijch[sce1,sce1,Economy,option2] * s3ijkch[sce1,sce1,sce1,Economy,option2]
   + 6.58 p3ijch[sce1,sce1,Economy,option2] * s3ijkch[sce1,sce1,sce2,Economy,option2]
   + 1.88 p3ijch[sce1,sce1,Economy,option2] * s3ijkch[sce1,sce1,sce3,Economy,option2]
   + 0.9 p3ijch[sce1,sce1,Economy,option3] * s3ijkch[sce1,sce1,sce1,Economy,option3]
   + 6.3 p3ijch[sce1,sce1,Economy,option3] * s3ijkch[sce1,sce1,sce2,Economy,option3]
   + 1.8 p3ijch[sce1,sce1,Economy,option3] * s3ijkch[sce1,sce1,sce3,Economy,option3]
   + 21 p3ijch[sce1,sce2,First,option1] * s3ijkch[sce1,sce2,sce1,First,option1]
   + 147 p3ijch[sce1,sce2,First,option1] * s3ijkch[sce1,sce2,sce2,First,option1]
   + 42 p3ijch[sce1,sce2,First,option1] * s3ijkch[sce1,sce2,sce3,First,option1]
   + 12.6 p3ijch[sce1,sce2,First,option2] * s3ijkch[sce1,sce2,sce1,First,option2]
   + 88.2 p3ijch[sce1,sce2,First,option2] * s3ijkch[sce1,sce2,sce2,First,option2]
   + 25.2 p3ijch[sce1,sce2,First,option2] * s3ijkch[sce1,sce2,sce3,First,option2]
   + 11.9 p3ijch[sce1,sce2,First,option3] * s3ijkch[sce1,sce2,sce1,First,option3]
   + 83.3 p3ijch[sce1,sce2,First,option3] * s3ijkch[sce1,sce2,sce2,First,option3]
   + 23.8 p3ijch[sce1,sce2,First,option3] * s3ijkch[sce1,sce2,sce3,First,option3]
   + 11.48 p3ijch[sce1,sce2,Business,option1] * s3ijkch[sce1,sce2,sce1,Business,option1]
   + 80.36 p3ijch[sce1,sce2,Business,option1] * s3ijkch[sce1,sce2,sce2,Business,option1]
   + 22.96 p3ijch[sce1,sce2,Business,option1] * s3ijkch[sce1,sce2,sce3,Business,option1]
   + 11.2 p3ijch[sce1,sce2,Business,option2] * s3ijkch[sce1,sce2,sce1,Business,option2]
   + 78.4 p3ijch[sce1,sce2,Business,option2] * s3ijkch[sce1,sce2,sce2,Business,option2]
   + 22.4 p3ijch[sce1,sce2,Business,option2] * s3ijkch[sce1,sce2,sce3,Business,option2]
   + 7 p3ijch[sce1,sce2,Business,option3] * s3ijkch[sce1,sce2,sce1,Business,option3]
   + 49 p3ijch[sce1,sce2,Business,option3] * s3ijkch[sce1,sce2,sce2,Business,option3]
   + 14 p3ijch[sce1,sce2,Business,option3] * s3ijkch[sce1,sce2,sce3,Business,option3]
   + 6.72 p3ijch[sce1,sce2,Economy,option1] * s3ijkch[sce1,sce2,sce1,Economy,option1]
   + 47.04 p3ijch[sce1,sce2,Economy,option1] * s3ijkch[sce1,sce2,sce2,Economy,option1]
   + 13.44 p3ijch[sce1,sce2,Economy,option1] * s3ijkch[sce1,sce2,sce3,Economy,option1]
   + 6.58 p3ijch[sce1,sce2,Economy,option2] * s3ijkch[sce1,sce2,sce1,Economy,option2]
   + 46.06 p3ijch[sce1,sce2,Economy,option2] * s3ijkch[sce1,sce2,sce2,Economy,option2]
   + 13.16 p3ijch[sce1,sce2,Economy,option2] * s3ijkch[sce1,sce2,sce3,Economy,option2]
   + 6.3 p3ijch[sce1,sce2,Economy,option3] * s3ijkch[sce1,sce2,sce1,Economy,option3]
   + 44.1 p3ijch[sce1,sce2,Economy,option3] * s3ijkch[sce1,sce2,sce2,Economy,option3]
   + 12.6 p3ijch[sce1,sce2,Economy,option3] * s3ijkch[sce1,sce2,sce3,Economy,option3]
   + 6 p3ijch[sce1,sce3,First,option1] * s3ijkch[sce1,sce3,sce1,First,option1]
   + 42 p3ijch[sce1,sce3,First,option1] * s3ijkch[sce1,sce3,sce2,First,option1]
   + 12 p3ijch[sce1,sce3,First,option1] * s3ijkch[sce1,sce3,sce3,First,option1]
   + 3.6 p3ijch[sce1,sce3,First,option2] * s3ijkch[sce1,sce3,sce1,First,option2]
   + 25.2 p3ijch[sce1,sce3,First,option2] * s3ijkch[sce1,sce3,sce2,First,option2]
   + 7.2 p3ijch[sce1,sce3,First,option2] * s3ijkch[sce1,sce3,sce3,First,option2]
   + 3.4 p3ijch[sce1,sce3,First,option3] * s3ijkch[sce1,sce3,sce1,First,option3]
   + 23.8 p3ijch[sce1,sce3,First,option3] * s3ijkch[sce1,sce3,sce2,First,option3]
   + 6.8 p3ijch[sce1,sce3,First,option3] * s3ijkch[sce1,sce3,sce3,First,option3]
   + 3.28 p3ijch[sce1,sce3,Business,option1] * s3ijkch[sce1,sce3,sce1,Business,option1]
   + 22.96 p3ijch[sce1,sce3,Business,option1] * s3ijkch[sce1,sce3,sce2,Business,option1]
   + 6.56 p3ijch[sce1,sce3,Business,option1] * s3ijkch[sce1,sce3,sce3,Business,option1]
   + 3.2 p3ijch[sce1,sce3,Business,option2] * s3ijkch[sce1,sce3,sce1,Business,option2]
   + 22.4 p3ijch[sce1,sce3,Business,option2] * s3ijkch[sce1,sce3,sce2,Business,option2]
   + 6.4 p3ijch[sce1,sce3,Business,option2] * s3ijkch[sce1,sce3,sce3,Business,option2]
   + 2 p3ijch[sce1,sce3,Business,option3] * s3ijkch[sce1,sce3,sce1,Business,option3]
   + 14 p3ijch[sce1,sce3,Business,option3] * s3ijkch[sce1,sce3,sce2,Business,option3]
   + 4 p3ijch[sce1,sce3,Business,option3] * s3ijkch[sce1,sce3,sce3,Business,option3]
   + 1.92 p3ijch[sce1,sce3,Economy,option1] * s3ijkch[sce1,sce3,sce1,Economy,option1]
   + 13.44 p3ijch[sce1,sce3,Economy,option1] * s3ijkch[sce1,sce3,sce2,Economy,option1]
   + 3.84 p3ijch[sce1,sce3,Economy,option1] * s3ijkch[sce1,sce3,sce3,Economy,option1]
   + 1.88 p3ijch[sce1,sce3,Economy,option2] * s3ijkch[sce1,sce3,sce1,Economy,option2]
   + 13.16 p3ijch[sce1,sce3,Economy,option2] * s3ijkch[sce1,sce3,sce2,Economy,option2]
   + 3.76 p3ijch[sce1,sce3,Economy,option2] * s3ijkch[sce1,sce3,sce3,Economy,option2]
   + 1.8 p3ijch[sce1,sce3,Economy,option3] * s3ijkch[sce1,sce3,sce1,Economy,option3]
   + 12.6 p3ijch[sce1,sce3,Economy,option3] * s3ijkch[sce1,sce3,sce2,Economy,option3]
   + 3.6 p3ijch[sce1,sce3,Economy,option3] * s3ijkch[sce1,sce3,sce3,Economy,option3]
   + 21 p3ijch[sce2,sce1,First,option1] * s3ijkch[sce2,sce1,sce1,First,option1]
   + 147 p3ijch[sce2,sce1,First,option1] * s3ijkch[sce2,sce1,sce2,First,option1]
   + 42 p3ijch[sce2,sce1,First,option1] * s3ijkch[sce2,sce1,sce3,First,option1]
   + 12.6 p3ijch[sce2,sce1,First,option2] * s3ijkch[sce2,sce1,sce1,First,option2]
   + 88.2 p3ijch[sce2,sce1,First,option2] * s3ijkch[sce2,sce1,sce2,First,option2]
   + 25.2 p3ijch[sce2,sce1,First,option2] * s3ijkch[sce2,sce1,sce3,First,option2]
   + 11.9 p3ijch[sce2,sce1,First,option3] * s3ijkch[sce2,sce1,sce1,First,option3]
   + 83.3 p3ijch[sce2,sce1,First,option3] * s3ijkch[sce2,sce1,sce2,First,option3]
   + 23.8 p3ijch[sce2,sce1,First,option3] * s3ijkch[sce2,sce1,sce3,First,option3]
   + 11.48 p3ijch[sce2,sce1,Business,option1] * s3ijkch[sce2,sce1,sce1,Business,option1]
   + 80.36 p3ijch[sce2,sce1,Business,option1] * s3ijkch[sce2,sce1,sce2,Business,option1]
   + 22.96 p3ijch[sce2,sce1,Business,option1] * s3ijkch[sce2,sce1,sce3,Business,option1]
   + 11.2 p3ijch[sce2,sce1,Business,option2] * s3ijkch[sce2,sce1,sce1,Business,option2]
   + 78.4 p3ijch[sce2,sce1,Business,option2] * s3ijkch[sce2,sce1,sce2,Business,option2]
   + 22.4 p3ijch[sce2,sce1,Business,option2] * s3ijkch[sce2,sce1,sce3,Business,option2]
   + 7 p3ijch[sce2,sce1,Business,option3] * s3ijkch[sce2,sce1,sce1,Business,option3]
   + 49 p3ijch[sce2,sce1,Business,option3] * s3ijkch[sce2,sce1,sce2,Business,option3]
   + 14 p3ijch[sce2,sce1,Business,option3] * s3ijkch[sce2,sce1,sce3,Business,option3]
   + 6.72 p3ijch[sce2,sce1,Economy,option1] * s3ijkch[sce2,sce1,sce1,Economy,option1]
   + 47.04 p3ijch[sce2,sce1,Economy,option1] * s3ijkch[sce2,sce1,sce2,Economy,option1]
   + 13.44 p3ijch[sce2,sce1,Economy,option1] * s3ijkch[sce2,sce1,sce3,Economy,option1]
   + 6.58 p3ijch[sce2,sce1,Economy,option2] * s3ijkch[sce2,sce1,sce1,Economy,option2]
   + 46.06 p3ijch[sce2,sce1,Economy,option2] * s3ijkch[sce2,sce1,sce2,Economy,option2]
   + 13.16 p3ijch[sce2,sce1,Economy,option2] * s3ijkch[sce2,sce1,sce3,Economy,option2]
   + 6.3 p3ijch[sce2,sce1,Economy,option3] * s3ijkch[sce2,sce1,sce1,Economy,option3]
   + 44.1 p3ijch[sce2,sce1,Economy,option3] * s3ijkch[sce2,sce1,sce2,Economy,option3]
   + 12.6 p3ijch[sce2,sce1,Economy,option3] * s3ijkch[sce2,sce1,sce3,Economy,option3]
   + 147 p3ijch[sce2,sce2,First,option1] * s3ijkch[sce2,sce2,sce1,First,option1]
   + 1029 p3ijch[sce2,sce2,First,option1] * s3ijkch[sce2,sce2,sce2,First,option1]
   + 294 p3ijch[sce2,sce2,First,option1] * s3ijkch[sce2,sce2,sce3,First,option1]
   + 88.2 p3ijch[sce2,sce2,First,option2] * s3ijkch[sce2,sce2,sce1,First,option2]
   + 617.4 p3ijch[sce2,sce2,First,option2] * s3ijkch[sce2,sce2,sce2,First,option2]
   + 176.4 p3ijch[sce2,sce2,First,option2] * s3ijkch[sce2,sce2,sce3,First,option2]
   + 83.3 p3ijch[sce2,sce2,First,option3] * s3ijkch[sce2,sce2,sce1,First,option3]
   + 583.1 p3ijch[sce2,sce2,First,option3] * s3ijkch[sce2,sce2,sce2,First,option3]
   + 166.6 p3ijch[sce2,sce2,First,option3] * s3ijkch[sce2,sce2,sce3,First,option3]
   + 80.36 p3ijch[sce2,sce2,Business,option1] * s3ijkch[sce2,sce2,sce1,Business,option1]
   + 562.52 p3ijch[sce2,sce2,Business,option1] * s3ijkch[sce2,sce2,sce2,Business,option1]
   + 160.72 p3ijch[sce2,sce2,Business,option1] * s3ijkch[sce2,sce2,sce3,Business,option1]
   + 78.4 p3ijch[sce2,sce2,Business,option2] * s3ijkch[sce2,sce2,sce1,Business,option2]
   + 548.8 p3ijch[sce2,sce2,Business,option2] * s3ijkch[sce2,sce2,sce2,Business,option2]
   + 156.8 p3ijch[sce2,sce2,Business,option2] * s3ijkch[sce2,sce2,sce3,Business,option2]
   + 49 p3ijch[sce2,sce2,Business,option3] * s3ijkch[sce2,sce2,sce1,Business,option3]
   + 343 p3ijch[sce2,sce2,Business,option3] * s3ijkch[sce2,sce2,sce2,Business,option3]
   + 98 p3ijch[sce2,sce2,Business,option3] * s3ijkch[sce2,sce2,sce3,Business,option3]
   + 47.04 p3ijch[sce2,sce2,Economy,option1] * s3ijkch[sce2,sce2,sce1,Economy,option1]
   + 329.28 p3ijch[sce2,sce2,Economy,option1] * s3ijkch[sce2,sce2,sce2,Economy,option1]
   + 94.08 p3ijch[sce2,sce2,Economy,option1] * s3ijkch[sce2,sce2,sce3,Economy,option1]
   + 46.06 p3ijch[sce2,sce2,Economy,option2] * s3ijkch[sce2,sce2,sce1,Economy,option2]
   + 322.42 p3ijch[sce2,sce2,Economy,option2] * s3ijkch[sce2,sce2,sce2,Economy,option2]
   + 92.12 p3ijch[sce2,sce2,Economy,option2] * s3ijkch[sce2,sce2,sce3,Economy,option2]
   + 44.1 p3ijch[sce2,sce2,Economy,option3] * s3ijkch[sce2,sce2,sce1,Economy,option3]
   + 308.7 p3ijch[sce2,sce2,Economy,option3] * s3ijkch[sce2,sce2,sce2,Economy,option3]
   + 88.2 p3ijch[sce2,sce2,Economy,option3] * s3ijkch[sce2,sce2,sce3,Economy,option3]
   + 42 p3ijch[sce2,sce3,First,option1] * s3ijkch[sce2,sce3,sce1,First,option1]
   + 294 p3ijch[sce2,sce3,First,option1] * s3ijkch[sce2,sce3,sce2,First,option1]
   + 84 p3ijch[sce2,sce3,First,option1] * s3ijkch[sce2,sce3,sce3,First,option1]
   + 25.2 p3ijch[sce2,sce3,First,option2] * s3ijkch[sce2,sce3,sce1,First,option2]
   + 176.4 p3ijch[sce2,sce3,First,option2] * s3ijkch[sce2,sce3,sce2,First,option2]
   + 50.4 p3ijch[sce2,sce3,First,option2] * s3ijkch[sce2,sce3,sce3,First,option2]
   + 23.8 p3ijch[sce2,sce3,First,option3] * s3ijkch[sce2,sce3,sce1,First,option3]
   + 166.6 p3ijch[sce2,sce3,First,option3] * s3ijkch[sce2,sce3,sce2,First,option3]
   + 47.6 p3ijch[sce2,sce3,First,option3] * s3ijkch[sce2,sce3,sce3,First,option3]
   + 22.96 p3ijch[sce2,sce3,Business,option1] * s3ijkch[sce2,sce3,sce1,Business,option1]
   + 160.72 p3ijch[sce2,sce3,Business,option1] * s3ijkch[sce2,sce3,sce2,Business,option1]
   + 45.92 p3ijch[sce2,sce3,Business,option1] * s3ijkch[sce2,sce3,sce3,Business,option1]
   + 22.4 p3ijch[sce2,sce3,Business,option2] * s3ijkch[sce2,sce3,sce1,Business,option2]
   + 156.8 p3ijch[sce2,sce3,Business,option2] * s3ijkch[sce2,sce3,sce2,Business,option2]
   + 44.8 p3ijch[sce2,sce3,Business,option2] * s3ijkch[sce2,sce3,sce3,Business,option2]
   + 14 p3ijch[sce2,sce3,Business,option3] * s3ijkch[sce2,sce3,sce1,Business,option3]
   + 98 p3ijch[sce2,sce3,Business,option3] * s3ijkch[sce2,sce3,sce2,Business,option3]
   + 28 p3ijch[sce2,sce3,Business,option3] * s3ijkch[sce2,sce3,sce3,Business,option3]
   + 13.44 p3ijch[sce2,sce3,Economy,option1] * s3ijkch[sce2,sce3,sce1,Economy,option1]
   + 94.08 p3ijch[sce2,sce3,Economy,option1] * s3ijkch[sce2,sce3,sce2,Economy,option1]
   + 26.88 p3ijch[sce2,sce3,Economy,option1] * s3ijkch[sce2,sce3,sce3,Economy,option1]
   + 13.16 p3ijch[sce2,sce3,Economy,option2] * s3ijkch[sce2,sce3,sce1,Economy,option2]
   + 92.12 p3ijch[sce2,sce3,Economy,option2] * s3ijkch[sce2,sce3,sce2,Economy,option2]
   + 26.32 p3ijch[sce2,sce3,Economy,option2] * s3ijkch[sce2,sce3,sce3,Economy,option2]
   + 12.6 p3ijch[sce2,sce3,Economy,option3] * s3ijkch[sce2,sce3,sce1,Economy,option3]
   + 88.2 p3ijch[sce2,sce3,Economy,option3] * s3ijkch[sce2,sce3,sce2,Economy,option3]
   + 25.2 p3ijch[sce2,sce3,Economy,option3] * s3ijkch[sce2,sce3,sce3,Economy,option3]
   + 6 p3ijch[sce3,sce1,First,option1] * s3ijkch[sce3,sce1,sce1,First,option1]
   + 42 p3ijch[sce3,sce1,First,option1] * s3ijkch[sce3,sce1,sce2,First,option1]
   + 12 p3ijch[sce3,sce1,First,option1] * s3ijkch[sce3,sce1,sce3,First,option1]
   + 3.6 p3ijch[sce3,sce1,First,option2] * s3ijkch[sce3,sce1,sce1,First,option2]
   + 25.2 p3ijch[sce3,sce1,First,option2] * s3ijkch[sce3,sce1,sce2,First,option2]
   + 7.2 p3ijch[sce3,sce1,First,option2] * s3ijkch[sce3,sce1,sce3,First,option2]
   + 3.4 p3ijch[sce3,sce1,First,option3] * s3ijkch[sce3,sce1,sce1,First,option3]
   + 23.8 p3ijch[sce3,sce1,First,option3] * s3ijkch[sce3,sce1,sce2,First,option3]
   + 6.8 p3ijch[sce3,sce1,First,option3] * s3ijkch[sce3,sce1,sce3,First,option3]
   + 3.28 p3ijch[sce3,sce1,Business,option1] * s3ijkch[sce3,sce1,sce1,Business,option1]
   + 22.96 p3ijch[sce3,sce1,Business,option1] * s3ijkch[sce3,sce1,sce2,Business,option1]
   + 6.56 p3ijch[sce3,sce1,Business,option1] * s3ijkch[sce3,sce1,sce3,Business,option1]
   + 3.2 p3ijch[sce3,sce1,Business,option2] * s3ijkch[sce3,sce1,sce1,Business,option2]
   + 22.4 p3ijch[sce3,sce1,Business,option2] * s3ijkch[sce3,sce1,sce2,Business,option2]
   + 6.4 p3ijch[sce3,sce1,Business,option2] * s3ijkch[sce3,sce1,sce3,Business,option2]
   + 2 p3ijch[sce3,sce1,Business,option3] * s3ijkch[sce3,sce1,sce1,Business,option3]
   + 14 p3ijch[sce3,sce1,Business,option3] * s3ijkch[sce3,sce1,sce2,Business,option3]
   + 4 p3ijch[sce3,sce1,Business,option3] * s3ijkch[sce3,sce1,sce3,Business,option3]
   + 1.92 p3ijch[sce3,sce1,Economy,option1] * s3ijkch[sce3,sce1,sce1,Economy,option1]
   + 13.44 p3ijch[sce3,sce1,Economy,option1] * s3ijkch[sce3,sce1,sce2,Economy,option1]
   + 3.84 p3ijch[sce3,sce1,Economy,option1] * s3ijkch[sce3,sce1,sce3,Economy,option1]
   + 1.88 p3ijch[sce3,sce1,Economy,option2] * s3ijkch[sce3,sce1,sce1,Economy,option2]
   + 13.16 p3ijch[sce3,sce1,Economy,option2] * s3ijkch[sce3,sce1,sce2,Economy,option2]
   + 3.76 p3ijch[sce3,sce1,Economy,option2] * s3ijkch[sce3,sce1,sce3,Economy,option2]
   + 1.8 p3ijch[sce3,sce1,Economy,option3] * s3ijkch[sce3,sce1,sce1,Economy,option3]
   + 12.6 p3ijch[sce3,sce1,Economy,option3] * s3ijkch[sce3,sce1,sce2,Economy,option3]
   + 3.6 p3ijch[sce3,sce1,Economy,option3] * s3ijkch[sce3,sce1,sce3,Economy,option3]
   + 42 p3ijch[sce3,sce2,First,option1] * s3ijkch[sce3,sce2,sce1,First,option1]
   + 294 p3ijch[sce3,sce2,First,option1] * s3ijkch[sce3,sce2,sce2,First,option1]
   + 84 p3ijch[sce3,sce2,First,option1] * s3ijkch[sce3,sce2,sce3,First,option1]
   + 25.2 p3ijch[sce3,sce2,First,option2] * s3ijkch[sce3,sce2,sce1,First,option2]
   + 176.4 p3ijch[sce3,sce2,First,option2] * s3ijkch[sce3,sce2,sce2,First,option2]
   + 50.4 p3ijch[sce3,sce2,First,option2] * s3ijkch[sce3,sce2,sce3,First,option2]
   + 23.8 p3ijch[sce3,sce2,First,option3] * s3ijkch[sce3,sce2,sce1,First,option3]
   + 166.6 p3ijch[sce3,sce2,First,option3] * s3ijkch[sce3,sce2,sce2,First,option3]
   + 47.6 p3ijch[sce3,sce2,First,option3] * s3ijkch[sce3,sce2,sce3,First,option3]
   + 22.96 p3ijch[sce3,sce2,Business,option1] * s3ijkch[sce3,sce2,sce1,Business,option1]
   + 160.72 p3ijch[sce3,sce2,Business,option1] * s3ijkch[sce3,sce2,sce2,Business,option1]
   + 45.92 p3ijch[sce3,sce2,Business,option1] * s3ijkch[sce3,sce2,sce3,Business,option1]
   + 22.4 p3ijch[sce3,sce2,Business,option2] * s3ijkch[sce3,sce2,sce1,Business,option2]
   + 156.8 p3ijch[sce3,sce2,Business,option2] * s3ijkch[sce3,sce2,sce2,Business,option2]
   + 44.8 p3ijch[sce3,sce2,Business,option2] * s3ijkch[sce3,sce2,sce3,Business,option2]
   + 14 p3ijch[sce3,sce2,Business,option3] * s3ijkch[sce3,sce2,sce1,Business,option3]
   + 98 p3ijch[sce3,sce2,Business,option3] * s3ijkch[sce3,sce2,sce2,Business,option3]
   + 28 p3ijch[sce3,sce2,Business,option3] * s3ijkch[sce3,sce2,sce3,Business,option3]
   + 13.44 p3ijch[sce3,sce2,Economy,option1] * s3ijkch[sce3,sce2,sce1,Economy,option1]
   + 94.08 p3ijch[sce3,sce2,Economy,option1] * s3ijkch[sce3,sce2,sce2,Economy,option1]
   + 26.88 p3ijch[sce3,sce2,Economy,option1] * s3ijkch[sce3,sce2,sce3,Economy,option1]
   + 13.16 p3ijch[sce3,sce2,Economy,option2] * s3ijkch[sce3,sce2,sce1,Economy,option2]
   + 92.12 p3ijch[sce3,sce2,Economy,option2] * s3ijkch[sce3,sce2,sce2,Economy,option2]
   + 26.32 p3ijch[sce3,sce2,Economy,option2] * s3ijkch[sce3,sce2,sce3,Economy,option2]
   + 12.6 p3ijch[sce3,sce2,Economy,option3] * s3ijkch[sce3,sce2,sce1,Economy,option3]
   + 88.2 p3ijch[sce3,sce2,Economy,option3] * s3ijkch[sce3,sce2,sce2,Economy,option3]
   + 25.2 p3ijch[sce3,sce2,Economy,option3] * s3ijkch[sce3,sce2,sce3,Economy,option3]
   + 12 p3ijch[sce3,sce3,First,option1] * s3ijkch[sce3,sce3,sce1,First,option1]
   + 84 p3ijch[sce3,sce3,First,option1] * s3ijkch[sce3,sce3,sce2,First,option1]
   + 24 p3ijch[sce3,sce3,First,option1] * s3ijkch[sce3,sce3,sce3,First,option1]
   + 7.2 p3ijch[sce3,sce3,First,option2] * s3ijkch[sce3,sce3,sce1,First,option2]
   + 50.4 p3ijch[sce3,sce3,First,option2] * s3ijkch[sce3,sce3,sce2,First,option2]
   + 14.4 p3ijch[sce3,sce3,First,option2] * s3ijkch[sce3,sce3,sce3,First,option2]
   + 6.8 p3ijch[sce3,sce3,First,option3] * s3ijkch[sce3,sce3,sce1,First,option3]
   + 47.6 p3ijch[sce3,sce3,First,option3] * s3ijkch[sce3,sce3,sce2,First,option3]
   + 13.6 p3ijch[sce3,sce3,First,option3] * s3ijkch[sce3,sce3,sce3,First,option3]
   + 6.56 p3ijch[sce3,sce3,Business,option1] * s3ijkch[sce3,sce3,sce1,Business,option1]
   + 45.92 p3ijch[sce3,sce3,Business,option1] * s3ijkch[sce3,sce3,sce2,Business,option1]
   + 13.12 p3ijch[sce3,sce3,Business,option1] * s3ijkch[sce3,sce3,sce3,Business,option1]
   + 6.4 p3ijch[sce3,sce3,Business,option2] * s3ijkch[sce3,sce3,sce1,Business,option2]
   + 44.8 p3ijch[sce3,sce3,Business,option2] * s3ijkch[sce3,sce3,sce2,Business,option2]
   + 12.8 p3ijch[sce3,sce3,Business,option2] * s3ijkch[sce3,sce3,sce3,Business,option2]
   + 4 p3ijch[sce3,sce3,Business,option3] * s3ijkch[sce3,sce3,sce1,Business,option3]
   + 28 p3ijch[sce3,sce3,Business,option3] * s3ijkch[sce3,sce3,sce2,Business,option3]
   + 8 p3ijch[sce3,sce3,Business,option3] * s3ijkch[sce3,sce3,sce3,Business,option3]
   + 3.84 p3ijch[sce3,sce3,Economy,option1] * s3ijkch[sce3,sce3,sce1,Economy,option1]
   + 26.88 p3ijch[sce3,sce3,Economy,option1] * s3ijkch[sce3,sce3,sce2,Economy,option1]
   + 7.68 p3ijch[sce3,sce3,Economy,option1] * s3ijkch[sce3,sce3,sce3,Economy,option1]
   + 3.76 p3ijch[sce3,sce3,Economy,option2] * s3ijkch[sce3,sce3,sce1,Economy,option2]
   + 26.32 p3ijch[sce3,sce3,Economy,option2] * s3ijkch[sce3,sce3,sce2,Economy,option2]
   + 7.52 p3ijch[sce3,sce3,Economy,option2] * s3ijkch[sce3,sce3,sce3,Economy,option2]
   + 3.6 p3ijch[sce3,sce3,Economy,option3] * s3ijkch[sce3,sce3,sce1,Economy,option3]
   + 25.2 p3ijch[sce3,sce3,Economy,option3] * s3ijkch[sce3,sce3,sce2,Economy,option3]
   + 7.2 p3ijch[sce3,sce3,Economy,option3] * s3ijkch[sce3,sce3,sce3,Economy,option3]
   ] / 2 
Subject To
 priceOption1[First]: p1ch[First,option1] + p1ch[First,option2]
   + p1ch[First,option3] = 1
 priceOption1[Business]: p1ch[Business,option1] + p1ch[Business,option2]
   + p1ch[Business,option3] = 1
 priceOption1[Economy]: p1ch[Economy,option1] + p1ch[Economy,option2]
   + p1ch[Economy,option3] = 1
 sales1[sce1,First,option1]: - 25 p1ch[First,option1]
   + s1ich[sce1,First,option1] <= 0
 sales1[sce1,First,option2]: s1ich[sce1,First,option2] <= 0
 sales1[sce1,First,option3]: s1ich[sce1,First,option3] <= 0
 sales1[sce1,Business,option1]: - 50 p1ch[Business,option1]
   + s1ich[sce1,Business,option1] <= 0
 sales1[sce1,Business,option2]: s1ich[sce1,Business,option2] <= 0
 sales1[sce1,Business,option3]: s1ich[sce1,Business,option3] <= 0
 sales1[sce1,Economy,option1]: - 50 p1ch[Economy,option1]
   + s1ich[sce1,Economy,option1] <= 0
 sales1[sce1,Economy,option2]: s1ich[sce1,Economy,option2] <= 0
 sales1[sce1,Economy,option3]: s1ich[sce1,Economy,option3] <= 0
 sales1[sce2,First,option1]: - 25 p1ch[First,option1]
   + s1ich[sce2,First,option1] <= 0
 sales1[sce2,First,option2]: s1ich[sce2,First,option2] <= 0
 sales1[sce2,First,option3]: s1ich[sce2,First,option3] <= 0
 sales1[sce2,Business,option1]: - 50 p1ch[Business,option1]
   + s1ich[sce2,Business,option1] <= 0
 sales1[sce2,Business,option2]: s1ich[sce2,Business,option2] <= 0
 sales1[sce2,Business,option3]: s1ich[sce2,Business,option3] <= 0
 sales1[sce2,Economy,option1]: - 50 p1ch[Economy,option1]
   + s1ich[sce2,Economy,option1] <= 0
 sales1[sce2,Economy,option2]: s1ich[sce2,Economy,option2] <= 0
 sales1[sce2,Economy,option3]: s1ich[sce2,Economy,option3] <= 0
 sales1[sce3,First,option1]: - 25 p1ch[First,option1]
   + s1ich[sce3,First,option1] <= 0
 sales1[sce3,First,option2]: s1ich[sce3,First,option2] <= 0
 sales1[sce3,First,option3]: s1ich[sce3,First,option3] <= 0
 sales1[sce3,Business,option1]: - 50 p1ch[Business,option1]
   + s1ich[sce3,Business,option1] <= 0
 sales1[sce3,Business,option2]: s1ich[sce3,Business,option2] <= 0
 sales1[sce3,Business,option3]: s1ich[sce3,Business,option3] <= 0
 sales1[sce3,Economy,option1]: - 50 p1ch[Economy,option1]
   + s1ich[sce3,Economy,option1] <= 0
 sales1[sce3,Economy,option2]: s1ich[sce3,Economy,option2] <= 0
 sales1[sce3,Economy,option3]: s1ich[sce3,Economy,option3] <= 0
 priceOption2[sce1,First]: p2ich[sce1,First,option1]
   + p2ich[sce1,First,option2] + p2ich[sce1,First,option3] = 1
 priceOption2[sce1,Business]: p2ich[sce1,Business,option1]
   + p2ich[sce1,Business,option2] + p2ich[sce1,Business,option3] = 1
 priceOption2[sce1,Economy]: p2ich[sce1,Economy,option1]
   + p2ich[sce1,Economy,option2] + p2ich[sce1,Economy,option3] = 1
 priceOption2[sce2,First]: p2ich[sce2,First,option1]
   + p2ich[sce2,First,option2] + p2ich[sce2,First,option3] = 1
 priceOption2[sce2,Business]: p2ich[sce2,Business,option1]
   + p2ich[sce2,Business,option2] + p2ich[sce2,Business,option3] = 1
 priceOption2[sce2,Economy]: p2ich[sce2,Economy,option1]
   + p2ich[sce2,Economy,option2] + p2ich[sce2,Economy,option3] = 1
 priceOption2[sce3,First]: p2ich[sce3,First,option1]
   + p2ich[sce3,First,option2] + p2ich[sce3,First,option3] = 1
 priceOption2[sce3,Business]: p2ich[sce3,Business,option1]
   + p2ich[sce3,Business,option2] + p2ich[sce3,Business,option3] = 1
 priceOption2[sce3,Economy]: p2ich[sce3,Economy,option1]
   + p2ich[sce3,Economy,option2] + p2ich[sce3,Economy,option3] = 1
 sales2[sce1,sce1,First,option1]: s2ijch[sce1,sce1,First,option1] <= 0
 sales2[sce1,sce1,First,option2]: s2ijch[sce1,sce1,First,option2] <= 0
 sales2[sce1,sce1,First,option3]: - 50 p2ich[sce1,First,option3]
   + s2ijch[sce1,sce1,First,option3] <= 0
 sales2[sce1,sce1,Business,option1]: - 45 p2ich[sce1,Business,option1]
   + s2ijch[sce1,sce1,Business,option1] <= 0
 sales2[sce1,sce1,Business,option2]: s2ijch[sce1,sce1,Business,option2]
   <= 0
 sales2[sce1,sce1,Business,option3]: s2ijch[sce1,sce1,Business,option3]
   <= 0
 sales2[sce1,sce1,Economy,option1]: - 50 p2ich[sce1,Economy,option1]
   + s2ijch[sce1,sce1,Economy,option1] <= 0
 sales2[sce1,sce1,Economy,option2]: s2ijch[sce1,sce1,Economy,option2] <= 0
 sales2[sce1,sce1,Economy,option3]: s2ijch[sce1,sce1,Economy,option3] <= 0
 sales2[sce1,sce2,First,option1]: s2ijch[sce1,sce2,First,option1] <= 0
 sales2[sce1,sce2,First,option2]: s2ijch[sce1,sce2,First,option2] <= 0
 sales2[sce1,sce2,First,option3]: - 50 p2ich[sce1,First,option3]
   + s2ijch[sce1,sce2,First,option3] <= 0
 sales2[sce1,sce2,Business,option1]: - 45 p2ich[sce1,Business,option1]
   + s2ijch[sce1,sce2,Business,option1] <= 0
 sales2[sce1,sce2,Business,option2]: s2ijch[sce1,sce2,Business,option2]
   <= 0
 sales2[sce1,sce2,Business,option3]: s2ijch[sce1,sce2,Business,option3]
   <= 0
 sales2[sce1,sce2,Economy,option1]: - 50 p2ich[sce1,Economy,option1]
   + s2ijch[sce1,sce2,Economy,option1] <= 0
 sales2[sce1,sce2,Economy,option2]: s2ijch[sce1,sce2,Economy,option2] <= 0
 sales2[sce1,sce2,Economy,option3]: s2ijch[sce1,sce2,Economy,option3] <= 0
 sales2[sce1,sce3,First,option1]: s2ijch[sce1,sce3,First,option1] <= 0
 sales2[sce1,sce3,First,option2]: s2ijch[sce1,sce3,First,option2] <= 0
 sales2[sce1,sce3,First,option3]: - 50 p2ich[sce1,First,option3]
   + s2ijch[sce1,sce3,First,option3] <= 0
 sales2[sce1,sce3,Business,option1]: - 45 p2ich[sce1,Business,option1]
   + s2ijch[sce1,sce3,Business,option1] <= 0
 sales2[sce1,sce3,Business,option2]: s2ijch[sce1,sce3,Business,option2]
   <= 0
 sales2[sce1,sce3,Business,option3]: s2ijch[sce1,sce3,Business,option3]
   <= 0
 sales2[sce1,sce3,Economy,option1]: - 50 p2ich[sce1,Economy,option1]
   + s2ijch[sce1,sce3,Economy,option1] <= 0
 sales2[sce1,sce3,Economy,option2]: s2ijch[sce1,sce3,Economy,option2] <= 0
 sales2[sce1,sce3,Economy,option3]: s2ijch[sce1,sce3,Economy,option3] <= 0
 sales2[sce2,sce1,First,option1]: s2ijch[sce2,sce1,First,option1] <= 0
 sales2[sce2,sce1,First,option2]: s2ijch[sce2,sce1,First,option2] <= 0
 sales2[sce2,sce1,First,option3]: - 50 p2ich[sce2,First,option3]
   + s2ijch[sce2,sce1,First,option3] <= 0
 sales2[sce2,sce1,Business,option1]: - 45 p2ich[sce2,Business,option1]
   + s2ijch[sce2,sce1,Business,option1] <= 0
 sales2[sce2,sce1,Business,option2]: s2ijch[sce2,sce1,Business,option2]
   <= 0
 sales2[sce2,sce1,Business,option3]: s2ijch[sce2,sce1,Business,option3]
   <= 0
 sales2[sce2,sce1,Economy,option1]: - 50 p2ich[sce2,Economy,option1]
   + s2ijch[sce2,sce1,Economy,option1] <= 0
 sales2[sce2,sce1,Economy,option2]: s2ijch[sce2,sce1,Economy,option2] <= 0
 sales2[sce2,sce1,Economy,option3]: s2ijch[sce2,sce1,Economy,option3] <= 0
 sales2[sce2,sce2,First,option1]: s2ijch[sce2,sce2,First,option1] <= 0
 sales2[sce2,sce2,First,option2]: s2ijch[sce2,sce2,First,option2] <= 0
 sales2[sce2,sce2,First,option3]: - 50 p2ich[sce2,First,option3]
   + s2ijch[sce2,sce2,First,option3] <= 0
 sales2[sce2,sce2,Business,option1]: - 45 p2ich[sce2,Business,option1]
   + s2ijch[sce2,sce2,Business,option1] <= 0
 sales2[sce2,sce2,Business,option2]: s2ijch[sce2,sce2,Business,option2]
   <= 0
 sales2[sce2,sce2,Business,option3]: s2ijch[sce2,sce2,Business,option3]
   <= 0
 sales2[sce2,sce2,Economy,option1]: - 50 p2ich[sce2,Economy,option1]
   + s2ijch[sce2,sce2,Economy,option1] <= 0
 sales2[sce2,sce2,Economy,option2]: s2ijch[sce2,sce2,Economy,option2] <= 0
 sales2[sce2,sce2,Economy,option3]: s2ijch[sce2,sce2,Economy,option3] <= 0
 sales2[sce2,sce3,First,option1]: s2ijch[sce2,sce3,First,option1] <= 0
 sales2[sce2,sce3,First,option2]: s2ijch[sce2,sce3,First,option2] <= 0
 sales2[sce2,sce3,First,option3]: - 50 p2ich[sce2,First,option3]
   + s2ijch[sce2,sce3,First,option3] <= 0
 sales2[sce2,sce3,Business,option1]: - 45 p2ich[sce2,Business,option1]
   + s2ijch[sce2,sce3,Business,option1] <= 0
 sales2[sce2,sce3,Business,option2]: s2ijch[sce2,sce3,Business,option2]
   <= 0
 sales2[sce2,sce3,Business,option3]: s2ijch[sce2,sce3,Business,option3]
   <= 0
 sales2[sce2,sce3,Economy,option1]: - 50 p2ich[sce2,Economy,option1]
   + s2ijch[sce2,sce3,Economy,option1] <= 0
 sales2[sce2,sce3,Economy,option2]: s2ijch[sce2,sce3,Economy,option2] <= 0
 sales2[sce2,sce3,Economy,option3]: s2ijch[sce2,sce3,Economy,option3] <= 0
 sales2[sce3,sce1,First,option1]: s2ijch[sce3,sce1,First,option1] <= 0
 sales2[sce3,sce1,First,option2]: s2ijch[sce3,sce1,First,option2] <= 0
 sales2[sce3,sce1,First,option3]: - 50 p2ich[sce3,First,option3]
   + s2ijch[sce3,sce1,First,option3] <= 0
 sales2[sce3,sce1,Business,option1]: - 45 p2ich[sce3,Business,option1]
   + s2ijch[sce3,sce1,Business,option1] <= 0
 sales2[sce3,sce1,Business,option2]: s2ijch[sce3,sce1,Business,option2]
   <= 0
 sales2[sce3,sce1,Business,option3]: s2ijch[sce3,sce1,Business,option3]
   <= 0
 sales2[sce3,sce1,Economy,option1]: - 50 p2ich[sce3,Economy,option1]
   + s2ijch[sce3,sce1,Economy,option1] <= 0
 sales2[sce3,sce1,Economy,option2]: s2ijch[sce3,sce1,Economy,option2] <= 0
 sales2[sce3,sce1,Economy,option3]: s2ijch[sce3,sce1,Economy,option3] <= 0
 sales2[sce3,sce2,First,option1]: s2ijch[sce3,sce2,First,option1] <= 0
 sales2[sce3,sce2,First,option2]: s2ijch[sce3,sce2,First,option2] <= 0
 sales2[sce3,sce2,First,option3]: - 50 p2ich[sce3,First,option3]
   + s2ijch[sce3,sce2,First,option3] <= 0
 sales2[sce3,sce2,Business,option1]: - 45 p2ich[sce3,Business,option1]
   + s2ijch[sce3,sce2,Business,option1] <= 0
 sales2[sce3,sce2,Business,option2]: s2ijch[sce3,sce2,Business,option2]
   <= 0
 sales2[sce3,sce2,Business,option3]: s2ijch[sce3,sce2,Business,option3]
   <= 0
 sales2[sce3,sce2,Economy,option1]: - 50 p2ich[sce3,Economy,option1]
   + s2ijch[sce3,sce2,Economy,option1] <= 0
 sales2[sce3,sce2,Economy,option2]: s2ijch[sce3,sce2,Economy,option2] <= 0
 sales2[sce3,sce2,Economy,option3]: s2ijch[sce3,sce2,Economy,option3] <= 0
 sales2[sce3,sce3,First,option1]: s2ijch[sce3,sce3,First,option1] <= 0
 sales2[sce3,sce3,First,option2]: s2ijch[sce3,sce3,First,option2] <= 0
 sales2[sce3,sce3,First,option3]: - 50 p2ich[sce3,First,option3]
   + s2ijch[sce3,sce3,First,option3] <= 0
 sales2[sce3,sce3,Business,option1]: - 45 p2ich[sce3,Business,option1]
   + s2ijch[sce3,sce3,Business,option1] <= 0
 sales2[sce3,sce3,Business,option2]: s2ijch[sce3,sce3,Business,option2]
   <= 0
 sales2[sce3,sce3,Business,option3]: s2ijch[sce3,sce3,Business,option3]
   <= 0
 sales2[sce3,sce3,Economy,option1]: - 50 p2ich[sce3,Economy,option1]
   + s2ijch[sce3,sce3,Economy,option1] <= 0
 sales2[sce3,sce3,Economy,option2]: s2ijch[sce3,sce3,Economy,option2] <= 0
 sales2[sce3,sce3,Economy,option3]: s2ijch[sce3,sce3,Economy,option3] <= 0
 priceOption3[sce1,sce1,First]: p3ijch[sce1,sce1,First,option1]
   + p3ijch[sce1,sce1,First,option2] + p3ijch[sce1,sce1,First,option3] = 1
 priceOption3[sce1,sce1,Business]: p3ijch[sce1,sce1,Business,option1]
   + p3ijch[sce1,sce1,Business,option2]
   + p3ijch[sce1,sce1,Business,option3] = 1
 priceOption3[sce1,sce1,Economy]: p3ijch[sce1,sce1,Economy,option1]
   + p3ijch[sce1,sce1,Economy,option2] + p3ijch[sce1,sce1,Economy,option3]
   = 1
 priceOption3[sce1,sce2,First]: p3ijch[sce1,sce2,First,option1]
   + p3ijch[sce1,sce2,First,option2] + p3ijch[sce1,sce2,First,option3] = 1
 priceOption3[sce1,sce2,Business]: p3ijch[sce1,sce2,Business,option1]
   + p3ijch[sce1,sce2,Business,option2]
   + p3ijch[sce1,sce2,Business,option3] = 1
 priceOption3[sce1,sce2,Economy]: p3ijch[sce1,sce2,Economy,option1]
   + p3ijch[sce1,sce2,Economy,option2] + p3ijch[sce1,sce2,Economy,option3]
   = 1
 priceOption3[sce1,sce3,First]: p3ijch[sce1,sce3,First,option1]
   + p3ijch[sce1,sce3,First,option2] + p3ijch[sce1,sce3,First,option3] = 1
 priceOption3[sce1,sce3,Business]: p3ijch[sce1,sce3,Business,option1]
   + p3ijch[sce1,sce3,Business,option2]
   + p3ijch[sce1,sce3,Business,option3] = 1
 priceOption3[sce1,sce3,Economy]: p3ijch[sce1,sce3,Economy,option1]
   + p3ijch[sce1,sce3,Economy,option2] + p3ijch[sce1,sce3,Economy,option3]
   = 1
 priceOption3[sce2,sce1,First]: p3ijch[sce2,sce1,First,option1]
   + p3ijch[sce2,sce1,First,option2] + p3ijch[sce2,sce1,First,option3] = 1
 priceOption3[sce2,sce1,Business]: p3ijch[sce2,sce1,Business,option1]
   + p3ijch[sce2,sce1,Business,option2]
   + p3ijch[sce2,sce1,Business,option3] = 1
 priceOption3[sce2,sce1,Economy]: p3ijch[sce2,sce1,Economy,option1]
   + p3ijch[sce2,sce1,Economy,option2] + p3ijch[sce2,sce1,Economy,option3]
   = 1
 priceOption3[sce2,sce2,First]: p3ijch[sce2,sce2,First,option1]
   + p3ijch[sce2,sce2,First,option2] + p3ijch[sce2,sce2,First,option3] = 1
 priceOption3[sce2,sce2,Business]: p3ijch[sce2,sce2,Business,option1]
   + p3ijch[sce2,sce2,Business,option2]
   + p3ijch[sce2,sce2,Business,option3] = 1
 priceOption3[sce2,sce2,Economy]: p3ijch[sce2,sce2,Economy,option1]
   + p3ijch[sce2,sce2,Economy,option2] + p3ijch[sce2,sce2,Economy,option3]
   = 1
 priceOption3[sce2,sce3,First]: p3ijch[sce2,sce3,First,option1]
   + p3ijch[sce2,sce3,First,option2] + p3ijch[sce2,sce3,First,option3] = 1
 priceOption3[sce2,sce3,Business]: p3ijch[sce2,sce3,Business,option1]
   + p3ijch[sce2,sce3,Business,option2]
   + p3ijch[sce2,sce3,Business,option3] = 1
 priceOption3[sce2,sce3,Economy]: p3ijch[sce2,sce3,Economy,option1]
   + p3ijch[sce2,sce3,Economy,option2] + p3ijch[sce2,sce3,Economy,option3]
   = 1
 priceOption3[sce3,sce1,First]: p3ijch[sce3,sce1,First,option1]
   + p3ijch[sce3,sce1,First,option2] + p3ijch[sce3,sce1,First,option3] = 1
 priceOption3[sce3,sce1,Business]: p3ijch[sce3,sce1,Business,option1]
   + p3ijch[sce3,sce1,Business,option2]
   + p3ijch[sce3,sce1,Business,option3] = 1
 priceOption3[sce3,sce1,Economy]: p3ijch[sce3,sce1,Economy,option1]
   + p3ijch[sce3,sce1,Economy,option2] + p3ijch[sce3,sce1,Economy,option3]
   = 1
 priceOption3[sce3,sce2,First]: p3ijch[sce3,sce2,First,option1]
   + p3ijch[sce3,sce2,First,option2] + p3ijch[sce3,sce2,First,option3] = 1
 priceOption3[sce3,sce2,Business]: p3ijch[sce3,sce2,Business,option1]
   + p3ijch[sce3,sce2,Business,option2]
   + p3ijch[sce3,sce2,Business,option3] = 1
 priceOption3[sce3,sce2,Economy]: p3ijch[sce3,sce2,Economy,option1]
   + p3ijch[sce3,sce2,Economy,option2] + p3ijch[sce3,sce2,Economy,option3]
   = 1
 priceOption3[sce3,sce3,First]: p3ijch[sce3,sce3,First,option1]
   + p3ijch[sce3,sce3,First,option2] + p3ijch[sce3,sce3,First,option3] = 1
 priceOption3[sce3,sce3,Business]: p3ijch[sce3,sce3,Business,option1]
   + p3ijch[sce3,sce3,Business,option2]
   + p3ijch[sce3,sce3,Business,option3] = 1
 priceOption3[sce3,sce3,Economy]: p3ijch[sce3,sce3,Economy,option1]
   + p3ijch[sce3,sce3,Economy,option2] + p3ijch[sce3,sce3,Economy,option3]
   = 1
 sales3[sce1,sce1,sce1,First,option1]: - 45 p3ijch[sce1,sce1,First,option1]
   + s3ijkch[sce1,sce1,sce1,First,option1] <= 0
 sales3[sce1,sce1,sce1,First,option2]:
   s3ijkch[sce1,sce1,sce1,First,option2] <= 0
 sales3[sce1,sce1,sce1,First,option3]:
   s3ijkch[sce1,sce1,sce1,First,option3] <= 0
 sales3[sce1,sce1,sce1,Business,option1]:
   s3ijkch[sce1,sce1,sce1,Business,option1] <= 0
 sales3[sce1,sce1,sce1,Business,option2]:
   - 40 p3ijch[sce1,sce1,Business,option2]
   + s3ijkch[sce1,sce1,sce1,Business,option2] <= 0
 sales3[sce1,sce1,sce1,Business,option3]:
   s3ijkch[sce1,sce1,sce1,Business,option3] <= 0
 sales3[sce1,sce1,sce1,Economy,option1]:
   - 55 p3ijch[sce1,sce1,Economy,option1]
   + s3ijkch[sce1,sce1,sce1,Economy,option1] <= 0
 sales3[sce1,sce1,sce1,Economy,option2]:
   s3ijkch[sce1,sce1,sce1,Economy,option2] <= 0
 sales3[sce1,sce1,sce1,Economy,option3]:
   s3ijkch[sce1,sce1,sce1,Economy,option3] <= 0
 sales3[sce1,sce1,sce2,First,option1]: - 45 p3ijch[sce1,sce1,First,option1]
   + s3ijkch[sce1,sce1,sce2,First,option1] <= 0
 sales3[sce1,sce1,sce2,First,option2]:
   s3ijkch[sce1,sce1,sce2,First,option2] <= 0
 sales3[sce1,sce1,sce2,First,option3]:
   s3ijkch[sce1,sce1,sce2,First,option3] <= 0
 sales3[sce1,sce1,sce2,Business,option1]:
   s3ijkch[sce1,sce1,sce2,Business,option1] <= 0
 sales3[sce1,sce1,sce2,Business,option2]:
   - 40 p3ijch[sce1,sce1,Business,option2]
   + s3ijkch[sce1,sce1,sce2,Business,option2] <= 0
 sales3[sce1,sce1,sce2,Business,option3]:
   s3ijkch[sce1,sce1,sce2,Business,option3] <= 0
 sales3[sce1,sce1,sce2,Economy,option1]:
   - 55 p3ijch[sce1,sce1,Economy,option1]
   + s3ijkch[sce1,sce1,sce2,Economy,option1] <= 0
 sales3[sce1,sce1,sce2,Economy,option2]:
   s3ijkch[sce1,sce1,sce2,Economy,option2] <= 0
 sales3[sce1,sce1,sce2,Economy,option3]:
   s3ijkch[sce1,sce1,sce2,Economy,option3] <= 0
 sales3[sce1,sce1,sce3,First,option1]: - 45 p3ijch[sce1,sce1,First,option1]
   + s3ijkch[sce1,sce1,sce3,First,option1] <= 0
 sales3[sce1,sce1,sce3,First,option2]:
   s3ijkch[sce1,sce1,sce3,First,option2] <= 0
 sales3[sce1,sce1,sce3,First,option3]:
   s3ijkch[sce1,sce1,sce3,First,option3] <= 0
 sales3[sce1,sce1,sce3,Business,option1]:
   s3ijkch[sce1,sce1,sce3,Business,option1] <= 0
 sales3[sce1,sce1,sce3,Business,option2]:
   - 40 p3ijch[sce1,sce1,Business,option2]
   + s3ijkch[sce1,sce1,sce3,Business,option2] <= 0
 sales3[sce1,sce1,sce3,Business,option3]:
   s3ijkch[sce1,sce1,sce3,Business,option3] <= 0
 sales3[sce1,sce1,sce3,Economy,option1]:
   - 55 p3ijch[sce1,sce1,Economy,option1]
   + s3ijkch[sce1,sce1,sce3,Economy,option1] <= 0
 sales3[sce1,sce1,sce3,Economy,option2]:
   s3ijkch[sce1,sce1,sce3,Economy,option2] <= 0
 sales3[sce1,sce1,sce3,Economy,option3]:
   s3ijkch[sce1,sce1,sce3,Economy,option3] <= 0
 sales3[sce1,sce2,sce1,First,option1]: - 45 p3ijch[sce1,sce2,First,option1]
   + s3ijkch[sce1,sce2,sce1,First,option1] <= 0
 sales3[sce1,sce2,sce1,First,option2]:
   s3ijkch[sce1,sce2,sce1,First,option2] <= 0
 sales3[sce1,sce2,sce1,First,option3]:
   s3ijkch[sce1,sce2,sce1,First,option3] <= 0
 sales3[sce1,sce2,sce1,Business,option1]:
   s3ijkch[sce1,sce2,sce1,Business,option1] <= 0
 sales3[sce1,sce2,sce1,Business,option2]:
   - 40 p3ijch[sce1,sce2,Business,option2]
   + s3ijkch[sce1,sce2,sce1,Business,option2] <= 0
 sales3[sce1,sce2,sce1,Business,option3]:
   s3ijkch[sce1,sce2,sce1,Business,option3] <= 0
 sales3[sce1,sce2,sce1,Economy,option1]:
   - 55 p3ijch[sce1,sce2,Economy,option1]
   + s3ijkch[sce1,sce2,sce1,Economy,option1] <= 0
 sales3[sce1,sce2,sce1,Economy,option2]:
   s3ijkch[sce1,sce2,sce1,Economy,option2] <= 0
 sales3[sce1,sce2,sce1,Economy,option3]:
   s3ijkch[sce1,sce2,sce1,Economy,option3] <= 0
 sales3[sce1,sce2,sce2,First,option1]: - 45 p3ijch[sce1,sce2,First,option1]
   + s3ijkch[sce1,sce2,sce2,First,option1] <= 0
 sales3[sce1,sce2,sce2,First,option2]:
   s3ijkch[sce1,sce2,sce2,First,option2] <= 0
 sales3[sce1,sce2,sce2,First,option3]:
   s3ijkch[sce1,sce2,sce2,First,option3] <= 0
 sales3[sce1,sce2,sce2,Business,option1]:
   s3ijkch[sce1,sce2,sce2,Business,option1] <= 0
 sales3[sce1,sce2,sce2,Business,option2]:
   - 40 p3ijch[sce1,sce2,Business,option2]
   + s3ijkch[sce1,sce2,sce2,Business,option2] <= 0
 sales3[sce1,sce2,sce2,Business,option3]:
   s3ijkch[sce1,sce2,sce2,Business,option3] <= 0
 sales3[sce1,sce2,sce2,Economy,option1]:
   - 55 p3ijch[sce1,sce2,Economy,option1]
   + s3ijkch[sce1,sce2,sce2,Economy,option1] <= 0
 sales3[sce1,sce2,sce2,Economy,option2]:
   s3ijkch[sce1,sce2,sce2,Economy,option2] <= 0
 sales3[sce1,sce2,sce2,Economy,option3]:
   s3ijkch[sce1,sce2,sce2,Economy,option3] <= 0
 sales3[sce1,sce2,sce3,First,option1]: - 45 p3ijch[sce1,sce2,First,option1]
   + s3ijkch[sce1,sce2,sce3,First,option1] <= 0
 sales3[sce1,sce2,sce3,First,option2]:
   s3ijkch[sce1,sce2,sce3,First,option2] <= 0
 sales3[sce1,sce2,sce3,First,option3]:
   s3ijkch[sce1,sce2,sce3,First,option3] <= 0
 sales3[sce1,sce2,sce3,Business,option1]:
   s3ijkch[sce1,sce2,sce3,Business,option1] <= 0
 sales3[sce1,sce2,sce3,Business,option2]:
   - 40 p3ijch[sce1,sce2,Business,option2]
   + s3ijkch[sce1,sce2,sce3,Business,option2] <= 0
 sales3[sce1,sce2,sce3,Business,option3]:
   s3ijkch[sce1,sce2,sce3,Business,option3] <= 0
 sales3[sce1,sce2,sce3,Economy,option1]:
   - 55 p3ijch[sce1,sce2,Economy,option1]
   + s3ijkch[sce1,sce2,sce3,Economy,option1] <= 0
 sales3[sce1,sce2,sce3,Economy,option2]:
   s3ijkch[sce1,sce2,sce3,Economy,option2] <= 0
 sales3[sce1,sce2,sce3,Economy,option3]:
   s3ijkch[sce1,sce2,sce3,Economy,option3] <= 0
 sales3[sce1,sce3,sce1,First,option1]: - 45 p3ijch[sce1,sce3,First,option1]
   + s3ijkch[sce1,sce3,sce1,First,option1] <= 0
 sales3[sce1,sce3,sce1,First,option2]:
   s3ijkch[sce1,sce3,sce1,First,option2] <= 0
 sales3[sce1,sce3,sce1,First,option3]:
   s3ijkch[sce1,sce3,sce1,First,option3] <= 0
 sales3[sce1,sce3,sce1,Business,option1]:
   s3ijkch[sce1,sce3,sce1,Business,option1] <= 0
 sales3[sce1,sce3,sce1,Business,option2]:
   - 40 p3ijch[sce1,sce3,Business,option2]
   + s3ijkch[sce1,sce3,sce1,Business,option2] <= 0
 sales3[sce1,sce3,sce1,Business,option3]:
   s3ijkch[sce1,sce3,sce1,Business,option3] <= 0
 sales3[sce1,sce3,sce1,Economy,option1]:
   - 55 p3ijch[sce1,sce3,Economy,option1]
   + s3ijkch[sce1,sce3,sce1,Economy,option1] <= 0
 sales3[sce1,sce3,sce1,Economy,option2]:
   s3ijkch[sce1,sce3,sce1,Economy,option2] <= 0
 sales3[sce1,sce3,sce1,Economy,option3]:
   s3ijkch[sce1,sce3,sce1,Economy,option3] <= 0
 sales3[sce1,sce3,sce2,First,option1]: - 45 p3ijch[sce1,sce3,First,option1]
   + s3ijkch[sce1,sce3,sce2,First,option1] <= 0
 sales3[sce1,sce3,sce2,First,option2]:
   s3ijkch[sce1,sce3,sce2,First,option2] <= 0
 sales3[sce1,sce3,sce2,First,option3]:
   s3ijkch[sce1,sce3,sce2,First,option3] <= 0
 sales3[sce1,sce3,sce2,Business,option1]:
   s3ijkch[sce1,sce3,sce2,Business,option1] <= 0
 sales3[sce1,sce3,sce2,Business,option2]:
   - 40 p3ijch[sce1,sce3,Business,option2]
   + s3ijkch[sce1,sce3,sce2,Business,option2] <= 0
 sales3[sce1,sce3,sce2,Business,option3]:
   s3ijkch[sce1,sce3,sce2,Business,option3] <= 0
 sales3[sce1,sce3,sce2,Economy,option1]:
   - 55 p3ijch[sce1,sce3,Economy,option1]
   + s3ijkch[sce1,sce3,sce2,Economy,option1] <= 0
 sales3[sce1,sce3,sce2,Economy,option2]:
   s3ijkch[sce1,sce3,sce2,Economy,option2] <= 0
 sales3[sce1,sce3,sce2,Economy,option3]:
   s3ijkch[sce1,sce3,sce2,Economy,option3] <= 0
 sales3[sce1,sce3,sce3,First,option1]: - 45 p3ijch[sce1,sce3,First,option1]
   + s3ijkch[sce1,sce3,sce3,First,option1] <= 0
 sales3[sce1,sce3,sce3,First,option2]:
   s3ijkch[sce1,sce3,sce3,First,option2] <= 0
 sales3[sce1,sce3,sce3,First,option3]:
   s3ijkch[sce1,sce3,sce3,First,option3] <= 0
 sales3[sce1,sce3,sce3,Business,option1]:
   s3ijkch[sce1,sce3,sce3,Business,option1] <= 0
 sales3[sce1,sce3,sce3,Business,option2]:
   - 40 p3ijch[sce1,sce3,Business,option2]
   + s3ijkch[sce1,sce3,sce3,Business,option2] <= 0
 sales3[sce1,sce3,sce3,Business,option3]:
   s3ijkch[sce1,sce3,sce3,Business,option3] <= 0
 sales3[sce1,sce3,sce3,Economy,option1]:
   - 55 p3ijch[sce1,sce3,Economy,option1]
   + s3ijkch[sce1,sce3,sce3,Economy,option1] <= 0
 sales3[sce1,sce3,sce3,Economy,option2]:
   s3ijkch[sce1,sce3,sce3,Economy,option2] <= 0
 sales3[sce1,sce3,sce3,Economy,option3]:
   s3ijkch[sce1,sce3,sce3,Economy,option3] <= 0
 sales3[sce2,sce1,sce1,First,option1]: - 45 p3ijch[sce2,sce1,First,option1]
   + s3ijkch[sce2,sce1,sce1,First,option1] <= 0
 sales3[sce2,sce1,sce1,First,option2]:
   s3ijkch[sce2,sce1,sce1,First,option2] <= 0
 sales3[sce2,sce1,sce1,First,option3]:
   s3ijkch[sce2,sce1,sce1,First,option3] <= 0
 sales3[sce2,sce1,sce1,Business,option1]:
   s3ijkch[sce2,sce1,sce1,Business,option1] <= 0
 sales3[sce2,sce1,sce1,Business,option2]:
   - 40 p3ijch[sce2,sce1,Business,option2]
   + s3ijkch[sce2,sce1,sce1,Business,option2] <= 0
 sales3[sce2,sce1,sce1,Business,option3]:
   s3ijkch[sce2,sce1,sce1,Business,option3] <= 0
 sales3[sce2,sce1,sce1,Economy,option1]:
   - 55 p3ijch[sce2,sce1,Economy,option1]
   + s3ijkch[sce2,sce1,sce1,Economy,option1] <= 0
 sales3[sce2,sce1,sce1,Economy,option2]:
   s3ijkch[sce2,sce1,sce1,Economy,option2] <= 0
 sales3[sce2,sce1,sce1,Economy,option3]:
   s3ijkch[sce2,sce1,sce1,Economy,option3] <= 0
 sales3[sce2,sce1,sce2,First,option1]: - 45 p3ijch[sce2,sce1,First,option1]
   + s3ijkch[sce2,sce1,sce2,First,option1] <= 0
 sales3[sce2,sce1,sce2,First,option2]:
   s3ijkch[sce2,sce1,sce2,First,option2] <= 0
 sales3[sce2,sce1,sce2,First,option3]:
   s3ijkch[sce2,sce1,sce2,First,option3] <= 0
 sales3[sce2,sce1,sce2,Business,option1]:
   s3ijkch[sce2,sce1,sce2,Business,option1] <= 0
 sales3[sce2,sce1,sce2,Business,option2]:
   - 40 p3ijch[sce2,sce1,Business,option2]
   + s3ijkch[sce2,sce1,sce2,Business,option2] <= 0
 sales3[sce2,sce1,sce2,Business,option3]:
   s3ijkch[sce2,sce1,sce2,Business,option3] <= 0
 sales3[sce2,sce1,sce2,Economy,option1]:
   - 55 p3ijch[sce2,sce1,Economy,option1]
   + s3ijkch[sce2,sce1,sce2,Economy,option1] <= 0
 sales3[sce2,sce1,sce2,Economy,option2]:
   s3ijkch[sce2,sce1,sce2,Economy,option2] <= 0
 sales3[sce2,sce1,sce2,Economy,option3]:
   s3ijkch[sce2,sce1,sce2,Economy,option3] <= 0
 sales3[sce2,sce1,sce3,First,option1]: - 45 p3ijch[sce2,sce1,First,option1]
   + s3ijkch[sce2,sce1,sce3,First,option1] <= 0
 sales3[sce2,sce1,sce3,First,option2]:
   s3ijkch[sce2,sce1,sce3,First,option2] <= 0
 sales3[sce2,sce1,sce3,First,option3]:
   s3ijkch[sce2,sce1,sce3,First,option3] <= 0
 sales3[sce2,sce1,sce3,Business,option1]:
   s3ijkch[sce2,sce1,sce3,Business,option1] <= 0
 sales3[sce2,sce1,sce3,Business,option2]:
   - 40 p3ijch[sce2,sce1,Business,option2]
   + s3ijkch[sce2,sce1,sce3,Business,option2] <= 0
 sales3[sce2,sce1,sce3,Business,option3]:
   s3ijkch[sce2,sce1,sce3,Business,option3] <= 0
 sales3[sce2,sce1,sce3,Economy,option1]:
   - 55 p3ijch[sce2,sce1,Economy,option1]
   + s3ijkch[sce2,sce1,sce3,Economy,option1] <= 0
 sales3[sce2,sce1,sce3,Economy,option2]:
   s3ijkch[sce2,sce1,sce3,Economy,option2] <= 0
 sales3[sce2,sce1,sce3,Economy,option3]:
   s3ijkch[sce2,sce1,sce3,Economy,option3] <= 0
 sales3[sce2,sce2,sce1,First,option1]: - 45 p3ijch[sce2,sce2,First,option1]
   + s3ijkch[sce2,sce2,sce1,First,option1] <= 0
 sales3[sce2,sce2,sce1,First,option2]:
   s3ijkch[sce2,sce2,sce1,First,option2] <= 0
 sales3[sce2,sce2,sce1,First,option3]:
   s3ijkch[sce2,sce2,sce1,First,option3] <= 0
 sales3[sce2,sce2,sce1,Business,option1]:
   s3ijkch[sce2,sce2,sce1,Business,option1] <= 0
 sales3[sce2,sce2,sce1,Business,option2]:
   - 40 p3ijch[sce2,sce2,Business,option2]
   + s3ijkch[sce2,sce2,sce1,Business,option2] <= 0
 sales3[sce2,sce2,sce1,Business,option3]:
   s3ijkch[sce2,sce2,sce1,Business,option3] <= 0
 sales3[sce2,sce2,sce1,Economy,option1]:
   - 55 p3ijch[sce2,sce2,Economy,option1]
   + s3ijkch[sce2,sce2,sce1,Economy,option1] <= 0
 sales3[sce2,sce2,sce1,Economy,option2]:
   s3ijkch[sce2,sce2,sce1,Economy,option2] <= 0
 sales3[sce2,sce2,sce1,Economy,option3]:
   s3ijkch[sce2,sce2,sce1,Economy,option3] <= 0
 sales3[sce2,sce2,sce2,First,option1]: - 45 p3ijch[sce2,sce2,First,option1]
   + s3ijkch[sce2,sce2,sce2,First,option1] <= 0
 sales3[sce2,sce2,sce2,First,option2]:
   s3ijkch[sce2,sce2,sce2,First,option2] <= 0
 sales3[sce2,sce2,sce2,First,option3]:
   s3ijkch[sce2,sce2,sce2,First,option3] <= 0
 sales3[sce2,sce2,sce2,Business,option1]:
   s3ijkch[sce2,sce2,sce2,Business,option1] <= 0
 sales3[sce2,sce2,sce2,Business,option2]:
   - 40 p3ijch[sce2,sce2,Business,option2]
   + s3ijkch[sce2,sce2,sce2,Business,option2] <= 0
 sales3[sce2,sce2,sce2,Business,option3]:
   s3ijkch[sce2,sce2,sce2,Business,option3] <= 0
 sales3[sce2,sce2,sce2,Economy,option1]:
   - 55 p3ijch[sce2,sce2,Economy,option1]
   + s3ijkch[sce2,sce2,sce2,Economy,option1] <= 0
 sales3[sce2,sce2,sce2,Economy,option2]:
   s3ijkch[sce2,sce2,sce2,Economy,option2] <= 0
 sales3[sce2,sce2,sce2,Economy,option3]:
   s3ijkch[sce2,sce2,sce2,Economy,option3] <= 0
 sales3[sce2,sce2,sce3,First,option1]: - 45 p3ijch[sce2,sce2,First,option1]
   + s3ijkch[sce2,sce2,sce3,First,option1] <= 0
 sales3[sce2,sce2,sce3,First,option2]:
   s3ijkch[sce2,sce2,sce3,First,option2] <= 0
 sales3[sce2,sce2,sce3,First,option3]:
   s3ijkch[sce2,sce2,sce3,First,option3] <= 0
 sales3[sce2,sce2,sce3,Business,option1]:
   s3ijkch[sce2,sce2,sce3,Business,option1] <= 0
 sales3[sce2,sce2,sce3,Business,option2]:
   - 40 p3ijch[sce2,sce2,Business,option2]
   + s3ijkch[sce2,sce2,sce3,Business,option2] <= 0
 sales3[sce2,sce2,sce3,Business,option3]:
   s3ijkch[sce2,sce2,sce3,Business,option3] <= 0
 sales3[sce2,sce2,sce3,Economy,option1]:
   - 55 p3ijch[sce2,sce2,Economy,option1]
   + s3ijkch[sce2,sce2,sce3,Economy,option1] <= 0
 sales3[sce2,sce2,sce3,Economy,option2]:
   s3ijkch[sce2,sce2,sce3,Economy,option2] <= 0
 sales3[sce2,sce2,sce3,Economy,option3]:
   s3ijkch[sce2,sce2,sce3,Economy,option3] <= 0
 sales3[sce2,sce3,sce1,First,option1]: - 45 p3ijch[sce2,sce3,First,option1]
   + s3ijkch[sce2,sce3,sce1,First,option1] <= 0
 sales3[sce2,sce3,sce1,First,option2]:
   s3ijkch[sce2,sce3,sce1,First,option2] <= 0
 sales3[sce2,sce3,sce1,First,option3]:
   s3ijkch[sce2,sce3,sce1,First,option3] <= 0
 sales3[sce2,sce3,sce1,Business,option1]:
   s3ijkch[sce2,sce3,sce1,Business,option1] <= 0
 sales3[sce2,sce3,sce1,Business,option2]:
   - 40 p3ijch[sce2,sce3,Business,option2]
   + s3ijkch[sce2,sce3,sce1,Business,option2] <= 0
 sales3[sce2,sce3,sce1,Business,option3]:
   s3ijkch[sce2,sce3,sce1,Business,option3] <= 0
 sales3[sce2,sce3,sce1,Economy,option1]:
   - 55 p3ijch[sce2,sce3,Economy,option1]
   + s3ijkch[sce2,sce3,sce1,Economy,option1] <= 0
 sales3[sce2,sce3,sce1,Economy,option2]:
   s3ijkch[sce2,sce3,sce1,Economy,option2] <= 0
 sales3[sce2,sce3,sce1,Economy,option3]:
   s3ijkch[sce2,sce3,sce1,Economy,option3] <= 0
 sales3[sce2,sce3,sce2,First,option1]: - 45 p3ijch[sce2,sce3,First,option1]
   + s3ijkch[sce2,sce3,sce2,First,option1] <= 0
 sales3[sce2,sce3,sce2,First,option2]:
   s3ijkch[sce2,sce3,sce2,First,option2] <= 0
 sales3[sce2,sce3,sce2,First,option3]:
   s3ijkch[sce2,sce3,sce2,First,option3] <= 0
 sales3[sce2,sce3,sce2,Business,option1]:
   s3ijkch[sce2,sce3,sce2,Business,option1] <= 0
 sales3[sce2,sce3,sce2,Business,option2]:
   - 40 p3ijch[sce2,sce3,Business,option2]
   + s3ijkch[sce2,sce3,sce2,Business,option2] <= 0
 sales3[sce2,sce3,sce2,Business,option3]:
   s3ijkch[sce2,sce3,sce2,Business,option3] <= 0
 sales3[sce2,sce3,sce2,Economy,option1]:
   - 55 p3ijch[sce2,sce3,Economy,option1]
   + s3ijkch[sce2,sce3,sce2,Economy,option1] <= 0
 sales3[sce2,sce3,sce2,Economy,option2]:
   s3ijkch[sce2,sce3,sce2,Economy,option2] <= 0
 sales3[sce2,sce3,sce2,Economy,option3]:
   s3ijkch[sce2,sce3,sce2,Economy,option3] <= 0
 sales3[sce2,sce3,sce3,First,option1]: - 45 p3ijch[sce2,sce3,First,option1]
   + s3ijkch[sce2,sce3,sce3,First,option1] <= 0
 sales3[sce2,sce3,sce3,First,option2]:
   s3ijkch[sce2,sce3,sce3,First,option2] <= 0
 sales3[sce2,sce3,sce3,First,option3]:
   s3ijkch[sce2,sce3,sce3,First,option3] <= 0
 sales3[sce2,sce3,sce3,Business,option1]:
   s3ijkch[sce2,sce3,sce3,Business,option1] <= 0
 sales3[sce2,sce3,sce3,Business,option2]:
   - 40 p3ijch[sce2,sce3,Business,option2]
   + s3ijkch[sce2,sce3,sce3,Business,option2] <= 0
 sales3[sce2,sce3,sce3,Business,option3]:
   s3ijkch[sce2,sce3,sce3,Business,option3] <= 0
 sales3[sce2,sce3,sce3,Economy,option1]:
   - 55 p3ijch[sce2,sce3,Economy,option1]
   + s3ijkch[sce2,sce3,sce3,Economy,option1] <= 0
 sales3[sce2,sce3,sce3,Economy,option2]:
   s3ijkch[sce2,sce3,sce3,Economy,option2] <= 0
 sales3[sce2,sce3,sce3,Economy,option3]:
   s3ijkch[sce2,sce3,sce3,Economy,option3] <= 0
 sales3[sce3,sce1,sce1,First,option1]: - 45 p3ijch[sce3,sce1,First,option1]
   + s3ijkch[sce3,sce1,sce1,First,option1] <= 0
 sales3[sce3,sce1,sce1,First,option2]:
   s3ijkch[sce3,sce1,sce1,First,option2] <= 0
 sales3[sce3,sce1,sce1,First,option3]:
   s3ijkch[sce3,sce1,sce1,First,option3] <= 0
 sales3[sce3,sce1,sce1,Business,option1]:
   s3ijkch[sce3,sce1,sce1,Business,option1] <= 0
 sales3[sce3,sce1,sce1,Business,option2]:
   - 40 p3ijch[sce3,sce1,Business,option2]
   + s3ijkch[sce3,sce1,sce1,Business,option2] <= 0
 sales3[sce3,sce1,sce1,Business,option3]:
   s3ijkch[sce3,sce1,sce1,Business,option3] <= 0
 sales3[sce3,sce1,sce1,Economy,option1]:
   - 55 p3ijch[sce3,sce1,Economy,option1]
   + s3ijkch[sce3,sce1,sce1,Economy,option1] <= 0
 sales3[sce3,sce1,sce1,Economy,option2]:
   s3ijkch[sce3,sce1,sce1,Economy,option2] <= 0
 sales3[sce3,sce1,sce1,Economy,option3]:
   s3ijkch[sce3,sce1,sce1,Economy,option3] <= 0
 sales3[sce3,sce1,sce2,First,option1]: - 45 p3ijch[sce3,sce1,First,option1]
   + s3ijkch[sce3,sce1,sce2,First,option1] <= 0
 sales3[sce3,sce1,sce2,First,option2]:
   s3ijkch[sce3,sce1,sce2,First,option2] <= 0
 sales3[sce3,sce1,sce2,First,option3]:
   s3ijkch[sce3,sce1,sce2,First,option3] <= 0
 sales3[sce3,sce1,sce2,Business,option1]:
   s3ijkch[sce3,sce1,sce2,Business,option1] <= 0
 sales3[sce3,sce1,sce2,Business,option2]:
   - 40 p3ijch[sce3,sce1,Business,option2]
   + s3ijkch[sce3,sce1,sce2,Business,option2] <= 0
 sales3[sce3,sce1,sce2,Business,option3]:
   s3ijkch[sce3,sce1,sce2,Business,option3] <= 0
 sales3[sce3,sce1,sce2,Economy,option1]:
   - 55 p3ijch[sce3,sce1,Economy,option1]
   + s3ijkch[sce3,sce1,sce2,Economy,option1] <= 0
 sales3[sce3,sce1,sce2,Economy,option2]:
   s3ijkch[sce3,sce1,sce2,Economy,option2] <= 0
 sales3[sce3,sce1,sce2,Economy,option3]:
   s3ijkch[sce3,sce1,sce2,Economy,option3] <= 0
 sales3[sce3,sce1,sce3,First,option1]: - 45 p3ijch[sce3,sce1,First,option1]
   + s3ijkch[sce3,sce1,sce3,First,option1] <= 0
 sales3[sce3,sce1,sce3,First,option2]:
   s3ijkch[sce3,sce1,sce3,First,option2] <= 0
 sales3[sce3,sce1,sce3,First,option3]:
   s3ijkch[sce3,sce1,sce3,First,option3] <= 0
 sales3[sce3,sce1,sce3,Business,option1]:
   s3ijkch[sce3,sce1,sce3,Business,option1] <= 0
 sales3[sce3,sce1,sce3,Business,option2]:
   - 40 p3ijch[sce3,sce1,Business,option2]
   + s3ijkch[sce3,sce1,sce3,Business,option2] <= 0
 sales3[sce3,sce1,sce3,Business,option3]:
   s3ijkch[sce3,sce1,sce3,Business,option3] <= 0
 sales3[sce3,sce1,sce3,Economy,option1]:
   - 55 p3ijch[sce3,sce1,Economy,option1]
   + s3ijkch[sce3,sce1,sce3,Economy,option1] <= 0
 sales3[sce3,sce1,sce3,Economy,option2]:
   s3ijkch[sce3,sce1,sce3,Economy,option2] <= 0
 sales3[sce3,sce1,sce3,Economy,option3]:
   s3ijkch[sce3,sce1,sce3,Economy,option3] <= 0
 sales3[sce3,sce2,sce1,First,option1]: - 45 p3ijch[sce3,sce2,First,option1]
   + s3ijkch[sce3,sce2,sce1,First,option1] <= 0
 sales3[sce3,sce2,sce1,First,option2]:
   s3ijkch[sce3,sce2,sce1,First,option2] <= 0
 sales3[sce3,sce2,sce1,First,option3]:
   s3ijkch[sce3,sce2,sce1,First,option3] <= 0
 sales3[sce3,sce2,sce1,Business,option1]:
   s3ijkch[sce3,sce2,sce1,Business,option1] <= 0
 sales3[sce3,sce2,sce1,Business,option2]:
   - 40 p3ijch[sce3,sce2,Business,option2]
   + s3ijkch[sce3,sce2,sce1,Business,option2] <= 0
 sales3[sce3,sce2,sce1,Business,option3]:
   s3ijkch[sce3,sce2,sce1,Business,option3] <= 0
 sales3[sce3,sce2,sce1,Economy,option1]:
   - 55 p3ijch[sce3,sce2,Economy,option1]
   + s3ijkch[sce3,sce2,sce1,Economy,option1] <= 0
 sales3[sce3,sce2,sce1,Economy,option2]:
   s3ijkch[sce3,sce2,sce1,Economy,option2] <= 0
 sales3[sce3,sce2,sce1,Economy,option3]:
   s3ijkch[sce3,sce2,sce1,Economy,option3] <= 0
 sales3[sce3,sce2,sce2,First,option1]: - 45 p3ijch[sce3,sce2,First,option1]
   + s3ijkch[sce3,sce2,sce2,First,option1] <= 0
 sales3[sce3,sce2,sce2,First,option2]:
   s3ijkch[sce3,sce2,sce2,First,option2] <= 0
 sales3[sce3,sce2,sce2,First,option3]:
   s3ijkch[sce3,sce2,sce2,First,option3] <= 0
 sales3[sce3,sce2,sce2,Business,option1]:
   s3ijkch[sce3,sce2,sce2,Business,option1] <= 0
 sales3[sce3,sce2,sce2,Business,option2]:
   - 40 p3ijch[sce3,sce2,Business,option2]
   + s3ijkch[sce3,sce2,sce2,Business,option2] <= 0
 sales3[sce3,sce2,sce2,Business,option3]:
   s3ijkch[sce3,sce2,sce2,Business,option3] <= 0
 sales3[sce3,sce2,sce2,Economy,option1]:
   - 55 p3ijch[sce3,sce2,Economy,option1]
   + s3ijkch[sce3,sce2,sce2,Economy,option1] <= 0
 sales3[sce3,sce2,sce2,Economy,option2]:
   s3ijkch[sce3,sce2,sce2,Economy,option2] <= 0
 sales3[sce3,sce2,sce2,Economy,option3]:
   s3ijkch[sce3,sce2,sce2,Economy,option3] <= 0
 sales3[sce3,sce2,sce3,First,option1]: - 45 p3ijch[sce3,sce2,First,option1]
   + s3ijkch[sce3,sce2,sce3,First,option1] <= 0
 sales3[sce3,sce2,sce3,First,option2]:
   s3ijkch[sce3,sce2,sce3,First,option2] <= 0
 sales3[sce3,sce2,sce3,First,option3]:
   s3ijkch[sce3,sce2,sce3,First,option3] <= 0
 sales3[sce3,sce2,sce3,Business,option1]:
   s3ijkch[sce3,sce2,sce3,Business,option1] <= 0
 sales3[sce3,sce2,sce3,Business,option2]:
   - 40 p3ijch[sce3,sce2,Business,option2]
   + s3ijkch[sce3,sce2,sce3,Business,option2] <= 0
 sales3[sce3,sce2,sce3,Business,option3]:
   s3ijkch[sce3,sce2,sce3,Business,option3] <= 0
 sales3[sce3,sce2,sce3,Economy,option1]:
   - 55 p3ijch[sce3,sce2,Economy,option1]
   + s3ijkch[sce3,sce2,sce3,Economy,option1] <= 0
 sales3[sce3,sce2,sce3,Economy,option2]:
   s3ijkch[sce3,sce2,sce3,Economy,option2] <= 0
 sales3[sce3,sce2,sce3,Economy,option3]:
   s3ijkch[sce3,sce2,sce3,Economy,option3] <= 0
 sales3[sce3,sce3,sce1,First,option1]: - 45 p3ijch[sce3,sce3,First,option1]
   + s3ijkch[sce3,sce3,sce1,First,option1] <= 0
 sales3[sce3,sce3,sce1,First,option2]:
   s3ijkch[sce3,sce3,sce1,First,option2] <= 0
 sales3[sce3,sce3,sce1,First,option3]:
   s3ijkch[sce3,sce3,sce1,First,option3] <= 0
 sales3[sce3,sce3,sce1,Business,option1]:
   s3ijkch[sce3,sce3,sce1,Business,option1] <= 0
 sales3[sce3,sce3,sce1,Business,option2]:
   - 40 p3ijch[sce3,sce3,Business,option2]
   + s3ijkch[sce3,sce3,sce1,Business,option2] <= 0
 sales3[sce3,sce3,sce1,Business,option3]:
   s3ijkch[sce3,sce3,sce1,Business,option3] <= 0
 sales3[sce3,sce3,sce1,Economy,option1]:
   - 55 p3ijch[sce3,sce3,Economy,option1]
   + s3ijkch[sce3,sce3,sce1,Economy,option1] <= 0
 sales3[sce3,sce3,sce1,Economy,option2]:
   s3ijkch[sce3,sce3,sce1,Economy,option2] <= 0
 sales3[sce3,sce3,sce1,Economy,option3]:
   s3ijkch[sce3,sce3,sce1,Economy,option3] <= 0
 sales3[sce3,sce3,sce2,First,option1]: - 45 p3ijch[sce3,sce3,First,option1]
   + s3ijkch[sce3,sce3,sce2,First,option1] <= 0
 sales3[sce3,sce3,sce2,First,option2]:
   s3ijkch[sce3,sce3,sce2,First,option2] <= 0
 sales3[sce3,sce3,sce2,First,option3]:
   s3ijkch[sce3,sce3,sce2,First,option3] <= 0
 sales3[sce3,sce3,sce2,Business,option1]:
   s3ijkch[sce3,sce3,sce2,Business,option1] <= 0
 sales3[sce3,sce3,sce2,Business,option2]:
   - 40 p3ijch[sce3,sce3,Business,option2]
   + s3ijkch[sce3,sce3,sce2,Business,option2] <= 0
 sales3[sce3,sce3,sce2,Business,option3]:
   s3ijkch[sce3,sce3,sce2,Business,option3] <= 0
 sales3[sce3,sce3,sce2,Economy,option1]:
   - 55 p3ijch[sce3,sce3,Economy,option1]
   + s3ijkch[sce3,sce3,sce2,Economy,option1] <= 0
 sales3[sce3,sce3,sce2,Economy,option2]:
   s3ijkch[sce3,sce3,sce2,Economy,option2] <= 0
 sales3[sce3,sce3,sce2,Economy,option3]:
   s3ijkch[sce3,sce3,sce2,Economy,option3] <= 0
 sales3[sce3,sce3,sce3,First,option1]: - 45 p3ijch[sce3,sce3,First,option1]
   + s3ijkch[sce3,sce3,sce3,First,option1] <= 0
 sales3[sce3,sce3,sce3,First,option2]:
   s3ijkch[sce3,sce3,sce3,First,option2] <= 0
 sales3[sce3,sce3,sce3,First,option3]:
   s3ijkch[sce3,sce3,sce3,First,option3] <= 0
 sales3[sce3,sce3,sce3,Business,option1]:
   s3ijkch[sce3,sce3,sce3,Business,option1] <= 0
 sales3[sce3,sce3,sce3,Business,option2]:
   - 40 p3ijch[sce3,sce3,Business,option2]
   + s3ijkch[sce3,sce3,sce3,Business,option2] <= 0
 sales3[sce3,sce3,sce3,Business,option3]:
   s3ijkch[sce3,sce3,sce3,Business,option3] <= 0
 sales3[sce3,sce3,sce3,Economy,option1]:
   - 55 p3ijch[sce3,sce3,Economy,option1]
   + s3ijkch[sce3,sce3,sce3,Economy,option1] <= 0
 sales3[sce3,sce3,sce3,Economy,option2]:
   s3ijkch[sce3,sce3,sce3,Economy,option2] <= 0
 sales3[sce3,sce3,sce3,Economy,option3]:
   s3ijkch[sce3,sce3,sce3,Economy,option3] <= 0
 classCap[sce1,sce1,sce1,First]: s1ich[sce1,First,option1]
   + s1ich[sce1,First,option2] + s1ich[sce1,First,option3]
   + s2ijch[sce1,sce1,First,option1] + s2ijch[sce1,sce1,First,option2]
   + s2ijch[sce1,sce1,First,option3]
   + s3ijkch[sce1,sce1,sce1,First,option1]
   + s3ijkch[sce1,sce1,sce1,First,option2]
   + s3ijkch[sce1,sce1,sce1,First,option3] - 37 planes <= 0
 classCap[sce1,sce1,sce1,Business]: s1ich[sce1,Business,option1]
   + s1ich[sce1,Business,option2] + s1ich[sce1,Business,option3]
   + s2ijch[sce1,sce1,Business,option1]
   + s2ijch[sce1,sce1,Business,option2]
   + s2ijch[sce1,sce1,Business,option3]
   + s3ijkch[sce1,sce1,sce1,Business,option1]
   + s3ijkch[sce1,sce1,sce1,Business,option2]
   + s3ijkch[sce1,sce1,sce1,Business,option3] - 38 planes <= 0
 classCap[sce1,sce1,sce1,Economy]: s1ich[sce1,Economy,option1]
   + s1ich[sce1,Economy,option2] + s1ich[sce1,Economy,option3]
   + s2ijch[sce1,sce1,Economy,option1] + s2ijch[sce1,sce1,Economy,option2]
   + s2ijch[sce1,sce1,Economy,option3]
   + s3ijkch[sce1,sce1,sce1,Economy,option1]
   + s3ijkch[sce1,sce1,sce1,Economy,option2]
   + s3ijkch[sce1,sce1,sce1,Economy,option3] - 47 planes <= 0
 classCap[sce1,sce1,sce2,First]: s1ich[sce1,First,option1]
   + s1ich[sce1,First,option2] + s1ich[sce1,First,option3]
   + s2ijch[sce1,sce1,First,option1] + s2ijch[sce1,sce1,First,option2]
   + s2ijch[sce1,sce1,First,option3]
   + s3ijkch[sce1,sce1,sce2,First,option1]
   + s3ijkch[sce1,sce1,sce2,First,option2]
   + s3ijkch[sce1,sce1,sce2,First,option3] - 37 planes <= 0
 classCap[sce1,sce1,sce2,Business]: s1ich[sce1,Business,option1]
   + s1ich[sce1,Business,option2] + s1ich[sce1,Business,option3]
   + s2ijch[sce1,sce1,Business,option1]
   + s2ijch[sce1,sce1,Business,option2]
   + s2ijch[sce1,sce1,Business,option3]
   + s3ijkch[sce1,sce1,sce2,Business,option1]
   + s3ijkch[sce1,sce1,sce2,Business,option2]
   + s3ijkch[sce1,sce1,sce2,Business,option3] - 38 planes <= 0
 classCap[sce1,sce1,sce2,Economy]: s1ich[sce1,Economy,option1]
   + s1ich[sce1,Economy,option2] + s1ich[sce1,Economy,option3]
   + s2ijch[sce1,sce1,Economy,option1] + s2ijch[sce1,sce1,Economy,option2]
   + s2ijch[sce1,sce1,Economy,option3]
   + s3ijkch[sce1,sce1,sce2,Economy,option1]
   + s3ijkch[sce1,sce1,sce2,Economy,option2]
   + s3ijkch[sce1,sce1,sce2,Economy,option3] - 47 planes <= 0
 classCap[sce1,sce1,sce3,First]: s1ich[sce1,First,option1]
   + s1ich[sce1,First,option2] + s1ich[sce1,First,option3]
   + s2ijch[sce1,sce1,First,option1] + s2ijch[sce1,sce1,First,option2]
   + s2ijch[sce1,sce1,First,option3]
   + s3ijkch[sce1,sce1,sce3,First,option1]
   + s3ijkch[sce1,sce1,sce3,First,option2]
   + s3ijkch[sce1,sce1,sce3,First,option3] - 37 planes <= 0
 classCap[sce1,sce1,sce3,Business]: s1ich[sce1,Business,option1]
   + s1ich[sce1,Business,option2] + s1ich[sce1,Business,option3]
   + s2ijch[sce1,sce1,Business,option1]
   + s2ijch[sce1,sce1,Business,option2]
   + s2ijch[sce1,sce1,Business,option3]
   + s3ijkch[sce1,sce1,sce3,Business,option1]
   + s3ijkch[sce1,sce1,sce3,Business,option2]
   + s3ijkch[sce1,sce1,sce3,Business,option3] - 38 planes <= 0
 classCap[sce1,sce1,sce3,Economy]: s1ich[sce1,Economy,option1]
   + s1ich[sce1,Economy,option2] + s1ich[sce1,Economy,option3]
   + s2ijch[sce1,sce1,Economy,option1] + s2ijch[sce1,sce1,Economy,option2]
   + s2ijch[sce1,sce1,Economy,option3]
   + s3ijkch[sce1,sce1,sce3,Economy,option1]
   + s3ijkch[sce1,sce1,sce3,Economy,option2]
   + s3ijkch[sce1,sce1,sce3,Economy,option3] - 47 planes <= 0
 classCap[sce1,sce2,sce1,First]: s1ich[sce1,First,option1]
   + s1ich[sce1,First,option2] + s1ich[sce1,First,option3]
   + s2ijch[sce1,sce2,First,option1] + s2ijch[sce1,sce2,First,option2]
   + s2ijch[sce1,sce2,First,option3]
   + s3ijkch[sce1,sce2,sce1,First,option1]
   + s3ijkch[sce1,sce2,sce1,First,option2]
   + s3ijkch[sce1,sce2,sce1,First,option3] - 37 planes <= 0
 classCap[sce1,sce2,sce1,Business]: s1ich[sce1,Business,option1]
   + s1ich[sce1,Business,option2] + s1ich[sce1,Business,option3]
   + s2ijch[sce1,sce2,Business,option1]
   + s2ijch[sce1,sce2,Business,option2]
   + s2ijch[sce1,sce2,Business,option3]
   + s3ijkch[sce1,sce2,sce1,Business,option1]
   + s3ijkch[sce1,sce2,sce1,Business,option2]
   + s3ijkch[sce1,sce2,sce1,Business,option3] - 38 planes <= 0
 classCap[sce1,sce2,sce1,Economy]: s1ich[sce1,Economy,option1]
   + s1ich[sce1,Economy,option2] + s1ich[sce1,Economy,option3]
   + s2ijch[sce1,sce2,Economy,option1] + s2ijch[sce1,sce2,Economy,option2]
   + s2ijch[sce1,sce2,Economy,option3]
   + s3ijkch[sce1,sce2,sce1,Economy,option1]
   + s3ijkch[sce1,sce2,sce1,Economy,option2]
   + s3ijkch[sce1,sce2,sce1,Economy,option3] - 47 planes <= 0
 classCap[sce1,sce2,sce2,First]: s1ich[sce1,First,option1]
   + s1ich[sce1,First,option2] + s1ich[sce1,First,option3]
   + s2ijch[sce1,sce2,First,option1] + s2ijch[sce1,sce2,First,option2]
   + s2ijch[sce1,sce2,First,option3]
   + s3ijkch[sce1,sce2,sce2,First,option1]
   + s3ijkch[sce1,sce2,sce2,First,option2]
   + s3ijkch[sce1,sce2,sce2,First,option3] - 37 planes <= 0
 classCap[sce1,sce2,sce2,Business]: s1ich[sce1,Business,option1]
   + s1ich[sce1,Business,option2] + s1ich[sce1,Business,option3]
   + s2ijch[sce1,sce2,Business,option1]
   + s2ijch[sce1,sce2,Business,option2]
   + s2ijch[sce1,sce2,Business,option3]
   + s3ijkch[sce1,sce2,sce2,Business,option1]
   + s3ijkch[sce1,sce2,sce2,Business,option2]
   + s3ijkch[sce1,sce2,sce2,Business,option3] - 38 planes <= 0
 classCap[sce1,sce2,sce2,Economy]: s1ich[sce1,Economy,option1]
   + s1ich[sce1,Economy,option2] + s1ich[sce1,Economy,option3]
   + s2ijch[sce1,sce2,Economy,option1] + s2ijch[sce1,sce2,Economy,option2]
   + s2ijch[sce1,sce2,Economy,option3]
   + s3ijkch[sce1,sce2,sce2,Economy,option1]
   + s3ijkch[sce1,sce2,sce2,Economy,option2]
   + s3ijkch[sce1,sce2,sce2,Economy,option3] - 47 planes <= 0
 classCap[sce1,sce2,sce3,First]: s1ich[sce1,First,option1]
   + s1ich[sce1,First,option2] + s1ich[sce1,First,option3]
   + s2ijch[sce1,sce2,First,option1] + s2ijch[sce1,sce2,First,option2]
   + s2ijch[sce1,sce2,First,option3]
   + s3ijkch[sce1,sce2,sce3,First,option1]
   + s3ijkch[sce1,sce2,sce3,First,option2]
   + s3ijkch[sce1,sce2,sce3,First,option3] - 37 planes <= 0
 classCap[sce1,sce2,sce3,Business]: s1ich[sce1,Business,option1]
   + s1ich[sce1,Business,option2] + s1ich[sce1,Business,option3]
   + s2ijch[sce1,sce2,Business,option1]
   + s2ijch[sce1,sce2,Business,option2]
   + s2ijch[sce1,sce2,Business,option3]
   + s3ijkch[sce1,sce2,sce3,Business,option1]
   + s3ijkch[sce1,sce2,sce3,Business,option2]
   + s3ijkch[sce1,sce2,sce3,Business,option3] - 38 planes <= 0
 classCap[sce1,sce2,sce3,Economy]: s1ich[sce1,Economy,option1]
   + s1ich[sce1,Economy,option2] + s1ich[sce1,Economy,option3]
   + s2ijch[sce1,sce2,Economy,option1] + s2ijch[sce1,sce2,Economy,option2]
   + s2ijch[sce1,sce2,Economy,option3]
   + s3ijkch[sce1,sce2,sce3,Economy,option1]
   + s3ijkch[sce1,sce2,sce3,Economy,option2]
   + s3ijkch[sce1,sce2,sce3,Economy,option3] - 47 planes <= 0
 classCap[sce1,sce3,sce1,First]: s1ich[sce1,First,option1]
   + s1ich[sce1,First,option2] + s1ich[sce1,First,option3]
   + s2ijch[sce1,sce3,First,option1] + s2ijch[sce1,sce3,First,option2]
   + s2ijch[sce1,sce3,First,option3]
   + s3ijkch[sce1,sce3,sce1,First,option1]
   + s3ijkch[sce1,sce3,sce1,First,option2]
   + s3ijkch[sce1,sce3,sce1,First,option3] - 37 planes <= 0
 classCap[sce1,sce3,sce1,Business]: s1ich[sce1,Business,option1]
   + s1ich[sce1,Business,option2] + s1ich[sce1,Business,option3]
   + s2ijch[sce1,sce3,Business,option1]
   + s2ijch[sce1,sce3,Business,option2]
   + s2ijch[sce1,sce3,Business,option3]
   + s3ijkch[sce1,sce3,sce1,Business,option1]
   + s3ijkch[sce1,sce3,sce1,Business,option2]
   + s3ijkch[sce1,sce3,sce1,Business,option3] - 38 planes <= 0
 classCap[sce1,sce3,sce1,Economy]: s1ich[sce1,Economy,option1]
   + s1ich[sce1,Economy,option2] + s1ich[sce1,Economy,option3]
   + s2ijch[sce1,sce3,Economy,option1] + s2ijch[sce1,sce3,Economy,option2]
   + s2ijch[sce1,sce3,Economy,option3]
   + s3ijkch[sce1,sce3,sce1,Economy,option1]
   + s3ijkch[sce1,sce3,sce1,Economy,option2]
   + s3ijkch[sce1,sce3,sce1,Economy,option3] - 47 planes <= 0
 classCap[sce1,sce3,sce2,First]: s1ich[sce1,First,option1]
   + s1ich[sce1,First,option2] + s1ich[sce1,First,option3]
   + s2ijch[sce1,sce3,First,option1] + s2ijch[sce1,sce3,First,option2]
   + s2ijch[sce1,sce3,First,option3]
   + s3ijkch[sce1,sce3,sce2,First,option1]
   + s3ijkch[sce1,sce3,sce2,First,option2]
   + s3ijkch[sce1,sce3,sce2,First,option3] - 37 planes <= 0
 classCap[sce1,sce3,sce2,Business]: s1ich[sce1,Business,option1]
   + s1ich[sce1,Business,option2] + s1ich[sce1,Business,option3]
   + s2ijch[sce1,sce3,Business,option1]
   + s2ijch[sce1,sce3,Business,option2]
   + s2ijch[sce1,sce3,Business,option3]
   + s3ijkch[sce1,sce3,sce2,Business,option1]
   + s3ijkch[sce1,sce3,sce2,Business,option2]
   + s3ijkch[sce1,sce3,sce2,Business,option3] - 38 planes <= 0
 classCap[sce1,sce3,sce2,Economy]: s1ich[sce1,Economy,option1]
   + s1ich[sce1,Economy,option2] + s1ich[sce1,Economy,option3]
   + s2ijch[sce1,sce3,Economy,option1] + s2ijch[sce1,sce3,Economy,option2]
   + s2ijch[sce1,sce3,Economy,option3]
   + s3ijkch[sce1,sce3,sce2,Economy,option1]
   + s3ijkch[sce1,sce3,sce2,Economy,option2]
   + s3ijkch[sce1,sce3,sce2,Economy,option3] - 47 planes <= 0
 classCap[sce1,sce3,sce3,First]: s1ich[sce1,First,option1]
   + s1ich[sce1,First,option2] + s1ich[sce1,First,option3]
   + s2ijch[sce1,sce3,First,option1] + s2ijch[sce1,sce3,First,option2]
   + s2ijch[sce1,sce3,First,option3]
   + s3ijkch[sce1,sce3,sce3,First,option1]
   + s3ijkch[sce1,sce3,sce3,First,option2]
   + s3ijkch[sce1,sce3,sce3,First,option3] - 37 planes <= 0
 classCap[sce1,sce3,sce3,Business]: s1ich[sce1,Business,option1]
   + s1ich[sce1,Business,option2] + s1ich[sce1,Business,option3]
   + s2ijch[sce1,sce3,Business,option1]
   + s2ijch[sce1,sce3,Business,option2]
   + s2ijch[sce1,sce3,Business,option3]
   + s3ijkch[sce1,sce3,sce3,Business,option1]
   + s3ijkch[sce1,sce3,sce3,Business,option2]
   + s3ijkch[sce1,sce3,sce3,Business,option3] - 38 planes <= 0
 classCap[sce1,sce3,sce3,Economy]: s1ich[sce1,Economy,option1]
   + s1ich[sce1,Economy,option2] + s1ich[sce1,Economy,option3]
   + s2ijch[sce1,sce3,Economy,option1] + s2ijch[sce1,sce3,Economy,option2]
   + s2ijch[sce1,sce3,Economy,option3]
   + s3ijkch[sce1,sce3,sce3,Economy,option1]
   + s3ijkch[sce1,sce3,sce3,Economy,option2]
   + s3ijkch[sce1,sce3,sce3,Economy,option3] - 47 planes <= 0
 classCap[sce2,sce1,sce1,First]: s1ich[sce2,First,option1]
   + s1ich[sce2,First,option2] + s1ich[sce2,First,option3]
   + s2ijch[sce2,sce1,First,option1] + s2ijch[sce2,sce1,First,option2]
   + s2ijch[sce2,sce1,First,option3]
   + s3ijkch[sce2,sce1,sce1,First,option1]
   + s3ijkch[sce2,sce1,sce1,First,option2]
   + s3ijkch[sce2,sce1,sce1,First,option3] - 37 planes <= 0
 classCap[sce2,sce1,sce1,Business]: s1ich[sce2,Business,option1]
   + s1ich[sce2,Business,option2] + s1ich[sce2,Business,option3]
   + s2ijch[sce2,sce1,Business,option1]
   + s2ijch[sce2,sce1,Business,option2]
   + s2ijch[sce2,sce1,Business,option3]
   + s3ijkch[sce2,sce1,sce1,Business,option1]
   + s3ijkch[sce2,sce1,sce1,Business,option2]
   + s3ijkch[sce2,sce1,sce1,Business,option3] - 38 planes <= 0
 classCap[sce2,sce1,sce1,Economy]: s1ich[sce2,Economy,option1]
   + s1ich[sce2,Economy,option2] + s1ich[sce2,Economy,option3]
   + s2ijch[sce2,sce1,Economy,option1] + s2ijch[sce2,sce1,Economy,option2]
   + s2ijch[sce2,sce1,Economy,option3]
   + s3ijkch[sce2,sce1,sce1,Economy,option1]
   + s3ijkch[sce2,sce1,sce1,Economy,option2]
   + s3ijkch[sce2,sce1,sce1,Economy,option3] - 47 planes <= 0
 classCap[sce2,sce1,sce2,First]: s1ich[sce2,First,option1]
   + s1ich[sce2,First,option2] + s1ich[sce2,First,option3]
   + s2ijch[sce2,sce1,First,option1] + s2ijch[sce2,sce1,First,option2]
   + s2ijch[sce2,sce1,First,option3]
   + s3ijkch[sce2,sce1,sce2,First,option1]
   + s3ijkch[sce2,sce1,sce2,First,option2]
   + s3ijkch[sce2,sce1,sce2,First,option3] - 37 planes <= 0
 classCap[sce2,sce1,sce2,Business]: s1ich[sce2,Business,option1]
   + s1ich[sce2,Business,option2] + s1ich[sce2,Business,option3]
   + s2ijch[sce2,sce1,Business,option1]
   + s2ijch[sce2,sce1,Business,option2]
   + s2ijch[sce2,sce1,Business,option3]
   + s3ijkch[sce2,sce1,sce2,Business,option1]
   + s3ijkch[sce2,sce1,sce2,Business,option2]
   + s3ijkch[sce2,sce1,sce2,Business,option3] - 38 planes <= 0
 classCap[sce2,sce1,sce2,Economy]: s1ich[sce2,Economy,option1]
   + s1ich[sce2,Economy,option2] + s1ich[sce2,Economy,option3]
   + s2ijch[sce2,sce1,Economy,option1] + s2ijch[sce2,sce1,Economy,option2]
   + s2ijch[sce2,sce1,Economy,option3]
   + s3ijkch[sce2,sce1,sce2,Economy,option1]
   + s3ijkch[sce2,sce1,sce2,Economy,option2]
   + s3ijkch[sce2,sce1,sce2,Economy,option3] - 47 planes <= 0
 classCap[sce2,sce1,sce3,First]: s1ich[sce2,First,option1]
   + s1ich[sce2,First,option2] + s1ich[sce2,First,option3]
   + s2ijch[sce2,sce1,First,option1] + s2ijch[sce2,sce1,First,option2]
   + s2ijch[sce2,sce1,First,option3]
   + s3ijkch[sce2,sce1,sce3,First,option1]
   + s3ijkch[sce2,sce1,sce3,First,option2]
   + s3ijkch[sce2,sce1,sce3,First,option3] - 37 planes <= 0
 classCap[sce2,sce1,sce3,Business]: s1ich[sce2,Business,option1]
   + s1ich[sce2,Business,option2] + s1ich[sce2,Business,option3]
   + s2ijch[sce2,sce1,Business,option1]
   + s2ijch[sce2,sce1,Business,option2]
   + s2ijch[sce2,sce1,Business,option3]
   + s3ijkch[sce2,sce1,sce3,Business,option1]
   + s3ijkch[sce2,sce1,sce3,Business,option2]
   + s3ijkch[sce2,sce1,sce3,Business,option3] - 38 planes <= 0
 classCap[sce2,sce1,sce3,Economy]: s1ich[sce2,Economy,option1]
   + s1ich[sce2,Economy,option2] + s1ich[sce2,Economy,option3]
   + s2ijch[sce2,sce1,Economy,option1] + s2ijch[sce2,sce1,Economy,option2]
   + s2ijch[sce2,sce1,Economy,option3]
   + s3ijkch[sce2,sce1,sce3,Economy,option1]
   + s3ijkch[sce2,sce1,sce3,Economy,option2]
   + s3ijkch[sce2,sce1,sce3,Economy,option3] - 47 planes <= 0
 classCap[sce2,sce2,sce1,First]: s1ich[sce2,First,option1]
   + s1ich[sce2,First,option2] + s1ich[sce2,First,option3]
   + s2ijch[sce2,sce2,First,option1] + s2ijch[sce2,sce2,First,option2]
   + s2ijch[sce2,sce2,First,option3]
   + s3ijkch[sce2,sce2,sce1,First,option1]
   + s3ijkch[sce2,sce2,sce1,First,option2]
   + s3ijkch[sce2,sce2,sce1,First,option3] - 37 planes <= 0
 classCap[sce2,sce2,sce1,Business]: s1ich[sce2,Business,option1]
   + s1ich[sce2,Business,option2] + s1ich[sce2,Business,option3]
   + s2ijch[sce2,sce2,Business,option1]
   + s2ijch[sce2,sce2,Business,option2]
   + s2ijch[sce2,sce2,Business,option3]
   + s3ijkch[sce2,sce2,sce1,Business,option1]
   + s3ijkch[sce2,sce2,sce1,Business,option2]
   + s3ijkch[sce2,sce2,sce1,Business,option3] - 38 planes <= 0
 classCap[sce2,sce2,sce1,Economy]: s1ich[sce2,Economy,option1]
   + s1ich[sce2,Economy,option2] + s1ich[sce2,Economy,option3]
   + s2ijch[sce2,sce2,Economy,option1] + s2ijch[sce2,sce2,Economy,option2]
   + s2ijch[sce2,sce2,Economy,option3]
   + s3ijkch[sce2,sce2,sce1,Economy,option1]
   + s3ijkch[sce2,sce2,sce1,Economy,option2]
   + s3ijkch[sce2,sce2,sce1,Economy,option3] - 47 planes <= 0
 classCap[sce2,sce2,sce2,First]: s1ich[sce2,First,option1]
   + s1ich[sce2,First,option2] + s1ich[sce2,First,option3]
   + s2ijch[sce2,sce2,First,option1] + s2ijch[sce2,sce2,First,option2]
   + s2ijch[sce2,sce2,First,option3]
   + s3ijkch[sce2,sce2,sce2,First,option1]
   + s3ijkch[sce2,sce2,sce2,First,option2]
   + s3ijkch[sce2,sce2,sce2,First,option3] - 37 planes <= 0
 classCap[sce2,sce2,sce2,Business]: s1ich[sce2,Business,option1]
   + s1ich[sce2,Business,option2] + s1ich[sce2,Business,option3]
   + s2ijch[sce2,sce2,Business,option1]
   + s2ijch[sce2,sce2,Business,option2]
   + s2ijch[sce2,sce2,Business,option3]
   + s3ijkch[sce2,sce2,sce2,Business,option1]
   + s3ijkch[sce2,sce2,sce2,Business,option2]
   + s3ijkch[sce2,sce2,sce2,Business,option3] - 38 planes <= 0
 classCap[sce2,sce2,sce2,Economy]: s1ich[sce2,Economy,option1]
   + s1ich[sce2,Economy,option2] + s1ich[sce2,Economy,option3]
   + s2ijch[sce2,sce2,Economy,option1] + s2ijch[sce2,sce2,Economy,option2]
   + s2ijch[sce2,sce2,Economy,option3]
   + s3ijkch[sce2,sce2,sce2,Economy,option1]
   + s3ijkch[sce2,sce2,sce2,Economy,option2]
   + s3ijkch[sce2,sce2,sce2,Economy,option3] - 47 planes <= 0
 classCap[sce2,sce2,sce3,First]: s1ich[sce2,First,option1]
   + s1ich[sce2,First,option2] + s1ich[sce2,First,option3]
   + s2ijch[sce2,sce2,First,option1] + s2ijch[sce2,sce2,First,option2]
   + s2ijch[sce2,sce2,First,option3]
   + s3ijkch[sce2,sce2,sce3,First,option1]
   + s3ijkch[sce2,sce2,sce3,First,option2]
   + s3ijkch[sce2,sce2,sce3,First,option3] - 37 planes <= 0
 classCap[sce2,sce2,sce3,Business]: s1ich[sce2,Business,option1]
   + s1ich[sce2,Business,option2] + s1ich[sce2,Business,option3]
   + s2ijch[sce2,sce2,Business,option1]
   + s2ijch[sce2,sce2,Business,option2]
   + s2ijch[sce2,sce2,Business,option3]
   + s3ijkch[sce2,sce2,sce3,Business,option1]
   + s3ijkch[sce2,sce2,sce3,Business,option2]
   + s3ijkch[sce2,sce2,sce3,Business,option3] - 38 planes <= 0
 classCap[sce2,sce2,sce3,Economy]: s1ich[sce2,Economy,option1]
   + s1ich[sce2,Economy,option2] + s1ich[sce2,Economy,option3]
   + s2ijch[sce2,sce2,Economy,option1] + s2ijch[sce2,sce2,Economy,option2]
   + s2ijch[sce2,sce2,Economy,option3]
   + s3ijkch[sce2,sce2,sce3,Economy,option1]
   + s3ijkch[sce2,sce2,sce3,Economy,option2]
   + s3ijkch[sce2,sce2,sce3,Economy,option3] - 47 planes <= 0
 classCap[sce2,sce3,sce1,First]: s1ich[sce2,First,option1]
   + s1ich[sce2,First,option2] + s1ich[sce2,First,option3]
   + s2ijch[sce2,sce3,First,option1] + s2ijch[sce2,sce3,First,option2]
   + s2ijch[sce2,sce3,First,option3]
   + s3ijkch[sce2,sce3,sce1,First,option1]
   + s3ijkch[sce2,sce3,sce1,First,option2]
   + s3ijkch[sce2,sce3,sce1,First,option3] - 37 planes <= 0
 classCap[sce2,sce3,sce1,Business]: s1ich[sce2,Business,option1]
   + s1ich[sce2,Business,option2] + s1ich[sce2,Business,option3]
   + s2ijch[sce2,sce3,Business,option1]
   + s2ijch[sce2,sce3,Business,option2]
   + s2ijch[sce2,sce3,Business,option3]
   + s3ijkch[sce2,sce3,sce1,Business,option1]
   + s3ijkch[sce2,sce3,sce1,Business,option2]
   + s3ijkch[sce2,sce3,sce1,Business,option3] - 38 planes <= 0
 classCap[sce2,sce3,sce1,Economy]: s1ich[sce2,Economy,option1]
   + s1ich[sce2,Economy,option2] + s1ich[sce2,Economy,option3]
   + s2ijch[sce2,sce3,Economy,option1] + s2ijch[sce2,sce3,Economy,option2]
   + s2ijch[sce2,sce3,Economy,option3]
   + s3ijkch[sce2,sce3,sce1,Economy,option1]
   + s3ijkch[sce2,sce3,sce1,Economy,option2]
   + s3ijkch[sce2,sce3,sce1,Economy,option3] - 47 planes <= 0
 classCap[sce2,sce3,sce2,First]: s1ich[sce2,First,option1]
   + s1ich[sce2,First,option2] + s1ich[sce2,First,option3]
   + s2ijch[sce2,sce3,First,option1] + s2ijch[sce2,sce3,First,option2]
   + s2ijch[sce2,sce3,First,option3]
   + s3ijkch[sce2,sce3,sce2,First,option1]
   + s3ijkch[sce2,sce3,sce2,First,option2]
   + s3ijkch[sce2,sce3,sce2,First,option3] - 37 planes <= 0
 classCap[sce2,sce3,sce2,Business]: s1ich[sce2,Business,option1]
   + s1ich[sce2,Business,option2] + s1ich[sce2,Business,option3]
   + s2ijch[sce2,sce3,Business,option1]
   + s2ijch[sce2,sce3,Business,option2]
   + s2ijch[sce2,sce3,Business,option3]
   + s3ijkch[sce2,sce3,sce2,Business,option1]
   + s3ijkch[sce2,sce3,sce2,Business,option2]
   + s3ijkch[sce2,sce3,sce2,Business,option3] - 38 planes <= 0
 classCap[sce2,sce3,sce2,Economy]: s1ich[sce2,Economy,option1]
   + s1ich[sce2,Economy,option2] + s1ich[sce2,Economy,option3]
   + s2ijch[sce2,sce3,Economy,option1] + s2ijch[sce2,sce3,Economy,option2]
   + s2ijch[sce2,sce3,Economy,option3]
   + s3ijkch[sce2,sce3,sce2,Economy,option1]
   + s3ijkch[sce2,sce3,sce2,Economy,option2]
   + s3ijkch[sce2,sce3,sce2,Economy,option3] - 47 planes <= 0
 classCap[sce2,sce3,sce3,First]: s1ich[sce2,First,option1]
   + s1ich[sce2,First,option2] + s1ich[sce2,First,option3]
   + s2ijch[sce2,sce3,First,option1] + s2ijch[sce2,sce3,First,option2]
   + s2ijch[sce2,sce3,First,option3]
   + s3ijkch[sce2,sce3,sce3,First,option1]
   + s3ijkch[sce2,sce3,sce3,First,option2]
   + s3ijkch[sce2,sce3,sce3,First,option3] - 37 planes <= 0
 classCap[sce2,sce3,sce3,Business]: s1ich[sce2,Business,option1]
   + s1ich[sce2,Business,option2] + s1ich[sce2,Business,option3]
   + s2ijch[sce2,sce3,Business,option1]
   + s2ijch[sce2,sce3,Business,option2]
   + s2ijch[sce2,sce3,Business,option3]
   + s3ijkch[sce2,sce3,sce3,Business,option1]
   + s3ijkch[sce2,sce3,sce3,Business,option2]
   + s3ijkch[sce2,sce3,sce3,Business,option3] - 38 planes <= 0
 classCap[sce2,sce3,sce3,Economy]: s1ich[sce2,Economy,option1]
   + s1ich[sce2,Economy,option2] + s1ich[sce2,Economy,option3]
   + s2ijch[sce2,sce3,Economy,option1] + s2ijch[sce2,sce3,Economy,option2]
   + s2ijch[sce2,sce3,Economy,option3]
   + s3ijkch[sce2,sce3,sce3,Economy,option1]
   + s3ijkch[sce2,sce3,sce3,Economy,option2]
   + s3ijkch[sce2,sce3,sce3,Economy,option3] - 47 planes <= 0
 classCap[sce3,sce1,sce1,First]: s1ich[sce3,First,option1]
   + s1ich[sce3,First,option2] + s1ich[sce3,First,option3]
   + s2ijch[sce3,sce1,First,option1] + s2ijch[sce3,sce1,First,option2]
   + s2ijch[sce3,sce1,First,option3]
   + s3ijkch[sce3,sce1,sce1,First,option1]
   + s3ijkch[sce3,sce1,sce1,First,option2]
   + s3ijkch[sce3,sce1,sce1,First,option3] - 37 planes <= 0
 classCap[sce3,sce1,sce1,Business]: s1ich[sce3,Business,option1]
   + s1ich[sce3,Business,option2] + s1ich[sce3,Business,option3]
   + s2ijch[sce3,sce1,Business,option1]
   + s2ijch[sce3,sce1,Business,option2]
   + s2ijch[sce3,sce1,Business,option3]
   + s3ijkch[sce3,sce1,sce1,Business,option1]
   + s3ijkch[sce3,sce1,sce1,Business,option2]
   + s3ijkch[sce3,sce1,sce1,Business,option3] - 38 planes <= 0
 classCap[sce3,sce1,sce1,Economy]: s1ich[sce3,Economy,option1]
   + s1ich[sce3,Economy,option2] + s1ich[sce3,Economy,option3]
   + s2ijch[sce3,sce1,Economy,option1] + s2ijch[sce3,sce1,Economy,option2]
   + s2ijch[sce3,sce1,Economy,option3]
   + s3ijkch[sce3,sce1,sce1,Economy,option1]
   + s3ijkch[sce3,sce1,sce1,Economy,option2]
   + s3ijkch[sce3,sce1,sce1,Economy,option3] - 47 planes <= 0
 classCap[sce3,sce1,sce2,First]: s1ich[sce3,First,option1]
   + s1ich[sce3,First,option2] + s1ich[sce3,First,option3]
   + s2ijch[sce3,sce1,First,option1] + s2ijch[sce3,sce1,First,option2]
   + s2ijch[sce3,sce1,First,option3]
   + s3ijkch[sce3,sce1,sce2,First,option1]
   + s3ijkch[sce3,sce1,sce2,First,option2]
   + s3ijkch[sce3,sce1,sce2,First,option3] - 37 planes <= 0
 classCap[sce3,sce1,sce2,Business]: s1ich[sce3,Business,option1]
   + s1ich[sce3,Business,option2] + s1ich[sce3,Business,option3]
   + s2ijch[sce3,sce1,Business,option1]
   + s2ijch[sce3,sce1,Business,option2]
   + s2ijch[sce3,sce1,Business,option3]
   + s3ijkch[sce3,sce1,sce2,Business,option1]
   + s3ijkch[sce3,sce1,sce2,Business,option2]
   + s3ijkch[sce3,sce1,sce2,Business,option3] - 38 planes <= 0
 classCap[sce3,sce1,sce2,Economy]: s1ich[sce3,Economy,option1]
   + s1ich[sce3,Economy,option2] + s1ich[sce3,Economy,option3]
   + s2ijch[sce3,sce1,Economy,option1] + s2ijch[sce3,sce1,Economy,option2]
   + s2ijch[sce3,sce1,Economy,option3]
   + s3ijkch[sce3,sce1,sce2,Economy,option1]
   + s3ijkch[sce3,sce1,sce2,Economy,option2]
   + s3ijkch[sce3,sce1,sce2,Economy,option3] - 47 planes <= 0
 classCap[sce3,sce1,sce3,First]: s1ich[sce3,First,option1]
   + s1ich[sce3,First,option2] + s1ich[sce3,First,option3]
   + s2ijch[sce3,sce1,First,option1] + s2ijch[sce3,sce1,First,option2]
   + s2ijch[sce3,sce1,First,option3]
   + s3ijkch[sce3,sce1,sce3,First,option1]
   + s3ijkch[sce3,sce1,sce3,First,option2]
   + s3ijkch[sce3,sce1,sce3,First,option3] - 37 planes <= 0
 classCap[sce3,sce1,sce3,Business]: s1ich[sce3,Business,option1]
   + s1ich[sce3,Business,option2] + s1ich[sce3,Business,option3]
   + s2ijch[sce3,sce1,Business,option1]
   + s2ijch[sce3,sce1,Business,option2]
   + s2ijch[sce3,sce1,Business,option3]
   + s3ijkch[sce3,sce1,sce3,Business,option1]
   + s3ijkch[sce3,sce1,sce3,Business,option2]
   + s3ijkch[sce3,sce1,sce3,Business,option3] - 38 planes <= 0
 classCap[sce3,sce1,sce3,Economy]: s1ich[sce3,Economy,option1]
   + s1ich[sce3,Economy,option2] + s1ich[sce3,Economy,option3]
   + s2ijch[sce3,sce1,Economy,option1] + s2ijch[sce3,sce1,Economy,option2]
   + s2ijch[sce3,sce1,Economy,option3]
   + s3ijkch[sce3,sce1,sce3,Economy,option1]
   + s3ijkch[sce3,sce1,sce3,Economy,option2]
   + s3ijkch[sce3,sce1,sce3,Economy,option3] - 47 planes <= 0
 classCap[sce3,sce2,sce1,First]: s1ich[sce3,First,option1]
   + s1ich[sce3,First,option2] + s1ich[sce3,First,option3]
   + s2ijch[sce3,sce2,First,option1] + s2ijch[sce3,sce2,First,option2]
   + s2ijch[sce3,sce2,First,option3]
   + s3ijkch[sce3,sce2,sce1,First,option1]
   + s3ijkch[sce3,sce2,sce1,First,option2]
   + s3ijkch[sce3,sce2,sce1,First,option3] - 37 planes <= 0
 classCap[sce3,sce2,sce1,Business]: s1ich[sce3,Business,option1]
   + s1ich[sce3,Business,option2] + s1ich[sce3,Business,option3]
   + s2ijch[sce3,sce2,Business,option1]
   + s2ijch[sce3,sce2,Business,option2]
   + s2ijch[sce3,sce2,Business,option3]
   + s3ijkch[sce3,sce2,sce1,Business,option1]
   + s3ijkch[sce3,sce2,sce1,Business,option2]
   + s3ijkch[sce3,sce2,sce1,Business,option3] - 38 planes <= 0
 classCap[sce3,sce2,sce1,Economy]: s1ich[sce3,Economy,option1]
   + s1ich[sce3,Economy,option2] + s1ich[sce3,Economy,option3]
   + s2ijch[sce3,sce2,Economy,option1] + s2ijch[sce3,sce2,Economy,option2]
   + s2ijch[sce3,sce2,Economy,option3]
   + s3ijkch[sce3,sce2,sce1,Economy,option1]
   + s3ijkch[sce3,sce2,sce1,Economy,option2]
   + s3ijkch[sce3,sce2,sce1,Economy,option3] - 47 planes <= 0
 classCap[sce3,sce2,sce2,First]: s1ich[sce3,First,option1]
   + s1ich[sce3,First,option2] + s1ich[sce3,First,option3]
   + s2ijch[sce3,sce2,First,option1] + s2ijch[sce3,sce2,First,option2]
   + s2ijch[sce3,sce2,First,option3]
   + s3ijkch[sce3,sce2,sce2,First,option1]
   + s3ijkch[sce3,sce2,sce2,First,option2]
   + s3ijkch[sce3,sce2,sce2,First,option3] - 37 planes <= 0
 classCap[sce3,sce2,sce2,Business]: s1ich[sce3,Business,option1]
   + s1ich[sce3,Business,option2] + s1ich[sce3,Business,option3]
   + s2ijch[sce3,sce2,Business,option1]
   + s2ijch[sce3,sce2,Business,option2]
   + s2ijch[sce3,sce2,Business,option3]
   + s3ijkch[sce3,sce2,sce2,Business,option1]
   + s3ijkch[sce3,sce2,sce2,Business,option2]
   + s3ijkch[sce3,sce2,sce2,Business,option3] - 38 planes <= 0
 classCap[sce3,sce2,sce2,Economy]: s1ich[sce3,Economy,option1]
   + s1ich[sce3,Economy,option2] + s1ich[sce3,Economy,option3]
   + s2ijch[sce3,sce2,Economy,option1] + s2ijch[sce3,sce2,Economy,option2]
   + s2ijch[sce3,sce2,Economy,option3]
   + s3ijkch[sce3,sce2,sce2,Economy,option1]
   + s3ijkch[sce3,sce2,sce2,Economy,option2]
   + s3ijkch[sce3,sce2,sce2,Economy,option3] - 47 planes <= 0
 classCap[sce3,sce2,sce3,First]: s1ich[sce3,First,option1]
   + s1ich[sce3,First,option2] + s1ich[sce3,First,option3]
   + s2ijch[sce3,sce2,First,option1] + s2ijch[sce3,sce2,First,option2]
   + s2ijch[sce3,sce2,First,option3]
   + s3ijkch[sce3,sce2,sce3,First,option1]
   + s3ijkch[sce3,sce2,sce3,First,option2]
   + s3ijkch[sce3,sce2,sce3,First,option3] - 37 planes <= 0
 classCap[sce3,sce2,sce3,Business]: s1ich[sce3,Business,option1]
   + s1ich[sce3,Business,option2] + s1ich[sce3,Business,option3]
   + s2ijch[sce3,sce2,Business,option1]
   + s2ijch[sce3,sce2,Business,option2]
   + s2ijch[sce3,sce2,Business,option3]
   + s3ijkch[sce3,sce2,sce3,Business,option1]
   + s3ijkch[sce3,sce2,sce3,Business,option2]
   + s3ijkch[sce3,sce2,sce3,Business,option3] - 38 planes <= 0
 classCap[sce3,sce2,sce3,Economy]: s1ich[sce3,Economy,option1]
   + s1ich[sce3,Economy,option2] + s1ich[sce3,Economy,option3]
   + s2ijch[sce3,sce2,Economy,option1] + s2ijch[sce3,sce2,Economy,option2]
   + s2ijch[sce3,sce2,Economy,option3]
   + s3ijkch[sce3,sce2,sce3,Economy,option1]
   + s3ijkch[sce3,sce2,sce3,Economy,option2]
   + s3ijkch[sce3,sce2,sce3,Economy,option3] - 47 planes <= 0
 classCap[sce3,sce3,sce1,First]: s1ich[sce3,First,option1]
   + s1ich[sce3,First,option2] + s1ich[sce3,First,option3]
   + s2ijch[sce3,sce3,First,option1] + s2ijch[sce3,sce3,First,option2]
   + s2ijch[sce3,sce3,First,option3]
   + s3ijkch[sce3,sce3,sce1,First,option1]
   + s3ijkch[sce3,sce3,sce1,First,option2]
   + s3ijkch[sce3,sce3,sce1,First,option3] - 37 planes <= 0
 classCap[sce3,sce3,sce1,Business]: s1ich[sce3,Business,option1]
   + s1ich[sce3,Business,option2] + s1ich[sce3,Business,option3]
   + s2ijch[sce3,sce3,Business,option1]
   + s2ijch[sce3,sce3,Business,option2]
   + s2ijch[sce3,sce3,Business,option3]
   + s3ijkch[sce3,sce3,sce1,Business,option1]
   + s3ijkch[sce3,sce3,sce1,Business,option2]
   + s3ijkch[sce3,sce3,sce1,Business,option3] - 38 planes <= 0
 classCap[sce3,sce3,sce1,Economy]: s1ich[sce3,Economy,option1]
   + s1ich[sce3,Economy,option2] + s1ich[sce3,Economy,option3]
   + s2ijch[sce3,sce3,Economy,option1] + s2ijch[sce3,sce3,Economy,option2]
   + s2ijch[sce3,sce3,Economy,option3]
   + s3ijkch[sce3,sce3,sce1,Economy,option1]
   + s3ijkch[sce3,sce3,sce1,Economy,option2]
   + s3ijkch[sce3,sce3,sce1,Economy,option3] - 47 planes <= 0
 classCap[sce3,sce3,sce2,First]: s1ich[sce3,First,option1]
   + s1ich[sce3,First,option2] + s1ich[sce3,First,option3]
   + s2ijch[sce3,sce3,First,option1] + s2ijch[sce3,sce3,First,option2]
   + s2ijch[sce3,sce3,First,option3]
   + s3ijkch[sce3,sce3,sce2,First,option1]
   + s3ijkch[sce3,sce3,sce2,First,option2]
   + s3ijkch[sce3,sce3,sce2,First,option3] - 37 planes <= 0
 classCap[sce3,sce3,sce2,Business]: s1ich[sce3,Business,option1]
   + s1ich[sce3,Business,option2] + s1ich[sce3,Business,option3]
   + s2ijch[sce3,sce3,Business,option1]
   + s2ijch[sce3,sce3,Business,option2]
   + s2ijch[sce3,sce3,Business,option3]
   + s3ijkch[sce3,sce3,sce2,Business,option1]
   + s3ijkch[sce3,sce3,sce2,Business,option2]
   + s3ijkch[sce3,sce3,sce2,Business,option3] - 38 planes <= 0
 classCap[sce3,sce3,sce2,Economy]: s1ich[sce3,Economy,option1]
   + s1ich[sce3,Economy,option2] + s1ich[sce3,Economy,option3]
   + s2ijch[sce3,sce3,Economy,option1] + s2ijch[sce3,sce3,Economy,option2]
   + s2ijch[sce3,sce3,Economy,option3]
   + s3ijkch[sce3,sce3,sce2,Economy,option1]
   + s3ijkch[sce3,sce3,sce2,Economy,option2]
   + s3ijkch[sce3,sce3,sce2,Economy,option3] - 47 planes <= 0
 classCap[sce3,sce3,sce3,First]: s1ich[sce3,First,option1]
   + s1ich[sce3,First,option2] + s1ich[sce3,First,option3]
   + s2ijch[sce3,sce3,First,option1] + s2ijch[sce3,sce3,First,option2]
   + s2ijch[sce3,sce3,First,option3]
   + s3ijkch[sce3,sce3,sce3,First,option1]
   + s3ijkch[sce3,sce3,sce3,First,option2]
   + s3ijkch[sce3,sce3,sce3,First,option3] - 37 planes <= 0
 classCap[sce3,sce3,sce3,Business]: s1ich[sce3,Business,option1]
   + s1ich[sce3,Business,option2] + s1ich[sce3,Business,option3]
   + s2ijch[sce3,sce3,Business,option1]
   + s2ijch[sce3,sce3,Business,option2]
   + s2ijch[sce3,sce3,Business,option3]
   + s3ijkch[sce3,sce3,sce3,Business,option1]
   + s3ijkch[sce3,sce3,sce3,Business,option2]
   + s3ijkch[sce3,sce3,sce3,Business,option3] - 38 planes <= 0
 classCap[sce3,sce3,sce3,Economy]: s1ich[sce3,Economy,option1]
   + s1ich[sce3,Economy,option2] + s1ich[sce3,Economy,option3]
   + s2ijch[sce3,sce3,Economy,option1] + s2ijch[sce3,sce3,Economy,option2]
   + s2ijch[sce3,sce3,Economy,option3]
   + s3ijkch[sce3,sce3,sce3,Economy,option1]
   + s3ijkch[sce3,sce3,sce3,Economy,option2]
   + s3ijkch[sce3,sce3,sce3,Economy,option3] - 47 planes <= 0
Bounds
 p1ch[First,option1] = 1
 p1ch[Business,option1] = 1
 p1ch[Economy,option1] = 1
 p2ich[sce1,First,option3] = 1
 p2ich[sce1,Business,option1] = 1
 p2ich[sce1,Economy,option1] = 1
 p2ich[sce2,First,option3] = 1
 p2ich[sce2,Business,option1] = 1
 p2ich[sce2,Economy,option1] = 1
 p2ich[sce3,First,option3] = 1
 p2ich[sce3,Business,option1] = 1
 p2ich[sce3,Economy,option1] = 1
 p3ijch[sce1,sce1,First,option1] = 1
 p3ijch[sce1,sce1,Business,option2] = 1
 p3ijch[sce1,sce1,Economy,option1] = 1
 p3ijch[sce1,sce2,First,option1] = 1
 p3ijch[sce1,sce2,Business,option2] = 1
 p3ijch[sce1,sce2,Economy,option1] = 1
 p3ijch[sce1,sce3,First,option1] = 1
 p3ijch[sce1,sce3,Business,option2] = 1
 p3ijch[sce1,sce3,Economy,option1] = 1
 p3ijch[sce2,sce1,First,option1] = 1
 p3ijch[sce2,sce1,Business,option2] = 1
 p3ijch[sce2,sce1,Economy,option1] = 1
 p3ijch[sce2,sce2,First,option1] = 1
 p3ijch[sce2,sce2,Business,option2] = 1
 p3ijch[sce2,sce2,Economy,option1] = 1
 p3ijch[sce2,sce3,First,option1] = 1
 p3ijch[sce2,sce3,Business,option2] = 1
 p3ijch[sce2,sce3,Economy,option1] = 1
 p3ijch[sce3,sce1,First,option1] = 1
 p3ijch[sce3,sce1,Business,option2] = 1
 p3ijch[sce3,sce1,Economy,option1] = 1
 p3ijch[sce3,sce2,First,option1] = 1
 p3ijch[sce3,sce2,Business,option2] = 1
 p3ijch[sce3,sce2,Economy,option1] = 1
 p3ijch[sce3,sce3,First,option1] = 1
 p3ijch[sce3,sce3,Business,option2] = 1
 p3ijch[sce3,sce3,Economy,option1] = 1
 planes <= 6
Binaries
 p1ch[First,option1] p1ch[First,option2] p1ch[First,option3]
 p1ch[Business,option1] p1ch[Business,option2] p1ch[Business,option3]
 p1ch[Economy,option1] p1ch[Economy,option2] p1ch[Economy,option3]
 p2ich[sce1,First,option1] p2ich[sce1,First,option2]
 p2ich[sce1,First,option3] p2ich[sce1,Business,option1]
 p2ich[sce1,Business,option2] p2ich[sce1,Business,option3]
 p2ich[sce1,Economy,option1] p2ich[sce1,Economy,option2]
 p2ich[sce1,Economy,option3] p2ich[sce2,First,option1]
 p2ich[sce2,First,option2] p2ich[sce2,First,option3]
 p2ich[sce2,Business,option1] p2ich[sce2,Business,option2]
 p2ich[sce2,Business,option3] p2ich[sce2,Economy,option1]
 p2ich[sce2,Economy,option2] p2ich[sce2,Economy,option3]
 p2ich[sce3,First,option1] p2ich[sce3,First,option2]
 p2ich[sce3,First,option3] p2ich[sce3,Business,option1]
 p2ich[sce3,Business,option2] p2ich[sce3,Business,option3]
 p2ich[sce3,Economy,option1] p2ich[sce3,Economy,option2]
 p2ich[sce3,Economy,option3] p3ijch[sce1,sce1,First,option1]
 p3ijch[sce1,sce1,First,option2] p3ijch[sce1,sce1,First,option3]
 p3ijch[sce1,sce1,Business,option1] p3ijch[sce1,sce1,Business,option2]
 p3ijch[sce1,sce1,Business,option3] p3ijch[sce1,sce1,Economy,option1]
 p3ijch[sce1,sce1,Economy,option2] p3ijch[sce1,sce1,Economy,option3]
 p3ijch[sce1,sce2,First,option1] p3ijch[sce1,sce2,First,option2]
 p3ijch[sce1,sce2,First,option3] p3ijch[sce1,sce2,Business,option1]
 p3ijch[sce1,sce2,Business,option2] p3ijch[sce1,sce2,Business,option3]
 p3ijch[sce1,sce2,Economy,option1] p3ijch[sce1,sce2,Economy,option2]
 p3ijch[sce1,sce2,Economy,option3] p3ijch[sce1,sce3,First,option1]
 p3ijch[sce1,sce3,First,option2] p3ijch[sce1,sce3,First,option3]
 p3ijch[sce1,sce3,Business,option1] p3ijch[sce1,sce3,Business,option2]
 p3ijch[sce1,sce3,Business,option3] p3ijch[sce1,sce3,Economy,option1]
 p3ijch[sce1,sce3,Economy,option2] p3ijch[sce1,sce3,Economy,option3]
 p3ijch[sce2,sce1,First,option1] p3ijch[sce2,sce1,First,option2]
 p3ijch[sce2,sce1,First,option3] p3ijch[sce2,sce1,Business,option1]
 p3ijch[sce2,sce1,Business,option2] p3ijch[sce2,sce1,Business,option3]
 p3ijch[sce2,sce1,Economy,option1] p3ijch[sce2,sce1,Economy,option2]
 p3ijch[sce2,sce1,Economy,option3] p3ijch[sce2,sce2,First,option1]
 p3ijch[sce2,sce2,First,option2] p3ijch[sce2,sce2,First,option3]
 p3ijch[sce2,sce2,Business,option1] p3ijch[sce2,sce2,Business,option2]
 p3ijch[sce2,sce2,Business,option3] p3ijch[sce2,sce2,Economy,option1]
 p3ijch[sce2,sce2,Economy,option2] p3ijch[sce2,sce2,Economy,option3]
 p3ijch[sce2,sce3,First,option1] p3ijch[sce2,sce3,First,option2]
 p3ijch[sce2,sce3,First,option3] p3ijch[sce2,sce3,Business,option1]
 p3ijch[sce2,sce3,Business,option2] p3ijch[sce2,sce3,Business,option3]
 p3ijch[sce2,sce3,Economy,option1] p3ijch[sce2,sce3,Economy,option2]
 p3ijch[sce2,sce3,Economy,option3] p3ijch[sce3,sce1,First,option1]
 p3ijch[sce3,sce1,First,option2] p3ijch[sce3,sce1,First,option3]
 p3ijch[sce3,sce1,Business,option1] p3ijch[sce3,sce1,Business,option2]
 p3ijch[sce3,sce1,Business,option3] p3ijch[sce3,sce1,Economy,option1]
 p3ijch[sce3,sce1,Economy,option2] p3ijch[sce3,sce1,Economy,option3]
 p3ijch[sce3,sce2,First,option1] p3ijch[sce3,sce2,First,option2]
 p3ijch[sce3,sce2,First,option3] p3ijch[sce3,sce2,Business,option1]
 p3ijch[sce3,sce2,Business,option2] p3ijch[sce3,sce2,Business,option3]
 p3ijch[sce3,sce2,Economy,option1] p3ijch[sce3,sce2,Economy,option2]
 p3ijch[sce3,sce2,Economy,option3] p3ijch[sce3,sce3,First,option1]
 p3ijch[sce3,sce3,First,option2] p3ijch[sce3,sce3,First,option3]
 p3ijch[sce3,sce3,Business,option1] p3ijch[sce3,sce3,Business,option2]
 p3ijch[sce3,sce3,Business,option3] p3ijch[sce3,sce3,Economy,option1]
 p3ijch[sce3,sce3,Economy,option2] p3ijch[sce3,sce3,Economy,option3]
Generals
 planes
End
