
C     This program implements the quadratic formula

      PRINT *,'PLEASE INPUT THE COEFFICIENTS a,b,c'
      PRINT *,'a='
      READ *,A
      PRINT *,'b='
      READ *,B
      PRINT *,'c='
      READ *,C

      IF (A .EQ. 0) THEN
        ROOT1=-C/B
        PRINT *,'ROOT=',ROOT1
        GOTO 1
      ENDIF

      U=B**2-4.*A*C
      URAD=SQRT(ABS(U))/(2.*A)
      FR=-B/(2.*A)
      IF (U .LT. 0.) THEN
        PRINT *,'ROOT1=',FR,'+',URAD,'i',' ROOT2=',FR,'-',URAD,'i'
      ELSE
        PRINT *,'ROOT1=',FR+URAD,'ROOT2=',FR-URAD
      ENDIF


    1 STOP
      END
