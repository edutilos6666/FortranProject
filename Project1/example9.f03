program example1 
  implicit none 
! type declaration 
 type Person 
    integer :: id , age 
    character(len = 50 ) :: fname, lname 
    real :: wage 
    logical :: active 
  end type Person 
 
  type(Person) :: person1
 
 call test_complex
  print *, ""
  call test1
  print *, ""
  call test2 
  print *, "" 
  call test3
  print *, ""
  call test4
  print *, ""
  call test5
  print *, ""
  call test6
  print *, ""
  call test7
  print *, "" 
   call test8
  print *, ""
   call test9
  print *, ""
    call test10 
   print *, ""
   call test11
   print *, "" 
   call test12
  print *, "" 
   call test13
   print *, ""
   call test14
   print *, "" 
   call test15
   print *, ""
   call test16
   print *, ""
   call test17
   print *, "" 
   call test18
   print *, "" 
  
    person1%id = 2 
    person1%fname = "edu" 
    person1%lname = "tilos" 
    person1%age = 20 
    person1%wage = 200.0 
    person1%active = .false.
    call test19(person1)
    print *, "" 
    call test20
contains
   subroutine test20
     type(Person) :: people(2), p2 
    people(1)%id = 1 
    people(1)%fname = "foo"
    people(1)%lname = "bar" 
    people(1)%age = 10 
    people(1)%wage = 100.0 
    people(1)%active = .true.

    p2 = people(2) 
    p2%id = 2 
    p2%fname = "edu" 
    p2%lname = "tilos"
    p2%age = 20 
    p2%wage = 200.0 
    p2%active = .false.
    people(2) = p2
    print *, "<<people(1)>>"
    print *, "id = ", people(1)%id 
    print *, "fname = ", people(1)%fname 
    print *, "lname = ", people(1)%lname 
    print *, "age = ", people(1)%age 
    print *, "wage = ", people(1)%wage 
    print *, "active = ", people(1)%active 
    print *, ""
    print *, "<<people(2)>>" 
    print *, "id = " , people(2)%id 
    print *, "fname = ", people(2)%fname 
    print *, "lname = ", people(2)%lname 
    print *, "age = ", people(2)%age
    print *, "wage = ", people(2)%wage
    print *, "active = ", people(2)%active 
   end subroutine test20 

    subroutine test19(person1)
      type(Person) , intent(in) :: person1 
      print *, "id = " , person1%id 
     print *, "fname = ", person1%fname 
     print *, "lname = ",  person1%lname 
     print *, "age = ",  person1%age 
     print *, "wage = ", person1%wage 
     print *, "active = ", person1%active
   end subroutine test19 
    subroutine test18 
      type(Person) :: p1
     p1%id = 1 
     p1%fname = "foo"
     p1%lname = "bar"
     p1%age = 10 
     p1%wage = 100.0 
     p1%active = .true.
     print *, "id = ", p1%id 
     print *, "fname = ", p1%fname 
     print *, "lname = ", p1%lname 
     print *, "age = ", p1%age 
     print *, "wage = ", p1%wage 
     print *, "active = ", p1%active  
   end subroutine test18 

    subroutine test17 
      integer :: numbers(5), i, matrix(5, 5) , j  
     do i = 1 , 5 
         numbers(i) =  i*i 
     end do 

       do i = 1, 5
     print *, "numbers(" , i , ")= ", numbers(i) 
    end do 
    print *, ""
   numbers = (/10, 20 ,30, 40, 50/)
    do i = 1, 5
    print *, "numbres(", i, ")= " , numbers(i)
   end do 


    do i = 1, 5 
       do j = 1, 5
           matrix(i,j) = i*i + j*j 
       end do 
    end do 

    print *, "" 
    do i = 1, 5 
      do j = 1 , 5 
        print *, "matrix(i,j) = ", matrix(i,j)
      end do 
      print *, ""
    end do 
   end subroutine test17 

    subroutine test16 
      integer :: x = 10 
       real :: y = 10 
        complex :: z = complex(10 , 10 ) 

       print * , "kind x = " , kind(x)
       print *, "kind y = " , kind(y) 
       print *, "kind z = ", kind(z) 
    end subroutine 

   subroutine test15 
       integer :: i
     do i = 1, 10  
       if (i == 5) then 
        cycle 
       end if 
       print *, "i = ", i 
    end do 
   end subroutine test15 

    subroutine test14
       integer :: i , j , k 
      iloop: do i = 1,3
       jloop: do j = 1, 3
        kloop: do k = 1, 3
          print *, "i,j,k = ", i, j, k 

           if(k == 2) then 
              exit 
           end if 
         end do kloop 
        end do jloop 
       end do iloop 
    end subroutine test14

    subroutine test13
      integer :: fact = 1 
     integer :: n = 1 
     do while(n <= 10 ) 
       fact = fact * n 
         print *, n , " => ", fact 
        n = n + 1 
    end do 
    end subroutine test13
  
     subroutine test12
        integer :: fact = 1 
       integer :: n 
      do n = 1, 10 
        fact = fact * n 
        print *, n , " => " , fact 
      end do 

      ! print *, "10! = " , fact 
    end subroutine test12

   subroutine test11
       character(len = 1) :: grade = 'C'
       integer :: age = 20 
     
    select case(grade) 
    case('A')
    print *, "excellent"
    case('B')
    print *, "very good" 
    case('C')
    print *, "good" 
    case('D')
    print *, "satisfactory"
    case('E')
    case('F')
    print *, "failed"
    case default 
   print *, "unknown grade"
    end select    
  
    print *, ""
    select case(age) 
   case(0:9)
   print *, "you are a kid." 
   case(10:19) 
   print *, "you are a teen."
   case(20:39)
   print *, "you are an adult."
   case(40:59)
    print *, "you are an elderly."
   case default 
    print *, "you are too old."
   end select 

   end subroutine test11

   subroutine test10
     ! test if else if else 
      integer :: age = 15 
      character(len = 100) :: str
     if (age >= 0  .and. age < 10) then 
       str = "you are a kid." 
     else if(age>=10 .and. age < 20) then 
       str = "you are a teen."
     else if(age >=20 .and. age < 40) then 
       str = "you are an adult." 
     else if(age >= 40 .and. age < 100) then 
       str = "you are an elderly."
     else
       str = "it's time to pack your luggage for a travel to another life."
     end if     

     print *, str 
   end subroutine test10 

    subroutine test9
     character(len = 3) :: fname , lname 
     character(len= 6) ::  fullname 
      fname = "foo" 
      lname = "bar" 
      fname = trim(fname) 
      lname = trim(lname) 
      fullname = fname // lname 
       print * , "fullname = ", fullname
    end subroutine 
 
   subroutine test8 
      character(len= 10 ) :: x, y, z
      character(len = 30) :: res
     character(len = 8) :: dateinfo
     character(len = 10) :: timeinfo  
    character(len = 4) :: year 
    character(len = 2) :: month, day 
    character(len = 2) :: hour , minute , second 
    character(len = 3) :: ms 
     x = "foo" 
     y = "bar"
     z = "bim"
    
    res = x // y // z 
     print *, "res = " , res 


       call date_and_time(dateinfo, timeinfo)
        year = dateinfo(1:4) 
        month = dateinfo(5:6)
        day = dateinfo(7:8)
       hour = timeinfo(1:2)
       minute = timeinfo(3:4) 
       second = timeinfo(5:6)
       ms = timeinfo(8:10)
       print *, "dateinfo = ", dateinfo 
       print *, "timeinfo = ", timeinfo
       print *, "year = ", year 
       print *, "month = ", month 
       print * , "day = ", day 
       print *, "hour = " , hour 
       print *, "minute = ", minute 
       print *, "second = ", second 
       print *, "ms = ", ms 
   end subroutine test8 

  subroutine test7 
     integer(kind = 8) :: id 
     character(len = 50) :: fname , lname 
     integer :: age 
    real :: wage 
     logical :: active 
     id = 1 
     fname = "foo" 
     lname = "bar"
     age = 10 
     wage = 100.0 
     active = .true.
     print *, "id = " , id 
     print *, "fname = ", fname 
     print *, "lname = ", lname 
     print *, "age = ", age 
     print *, "wage = ", wage 
  end subroutine test7 

  subroutine test6 
     character(len = 50) :: fname , lname, age, wage, active 
     fname = "foo" 
     lname = "bar"
     age = "10" 
     wage = "100.0" 
     active = "true" 
     print *, "fname = ", fname 
     print *, "lname = ", lname 
     print *, "age = ", age 
     print *, "wage = ", wage 
     print *, "active = ", active 
  end subroutine test6 

   subroutine test5 
   ! test relational operators 
   real :: x , y
   logical :: res_eq , res_ne , res_gt , res_lt, res_ge , res_le 
    x = 10 
    y = 3 
    res_eq = (x == y) 
    res_ne = (x /= y) 
    res_gt = (x > y) 
    res_lt = (x < y) 
    res_ge = (x >= y) 
    res_le = (x <= y) 
    print *, "eq = ", res_eq 
    print *, "ne = ", res_ne 
    print *, "gt = ", res_gt 
    print *, "lt = ", res_lt 
    print *, "ge = ", res_ge 
    print *, "le = ", res_le 
   end subroutine test5 

   subroutine test4 
    ! test arithmetic operators 
     integer(kind = 8) :: x ,y 
     integer (kind = 8) :: res_add , res_subtract , res_mult , res_divide , res_pow
    x = 10 
    y = 3 
    res_add = x + y
    res_subtract = x - y
    res_mult = x * y 
    res_divide = x / y 
    res_pow = x ** y 
    print *, "add = ", res_add 
    print *, "subtract = ", res_subtract 
    print *, "mult = ", res_mult 
    print *, "divide = ", res_divide 
    print *, "pow = ", res_pow
   end subroutine test4
 
   subroutine test3 
     logical :: a , b 
    logical :: and_res , or_res , not_res , eqv_res , neqv_res 
     a= .true. 
     b = .false. 
     and_res = a .and. b 
     or_res = a .or. b 
     not_res =  .not. b 
     eqv_res = a .eqv. b 
     neqv_res = a .neqv. b 
     print *, "and_res = " , and_res 
     print *, "or_res = ", or_res 
     print *, "not_res = ", not_res 
     print *, "eqv_res = ", eqv_res 
     print *, "neqv_res = ", neqv_res 
  end subroutine test3 

 
   subroutine test2 
    integer(kind = 2) :: shortval 
    integer(kind = 4) :: intval 
    integer(kind = 8) :: longval 
    integer(kind = 16) :: verylongval 
    integer :: defval
    print *, "shortval = ", huge(shortval)
    print *, "intval = ", huge(intval) 
    print *, "longval = ", huge(longval) 
    print *, "verylongval = ", huge(verylongval)
    print *, "defval = ", huge(defval)
  end subroutine test2   


  subroutine test1
    complex :: x , y 
    complex :: res_add , res_subtract , res_mult , res_divide 
    x = complex(10 , 3) 
    y = complex(4, 5) 
    res_add = complex_add(x, y) 
    res_subtract = complex_subtract(x, y) 
    res_mult = complex_mult(x, y) 
    res_divide = complex_divide(x, y) 
    print *, "add = ", res_add 
    print *, "subtract = ", res_subtract 
    print *, "mult = ", res_mult 
    print *, "divide = ", res_divide   
  end subroutine test1  
  
 function complex_add(x , y)
  complex :: x , y, complex_add 
  complex_add = x + y 
 end function complex_add 

 function complex_subtract(x, y) 
   complex :: x , y , complex_subtract 
   complex_subtract = x - y
 end function complex_subtract 

  function complex_mult (x, y) 
   complex :: x , y, complex_mult 
    complex_mult = x * y 
 end function complex_mult

  function complex_divide (x , y) 
    complex :: x , y,  complex_divide 
    complex_divide = x / y  
  end function complex_divide  
subroutine test_complex
   complex :: x1 , x2
   complex :: res_add , res_subtract , res_mult , res_divide 
   x1 = complex(10 , 12) 
   x2 = complex(5, 4) 
   res_add =  x1 + x2 
   res_subtract = x1 - x2 
   res_mult = x1 * x2 
   res_divide = x1 / x2 
   
   print *, "x1 = ", x1 
   print *, "x2 = ", x2
   print *, "add = ", res_add 
   print *, "subtract = ", res_subtract 
   print *, "multiply = " , res_mult 
   print *, "divide = ", res_divide
end subroutine test_complex 

end program example1 
