
      PROGRAM array_dimensions
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__4) A(1 : 10)
      REAL(w2f__4) B(1 : 10, 1 : 10)
      REAL(w2f__4) C(1 : 10, 1 : 10, 1 : 10)
      REAL(w2f__4) D(1 : 10, 1 : 10, 1 : 10, 1 : 10)
      REAL(w2f__4) E(1 : 10, 1 : 10, 1 : 10, 1 : 10, 1 : 10)
      REAL(w2f__4) F(1 : 10, 1 : 10, 1 : 10, 1 : 10, 1 : 10, 1 : 10)
      REAL(w2f__4) G(1 : 10, 1 : 10, 1 : 10, 1 : 10, 1 : 10, 1 : 10, 1
     >  : 10)
C
C     **** Statements ****
C
1     CONTINUE
      GO TO 2
2     CONTINUE
      A(1 : 10) = 1
      B(1 : 10, 1 : 10) = 2
      C(1 : 10, 1 : 10, 1 : 10) = 3
      D(1 : 10, 1 : 10, 1 : 10, 1 : 10) = 4
      E(1 : 10, 1 : 10, 1 : 10, 1 : 10, 1 : 10) = 5
      F(1 : 10, 1 : 10, 1 : 10, 1 : 10, 1 : 10, 1 : 10) = 6
      G(1 : 10, 1 : 10, 1 : 10, 1 : 10, 1 : 10, 1 : 10, 1 : 10) = 7
      
      GO TO 3
3     CONTINUE
      END PROGRAM
