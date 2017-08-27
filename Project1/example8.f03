program example8 
  implicit none 
   real :: x, y
   ! real :: add 
   real :: res_add, res_subtract, res_multiply , res_divide 
   real :: sub_res_add , sub_res_subtract  

   x= 10 
   y = 3
   res_add = add(x, y) 
   res_subtract = subtract(x, y) 
   res_multiply = multiply(x, y) 
   res_divide = divide(x, y) 
   call sub_add(x, y, sub_res_add) 
   call sub_subtract(x, y, sub_res_subtract)

   print *, "add = ", res_add 
   print *, "subtract = ", res_subtract 
   print *, "multiply = ", res_multiply 
   print *, "divide = ", res_divide 
   print *, "sub_add = ", sub_res_add 
   print *, "sub_subtract = ", sub_res_subtract
  
contains 
  function add(x, y) 
    real :: add , x, y
    add = x + y
  end function 

  
  function subtract(x, y) 
    real :: subtract , x, y 
   subtract = x - y 
  end function subtract 

  function multiply(x, y) 
    real ::  multiply, x, y
    multiply = x*y 
 end function multiply 

  function divide(x, y) 
    real :: divide, x, y
     divide = x/y
   end function divide 

   subroutine sub_add(x, y, res) 
      real , intent(in) :: x, y
      real , intent(out) :: res 
      res = x + y 
   end subroutine sub_add

   subroutine sub_subtract(x, y, res) 
      real, intent(in) :: x, y
      real, intent(out) :: res 
      res = x - y 
   end subroutine sub_subtract  

end program example8 
