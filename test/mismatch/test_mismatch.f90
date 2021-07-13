!! fpm test --flag '-fallow-argument-mismatch' mismatch

program test_mismatch

    implicit none
    call mismatch_single_col(cmplx([1.0, 2.0], [3.0, 4.0]))
    call mismatch_double(cmplx([1.0, 2.0], [3.0, 4.0]))
    call mismatch_third(cmplx([1.0, 2.0], [3.0, 4.0]))
    call mismatch_quad_col(cmplx([1.0, 2.0], [3.0, 4.0]))
    call mismatch_quad_row(cmplx([1.0, 2.0], [3.0, 4.0]))
    
end program test_mismatch

subroutine mismatch_single_col(value)
    use forlab_io, only: disp
    implicit none
    real :: value(2,1)
    call disp(value, 'mismatch_single_col : ')
end subroutine mismatch_single_col

subroutine mismatch_double(value)
    use forlab_io, only: disp
    implicit none
    real :: value(2,2)
    call disp(value, 'mismatch_double : ')
end subroutine mismatch_double

subroutine mismatch_third(value)
    use forlab_io, only: disp
    implicit none
    real :: value(3,3)
    call disp(value, 'mismatch_third : ')
end subroutine mismatch_third

subroutine mismatch_quad_col(value)
    use forlab_io, only: disp
    implicit none
    real :: value(4)
    call disp(value, 'mismatch_quad_col : ')
end subroutine mismatch_quad_col

subroutine mismatch_quad_row(value)
    use forlab_io, only: disp
    implicit none
    real :: value(1,4)
    call disp(value, 'mismatch_quad_row : ')
end subroutine mismatch_quad_row
