
      MODULE m
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE  T
        REAL(w2f__4) X
        REAL(w2f__4) Y(1 : 2)
      END TYPE
      
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE foo(X, Y)
      use w2f__types
      use m
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      REAL(w2f__4) X
      REAL(w2f__4) Y
C
C     **** Local Variables and Functions ****
C
      TYPE (T) AT(1 : 2)
C
C     **** Statements ****
C
      AT(1)%X = X
      AT(2)%Y(1 : 2) = AT(1)%X
      Y = AT(2)%Y(1)
      END SUBROUTINE

      PROGRAM p
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      REAL(w2f__4) X
      REAL(w2f__4) Y
C
C     **** Statements ****
C
      X = 2.0
      CALL foo(X, Y)
      WRITE(*, *) Y
      
      END PROGRAM
