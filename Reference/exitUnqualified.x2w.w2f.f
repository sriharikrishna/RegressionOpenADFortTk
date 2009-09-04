
      PROGRAM exu
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) II
      INTEGER(w2f__i4) J
C
C     **** Statements ****
C
1     CONTINUE
      GO TO 2
2     CONTINUE
      J = 0
      GO TO 3
3     CONTINUE
      I = 1
      GO TO 13
4     CONTINUE
      I = I + 1
13    CONTINUE
      IF(I .LE. 4) THEN
        GO TO 5
      ELSE
        GO TO 11
      ENDIF
5     CONTINUE
      J = (J + 1)
      GO TO 6
6     CONTINUE
      II = 1
      GO TO 14
7     CONTINUE
      II = II + 1
14    CONTINUE
      IF(II .LE. 4) THEN
        GO TO 8
      ELSE
        GO TO 9
      ENDIF
8     CONTINUE
      GO TO 9
9     CONTINUE
      GO TO 10
10    CONTINUE
      GO TO 4
11    CONTINUE
      WRITE(*, *) J
      
      GO TO 12
12    CONTINUE
      END PROGRAM
