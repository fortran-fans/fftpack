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
You can build using provided `fpm.toml`:
```bash
fpm build
fpm test
```
To use `fftpack` within your `fpm` project, add the following to `fpm.toml` file:
```toml
[dependencies]
fftpack = { git="https://github.com/certik/fftpack.git", branch="fftpack4.0" }
```

## Links
[netlib/dfftpack1.0(fftpack4.0)](http://www.netlib.org/fftpack/)
