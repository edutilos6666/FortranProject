program example2
implicit none 
! type declarations 
 real :: a, b, res_sum, res_sub, res_mult , res_div 
!executable statements 
   a = 10 
   b = 3	
   res_sum = a + b 
   res_sub = a - b 
   res_mult = a * b 
   res_div = a / b 
   print *, "sum = " , res_sum 
   print *, "sub = ", res_sub 
   print *, "mult = ", res_mult 
   print *, "div = ", res_div
end program example2 
