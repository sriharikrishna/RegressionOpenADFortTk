
      PROGRAM ex
      use w2f__types
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
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
      IF(I .LT. 3) THEN
        GO TO 10
      ELSE
        GO TO 6
      ENDIF
6     CONTINUE
      GO TO 7
7     CONTINUE
      GO TO 8
8     CONTINUE
      J = (J + 1)
      GO TO 9
9     CONTINUE
      GO TO 4
10    CONTINUE
      GO TO 11
11    CONTINUE
      WRITE(*, *) J
      
      GO TO 12
12    CONTINUE
      END PROGRAM
