
      PROGRAM selgoto
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) select_expr_temp_0
C
C     **** Statements ****
C
1     CONTINUE
      GO TO 2
2     CONTINUE
      I = 1
      J = 0
      GO TO 3
3     CONTINUE
      IF(I .LT. 3) THEN
        GO TO 12
      ELSE
        GO TO 4
      ENDIF
4     CONTINUE
      GO TO 5
5     CONTINUE
      GO TO 6
6     CONTINUE
      select_expr_temp_0 = I
      GO TO 7
7     CONTINUE
      IF(select_expr_temp_0 .ne. 0) THEN
        GO TO 9
      ELSE
        GO TO 8
      ENDIF
8     CONTINUE
      J = 1
      GO TO 10
9     CONTINUE
      J = 2
      GO TO 10
10    CONTINUE
      GO TO 11
11    CONTINUE
      GO TO 13
12    CONTINUE
      GO TO 13
13    CONTINUE
C     1 print *,j
      WRITE(*, *) J
      
      GO TO 14
14    CONTINUE
      END PROGRAM
