program example6 
 implicit none 
  real :: x , y
  ! real :: add , subtract , multiply , divide 
  real :: res_add , res_subtract , res_multiply , res_divide 
  x = 10 
  y = 3 
   call add(x, y, res_add)
   call subtract(x,y, res_subtract) 
   call multiply(x, y, res_multiply) 
   call divide(x, y, res_divide) 
  
  print *, "add = ", res_add 
  print *, "subtract = ", res_subtract 
  print *, "multiply = ", res_multiply 
  print *, "divide = ", res_divide 
end program example6

subroutine add(x, y, res)
  implicit none 
   real, intent(in) :: x 
   real , intent(in) :: y 
   real , intent(out) :: res 
   res = x + y 
end subroutine add 

subroutine subtract(x, y, res)
  implicit none  
   real, intent(in) :: x, y 
   real,  intent(out) :: res 
   res = x - y
end subroutine subtract 

subroutine  multiply(x, y, res)
  implicit none  
  real , intent(in) :: x, y
  real, intent(out) :: res 
  res = x * y 
end subroutine multiply 


subroutine divide(x, y, res) 
  implicit none 
   real , intent(in) :: x, y
   real , intent(out) :: res
   res = x / y 
end subroutine divide 
