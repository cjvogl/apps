
c
c
c
c     =====================================================
      subroutine qinit(meqn,mbc,mx,my,mz,xlower,ylower,zlower,
     &                 dx,dy,dz,q,maux,aux)
c     =====================================================
c
c     # Set initial conditions for q.
c
      implicit double precision (a-h,o-z)
c
      dimension   q(meqn,1-mbc:mx+mbc,1-mbc:my+mbc,1-mbc:mz+mbc)
      dimension aux(maux,1-mbc:mx+mbc,1-mbc:my+mbc,1-mbc:mz+mbc)
c
c     # set initial data
c     ---------------------------
c
      q = 0.d0

      return
      end
