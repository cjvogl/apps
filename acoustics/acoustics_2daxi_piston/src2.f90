subroutine src2(meqn,mbc,mx,my,xlower,ylower,dx,dy,q,maux,aux,t,dt)

    ! Called to update q by solving source term equation 
    ! $q_t = \psi(q)$ over time dt starting at time t.
    !
    implicit none
    integer, intent(in) :: mbc,mx,my,meqn,maux
    real(kind=8), intent(in) :: xlower,ylower,dx,dy,t,dt
    real(kind=8), intent(in) ::  aux(maux,1-mbc:mx+mbc,1-mbc:my+mbc)
    real(kind=8), intent(inout) ::  q(meqn,1-mbc:mx+mbc,1-mbc:my+mbc)

    real(kind=8) :: rho,bulk,cc,zz
    common /cparam/ rho,bulk,cc,zz

    real(kind=8) :: ycell,dp
    integer :: i,j

    ! cylindrical symmetric terms for acoustics equations

    do j=1,my+mbc
        ycell = ylower + (j-0.5d0)*dy
        do i=1,mx+mbc
           dp = dt*bulk/ycell * q(3,i,j)
           q(1,i,j) = q(1,i,j) - dp
           enddo
        enddo

end subroutine src2
