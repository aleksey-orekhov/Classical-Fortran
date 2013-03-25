
C progam to find the angles of sides of triangle given the lengths

      PRINT *,'PLEASE INPUT THE LENGTHS OF SIDES A,B,C'
      PRINT *,'A='
      READ *,A
      PRINT *,'B='
      READ *,B
      PRINT *,'C='
      READ *,C

      COSA=(A**2 - B**2 - C**2) / (-2.*B*C)
      COSB=(B**2 - A**2 - C**2) / (-2.*A*C)
      COSC=(C**2 - A**2 - B**2) / (-2.*A*B)
      RADA=ACOS(COSA)
      RADB=ACOS(COSB)
      RADC=ACOS(COSC)

      PI=3.14159
      CONV=180./PI

      ANGA=RADA*CONV
      ANGB=RADB*CONV
      ANGC=RADC*CONV

      PRINT *,'ANGA=',ANGA,' ANGB=',ANGB,' ANGC=',ANGC

      STOP
      END


