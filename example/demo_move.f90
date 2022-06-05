     program demo_move
     use M_datapac, only : move
     real,allocatable :: x(:), y(:)
        x=[10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0,110.0,120.0]
        if(allocated(y))deallocate(y)
        y=99.0
        allocate(y(size(x)))
        call MOVE(X,4,5,1,Y)
        write(*,*)int(y)
     end program demo_move
