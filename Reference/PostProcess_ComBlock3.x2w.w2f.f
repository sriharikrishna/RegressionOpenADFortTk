
      SUBROUTINE foo(A)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      SAVE /cb/
      COMMON /cb/ D, CBV
      REAL(w2f__8) D
      type(active) :: CBV
C
C     **** Parameters and Result ****
C
      type(active) :: A
C
C     **** Statements ****
C
      CBV%v = (A%v*CBV%v)
      A%v = CBV%v
      END SUBROUTINE

      PROGRAM p
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      SAVE /cb/
      COMMON /cb/ D, CBV
      REAL(w2f__8) D
      type(active) :: CBV
      type(active) :: F
      EQUIVALENCE(tmp0(1), D)
      EQUIVALENCE(tmp0(9), F)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      type(active) :: X
      type(active) :: Y
C
C     **** Temporary Variables ****
C
      INTEGER(w2f__i1) tmp0(1 : 16)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
      X%v = 2.0D00
      F%v = X%v
      CBV%v = (CBV%v+1.0D00)
      CALL foo(X)
      Y%v = (X%v*F%v)
      CALL foo(Y)
      WRITE(*,*) Y%v
      
      END PROGRAM
