program example4 
   real :: x , y
   real :: add , subtract , multiply , divide 
   real :: res_add , res_subtract , res_multiply , res_divide 
   
   x = 10 
   y = 3 
   res_add = add(x, y)
   res_subtract = subtract(x, y) 
   res_multiply = multiply (x, y) 
   res_divide = divide(x, y) 

   print * , "add = ", res_add 
   print *, "subtract = ", res_subtract 
   print *, "multiply = ", res_multiply 
   print *, "divide = ", res_divide
end program example4


function add(x, y) 
   real :: add , x , y
   add = x + y 
end function add 


function subtract(x,y) result(res) 
  real :: res, x , y
  res = x - y 
end function subtract 


function multiply(x, y) result(res) 
  real :: res , x , y
  res = x * y 
end function multiply 

function divide(x, y) 
  real :: divide , x , y
   divide = x / y 
end function divide 

