submodule(fftpack) fftpack_ifft2

contains

    !> Backward transform of a rank-2 double complex periodic sequence.
    !> `ifft2` can achieve parallel acceleration through `OpenMP`.
    pure module function ifft2_dp(x) result(result)
        complex(kind=dp), intent(in) :: x(:, :)
        complex(kind=dp), allocatable :: result(:, :)

        integer :: lendim(rank(x))
        integer :: lenseq, lensav, i
        real(kind=dp), allocatable :: wsave(:)

        lendim = shape(x)
        result = x
        
        !! FFT is performed on each dimension of the array in turn, 
        !!  and the scale of the array remains the same after each FFT.

        !* First diemnsion:

        !> Initialize FFT
        lenseq = lendim(1)
        lensav = 4*lenseq + 15
        allocate(wsave(lensav))
        call zffti(lenseq, wsave)

        !> Backward transformation
        do i = 1, lendim(2)
            call zfftb(lenseq, result(:, i), wsave)
        end do

        deallocate(wsave)

        !* Second dimension:

        !> Initialize FFT
        lenseq = lendim(2)
        lensav = 4*lenseq + 15
        allocate(wsave(lensav))
        call zffti(lenseq, wsave)

        !> Backward transformation
        do i = 1, lendim(1)
            call zfftb(lenseq, result(i, :), wsave)
        end do

    end function ifft2_dp

end submodule fftpack_ifft2
