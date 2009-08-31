
      SUBROUTINE getlabel(J)
      use w2f__types
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) J
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      SAVE I
C
C     **** Initializers ****
C
      DATA I / 5 /
C
C     **** Statements ****
C
      I = (I +(-1))
      J = I
      END SUBROUTINE

      PROGRAM cg
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      EXTERNAL getlabel
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) V
      SAVE V
      INTEGER(w2f__i4) select_expr_temp_0
C
C     **** Initializers ****
C
      DATA V / 1 /
C
C     **** Statements ****
C
1     CONTINUE
      GO TO 2
2     CONTINUE
      GO TO 3
3     CONTINUE
      CALL getlabel(I)
      WRITE(*, *) I
      select_expr_temp_0 = I
      GO TO 4
4     CONTINUE
      IF ( select_expr_temp_0  .EQ.  2)  GO TO  8
      IF ( select_expr_temp_0  .EQ.  3)  GO TO  7
      IF ( select_expr_temp_0  .EQ.  4)  GO TO  6
      GO TO 5
5     CONTINUE
      STOP 'problem'
      GO TO 10
6     CONTINUE
      V = (V * 2)
      GO TO 3
7     CONTINUE
      V = (V +(-1))
      GO TO 3
8     CONTINUE
      GO TO 9
9     CONTINUE
C     2 print *,v
      WRITE(*, *) V
      
      GO TO 10
10    CONTINUE
      END PROGRAM
