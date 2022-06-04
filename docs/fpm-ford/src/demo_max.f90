     program demo_max
     use M_datapac, only : max
     implicit none
     real :: xmax
        call max([-100.0, 200.0, 0.0, 400.0, -200.0],5,1,xmax)
        write(*,*)xmax
     end program demo_max
