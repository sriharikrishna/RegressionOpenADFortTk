
      MODULE globals
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i4) A
      INTEGER(w2f__i4) B
      REAL(w2f__8) X
      REAL(w2f__8) Y
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE compute(X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      REAL(w2f__8) X
      REAL(w2f__8) Y
C
C     **** Statements ****
C
      X = (X / Y)
      Y = (Y * 7.88999974727630615234D-01 +(-2.0D00))
      END SUBROUTINE

      SUBROUTINE myloop(X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      REAL(w2f__8) X
      REAL(w2f__8) Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL compute
C
C     **** Statements ****
C
1     CONTINUE
      GO TO 2
2     CONTINUE
      GO TO 3
3     CONTINUE
      IF(X .GT. 0.0D00) THEN
        GO TO 4
      ELSE
        GO TO 9
      ENDIF
4     CONTINUE
      WRITE(*, *) 'x =', X
      WRITE(*, *) 'y =', Y
      CALL compute(X, Y)
      WRITE(*, *) 'x =', X
      WRITE(*, *) 'y =', Y
      GO TO 5
5     CONTINUE
      IF(Y .LT. 0.0D00) THEN
        GO TO 9
      ELSE
        GO TO 6
      ENDIF
6     CONTINUE
      GO TO 7
7     CONTINUE
      GO TO 8
8     CONTINUE
      GO TO 3
9     CONTINUE
      GO TO 10
10    CONTINUE
      END SUBROUTINE

      PROGRAM scopingtest
      use w2f__types
      use globals
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      EXTERNAL myloop
C
C     **** Statements ****
C
      X = 2.0D00
      Y = 8.0D00
      CALL myloop(X, Y)
      
      END PROGRAM
