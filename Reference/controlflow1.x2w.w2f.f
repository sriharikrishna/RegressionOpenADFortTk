
      SUBROUTINE head(X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      REAL(w2f__8) X(1 : 1)
      INTENT(IN)  X
      REAL(w2f__8) Y(1 : 1)
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
C
C     **** Statements ****
C
1     CONTINUE
      GO TO 2
2     CONTINUE
      Y(1) = X(1)
      GO TO 3
3     CONTINUE
      IF(Y(1) .GT. 0.0D00) THEN
        GO TO 4
      ELSE
        GO TO 12
      ENDIF
4     CONTINUE
      GO TO 5
5     CONTINUE
      I = 1
      GO TO 13
6     CONTINUE
      I = I + 1
13    CONTINUE
      IF(I .LE. 3) THEN
        GO TO 7
      ELSE
        GO TO 9
      ENDIF
7     CONTINUE
      Y(1) = (X(1) * Y(1))
      GO TO 8
8     CONTINUE
      GO TO 6
9     CONTINUE
      GO TO 10
10    CONTINUE
      GO TO 11
11    CONTINUE
12    CONTINUE
      Y(1) = (Y(1) / X(1))
      GO TO 9
      END SUBROUTINE

      PROGRAM controlflow1
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      EXTERNAL head
      REAL(w2f__8) X(1 : 1)
      REAL(w2f__8) Y(1 : 1)
C
C     **** Statements ****
C
14    CONTINUE
      GO TO 15
15    CONTINUE
      X(1) = 2.29999999999999982236D00
      CALL head(X, Y)
      WRITE(*, *) Y(1)
      
      GO TO 16
16    CONTINUE
      END PROGRAM
