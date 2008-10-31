
      PROGRAM arrays
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) II
      INTEGER(w2f__i4) IX(1 : 10)
      REAL(w2f__8) X(1 : 20)
      REAL(w2f__8) Y
C
C     **** Statements ****
C
1     CONTINUE
      GO TO 2
2     CONTINUE
      X(1 : 20) = 2.5
      Y = 3.5D00
      IX(1 : 10) = 5
      I = 10
      X(1) = (X(1) * X(4) + 3.14149999618530273438D00 - Y)
      IX(4) = (II +(IX(1) / IX(2)))
      WRITE(*, *) 'x(1) = ', X(1), '"ix(4)" = ', IX(4)
      
      GO TO 3
3     CONTINUE
      END PROGRAM
