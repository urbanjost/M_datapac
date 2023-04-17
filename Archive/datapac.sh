#!/bin/bash
cat >main.f90 <<\EOF
program demo_ranper
implicit none
integer,parameter :: n=10
integer           :: istart
real              :: x(n)
integer           :: i
   do i=1,3
      istart=i
      call  RANPER(N,Istart,X)
      write(*,*)istart
      write(*,'(*(g0.2,1x))')x
   enddo
end program demo_ranper
EOF
(
exec 2>&1
gfortran -g0 -fbacktrace -std=legacy -Wno-argument-mismatch datapac.f main.f90 -o gdp
ifort    -g0 -traceback                               datapac.f main.f90 -o idp
)
