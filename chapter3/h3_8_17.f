
C     Simpson's Rule for f(x)=ln(x)/x

      PRINT *,'a='
      READ *,A
      PRINT *,'b='
      READ *,B
      PRINT *,'h='
      READ *,H

      X=A+H
      TOTAL=0
      MULT=0

    1 IF (MULT .EQ. 4) THEN
        MULT=2
      ELSE
        MULT=4
      ENDIF

      TOTAL=TOTAL+MULT*LOG(X)/X
      X=X+H
      IF (X .LT. B) THEN
        GOTO 1
      ENDIF

      TOTAL=TOTAL+LOG(A)/A
      TOTAL=TOTAL+LOG(B)/B

      TOTAL=(H/3)*TOTAL

      PRINT *,'TOTAL=',TOTAL

      STOP
      END
