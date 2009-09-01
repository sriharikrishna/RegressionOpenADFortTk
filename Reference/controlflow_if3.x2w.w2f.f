
      SUBROUTINE controlflow_if(XX, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      REAL(w2f__8) XX
      INTENT(IN)  XX
      REAL(w2f__8) Y
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) X
C
C     **** Statements ****
C
1     CONTINUE
      GO TO 2
2     CONTINUE
      X = XX
      GO TO 3
3     CONTINUE
      IF(X .GE. 0.0D00) THEN
        GO TO 7
      ELSE
        GO TO 4
      ENDIF
4     CONTINUE
      Y = 3.0D00
      GO TO 5
5     CONTINUE
      GO TO 6
6     CONTINUE
      Y = 8.8D+01
      GO TO 8
7     CONTINUE
      GO TO 8
8     CONTINUE
      Y = 8.9D+01
      GO TO 9
9     CONTINUE
      END SUBROUTINE

      PROGRAM controlflow_if3
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      EXTERNAL controlflow_if
      REAL(w2f__8) X
      REAL(w2f__8) Y
C
C     **** Statements ****
C
      X = 1.0D00
      CALL controlflow_if(X, Y)
      WRITE(*, *) Y
      
      END PROGRAM
