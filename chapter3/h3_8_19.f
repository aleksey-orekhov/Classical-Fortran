C     Sort 3 inputs from biggest to smallest


      REAL(4) A,B,C
      PRINT *,"A"
      READ *,A
      PRINT *,"B: "
      READ *,B
      PRINT *,"C: "
      READ *,C

      IF (A.GT.B) THEN
        IF (A.GT.C) THEN
            IF (B.GT.C) THEN
                PRINT *,A,B,C
            ELSE
                PRINT *,A,C,B
            ENDIF
        ELSE
            PRINT *,C,A,B
        ENDIF
      ELSE
        IF (B.GT.C) THEN
            IF (A.GT.C) THEN
                PRINT *,B,A,C
            ELSE
                PRINT *,B,C,A
            ENDIF
        ELSE
            PRINT *,C,B,A
        ENDIF
      ENDIF

      STOP
      END

