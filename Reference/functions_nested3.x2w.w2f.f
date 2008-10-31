
      PROGRAM nestedrfunc
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) N
      SAVE N
C
C     **** Initializers ****
C
      DATA N / 7 /
C
C     **** Statements ****
C
      N = FACTORIAL(N)
      
      CONTAINS

        RECURSIVE Function FACTORIAL(N)
        use w2f__types
        IMPLICIT NONE
C
C       **** Parameters and Result ****
C
        INTEGER(w2f__i4) N
        INTEGER(w2f__i4) FACTORIAL
C
C       **** Statements ****
C
        IF(N .eq. 1) THEN
          FACTORIAL = 1
        ELSE
          FACTORIAL = N * FACTORIAL((N +(-1)))
        ENDIF
        RETURN
        END FUNCTION
      END
