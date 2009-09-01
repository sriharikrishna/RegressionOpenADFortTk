
      PROGRAM exs
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
      J = 0
      GO TO 3
3     CONTINUE
      I = 1
      GO TO 11
4     CONTINUE
      I = I + 1
11    CONTINUE
      IF(I .LE. 4) THEN
        GO TO 5
      ELSE
        GO TO 9
      ENDIF
5     CONTINUE
      J = (J + 1)
      GO TO 6
6     CONTINUE
      IF(I .LT. 3) THEN
        GO TO 9
      ELSE
        GO TO 7
      ENDIF
7     CONTINUE
      GO TO 8
8     CONTINUE
      GO TO 4
9     CONTINUE
      WRITE(*, *) J
      
      GO TO 10
10    CONTINUE
      END PROGRAM
