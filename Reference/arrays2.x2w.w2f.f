
      SUBROUTINE compute1()
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__4) A(1 : 20)
      REAL(w2f__4) B(1 : 20)
      REAL(w2f__4) C(1 : 20)
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) TI(1 : 5)
      REAL(w2f__4) TR(1 : 5)
      REAL(w2f__4) X
C
C     **** Statements ****
C
1     CONTINUE
      GO TO 2
2     CONTINUE
      X = 5.0
      TR(INT(IABS(1))) = X
      TR(2) = 9
      TR(3) = 68
      GO TO 3
3     CONTINUE
      I = 1
      GO TO 16
4     CONTINUE
      I = I + 1
16    CONTINUE
      IF(I .LE. 20) THEN
        GO TO 5
      ELSE
        GO TO 8
      ENDIF
5     CONTINUE
      TI(1) = I
      A(TI(1)) = TR(1)
      B(TI(1)) = TR(2)
      C(TI(1)) = TR(3)
      GO TO 6
6     CONTINUE
      GO TO 7
7     CONTINUE
      GO TO 4
8     CONTINUE
      GO TO 9
9     CONTINUE
      I = 1
      GO TO 17
10    CONTINUE
      I = I + 1
17    CONTINUE
      IF(I .LE. 20) THEN
        GO TO 11
      ELSE
        GO TO 14
      ENDIF
11    CONTINUE
      A(INT(I)) = ((DBLE(A(I)) / DBLE(3.0999999046)) + DBLE(B(I)) *
     >  SQRT(DBLE(C(I))))
      WRITE(*, *) 'a(', I, ')=', A(I)
      GO TO 12
12    CONTINUE
      GO TO 13
13    CONTINUE
      GO TO 10
14    CONTINUE
      GO TO 15
15    CONTINUE
      END SUBROUTINE

      SUBROUTINE compute2()
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__4) A(1 : 20)
      REAL(w2f__4) B(1 : 20)
      REAL(w2f__4) C(1 : 20)
      REAL(w2f__4) X
C
C     **** Statements ****
C
18    CONTINUE
      GO TO 19
19    CONTINUE
      X = 5.0
      A(1 : 20) = X
      B(1 : 20) = 9
      C(1 : 20) = 68
      A(1 : 20) = ((DBLE(A(1 : 20)) / DBLE(3.0999999046)) + DBLE(B(1 :
     >  20)) * SQRT(C))
      WRITE(*, *) 'a =', A
      GO TO 20
20    CONTINUE
      END SUBROUTINE

      PROGRAM f77_f90_arrays
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      EXTERNAL compute1
      EXTERNAL compute2
      REAL(w2f__8) X
      REAL(w2f__8) Y
C
C     **** Statements ****
C
21    CONTINUE
      GO TO 22
22    CONTINUE
      X = 2.0D00
      Y = 8.0D00
      CALL compute1()
      CALL compute2()
      
      GO TO 23
23    CONTINUE
      END PROGRAM
