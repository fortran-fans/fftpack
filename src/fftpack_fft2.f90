submodule(fftpack) fftpack_fft2

contains

    !> Forward transform of a rank-2 double complex periodic sequence.
    !> `fft2` can achieve parallel acceleration through `OpenMP`.
    pure module function fft2_dp(x) result(result)
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

        !> Forward transformation
        do i = 1, lendim(2)
            call zfftf(lenseq, result(:, i), wsave)
        end do

        deallocate(wsave)

        !* Second dimension:

        !> Initialize FFT
        lenseq = lendim(2)
        lensav = 4*lenseq + 15
        allocate(wsave(lensav))
        call zffti(lenseq, wsave)

        !> Forward transformation
        do i = 1, lendim(1)
            call zfftf(lenseq, result(i, :), wsave)
        end do

    end function fft2_dp

end submodule fftpack_fft2
