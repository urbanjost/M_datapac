module M_datapac_n
use,intrinsic :: iso_fortran_env, only : wp=>real64
use,intrinsic :: iso_fortran_env, only : stdin=>input_unit,  stdout=>output_unit, stderr=>error_unit
implicit none
private
integer, save           :: G_IO=stdout  ! IO LUN for all write statements
real(kind=wp),parameter :: G_pi = 3.14159265358979_wp
real(kind=wp),parameter :: G_pi_dp = 3.14159265358979d0

! ambiguous procedures without parameters dependent on real type of parameters

public :: skipr
public :: invxwx

interface  skipr;   module  procedure  skipr   ;  end  interface
interface  invxwx;  module  procedure  invxwx  ;  end  interface

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
!*==skipr.f90  processed by SPAG 7.51RB at 12:54 on 18 Mar 2022
SUBROUTINE SKIPR(Nlhead)
INTEGER i , ia , ird , Nlhead
!
!     INPUT  ARGUMENTS--NLHEAD = THE INTEGER NUMBER OF CARD
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
!>
!!##NAME
!!    invxwx(3f) - [M_datapac:STATISTICS] compute the inverse of X'WX
!!
!!##SYNOPSIS
!!
!!       SUBROUTINE INVXWX(N,K)
!!
!!##DESCRIPTION
!!    invxwx(3f) computes the inverse of x'wx which is done by computing
!!    the inverse of r'r (where r has just recently been modified before
!!    calling this subroutine. the input r = the square root of the
!!    diagonal matrix d times the old matrix r. the inverse of x'wx will
!!    be identical (except for the absence of s**2 = the residual variance)
!!    to the covariance matrix of the coefficients.
!!
!!    the only reason invxwx(3f) exists is for the calculation of such
!!    covariances.
!!
!!    unpivoting has also been done herein so as to undo the pivoting done
!!    in the decomposition subroutine (decomp). the matrix c used herein
!!    is an intermediate result matrix.
!!
!!    x--not used
!!    q--not used
!!    r--used and changed
!!    d--not used
!!    ipivot--used
!!
!!##OPTIONS
!!     X   description of parameter
!!     Y   description of parameter
!!
!!##EXAMPLES
!!
!!   Sample program:
!!
!!    program demo_invxwx
!!    use M_datapac, only : invxwx
!!    implicit none
!!    character(len=*),parameter ::  g='(*(g0,1x))'
!!    ! call invxwx(x,y)
!!    end program demo_invxwx
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
!     UPDATED         --NOVEMBER  1975.
!     UPDATED         --FEBRUARY  1976.
!*==invxwx.f90  processed by SPAG 7.51RB at 12:54 on 18 Mar 2022

SUBROUTINE INVXWX(N,K)
REAL(kind=wp) :: anegri , D , dotpro , DUM1 , DUM2 , dum3 , Q , R , ri , WS
INTEGER i , ii , im1 , ip1 , IPIvot , irarg , irarg1 , irarg2 , irarg3 , j , jj , K , l , N

!     INVERSION ALGORITHM USED--CHOLESKI DECOMPOSITION
!---------------------------------------------------------------------
!
      DIMENSION Q(10000) , R(2500) , D(50) , IPIvot(50)
      COMMON /BLOCK2/ WS(15000)
      COMMON /BLOCK3/ DUM1(3000) , DUM2(3000)
      EQUIVALENCE (Q(1),WS(1))
      EQUIVALENCE (R(1),WS(10001))
      EQUIVALENCE (D(1),WS(12501))
      EQUIVALENCE (IPIvot(1),WS(12551))
      DIMENSION dum3(200)
!
!-----START POINT-----------------------------------------------------
!
      DO i = 1 , K
         im1 = i - 1
         IF ( im1>=1 ) THEN
            DO j = 1 , im1
               irarg = (i-1)*K + j
               R(irarg) = 0.0_wp
            ENDDO
         ENDIF
      ENDDO
      DO jj = 1 , K
         j = K + 1 - jj
         DO ii = 1 , j
            i = j + 1 - ii
            ip1 = i + 1
            IF ( ip1<=K ) THEN
               DO l = ip1 , K
                  irarg1 = (i-1)*K + l
                  irarg2 = (j-1)*K + l
                  irarg3 = (l-1)*K + j
                  DUM1(l) = R(irarg1)
                  IF ( l<j ) DUM2(l) = R(irarg2)
                  IF ( l==j ) DUM2(l) = dum3(l)
                  IF ( l>j ) DUM2(l) = R(irarg3)
               ENDDO
            ENDIF
            ri = 0.0_wp
            irarg = (i-1)*K + i
            IF ( i==j ) ri = 1.0_wp/R(irarg)
            anegri = -ri
!
            CALL DOT(DUM1,DUM2,ip1,K,anegri,dotpro)
!
            irarg = (i-1)*K + i
            dotpro = -dotpro/R(irarg)
            IF ( i==j ) dum3(i) = dotpro
            irarg = (j-1)*K + i
            IF ( i<j ) R(irarg) = dotpro
         ENDDO
      ENDDO
      DO i = 1 , K
         irarg = (i-1)*K + i
         R(irarg) = dum3(i)
      ENDDO
!
!     MATRIX C NOW EQUALS THE INVERSE OF R'R.
!     NOW 'UNPIVOT' ON C AND PUT THE RESULTS BACK INTO R.
!
      DO i = 1 , K
         ii = IPIvot(i)
         DO j = 1 , i
            jj = IPIvot(j)
            irarg1 = (ii-1)*K + jj
            irarg2 = (i-1)*K + j
            irarg3 = (jj-1)*K + ii
            IF ( ii<jj ) R(irarg1) = R(irarg2)
            IF ( ii==jj ) dum3(ii) = R(irarg2)
            IF ( ii>jj ) R(irarg3) = R(irarg2)
         ENDDO
      ENDDO
      DO i = 1 , K
         irarg = (i-1)*K + i
         R(irarg) = dum3(i)
      ENDDO
END SUBROUTINE INVXWX
end module M_datapac_n
