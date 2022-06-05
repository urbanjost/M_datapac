module M_datapac
use,intrinsic :: iso_fortran_env, only : stdin=>input_unit,  stdout=>output_unit, stderr=>error_unit
use M_datapac_s
use M_datapac_d
public :: skipr
private :: G_io
integer, save           :: G_IO=stdout  ! IO LUN for all write statements
contains
!>
!!##NAME
!!    skipr(3f) - [M_datapac:STATISTICS] skip over a user-specified number
!!    of rows in reading a data file
!!
!!##SYNOPSIS
!!
!!       SUBROUTINE SKIPR(Nlhead)
!!
!!##DESCRIPTION
!!    skipr(3f) reads through (skips over) nlhead lines from input unit = 5.
!!
!!    if header information exists at the beginning of a data file,
!!    skipr(3f) is convenient for reading through (skipping over) that
!!    header information.
!!
!!##OPTIONS
!!     X   description of parameter
!!     Y   description of parameter
!!
!!##EXAMPLES
!!
!!   Sample program:
!!
!!    program demo_skipr
!!    use M_datapac, only : skipr
!!    implicit none
!!    character(len=*),parameter ::  g='(*(g0,1x))'
!!    ! call skipr(x,y)
!!    end program demo_skipr
!!
!!   Results:
!!
!!##AUTHOR
!!    The original DATAPAC library was written by James Filliben of the Statistical
!!    Engineering Division, National Institute of Standards and Technology.
!!##MAINTAINER
!!    John Urban, 2022.05.31
!!##LICENSE
!!    CC0-1.0
! processed by SPAG 7.51RB at 12:54 on 18 Mar 2022
SUBROUTINE SKIPR(Nlhead)
INTEGER i , ia , ird , Nlhead
!
!     INPUT ARGUMENTS--NLHEAD = THE INTEGER NUMBER OF CARD
!                                IMAGES TO BE READ THROUGH
!                                (SKIPPED OVER).
!     PRINTING--NO.
!     RESTRICTIONS--NLHEAD IS A NON-NEGATIVE INTEGER VARIABLE.
!     MODE OF INTERNAL OPERATIONS--INTEGER.
!     ORIGINAL VERSION--SEPTEMBER 1975.
!     UPDATED         --NOVEMBER  1975.
!     UPDATED         --MAY       1976.
!     UPDATED         --OCTOBER   1976.
!
!---------------------------------------------------------------------
!
      ird = 5
!
!     CHECK THE INPUT ARGUMENTS FOR ERRORS
!
      IF ( Nlhead<0 ) THEN
         WRITE (G_IO,99001)
99001    FORMAT (' ',                                                   &
     &'***** FATAL ERROR--THE FIRST  INPUT ARGUMENT TO THE SKIPR  SUBROU&
     &TINE IS NEGATIVE *****')
         WRITE (G_IO,99002) Nlhead
99002    FORMAT (' ','***** THE VALUE OF THE ARGUMENT IS ',I8,' *****')
         RETURN
      ELSE
!
!-----START POINT-----------------------------------------------------
!
!     SKIP OVER THE HEADER LABEL
!
         IF ( Nlhead==0 ) RETURN
         DO i = 1 , Nlhead
            READ (ird,99003) ia
99003       FORMAT (A1)
         ENDDO
      ENDIF
!
END SUBROUTINE SKIPR
end module M_datapac
