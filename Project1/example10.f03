module SimpleMath 
  implicit none 
   ! constant type declarations 
   real :: pi = 3.18 , e= 2.189

 contains 
   function add(x, y) 
     implicit none 
     integer :: x , y, add 
     add = x + y  
   end function add

   function subtract(x, y) 
     implicit none 
     integer :: x ,y , subtract 
     subtract = x -y 
   end function subtract 
 
   function multiply(x, y) result(res) 
     implicit none 
     integer :: x, y, res 
     res = x * y 
   end function 

   function divide(x, y) result(res) 
     implicit none 
     integer  :: x, y, res 
     res = x / y 
   end function 
   
 
end module SimpleMath 

program example10 
 use SimpleMath 
implicit none 
   ! type declarations 
    integer :: x , y 
    ! integer :: add , subtract , multiply , divide 
    integer :: res_add , res_subtract ,res_multiply, res_divide 
    x = 10 
    y = 3 
    res_add = add(x, y) 
    res_subtract = subtract(x, y) 
    res_multiply = multiply(x, y) 
    res_divide = divide(x, y) 

    print *, "add = ", res_add 
    print *, "subtract = ", res_subtract 
    print *, "multiply = ", res_multiply 
    print *, "divide = ", res_divide 
     print *, "" 
     call test1
    print *, ""
   ! call test2
   print *, "" 
    ! call test3
    call test4
     call test5
  contains 
  
     subroutine test5 
       !reading from file 2 
       integer :: id , age 
       real :: wage 
        logical :: active 
       character(len = 3) :: fname 
        integer, parameter :: infile = 1 
        character(len= 10) :: filename = "bar.txt"
        open(infile, file=filename , action = "read", status="old")
       do 
        ! read(infile ,'(IIFAA)',  end = 999) id, age, wage, active , fname 
         read(infile, *, end = 999) id , age, wage , active , fname        
 print *, id , age, wage, active , fname 

        end do 
        999 continue    
         close(infile)
  
       

     end subroutine test5 
    subroutine test4 
    ! reading from file 
     character(len = 100) :: line 
     integer , parameter :: infile = 1 
    open(infile , file= "foo.txt", action="read", status="old")
     do 
        read(infile, '(A)', end = 999) line 
        print *, line 
      end do 
     999 continue 
     close(infile)
    end subroutine test4 


    subroutine test3 
    !write into file 
    integer :: id , age  
    character(50) :: fname, lname 
    real :: wage 
    logical:: active 
    integer , parameter :: outfile = 1 

     id = 1 
     fname = "foo"
     lname = "bar"
      age = 10
      wage = 100.0 
      active = .true.

     open(outfile, file = "foo.txt" , action ="write", status = "new")
     write(outfile, *) "id = " , id 
     write(outfile, *) "fname = ", fname 
     write(outfile, *) "lname = ", lname 
     write(outfile, *) "age = ", age 
     write(outfile, *) "wage = ", wage 
     write(outfile, *) "active = ", active 
     close(outfile)
  end subroutine test3 

    subroutine test2 
      integer:: id, age 
      character(len = 50) :: fname, lname 
      real :: wage 
      logical :: active 

      write(*,*) "enter id : "
      read *, id 
      write(*,*) "enter fname: "
     read *, fname 
      write(*,*) "enter lname: "
      read *, lname 
      write(*,*) "enter age and wage: "
      read *, age , wage 
      write(*,*) "enter active: "
      read *, active 

     write(*,*) "id = " , id 
     write(*, *) "fname = ", fname   
     write(*,*) "lname = ", lname 
     write(*,*) "age = ", age 
     write(*,*) "wage = ", wage 
     write(*,*) "active = ", active  
    end subroutine test2  

    subroutine test1 
      integer :: id , age 
      character(len = 50) :: fname, lname 
      real :: wage 
      logical :: active 

       id = 1
       fname = "foo"
       lname = "bar" 
       age = 10 
       wage = 100 
       active = .true. 

      write(*,*) "id = " , id
      write(*,*) "fname = " , fname 
      write(*,*) "lname = ", lname 
      write(*,*) "age = " , age 
      write(*,*) "wage = ", wage 
      write(*,*) "active = ", active 
    end subroutine test1 

end program example10
