      PROGRAM allocatedarray
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Local Variables and Functions ****
C
      type(active) :: X(:)
      allocatable X
      type(active) :: Y
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
      ALLOCATE(X(1))
      Y%v = (X(1)%v*2.0D00)
      IF (ALLOCATED(X)) THEN
        WRITE(*,*) 'OK'
      ENDIF
       END PROGRAM
