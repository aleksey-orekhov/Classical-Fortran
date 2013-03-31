
C     Demonstration that fortran ignores blanks in statements

      L=2
      X=2.
      READ *,K
      IF (K.EQ.1) THEN
        L=0
        X=0.
      ELSE L=1
      ENDIF
      PRINT *,'L=',L,' X=',X,' ELSEL=',ELSEL

C     Corrected
      L=2
      X=2.
      READ *,K
      IF (K.EQ.1) THEN
        L=0
        X=0.
      ELSE
        L=1
      ENDIF
      PRINT *,'L=',L,' X=',X


      STOP
      END
