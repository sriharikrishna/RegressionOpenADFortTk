
      Function foo(N)
      use w2f__types
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) N
      INTEGER(w2f__i4) foo
C
C     **** Statements ****
C
      IF(N .eq. 1) THEN
        foo = 1
      ELSE
        foo = 5
      ENDIF
      RETURN
      END FUNCTION

      PROGRAM functiontest
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      REAL(w2f__4) foo
      INTEGER(w2f__i4) N
      SAVE N
C
C     **** Initializers ****
C
      DATA N / 7 /
C
C     **** Statements ****
C
      N = INT(foo(N))
      
      END PROGRAM
