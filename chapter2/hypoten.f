C
C     Code by Aleksey L. Orekhov (based on Sarah N. Engineer)
C
C     This program find the hypotenuse of a right triangle
C     variable   meaning
C     --------   --------
C     A          length of one side
C     B          length of perp side
C     HYP        length of hypotenuse
C     SQRT       Fortran function for square root
C
C------------------------------------
C
C     Assign the lengths of the sides
      PRINT *,'A='
      READ *,A
      PRINT *,'B='
      READ *,B
      PRINT *,'A=',A,' B=',B
C
C     compute the diagonal
      HYP=SQRT(A**2 + B**2)
C
C     report the result
      PRINT *,'HYP=',HYP
C
      STOP
      END
