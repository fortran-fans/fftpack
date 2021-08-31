program demo_fftpack_ifft2

    use fftpack, only: fft2, ifft2
    use forlab_io, only: disp

    complex(kind=8), allocatable :: x(:, :)
    x = reshape(spread([1, 2, 3, 4], 1, 4), [4, 4])
    call disp(ifft2(fft2(x))/(size(x, 1)*size(x, 2)), "ifft2(fft2(x))/(size(x, 1)*size(x, 2)): ")

    !! (1.000,0.000)             (2.000,0.000)             (3.000,0.000)             (4.000,0.000)
    !! (1.000,0.000)             (2.000,0.000)             (3.000,0.000)             (4.000,0.000)
    !! (1.000,0.000)             (2.000,0.000)             (3.000,0.000)             (4.000,0.000)
    !! (1.000,0.000)             (2.000,0.000)             (3.000,0.000)             (4.000,0.000)

end program demo_fftpack_ifft2
