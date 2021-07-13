# FFTPACK 5.1
FFTPack aims to provide an easily usable package of functions using `fftpack` library (Fortran 90).

## Getting started
```bash
git clone https://github.com/certik/fftpack.git
cd fftpack
git branch fftpack5.1
```
## Dependencies

Git and [fortran-lang/fpm](https://github.com/fortran-lang/fpm)

### Supported Compilers
The following combinations are tested on the default branch of `fftpack`:  
|Name|Vesrion|Platform|Architecture|  
|---|---|---|---|  
|GCC Fortran(MSYS2)|10|Windows 10|x86_64|  

### Build with [fortran-lang/fpm](https://github.com/fortran-lang/fpm)
Fortran Package Manager (fpm) is a great package manager and build system for Fortran.   
You can build using provided `fpm.toml`:
```bash
# gfortran version < 10
fpm build
fpm test <test_name (see `fpm.toml`)>

# gfortran version >= 10
fpm build --flag '-fallow-argument-mismatch' 
fpm test --flag '-fallow-argument-mismatch' <test_name (see `fpm.toml`)>
```
To use `fftpack` within your `fpm` project, add the following to `fpm.toml` file:
```toml
[dependencies]
fftpack = { git="https://github.com/certik/fftpack.git", branch="fftpack5.1" }
```

## API-Docs
1. [ncar/fftpack5.1/documentation](https://www2.cisl.ucar.edu/resources/legacy/fft5/documentation)
2. [John Burkardt/fftpack5.1(F77 version)](https://people.sc.fsu.edu/~jburkardt/f77_src/fftpack5.1/fftpack5.1.html)

## Links
1. [netlib/dfftpack1.0(fftpack4.0)](http://www.netlib.org/fftpack/)
2. [ncar/fftpack5.1](https://www2.cisl.ucar.edu/resources/legacy/fft5)
3. [John Burkardt/fftpack5.1(F77 version)](https://people.sc.fsu.edu/~jburkardt/f77_src/fftpack5.1/fftpack5.1.html)
4. [John Burkardt/fftpack5.1(F90 version)](https://people.sc.fsu.edu/~jburkardt/f_src/fftpack51/fftpack51.html)
5. [keurfonluu/FFTPack](https://github.com/keurfonluu/FFTPack)  
6. [QcmPlab/SciFortran](https://github.com/QcmPlab/SciFortran)
From John Burkardt fortran90, fftpack5.1 with interface.

### For `argumnet-mismatch` problem
1. [NCAR/ncl/issue#123: Build failure with gfortran 10](https://github.com/NCAR/ncl/issues/123)
2. [GCC 10 Release Series Changes, New Features, and Fixes](https://gcc.gnu.org/gcc-10/changes.html)
3. [brocolis/QuadPack](https://github.com/brocolis/quadpack)