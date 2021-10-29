! The tsunami example from _Modern Fortran_.
program tsunami

    implicit none

    integer, parameter :: nx = 100      ! grid dimension
    integer, parameter :: nt = 100      ! number of time steps
    real, parameter :: dt = 1.0         ! time step [s]
    real, parameter :: dx = 1.0         ! grid spacing [m]
    real, parameter :: c = 1.0          ! phase speed of wave [m s-1]
    integer, parameter :: icenter = 25  ! node of wave center
    real, parameter :: decay = 0.02     ! decay factor of wave shape

    integer :: i, n
    real :: h(nx)   ! wave height [m]
    real :: dh(nx)  ! change in wave height [m]

    do i = 1, nx
        h(i) = exp(-decay * (i - icenter)**2)
    end do

    print *, 0, h

    time_loop: do n = 1, nt

        dh(1) = h(1) - h(nx)

        do i = 2, nx
            dh(i) = h(i) - h(i-1)
        end do

        do i = 1, nx
            h(i) = h(i) - c * dh(i) / dx * dt
        end do

        print *, n, h

    end do time_loop

end program tsunami
