C     Amortized Mortage Calculation


C     I INTEREST
C     P PRINCIPAL
C     N NUMBER OF PAYMENTS
C     A PAYMENT AMOUNT
C     TOTAL AMOUNT LEFT TO PAY

      INTEGER(4) J,N
      REAL(4) I,NUM,DEN,P,TOTAL,LEFT,M,MI

      PRINT *,"LOAN AMOUNT: "
      READ *,P
      PRINT *,"INTEREST: "
      READ *,I
      PRINT *,"NUMBER OF PAYMENTS: "
      READ *,N

      TEM=(1.0+I)**N
      NUM=I*TEM
      DEN=TEM-1.0
      A=P*(NUM/DEN)
      TOTAL=A*N

      PRINT *,'PAYING $',P,' IN ',N,' INSTALLMENTS OF $',A,' TOTAL: ',
     ;TOTAL

      J=1
      LEFT=TOTAL
      M=P
    1 IF (J.GT.N) THEN
        STOP
      ENDIF
      MI=M*(I)
      LEFT=LEFT-A
      PRILE=M+MI-A
      IF (LEFT.LT.0.01) LEFT=0
      IF (PRILE.LT.0.01) PRILE=0
      PRINT *,'PAYMENT: ',J,' AMOUNT: ',A,' INT PAID ',MI,' PRINC PAID '
     ;,A-MI,' PRINC LEFT ',PRILE,' LEFT ',LEFT

      M=M+MI-A
      J=J+1
      GOTO 1

      STOP
      END




