# R code for population density.

## Installing packages
install.packages("spatstat")

# using the package(s)
library(spatstat)


* installing *source* package ‘deldir’ ...
** package ‘deldir’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
gfortran -mmacosx-version-min=10.13 -fno-optimize-sibling-calls  -fPIC  -Wall -g -O2  -c  acchk.f90 -o acchk.o
make: gfortran: No such file or directory
make: *** [acchk.o] Error 1
ERROR: compilation failed for package ‘deldir’
* removing ‘/Users/seanlemaster/Library/R/x86_64/4.2/library/deldir’
ERROR: dependency ‘deldir’ is not available for package ‘spatstat.geom’
* removing ‘/Users/seanlemaster/Library/R/x86_64/4.2/library/spatstat.geom’
ERROR: dependency ‘spatstat.geom’ is not available for package ‘spatstat.random’
* removing ‘/Users/seanlemaster/Library/R/x86_64/4.2/library/spatstat.random’
ERROR: dependencies ‘spatstat.geom’, ‘spatstat.random’ are not available for package ‘spatstat.explore’
* removing ‘/Users/seanlemaster/Library/R/x86_64/4.2/library/spatstat.explore’
ERROR: dependencies ‘spatstat.geom’, ‘spatstat.random’, ‘spatstat.explore’ are not available for package ‘spatstat.model’
* removing ‘/Users/seanlemaster/Library/R/x86_64/4.2/library/spatstat.model’
ERROR: dependencies ‘spatstat.geom’, ‘spatstat.random’, ‘spatstat.explore’, ‘spatstat.model’ are not available for package ‘spatstat.linnet’
* removing ‘/Users/seanlemaster/Library/R/x86_64/4.2/library/spatstat.linnet’
ERROR: dependencies ‘spatstat.geom’, ‘spatstat.random’, ‘spatstat.explore’, ‘spatstat.model’, ‘spatstat.linnet’ are not available for package ‘spatstat’
* removing ‘/Users/seanlemaster/Library/R/x86_64/4.2/library/spatstat’

The downloaded source packages are in
	‘/private/var/folders/0b/gdh0zk_s2l96dhrr5y466k8m0000gn/T/RtmpuRsAzJ/downloaded_packages’
Warning messages:
1: In install.packages("spatstat") :
  installation of package ‘deldir’ had non-zero exit status
2: In install.packages("spatstat") :
  installation of package ‘spatstat.geom’ had non-zero exit status
3: In install.packages("spatstat") :
  installation of package ‘spatstat.random’ had non-zero exit status
4: In install.packages("spatstat") :
  installation of package ‘spatstat.explore’ had non-zero exit status
5: In install.packages("spatstat") :
  installation of package ‘spatstat.model’ had non-zero exit status
6: In install.packages("spatstat") :
  installation of package ‘spatstat.linnet’ had non-zero exit status
7: In install.packages("spatstat") :
  installation of package ‘spatstat’ had non-zero exit status
