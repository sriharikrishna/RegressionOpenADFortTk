
      MODULE coordrec
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE  CART
        REAL(w2f__4) X
        REAL(w2f__4) Y
      END TYPE
      
C
C     **** Top Level Pragmas ****
C
      interface  assignment (=)
        module procedure  CART_ASSIGN_CART

      end interface 
      
C
C     **** Statements ****
C
      CONTAINS

        SUBROUTINE CART_ASSIGN_CART(A, B)
        use w2f__types
        IMPLICIT NONE
C
C       **** Parameters and Result ****
C
        TYPE (CART) A
        INTENT(OUT)  A
        TYPE (CART) B
        INTENT(IN)  B
C
C       **** Statements ****
C
        A%X = B%X
        A%Y = B%Y
        END SUBROUTINE
      END

      SUBROUTINE distancefromorigin(C, R)
      use w2f__types
      use coordrec
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (CART) C
      INTENT(IN)  C
      REAL(w2f__4) R
C
C     **** Statements ****
C
      R = SQRT((C%X ** 2) +(C%Y ** 2))
      END SUBROUTINE

      PROGRAM dosomething
      use w2f__types
      use coordrec
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__4) C
      TYPE (CART) C1
      TYPE (CART) C2
      REAL(w2f__4) D
      EXTERNAL distancefromorigin
      INTEGER(w2f__i4) N
      SAVE N
      TYPE (CART) t__1
C
C     **** Initializers ****
C
      DATA N / 7 /
C
C     **** Statements ****
C
      t__1%X = N
      t__1%Y = N
      CALL CART_ASSIGN_CART(C2, t__1)
      CALL CART_ASSIGN_CART(C1, C2)
      CALL distancefromorigin(C, D)
      WRITE(*, *) D
      
      END PROGRAM
