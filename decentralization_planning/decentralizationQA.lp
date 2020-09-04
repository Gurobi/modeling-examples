\ Model decentralization
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  10 locate[A,Bristol] + 10 locate[A,Brighton] + 15 locate[B,Bristol]
   + 20 locate[B,Brighton] + 10 locate[C,Bristol] + 15 locate[C,Brighton]
   + 20 locate[D,Bristol] + 15 locate[D,Brighton] + 5 locate[E,Bristol]
   + 15 locate[E,Brighton] + [ - 10 locate[A,Bristol] * locate[C,Bristol]
   - 28 locate[A,Bristol] * locate[C,Brighton]
   - 26 locate[A,Bristol] * locate[C,London]
   - 15 locate[A,Bristol] * locate[D,Bristol]
   - 42 locate[A,Bristol] * locate[D,Brighton]
   - 39 locate[A,Bristol] * locate[D,London]
   - 28 locate[A,Brighton] * locate[C,Bristol]
   - 10 locate[A,Brighton] * locate[C,Brighton]
   - 18 locate[A,Brighton] * locate[C,London]
   - 42 locate[A,Brighton] * locate[D,Bristol]
   - 15 locate[A,Brighton] * locate[D,Brighton]
   - 27 locate[A,Brighton] * locate[D,London]
   - 26 locate[A,London] * locate[C,Bristol]
   - 18 locate[A,London] * locate[C,Brighton]
   - 20 locate[A,London] * locate[C,London]
   - 39 locate[A,London] * locate[D,Bristol]
   - 27 locate[A,London] * locate[D,Brighton]
   - 30 locate[A,London] * locate[D,London]
   - 14 locate[B,Bristol] * locate[C,Bristol]
   - 39.2 locate[B,Bristol] * locate[C,Brighton]
   - 36.4 locate[B,Bristol] * locate[C,London]
   - 12 locate[B,Bristol] * locate[D,Bristol]
   - 33.6 locate[B,Bristol] * locate[D,Brighton]
   - 31.2 locate[B,Bristol] * locate[D,London]
   - 39.2 locate[B,Brighton] * locate[C,Bristol]
   - 14 locate[B,Brighton] * locate[C,Brighton]
   - 25.2 locate[B,Brighton] * locate[C,London]
   - 33.6 locate[B,Brighton] * locate[D,Bristol]
   - 12 locate[B,Brighton] * locate[D,Brighton]
   - 21.6 locate[B,Brighton] * locate[D,London]
   - 36.4 locate[B,London] * locate[C,Bristol]
   - 25.2 locate[B,London] * locate[C,Brighton]
   - 28 locate[B,London] * locate[C,London]
   - 31.2 locate[B,London] * locate[D,Bristol]
   - 21.6 locate[B,London] * locate[D,Brighton]
   - 24 locate[B,London] * locate[D,London]
   - 20 locate[C,Bristol] * locate[E,Bristol]
   - 56 locate[C,Bristol] * locate[E,Brighton]
   - 52 locate[C,Bristol] * locate[E,London]
   - 56 locate[C,Brighton] * locate[E,Bristol]
   - 20 locate[C,Brighton] * locate[E,Brighton]
   - 36 locate[C,Brighton] * locate[E,London]
   - 52 locate[C,London] * locate[E,Bristol]
   - 36 locate[C,London] * locate[E,Brighton]
   - 40 locate[C,London] * locate[E,London]
   - 7 locate[D,Bristol] * locate[E,Bristol]
   - 19.6 locate[D,Bristol] * locate[E,Brighton]
   - 18.2 locate[D,Bristol] * locate[E,London]
   - 19.6 locate[D,Brighton] * locate[E,Bristol]
   - 7 locate[D,Brighton] * locate[E,Brighton]
   - 12.6 locate[D,Brighton] * locate[E,London]
   - 18.2 locate[D,London] * locate[E,Bristol]
   - 12.6 locate[D,London] * locate[E,Brighton]
   - 14 locate[D,London] * locate[E,London] ] / 2 
Subject To
 department_location[A]: locate[A,Bristol] + locate[A,Brighton]
   + locate[A,London] = 1
 department_location[B]: locate[B,Bristol] + locate[B,Brighton]
   + locate[B,London] = 1
 department_location[C]: locate[C,Bristol] + locate[C,Brighton]
   + locate[C,London] = 1
 department_location[D]: locate[D,Bristol] + locate[D,Brighton]
   + locate[D,London] = 1
 department_location[E]: locate[E,Bristol] + locate[E,Brighton]
   + locate[E,London] = 1
 departments_limit[Bristol]: locate[A,Bristol] + locate[B,Bristol]
   + locate[C,Bristol] + locate[D,Bristol] + locate[E,Bristol] <= 3
 departments_limit[Brighton]: locate[A,Brighton] + locate[B,Brighton]
   + locate[C,Brighton] + locate[D,Brighton] + locate[E,Brighton] <= 3
 departments_limit[London]: locate[A,London] + locate[B,London]
   + locate[C,London] + locate[D,London] + locate[E,London] <= 3
Bounds
Binaries
 locate[A,Bristol] locate[A,Brighton] locate[A,London] locate[B,Bristol]
 locate[B,Brighton] locate[B,London] locate[C,Bristol] locate[C,Brighton]
 locate[C,London] locate[D,Bristol] locate[D,Brighton] locate[D,London]
 locate[E,Bristol] locate[E,Brighton] locate[E,London]
End
