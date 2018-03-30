*Public Opinion ISSP

*6-item scale for Sensitivity Analysis

use C:\data\feedback1.dta, clear

factor govjobs govincdiff govprices govhealth govold govunemp
rotate, varimax
predict govs6
factor govjobs govincdiff
predict govsV
sum govsV
alpha govjobs govincdiff
*0.6242

drop govsV
*In order to calculate the error variance of the final public opinion measure 
*it is necessary to know the variance of the latent variable before collapsing 
*and then taking this and multiplying it times 1-alpha reliability for the scale.
sum govs6
alpha govincdiff govprices govhealth govold govunemp
*0.71
*Public Opinion with Weights
restore, not
preserve
drop if id==.
collapse  countryx govincdiff govjobs govprices govhealth govold govunemp socx govs6 year [pweight=weight], by (id)
factor govjobs govincdiff, pcf
predict govsAT
sum govsAT
alpha govjobs govincdiff
display
egen govsR = rowmean(govincdiff govjobs)
sort id

save C:\data\feedback2.dta, replace

*Public Opinion NO Weights
restore
collapse  countryx govincdiff govjobs socx year, by (id)
factor govjobs govincdiff, pcf
predict govsN
sum govsN
egen govsNR = rowmean(govincdiff govjobs)
sort id

save C:\data\feedbackNO2.dta, replace

merge id using C:\data\feedback2.dta
drop _merge

label var govsN "Social Policy Preferences NO WEIGHTS"
label var govsAT "Social Policy Preferences PWEIGHTS"
label var govs6 "Social Policy Preferences 6-item RoG"
label var govsR "Social Policy Preferences Org. Metric NO W"
label var govsNR "Social Policy Preferences Org. Metric P"

save C:\data\feedback3.dta, replace
