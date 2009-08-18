
      SUBROUTINE compute(X, Y)
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
      REAL(w2f__8) Z
C
C     **** Statements ****
C
      X = (X / Y)
      Y = (Y * 7.88999974727630615234D-01 +(-2.0D00))
      Z = (Y ** 5)
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
      GO TO 4
4     CONTINUE
      IF(X .GT. 0.0D00) THEN
        GO TO 5
      ELSE
        GO TO 12
      ENDIF
5     CONTINUE
      CALL compute(X, Y)
      WRITE(*, *) 'x =', X
      WRITE(*, *) 'y =', Y
      GO TO 6
6     CONTINUE
      IF(Y .LT. 0.0D00) THEN
        GO TO 7
      ELSE
        GO TO 9
      ENDIF
7     CONTINUE
      RETURN
      GO TO 8
8     CONTINUE
9     CONTINUE
      GO TO 10
10    CONTINUE
      GO TO 11
11    CONTINUE
      GO TO 3
12    CONTINUE
      GO TO 13
13    CONTINUE
      GO TO 14
14    CONTINUE
      GO TO 8
      END SUBROUTINE

      PROGRAM controlflow
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      EXTERNAL myloop
      REAL(w2f__8) X
      REAL(w2f__8) Y
C
C     **** Statements ****
C
      X = 2.0D00
      Y = 8.0D00
      CALL myloop(X, Y)
      
      END PROGRAM
