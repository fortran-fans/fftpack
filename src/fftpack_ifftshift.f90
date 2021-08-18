submodule(fftpack) fftpack_ifftshift

contains

    !> Shifts zero-frequency component to beginning of spectrum for `complex` type.
    pure module function ifftshift_cdp(x) result(result)
        complex(kind=dp), intent(in) :: x(:)
        complex(kind=dp), allocatable :: result(:)

        result = cshift(x, shift=-ceiling(0.5_dp*size(x)))

    end function ifftshift_cdp

    !> Shifts zero-frequency component to beginning of spectrum for `real` type.
    pure module function ifftshift_rdp(x) result(result)
        real(kind=dp), intent(in) :: x(:)
        real(kind=dp), allocatable :: result(:)

        result = cshift(x, shift=-ceiling(0.5_dp*size(x)))

    end function ifftshift_rdp

end submodule fftpack_ifftshift
