program example7 
   implicit none 
   integer :: factorial, n, res 
   n = 10 
  res = factorial(n) 
  print *, "10! = ", res
end program example7

recursive function factorial(n) result(fact)
   implicit none 
   integer :: fact, n 

   select case(n) 
     case (0:1) 
       fact = 1 
     case default 
       fact = n * factorial(n-1) 
   end select 
   
end function 

