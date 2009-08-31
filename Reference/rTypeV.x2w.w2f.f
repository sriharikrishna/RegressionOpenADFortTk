
      PROGRAM rtype
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      
      EQUIVALENCE(tmp0(1), t__1)
      EQUIVALENCE(tmp0(1), A)
      REAL(w2f__8) t__1(1 : 4)
      SAVE t__1
      REAL(w2f__8) A(1 : 2, 1 : 2)
      SAVE A
C
C     **** Temporary Variables ****
C
      INTEGER(w2f__i1) tmp0(1 : 32)
      INTEGER(w2f__i8) tmp1
C
C     **** Initializers ****
C
      DATA(t__1(tmp1), tmp1 = 1, 4, 1) / 1.0D00, 2.0D00, 3.0D00, 4.0D00
     >  /
C
C     **** Statements ****
C
      A(1 : 2, 1 : 2) = TRANSPOSE(A)
      WRITE(*, *) A
      
      END PROGRAM
