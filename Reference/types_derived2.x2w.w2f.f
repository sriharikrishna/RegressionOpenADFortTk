
      MODULE coord2d
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE  CART
        REAL(w2f__4) X
        REAL(w2f__4) Y
        CHARACTER(20) MSG
      END TYPE
      
      TYPE  POLAR
        REAL(w2f__4) R
        REAL(w2f__4) THETA
        CHARACTER(20) MSG
      END TYPE
      
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE cart2polar(C, P)
      use w2f__types
      use coord2d
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (CART) C
      INTENT(IN)  C
      TYPE (POLAR) P
      INTENT(OUT)  P
C
C     **** Statements ****
C
      P%R = ((C%X ** 2) +(C%Y ** 2))
      IF(P%R .eq. INT(0_w2f__i8)) THEN
        P%THETA = 0
      ELSE
        P%THETA = SIN(DBLE(C%Y / P%R))
      ENDIF
      P%MSG = 'because'
      END SUBROUTINE

      PROGRAM dosomething
      use w2f__types
      use coord2d
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      TYPE (CART) C
      EXTERNAL cart2polar
      INTEGER(w2f__i4) N
      TYPE (POLAR) P
      TYPE (CART) t__1
C
C     **** Statements ****
C
      t__1%X = N
      t__1%Y = 9
      t__1%MSG = 'why?'
      C = t__1
      CALL cart2polar(C, P)
      WRITE(*, *) 'cart c =', C
      WRITE(*, *) 'polar p =', P
      
      END PROGRAM
