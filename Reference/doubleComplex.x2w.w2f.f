
      PROGRAM p
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      COMPLEX(w2f__8) DC
      REAL(w2f__8) I1
C
C     **** Statements ****
C
      I1 = 1.0D00
      DC = CMPLX(0.0D00, I1)
      WRITE(*, *) DC
      
      END PROGRAM
