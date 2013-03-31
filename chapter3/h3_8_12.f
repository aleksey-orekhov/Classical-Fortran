
C     checks if N even orr odd, prints halfway pt
      IF(N-2*(N/2) .EQ. 0) THEN
        IXHZ=N/2
      ELSE
        IXHZ=N/2 + 1
      ENDIF

C     succinct
      IXHZ=(N+1)/2

      STOP
      END
