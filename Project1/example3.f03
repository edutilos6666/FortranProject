program example3 
  ! implicit none 
  ! type declarations 
  real :: x , y, res_add , res_sub , res_mult , res_divide 
  real ::  add , sub, multiply , divide
  ! execution stmt 
   x = 10 
   y = 3 
   res_add = add(x, y) 
   res_sub = sub(x, y) 
   res_mult = multiply (x, y) 
   res_divide = divide (x, y) 
   print *, "add = " , res_add 
   print *, "sub = " , res_sub 
   print * , "mult = ", res_mult 
   print *, "divide = ", res_divide 
 
end program example3 

function add(x, y) 
  implicit none 
  real :: add  , x, y
  add = x + y  
end function add 


function sub(x, y)
  implicit none 
  real :: sub  , x, y 
  sub = x - y 
end function sub 

function multiply(x, y)
  implicit none 
  real :: multiply , x , y
  multiply = x * y 
end function multiply 


function divide(x, y)
  implicit none
  real :: divide  , x, y
  divide = x / y 
end function divide

