## Name
   M_datapac(3f) - an fpm module build from the NIST DATAPAC package
   (LICENSE: CC0-1.0)
## Synopsis
```text
   use M_datapac, only : 
    & autoco,  betran,  bincdf,  binppf,  binran,  caucdf,  caupdf,  cauplt,  &
    & cauppf,  cauran,  causf,   chscdf,  chsplt,  chsppf,  chsran,  code,    &
    & copy,    corr,    count,   decomp,  define,  delete,  demod,   dexcdf,  &
    & dexpdf,  dexplt,  dexppf,  dexran,  dexsf,   discr2,  discr3,  discre,  &
    & dot,     ev1cdf,  ev1plt,  ev1ppf,  ev1ran,  ev2cdf,  ev2plt,  ev2ppf,  &
    & ev2ran,  expcdf,  exppdf,  expplt,  expppf,  expran,  expsf,   extrem,  &
    & fcdf,    fourie,  fran,    freq,    gamcdf,  gamplt,  gamppf,  gamran,  &
    & geocdf,  geoplt,  geoppf,  georan,  hfncdf,  hfnplt,  hfnppf,  hfnran,  &
    & hist,    invxwx,  label,   lamcdf,  lampdf,  lamplt,  lamppf,  lamran,  &
    & lamsf,   lgncdf,  lgnplt,  lgnppf,  lgnran,  loc,     logcdf,  logpdf,  &
    & logplt,  logppf,  logran,  logsf,   max,     mean,    median,  midm,    &
    & midr,    min,     move,    nbcdf,   nbppf,   nbran,   norcdf,  norout,  &
    & norpdf,  norplt,  norppf,  norran,  norsf,   parcdf,  parplt,  parppf,  &
    & parran,  plot,    plot10,  plot6,   plot7,   plot8,   plot9,   plotc,   &
    & plotco,  plotct,  plots,   plotsc,  plotsp,  plotst,  plott,   plotu,   &
    & plotx,   plotxt,  plotxx,  pltsct,  pltxxt,  poicdf,  poiplt,  poippf,  &
    & poiran,  propor,  range,   rank,    ranper,  relsd,   replac,  retain,  &
    & runs,    sampp,   scale,   sd,      sort,    sortc,   sortp,   spcorr,  &
    & stmom3,  stmom4,  subse1,  subse2,  subset,  tail,    tcdf,    time,    &
    & tol,     tplt,    tppf,    tran,    trim,    unicdf,  unimed,  unipdf,  &
    & uniplt,  unippf,  uniran,  unisf,   var,     weib,    weicdf,  weiplt,  &
    & weippf,  weiran,  wind
```
## Description

**A WORK IN PROGRESS**

The M_datapac Fortran module contains a variety of
[statistical procedures](https://urbanjost.github.io/M_datapac/man3.html) 
as well as a number of general utilities useful in statistical analysis.

The original DATAPAC library was written by James Filliben of the Statistical
Engineering Division,
[National Institute of Standards and Technology](https://www.nist.gov/).
After these routines were incorporated into the [Dataplot](
https://www.nist.gov/statistical-engineering-division/dataplot)
program, development of DATAPAC stopped. However, there are some
subroutines here that may be of interest. In particular, there are
a number of routines for computing various probability functions.

It is also useful to have the routines apart from Dataplot as a separate
make(1) and fpm(1) package for use in other applications.

It is provided on an "as is" basis.

This software is not formally supported and is not being further developed
other than to develop a test suite at this time.

There is no formal documentation yet for the subroutines. However, most
of the subroutines contain extensive usage instructions in the comments
in the source code.

These routines were written in Fortran 77 and were ported to a modern
Fortran module accessible via `fpm`.

The initial conversion was done with
[spag](https://polyhedron.com/?product=plusfort) from plusfort.

## Needs

Looking for unit tests and example programs that use DATAPAC, and to
reformat the comments to man-page format.
## Building the Module Using make(1) ![gmake](docs/images/gnu.gif)
     git clone https://github.com/urbanjost/M_datapac.git
     cd M_datapac/src
     # change Makefile if not using one of the listed compilers

     # for gfortran
     make clean
     make F90=gfortran gfortran

     # for ifort
     make clean
     make F90=ifort ifort

     # for nvfortran
     make clean
     make F90=nvfortran nvfortran

This will compile the Fortran module and basic example
program that exercise the routine and place the resulting
files in the src/lib/ directory.

## Build and Test with FPM ![-](docs/images/fpm_logo.gif)

   Alternatively, download the github repository and build it with
   fpm ( as described at [Fortran Package Manager](https://github.com/fortran-lang/fpm) )

```bash
        git clone https://github.com/urbanjost/M_datapac.git
        cd M_datapac
	fpm build
```
   Tests and examples are under construction as well
```bash
        fpm run "*"
        fpm run --example "*"
        fpm test
```
   or just list it as a dependency in your fpm.toml project file.

```toml
        [dependencies]
        M_datapac        = { git = "https://github.com/urbanjost/M_datapac.git" }
```
## Documentation   ![docs](docs/images/docs.gif)

### User
   - a simple index to the man-pages in HTML form for the
   [routines](https://urbanjost.github.io/M_datapac/man3.html)
   and [programs](https://urbanjost.github.io/M_datapac/man1.html)

   - A single page that uses javascript to combine all the HTML
     descriptions of the man-pages is in
     [BOOK_M_datapac](https://urbanjost.github.io/M_datapac/BOOK_M_datapac.html).

   - ![man-pages](docs/images/manpages.gif)
     There are man-pages in the repository download in the docs/ directory
     that may be installed on ULS (Unix-Like Systems)
      + [manpages.zip](https://urbanjost.github.io/M_datapac/manpages.zip)
      + [manpages.tgz](https://urbanjost.github.io/M_datapac/manpages.tgz)

   - [CHANGELOG](docs/CHANGELOG.md) provides a history of significant changes

### Developer
   - [ford(1) output](https://urbanjost.github.io/M_datapac/fpm-ford/index.html).
   - [doxygen(1) output](https://urbanjost.github.io/M_datapac/doxygen_out/html/index.html).
   - [github action status](docs/STATUS.md)
---
### License
   CC0-1.0

## References
   * [datapac](https://www.nist.gov/itl/sed/datapac)
   * [dataplot](https://github.com/usnistgov/dataplot)
---
