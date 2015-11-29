> install.packages("quantmod")
Installing package into ‘C:/Users/MINGHAN/Documents/R/win-library/3.2’
(as ‘lib’ is unspecified)
--- Please select a CRAN mirror for use in this session ---
also installing the dependencies ‘xts’, ‘zoo’, ‘TTR’

trying URL 'http://cran.stat.nus.edu.sg/bin/windows/contrib/3.2/xts_0.9-7.zip'
Content type 'application/zip' length 662006 bytes (646 KB)
downloaded 646 KB

trying URL 'http://cran.stat.nus.edu.sg/bin/windows/contrib/3.2/zoo_1.7-12.zip'
Content type 'application/zip' length 897142 bytes (876 KB)
downloaded 876 KB

trying URL 'http://cran.stat.nus.edu.sg/bin/windows/contrib/3.2/TTR_0.23-0.zip'
Content type 'application/zip' length 280348 bytes (273 KB)
downloaded 273 KB

trying URL 'http://cran.stat.nus.edu.sg/bin/windows/contrib/3.2/quantmod_0.4-5.zip'
Content type 'application/zip' length 473868 bytes (462 KB)
downloaded 462 KB

package ‘xts’ successfully unpacked and MD5 sums checked
package ‘zoo’ successfully unpacked and MD5 sums checked
package ‘TTR’ successfully unpacked and MD5 sums checked
package ‘quantmod’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\MINGHAN\AppData\Local\Temp\RtmpCMuvM8\downloaded_packages
> library(quantmod)
Loading required package: xts
Loading required package: zoo

Attaching package: ‘zoo’

The following objects are masked from ‘package:base’:

    as.Date, as.Date.numeric

Loading required package: TTR
Version 0.4-0 included new data defaults. See ?getSymbols.
> amzn = getSymbols("AMZN",auto.assign=FALSE)
    As of 0.4-0, ‘getSymbols’ uses env=parent.frame() and
 auto.assign=TRUE by default.

 This  behavior  will be  phased out in 0.5-0  when the call  will
 default to use auto.assign=FALSE. getOption("getSymbols.env") and 
 getOptions("getSymbols.auto.assign") are now checked for alternate defaults

 This message is shown once per session and may be disabled by setting 
 options("getSymbols.warning4.0"=FALSE). See ?getSymbols for more details.
Warning message:
In download.file(paste(yahoo.URL, "s=", Symbols.name, "&a=", from.m,  :
  downloaded length 156410 != reported length 200
> sampleTimes = index(amzn) 

> summary(sampleTimes)
        Min.      1st Qu.       Median         Mean      3rd Qu. 
"2007-01-03" "2009-03-25" "2011-06-15" "2011-06-16" "2013-09-07" 
        Max. 
"2015-11-27" 
> length(sampleTimes)
[1] 2243
> class(sampleTimes)
[1] "Date"
> table(grepl("^2012",sampleTimes)
+ )

FALSE  TRUE 
 1993   250 
> FormatSampleTimes <- format(sampleTimes, "%a %Y %m %d")
> head(FormatSampleTimes)
[1] "Wed 2007 01 03" "Thu 2007 01 04" "Fri 2007 01 05" "Mon 2007 01 08"
[5] "Tue 2007 01 09" "Wed 2007 01 10"
> table(grepl("^Mon 2012",FormatSampleTimes))

FALSE  TRUE 
 2196    47 
> 