     program demo_dexpdf
     !@(#) line plotter graph
     !@(#) of probability density function for Laplace distribution
     use M_datapac, only : dexpdf, plott
     implicit none
     real,allocatable  :: x(:), y(:)
     integer           :: i
        x=[(real(i),i=-100,100,1)]
        if(allocated(y))deallocate(y)
        allocate(y(size(x)))
        do i=1,size(x)
           call dexpdf(x(i)/10.0,y(i))
        enddo
        call plott(x,y,size(x))
     end program demo_dexpdf
