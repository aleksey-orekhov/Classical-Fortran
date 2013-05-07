C     Amortized Mortage Calculation


C     I INTEREST
C     P PRINCIPAL
C     N NUMBER OF PAYMENTS
C     A PAYMENT AMOUNT
C     TOTAL AMOUNT LEFT TO PAY


      COMMON /EXPT/ TIMING,NONALG,BINCPU
      INTEGER(8) FIBn,I
      INTEGER(4) J
      INTEGER(4) BINCPU(2,22)
      REAL(8) T1,T2
      LOGICAL(4) TIMING
      TIMING=.TRUE.


      I=1
      J=10000

      CALL TIMER(-1,5)
      DO 1 K=1,J
        FIBN=I+1
    1 CONTINUE

      T1=DFLOAT(BINCPU(1,1))+1.D-9*DFLOAT(BINCPU(2,1));
      T2=DFLOAT(BINCPU(1,1))+1.D-9*DFLOAT(BINCPU(2,1));

      PRINT *,T1
      PRINT *,T2
      PRINT *,FIBN

      STOP
      END









