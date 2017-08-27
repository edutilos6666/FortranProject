program example5
  implicit none 
  real :: x , y
  x = 10 
  y = 3 
  print *, "Before swap = " , x , y 
  call swap_numbers(x, y) 
  print *, "After swap = ", x, y
end program example5

subroutine swap_numbers(x, y) 
  implicit none 
  real :: x, y, temp 
   temp = x 
   x = y 
   y = temp 
end subroutine swap_numbers 
