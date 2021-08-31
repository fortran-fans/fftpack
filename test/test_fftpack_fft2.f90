program test_fftpack_fft2
    use fftpack, only: fft2, ifft2
    use forlab_math, only: is_close
    use stdlib_error, only: check

    complex(kind=8), allocatable :: x(:, :)
    x = reshape(spread([1, 2, 3, 4], 1, 4), [4, 4])
    
    call check(all(is_close(ifft2(fft2(x))/16.0_8, x)), msg="`ifft2(fft2(x))` failed.")
    print *, "All tests in `test_fftpack_fft2` passed."

end program test_fftpack_fft2