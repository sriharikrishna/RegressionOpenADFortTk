
      PROGRAM pragmatest
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) A(1 : 10)
      REAL(w2f__8) B(1 : 10)
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) IX
      INTEGER(w2f__i4) JJJ
      REAL(w2f__8) X
      REAL(w2f__8) Y
C
C     **** Statements ****
C
      X = (X * X + 3.14149999618530273438D00 - Y)
      IX = JJJ + 1
      A(1 : 10) = 3
      B(1 : 10) = 5
C*$*UNROLL(2)
      DO I = 1, 10, 1
        A(INT(I)) = (A(I) + B(I))
      END DO
      
      END PROGRAM
