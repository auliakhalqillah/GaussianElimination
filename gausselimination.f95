! HOW TO COMPILE THROUGH COMMAND LINE (CMD OR TERMINAL)
! gfortran -c gausselimination.f95
! gfortran -o gausselimination gausselimination.o
!
! The program is open source and can use to numeric study purpose.
! The program was build by Aulia Khalqillah,S.Si., M.Si
!
! email: auliakhalqillah.mail@gmail.com
! ==============================================================================
program gauss
    implicit none
    
    real, dimension(3,4) :: x
    real, dimension(3) :: s
    real :: const
    integer :: i,j,totalrows,totalcolumns
    
    x(1,1) = -2
    x(1,2) = 1
    x(1,3) = 2
    x(1,4) = 6
    x(2,1) = 3
    x(2,2) = -4
    x(2,3) = 8
    x(2,4) = 12
    x(3,1) = 6
    x(3,2) = -2
    x(3,3) = 1
    x(3,4) = 4
    
    ! show matrix
    do i = 1,3
        write(*,*) (x(i,j), j = 1,4)
    end do
    
    write(*,*) ""
    
    totalcolumns = 4
    totalrows = totalcolumns - 1
    do j = 1,totalrows-1
        do i = j+1,totalrows
            if (x(i,j) == x(j,j)) then
                x(i,(j):(totalcolumns)) = x(i,(j):(totalcolumns)) * (-1)
                x(i,(j):(totalcolumns)) = x((j),(j):(totalcolumns)) + x(i,(j):(totalcolumns))
            else
                if (x(i,j) == 0) then 
                    x(i,(j):(totalcolumns)) = x(i,(j):(totalcolumns))
                else    
                    const = x(i,j)/x(j,j)
                    x(i,(j):(totalcolumns)) = (x(i,(j):(totalcolumns))/const) * (-1)
                    x(i,(j):(totalcolumns)) = x((j),(j):(totalcolumns)) + x(i,(j):(totalcolumns))
                end if
            end if 
        end do
    end do

    write(*,*) 'Final Results'
    do i = 1,3
        write(*,*) (x(i,j), j = 1,4)
    end do

    ! calculate the solutions/backward subtitutions
    s(totalrows) = x(totalrows,totalcolumns)/x(totalrows,totalrows)
    do i = totalrows-1,1,-1
        write(*,*)""
        s(i) = x(i,totalcolumns)
        do j = i+1,totalrows
            s(i) = s(i) - (x(i,j) * s(j))
        end do
        s(i) = s(i)/x(i,i)
    end do 

    do i = 1,totalrows 
        write(*,*) 'Solutions',i,':',s(i)
    end do   
end program gauss