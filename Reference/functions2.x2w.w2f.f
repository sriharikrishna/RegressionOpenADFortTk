
      RECURSIVE Function factorial(N)
      use w2f__types
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) N
      INTEGER(w2f__i4) factorial
C
C     **** Statements ****
C
      IF(N .eq. 1) THEN
        factorial = 1
      ELSE
        factorial = N * factorial((N +(-1)))
      ENDIF
      RETURN
      END FUNCTION

      PROGRAM recfunc
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      EXTERNAL factorial
      REAL(w2f__4) factorial
      INTEGER(w2f__i4) N
      SAVE N
C
C     **** Initializers ****
C
      DATA N / 7 /
C
C     **** Statements ****
C
      N = INT(factorial(N))
      
      END PROGRAM
