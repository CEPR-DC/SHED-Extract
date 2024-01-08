

/* Part 1: set directories */

global version "0.9" 
global do "F:\Dropbox (CEPR)\Data\homestata\projects\multiple-jobs\do" /* do files */
global locin "F:\Dropbox (CEPR)\Data\CEPRdata\SHED\SHED"  /* data  */
global locout "F:\Dropbox (CEPR)\Data\homestata\projects\multiple-jobs\data" /* do files */


/* Part 2: */

capture program drop shed1 /* capture makes sure it keeps going */
program define shed1
version 15.0

while "`1'"~="" { /* shed1 1979 1980 -- program substitutes these in when it sees '1' (a local macro). look to locin file to see what the 1 is even talking about */
cd "$locin"
use "SHED_`1'_public_data.dta", clear
gen year=`1'
lab var year "Survey year"
*
cd "$do" /*all do-files that exist in the directory and will run over the 1979 data */
do "cepr_shed_all.do" 
do "cepr_shed_indocc.do"
do "cepr_shed_geog.do"
*
sort idnum year
lab data "CEPR SHED Extract, Version $version, `1'" /*$version = global macro and '1' = local macro */
cd "$locout"
save "cepr_shed_`1'.dta", replace
mac shift /* this shifts to the next one - 1980. until it is done and runs out of arguments. when it ends.*/
}
end

capture program drop shed2
program define shed2
version 15.0

while "`1'"~="" {
cd "$locin"
use "public`1'", clear
gen year=`1'
lab var year "Survey year"
*
cd "$do"
do "cepr_shed_all.do"
do "cepr_shed_indocc.do"
do "cepr_shed_geog.do"
*
sort idnum year
lab data "CEPR SHED Extract, Version $version, `1'"
cd "$locout"
save "cepr_shed_`1'.dta", replace
mac shift
}
end


/* program switches */

shed1 2016 2017
shed2 2018
