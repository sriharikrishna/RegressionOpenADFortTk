
      PROGRAM nestedfunc
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
      N = FOO(N)
      
      CONTAINS

        Function FOO(N)
        use w2f__types
        IMPLICIT NONE
C
C       **** Parameters and Result ****
C
        INTEGER(w2f__i4) N
        INTEGER(w2f__i4) FOO
C
C       **** Statements ****
C
        IF(N .eq. 1) THEN
          FOO = 1
        ELSE
          FOO = 5
        ENDIF
        RETURN
        END FUNCTION
      END
