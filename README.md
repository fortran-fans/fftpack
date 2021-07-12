# FFTPACK 4.0
FFTPack aims to provide an easily usable package of functions using FFTPack library (Fortran 77).

## Getting started
```bash
git clone https://github.com/certik/fftpack.git
cd fftpack
git branch fftpack4.0
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
Default `fpm` using this flag `-fcheck-bounds` will result in an error:  
> At line 5 of file.src \dffti.f  
> Fortran runtime error: Index '121' of Array 'wsave' above upper bound of 1.

```fortran
SUBROUTINE DFFTI (N,WSAVE)
IMPLICIT DOUBLE PRECISION (A-H,O-Z)
DIMENSION       WSAVE(1)
IF (N .EQ. 1) RETURN
CALL RFFTI1 (N,WSAVE(N+1),WSAVE(2*N+1))
RETURN
END
```

Override the default `fpm` flag can solve this problem for a while, like:
```bash
fpm test --flag -Wall
```
You can build using provided `fpm.toml`:
```bash
fpm build --flag -Wall
fpm test --flag -Wall
```
To use `fftpack` within your `fpm` project, add the following to `fpm.toml` file:
```toml
[dependencies]
fftpack = { git="https://github.com/certik/fftpack.git", branch="fftpack4.0" }
```

## Links
[netlib/dfftpack1.0(fftpack4.0)](http://www.netlib.org/fftpack/)
