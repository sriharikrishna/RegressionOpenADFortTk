
      PROGRAM stringlen
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) A
      CHARACTER(10) S
C
C     **** Statements ****
C
      S = 'bla'
      A = LEN(TRIM(S)) * 2
      WRITE(*, *) A
      
      END PROGRAM
