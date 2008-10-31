
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
      X = XX
      IF(X .GE. 0.0D00) THEN
        Y = 8.9D+01
      ELSE
        Y = 3.0D00
      ENDIF
      Y = 8.8D+01
      Y = 8.9D+01
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
