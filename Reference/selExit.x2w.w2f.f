
      PROGRAM se
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
      I = 1
      GO TO 17
4     CONTINUE
      I = I + 1
17    CONTINUE
      IF(I .LE. 4) THEN
        GO TO 5
      ELSE
        GO TO 10
      ENDIF
5     CONTINUE
      IF(I .LT. 3) THEN
        GO TO 9
      ELSE
        GO TO 6
      ENDIF
6     CONTINUE
      GO TO 7
7     CONTINUE
      GO TO 8
8     CONTINUE
      GO TO 4
9     CONTINUE
      GO TO 10
10    CONTINUE
      select_expr_temp_0 = I
      GO TO 11
11    CONTINUE
      IF(select_expr_temp_0 .ne. 0) THEN
        GO TO 13
      ELSE
        GO TO 12
      ENDIF
12    CONTINUE
      J = 1
      GO TO 14
13    CONTINUE
      J = 2
      GO TO 14
14    CONTINUE
      GO TO 15
15    CONTINUE
C     1 print *,j
      WRITE(*, *) J
      
      GO TO 16
16    CONTINUE
      END PROGRAM
