
C     This program evaluates two expressions in an if statement
      implicit none
      integer(4) a(4),b(4),c(4)
      integer(4) i

      do 1 i=1,4
        a(i)=i
        b(i)=2*i
    1 continue

      print *,a
      print *,b
      print *,a*b
      print *,3*b

      c=a+2*b
      print *,c

      stop
      end
