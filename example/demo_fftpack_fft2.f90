program demo_fftpack_fft2

    use fftpack, only: fft2
    use forlab_io, only: disp

    complex(kind=8), allocatable :: x(:, :)
    x = reshape(spread([1, 2, 3, 4], 1, 4), [4, 4])
    call disp(fft2(x), "fft2(x): ")
    
    !! (40.00,0.000)            (-8.000,8.000)            (-8.000,0.000)           (-8.000,-8.000)
    !! (0.000,0.000)             (0.000,0.000)             (0.000,0.000)             (0.000,0.000)
    !! (0.000,0.000)             (0.000,0.000)             (0.000,0.000)             (0.000,0.000)
    !! (0.000,0.000)             (0.000,0.000)             (0.000,0.000)             (0.000,0.000)

end program demo_fftpack_fft2
