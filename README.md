## Name
   M_datapac(3f) - an fpm module build from the NIST DATAPAC package
   (LICENSE: CC0-1.0)
## Synopsis
```text
       use M_datapac
```
## Description

**A WORK IN PROGRESS**

The original DATAPAC library was written by James Filliben of the Statistical
Engineering Division, 
[National Institute of Standards and Technology](https://www.nist.gov/).
After these routines were incorporated into the [Dataplot](
https://www.nist.gov/statistical-engineering-division/dataplot). 
program, development of DATAPAC stopped. However, there are some
subroutines here that may still be of interest. In particular, there are
a number of routines for computing various probability functions.

It is also useful to have the routines apart from Dataplot and as a 
separate make(1) and fpm(1) package for use in other applications.

It is provided on an "as is" basis.

This software is not formally supported and is not being further developed
other than to develop a test suite at this time.

There is no formal documentation for the subroutines. However, most of the
subroutines contain usage instructions in the comments in the source code.

These routines were written in Fortran 77 and were ported to a modern
Fortran module accessible via `fpm`.

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
program that exercise the routine.

## Build and Test with FPM ![-](docs/images/fpm_logo.gif)

   Alternatively, download the github repository and build it with
   fpm ( as described at [Fortran Package Manager](https://github.com/fortran-lang/fpm) )

   ```bash
        git clone https://github.com/urbanjost/M_datapac.git
        cd M_datapac
        fpm run "*"
        fpm run --example "*"
        fpm test
   ```

   or just list it as a dependency in your fpm.toml project file.

```toml
        [dependencies]
        M_datapac        = { git = "https://github.com/urbanjost/M_datapac.git" }
```

## Contents 	

The following subroutines are available in M_datapac:

  * [AUTOCO](src/source/autoco.ffinc)  - compute the sample autocorrelation coefficient
  * [LOC](src/source/loc.ffinc)        - compute the sample mean, midrange, midmean, and median
  * [MAX](src/source/max.ffinc)        - compute the maximum of a data vector
  * [MEAN](src/source/mean.ffinc)      - compute the mean of a data vector
  * [MEDIAN](src/source/median.ffinc)  - compute the median of a data vector
  * [MIDM](src/source/midm.ffinc)      - compute the midmean of a data vector
  * [MIDR](src/source/midr.ffinc)      - compute the midrange of a data vector
  * [MIN](src/source/min.ffinc)        - compute the minimum of a data vector
  * [MOVE](src/source/move.ffinc)      - move selected elements of one vector into another vector
  * [POLY](src/source/poly.ffinc)      - compute a least squares polynomial fit (calls DECOMP, INVXWX,DOT, FCDF)
  * [PROPOR](src/source/propor.ffinc)  - compute the sample proportion
  * [RANGE](src/source/range.ffinc)    - compute the sample range
  * [RANK](src/source/rank.ffinc)      - rank a vector of sample observations
  * [READG](src/source/readg.ffinc)    - perform a format-free read of data from a file restricted to a user-specified set of columns
  * [READ](src/source/read.ffinc)      - perform a format-free read of data from a file
  * [RELSD](src/source/relsd.ffinc)    - compute the relative standard deviation of a vector of observations
  * [REPLAC](src/source/replac.ffinc)  - replace all observations in a vector within a given interval with a user-specified constant
  * [RETAIN](src/source/retain.ffinc)  - retain all observations in a vector within a user-specified interval
  * [RUNS](src/source/runs.ffinc)      - perform a runs test
  * [SCALE](src/source/scale.ffinc)    - compute the sample range, sample standard deviation, sample relative standard deviation, and sample variance
  * [SD](src/source/sd.ffinc)          - compute the standard deviation of a vector of observations
  * [SKIPR](src/source/skipr.ffinc)    - skip over a user-specified number of rows in reading a data file
  * [SORTC](src/source/sortc.ffinc)    - sort a vector of sample observations and "carry" a second a vector
  * [SORTP](src/source/sortp.ffinc)   - sorts and ranks a numeric vector X
  * [SORT](src/source/sort.ffinc)      - sort a vector of sample observations, also return the positions in the original vector
  * [SPCORR](src/source/spcorr.ffinc)  - compute the sample Spearman rank correlation coefficient between two vectors of observations
  * [STMOM3](src/source/stmom3.ffinc)  - compute the third central moment (i.e., the skewness) of a vector of observations
  * [STMOM4](src/source/stmom4.ffinc)  - compute the fourth central moment (i.e., the kurtosis) of a vector of observations
  * [SUBSE1](src/source/subse1.ffinc)  - extract the elements of a vector which fall into a user-specified subset (one subset variable)
  * [SUBSE2](src/source/subse2.ffinc)  - extract the elements of a vector which fall into a user-specified subset (two subset variables)
  * [SUBSET](src/source/subset.ffinc)  - extract the elements of a vector which fall into a user-specified subset (one subset variable)
  * [TAIL](src/source/tail.ffinc)      - performs a symmetric distribution tail length analysis
  * [TOL](src/source/tol.ffinc)        - compute normal and distribution-free tolerance limits
  * [TRIM](src/source/trim.ffinc)    - computes the sample trimmed mean of the data in the input vector X.
  * [UNIMED](src/source/unimed.ffinc)  - generate the /N/ order statistic medians (used in creating probability plots)
  * [VAR](src/source/var.ffinc)        - compute the sample variance of a vector of observations
  * [WEIB](src/source/weib.ffinc)      - perform a Weibull distribution analysis (Weibull PPCC analysis)
  * [WIND](src/source/wind.ffinc)      - compute the sample Winsorized mean of a vector of observations
## random values
  * [BETRAN](src/source/betran.ffinc)  - generate beta random numbers
  * [BINRAN](src/source/binran.ffinc)  - generate binomial random numbers
  * [CAURAN](src/source/cauran.ffinc)  - generate Cauchy random numbers
  * [CHSRAN](src/source/chsran.ffinc)  - generate chi-square random numbers
  * [DEXRAN](src/source/dexran.ffinc)  - generate double exponential random numbers
  * [EV1RAN](src/source/ev1ran.ffinc)  - generate extreme value type 1 (Gumbel) random numbers
  * [EV2RAN](src/source/ev2ran.ffinc)  - generate extreme value type 2 (Frechet) random numbers
  * [EXPRAN](src/source/expran.ffinc)  - generate exponential random numbers
  * [FRAN](src/source/fran.ffinc)      - generate F random numbers
  * [GAMRAN](src/source/gamran.ffinc)  - generate gamma random numbers
  * [GEORAN](src/source/georan.ffinc)  - generate geometric random numbers
  * [HFNRAN](src/source/hfnran.ffinc)  - generate half-normal random numbers
  * [LGNRAN](src/source/lgnran.ffinc)  - generate lognormal random numbers
  * [LOGRAN](src/source/logran.ffinc)  - generate logistic random numbers
  * [NBRAN](src/source/nbran.ffinc)    - generate negative binomial random numbers
  * [NORRAN](src/source/norran.ffinc)  - generate normal random numbers
  * [PARRAN](src/source/parran.ffinc)  - generate Pareto random numbers
  * [POIRAN](src/source/poiran.ffinc)  - generate Poisson random numbers
  * [RANPER](src/source/ranper.ffinc)  - generates a random permutation
  * [TRAN](src/source/tran.ffinc)      - generate /t/ random numbers
  * [UNIRAN](src/source/uniran.ffinc)  - generate Uniform random numbers
  * [WEIRAN](src/source/weiran.ffinc)  - generate Weibull random numbers
## probability density function
  * [CAUPDF](src/source/caupdf.ffinc)  - compute the Cauchy probability density function
  * [LGNPDF](src/source/lgnpdf.ffinc)  - compute the lognormal probability density function
  * [LOGPDF](src/source/logpdf.ffinc)  - compute the logistic probability density function
  * [NORPDF](src/source/norpdf.ffinc)  - compute the normal probability density function
  * [UNIPDF](src/source/unipdf.ffinc)  - compute the Uniform probability density function
## percent point function
  * [BINPPF](src/source/binppf.ffinc)  - compute the binomial percent point function
  * [CAUPPF](src/source/cauppf.ffinc)  - compute the Cauchy percent point function
  * [CHSPPF](src/source/chsppf.ffinc)  - compute the chi-square percent point function
  * [LGNPPF](src/source/lgnppf.ffinc)  - compute the lognormal percent point function
  * [LOGPPF](src/source/logppf.ffinc)  - compute the logistic percent point function
  * [NBPPF](src/source/nbppf.ffinc)    - compute the negative binomial percent point function
  * [NORPPF](src/source/norppf.ffinc)  - compute the normal percent point function
  * [PARPPF](src/source/parppf.ffinc)  - compute the Pareto percent point function
  * [POIPPF](src/source/poippf.ffinc)  - compute the Poisson percent point function
  * [SAMPP](src/source/sampp.ffinc)    - compute the sample 100P percent point (i.e., percentile)
  * [TPPF](src/source/tppf.ffinc)      - compute the /t/ percent point function
  * [UNIPPF](src/source/unippf.ffinc)  - compute the Uniform percent point function
  * [WEIPPF](src/source/weippf.ffinc)  - compute the Weibull percent point function
## sparsity function
  * [CAUSF](src/source/causf.ffinc)    - compute the Cauchy sparsity function
  * [LAMSF](src/source/lamsf.ffinc)    - compute the Tukey-Lambda sparsity function
  * [LOGSF](src/source/logsf.ffinc)    - compute the logistic sparsity function
  * [NORSF](src/source/norsf.ffinc)    - compute the normal sparsity function
  * [UNISF](src/source/unisf.ffinc)    - compute the Uniform sparsity function
## cumulative distribution function
  * [BINCDF](src/source/bincdf.ffinc)  - compute the binomial cumulative distribution function
  * [CAUCDF](src/source/caucdf.ffinc)  - compute the Cauchy cumulative distribution function
  * [CHSCDF](src/source/chscdf.ffinc)  - compute the chi-square cumulative distribution function
  * [LGNCDF](src/source/lgncdf.ffinc)  - compute the lognormal cumulative distribution function
  * [LOGCDF](src/source/logcdf.ffinc)  - compute the logistic cumulative distribution function
  * [NBCDF](src/source/nbcdf.ffinc)    - compute the negative binomial cumulative distribution function
  * [NORCDF](src/source/norcdf.ffinc)  - compute the normal cumulative distribution function
  * [PARCDF](src/source/parcdf.ffinc)  - compute the Pareto cumulative distribution function
  * [POICDF](src/source/poicdf.ffinc)  - compute the Poisson cumulative distribution function
  * [POICDF](src/source/poicdf.ffinc)  - compute the Poisson cumulative distribution function
  * [TCDF](src/source/tcdf.ffinc)      - compute the /t/ cumulative distribution function
  * [UNICDF](src/source/unicdf.ffinc)  - compute the Uniform cumulative distribution function
  * [WEICDF](src/source/weicdf.ffinc)  - compute the Weibull cumulative distribution function
## output formatting 
  * [WRITE](src/source/write.ffinc)    - write a vector of observations in a "neat" fashion
## line printer plots
  * [CAUPLT](src/source/cauplt.ffinc)  - generate a Cauchy probability plot (line printer graph)
  * [CHSPLT](src/source/chsplt.ffinc)  - generate a chi-square probability plot (line printer graph)
  * [DEXPLT](src/source/dexplt.ffinc)  - generate a double exponential probability plot (line printer graph)
  * [EV1PLT](src/source/ev1plt.ffinc)  - generate a extreme value type 1 (Gumbel) probability plot (line printer graph)
  * [EV2PLT](src/source/ev2plt.ffinc)  - generate a extreme value type 2 (Frechet) probability plot (line printer graph)
  * [EXPPLT](src/source/expplt.ffinc)  - generate a exponential probability plot (line printer graph)
  * [GAMPLT](src/source/gamplt.ffinc)  - generate a gamma probability plot (line printer graph)
  * [GEOPLT](src/source/gamplt.ffinc)  - generate a geometric probability plot (line printer graph)
  * [HFNPLT](src/source/hfnplt.ffinc)  - generate a half-normal probability plot (line printer graph)
  * [LAMPLT](src/source/lamplt.ffinc)  - generate a Tukey-Lambda probability plot (line printer graph)
  * [LGNPLT](src/source/lgnplt.ffinc)  - generate a lognormal probability plot (line printer graph)
  * [LOGPLT](src/source/logplt.ffinc)  - generate a logistic probability plot (line printer graph)
  * [NOROUT](src/source/norout.ffinc)  - Performs a normal outlier analysis on the data in the input vector X.
  * [NORPLT](src/source/norplt.ffinc)  - generate a normal probability plot (line printer graph)
  * [PARPLT](src/source/parplt.ffinc)  - generate a Pareto probability plot (line printer graph)
  * [PLOT6](src/source/plot6.ffinc)    - generate a line printer plot
  * [PLOT7](src/source/plot7.ffinc)    - generate a line printer plot with special plot characters
  * [PLOT8](src/source/plot8.ffinc)    - generate a line printer plot with special plot characters
  * [PLOT9](src/source/plot9.ffinc)    - generate a line printer plot with special plot characters
  * [PLOT10](src/source/plot10.ffinc)  - generate a line printer plot with special plot characters
  * [PLOTCO](src/source/plotco.ffinc)  - generate a line printer autocorrelation plot
  * [PLOTC](src/source/plotc.ffinc)    - generate a line printer plot with special plot characters
  * [PLOTCT](src/source/plotct.ffinc)  - generate a line printer plot for the terminal (71 characters wide)
  * [PLOTSC](src/source/plotsc.ffinc)  - generate a line printer plot with special plot characters
  * [PLOTSP](src/source/plotsp.ffinc)  - generate a line printer spectrum plot
  * [PLOT](src/source/plot.ffinc)      - yields a one-page printer plot of y(i) versus x(i)
  * [PLOTS](src/source/plots.ffinc)    - generate a line printer plot of Y vs X
  * [PLOTST](src/source/plotst.ffinc)  - generate a line printer plot of Y vs X for the terminal (71 characters wide)
  * [PLOTT](src/source/plott.ffinc)    - generate a line printer plot of Y vs X for the terminal (71 characters wide)
  * [PLOTU](src/source/plotu.ffinc)    - generate a line printer 4-plot
  * [PLOTX](src/source/plotx.ffinc)    - generate a line printer run sequence plot
  * [PLOTXT](src/source/plotxt.ffinc)  - generate a line printer run sequence plot for the terminal (71 characters wide)
  * [PLOTXX](src/source/plotxx.ffinc)  - generate a line printer lag plot
  * [PLTSCT](src/source/pltsct.ffinc)  - generate a line printer plot with special plot characters for the terminal (71 characters wide)
  * [PLTXXT](src/source/pltxxt.ffinc)  - generate a line printer lag plot for the terminal (71 characters wide)
  * [POIPLT](src/source/poiplt.ffinc)  - generate a Poisson probability plot (line printer graph)
  * [TIME](src/source/time.ffinc)      - perform a time series analysis (autocorrelation plot, a test for white noise, a "pilot" spectrum, and 4 other estimated spectra based on differing bandwidth)
  * [TPLT](src/source/tplt.ffinc)      - generate a /t/ probability plot (line printer graph)
  * [UNIPLT](src/source/uniplt.ffinc)  - generate a Uniform probability plot (line printer graph)
  * [WEIPLT](src/source/weiplt.ffinc)  - generate a Weibull probability plot (line printer graph)
------------------------------------------------------------------------

## Documentation   ![docs](docs/images/docs.gif)

<!--
### User
   - A single page that uses javascript to combine all the HTML
     descriptions of the man-pages is at 
     [BOOK_M_datapac](https://urbanjost.github.io/M_datapac/BOOK_M_datapac.html).

   - a simple index to the man-pages in HTML form for the
   [routines](https://urbanjost.github.io/M_datapac/man3.html) 
   and [programs](https://urbanjost.github.io/M_datapac/man1.html) 

   - There are man-pages in the repository download in the docs/ directory
     that may be installed on ULS (Unix-Like Systems).

   - ![man-pages](docs/images/manpages.gif)
      + [manpages.zip](https://urbanjost.github.io/M_datapac/manpages.zip)
      + [manpages.tgz](https://urbanjost.github.io/M_datapac/manpages.tgz)

   - [CHANGELOG](docs/CHANGELOG.md) provides a history of significant changes
-->

### Developer
   - [ford(1) output](https://urbanjost.github.io/M_datapac/fpm-ford/index.html).
   - [doxygen(1) output](https://urbanjost.github.io/M_datapac/doxygen_out/html/index.html).
   - [github action status](docs/STATUS.md) 
---

### License
   CC0-1.0

## References
   * [datapac](https://www.nist.gov/itl/sed/datapac)
---
