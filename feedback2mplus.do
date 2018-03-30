use C:\Data\feedbackC.dta, clear
*This is a frequency weight, but freqweight can only be used with integers, therefore the case number goes up very high and fit statistics in MPlus seem to crash as a result. It seems that using estimator MLR helps to solve this as results are not scale dependent.
recode countryx (36=17)(40=33)(124=33)(208=50)(246=100)(250=33)(276=17)(372=25)(380=25)(392=33)(528=33)(554=25)(578=20)(620=50)(724=33)(752=33)(756=33)(826=17)(840=17), gen(fweight)
*This is a sampling weight, but it cannot be used with estimator ML.
*recode countryx (36=.17)(40=.33)(124=.33)(208=.50)(246=1)(250=.33)(276=.17)(372=.25)(380=.25)(392=.33)(528=.33)(554=.25)(578=.20)(620=.50)(724=.33)(752=.33)(756=.33)(826=.17)(840=.17), gen(fweight)

save C:\Data\feedbackC.dta, replace
*C-Spending
use C:\Data\feedbackC.dta, clear
drop veto76
drop govincdiff govjobs year govsN govsNR govprices govhealth govold govunemp govs6 govsR yeardv vetoz veto5 pctgdp decomm fweight
collapse socx-lpc, by(countryx)
gen country=countryx
drop countryx
stata2mplus using C:\Data\sCsoc, replace

use C:\Data\feedbackC.dta, clear
replace veto7=veto76
drop veto76
drop govincdiff govjobs year govsN govsNR govprices govhealth govold govunemp govsAT govsR yeardv vetoz veto5 pctgdp decomm fweight
drop if govs6==.
collapse socx-lpc, by(countryx)
gen country=countryx
drop countryx
stata2mplus using C:\Data\siml_C6_soc, replace

*C-Decomm
use C:\Data\feedbackC.dta, clear
drop veto76
drop govincdiff govjobs year govsN govsNR govprices govhealth govold govunemp govs6 govsR yeardv vetoz veto5 pctgdp socx fweight
collapse govsAT-decomm, by(countryx)
gen country=countryx
drop countryx
drop if decomm==.
stata2mplus using C:\Data\siml_C_dec, replace

use C:\data\feedbackC.dta, clear
replace veto7=veto76
drop veto76
drop govincdiff govjobs year govsN govsNR govprices govhealth govold govunemp govsAT govsR yeardv vetoz veto5 pctgdp socx fweight
collapse govs6-decomm, by(countryx)
gen country=countryx
drop countryx
drop if govs6==.
drop if decomm==.
stata2mplus using C:\data\siml_C6_dec, replace

*CT-Spending
use C:\data\feedbackC.dta, clear
drop veto76
drop govincdiff govjobs year govsN govsNR govprices govhealth govold govunemp govs6 govsR yeardv vetoz veto5 pctgdp decomm
gen country=countryx
drop countryx
stata2mplus using C:\data\siml_CT_soc, replace

use C:\data\feedbackC.dta, clear
replace veto7=veto76
drop veto76
drop govincdiff govjobs year govsN govsNR govprices govhealth govold govunemp govsAT govsR yeardv vetoz veto5 pctgdp decomm
gen country=countryx
drop countryx
drop if govs6==.
stata2mplus using C:\data\siml_CT6_soc, replace


*CT-Decomm
use C:\data\feedbackC.dta, clear
drop veto76
drop govincdiff govjobs year govsN govsNR govprices govhealth govold govunemp govs6 govsR yeardv vetoz veto5 pctgdp socx
collapse countryx-fweight, by(id)
gen country=countryx
drop countryx
drop if decomm==.
stata2mplus using C:\data\siml_CT_dec, replace

use C:\data\feedbackC.dta, clear
replace veto7=veto76
drop veto76
drop govincdiff govjobs year govsN govsNR govprices govhealth govold govunemp govsAT govsR yeardv vetoz veto5 pctgdp socx
collapse countryx-fweight, by(id)
gen country=countryx
drop countryx
drop if govs6==.
drop if decomm==.
stata2mplus using C:\data\siml_CT6_dec, replace
*Country .dat files
*Country. 2-item
use C:\data\feedbackC.dta, clear
preserve
collapse govsAT decomm socx aged rpc unemp gdp femlf veto7, by(country)
corr govsAT socx aged rpc unemp gdp femlf veto7
sum govsAT socx aged rpc unemp gdp femlf veto7
drop if decomm==.
corr govsAT decomm aged rpc unemp gdp femlf veto7
sum govsAT decomm aged rpc unemp gdp femlf veto7
restore


 *save as csocx.dat in /data


 *saved as cdec.dat
*Country. 6-item
use C:\data\feedbackC.dta, clear
preserve
drop if govs6==.
collapse govs6 decomm socx aged rpc unemp gdp femlf veto7, by(country)
corr govs6 socx aged rpc unemp gdp femlf veto7
sum govs6 socx aged rpc unemp gdp femlf veto7
drop if decomm==.
corr govs6 decomm aged rpc unemp gdp femlf veto7
sum govs6 decomm aged rpc unemp gdp femlf veto7
restore
*Country-time .dat files
*Country-time. 2-item
use C:\data\feedbackC.dta, clear
gen weight = fweight/100
corr govsAT socx aged rpc unemp gdp femlf veto7 [aweight=weight]
corr govsAT decomm aged rpc unemp gdp femlf veto7 [aweight=weight]
sum socx govsAT rpc aged unemp gdp femlf veto7 [aweight=weight]
drop if decomm==.
sum decomm govsAT rpc aged unemp gdp femlf veto7 [aweight=weight]

 
*Country-time SOCX. 6-item
use C:\data\feedbackC.dta, clear
gen weight = fweight/100
drop if govs6==.
corr socx govs6 rpc aged unemp gdp femlf veto7 [aweight=weight]
corr decomm govs6 rpc aged unemp gdp femlf veto7 [aweight=weight]
sum socx govs6 rpc aged unemp gdp femlf veto7 [aweight=weight]
drop if decomm==.
sum decomm govs6 rpc aged unemp gdp femlf veto7 [aweight=weight]

*Standardized Measures
*These were not used in the end
use C:\data\feedbackC.dta, clear
egen unempZ = std(unemp) 
egen agedZ = std(aged) 
egen vetoZ = std(veto7) 
egen rpcZ=std(rpc) 
egen lpcZ=std(leftcab)  
egen femZ=std(femlf)
egen spZ = std(socx)
egen govZ = std(govsAT)
egen gov6Z = std(govs6)
drop decomm _merge country
stata2mplus using feedbackZ, replace
save C:\data\feedbackZ.dta, replace
*Stdz. for decomm dataset
use "C:\data\OpPol", clear
egen edyrsZ = std(edyrs) 
egen unempZ = std(unemp) 
egen agedZ = std(aged) 
egen vetoZ = std(veto4) 
egen rpcZ=std(rpc) 
egen lpcZ=std(lpc)  
egen femZ=std(femlf)
egen spZ = std(socx)
egen govZ = std(govsAT)
egen gov6Z = std(govs6)
egen decommZ = std(decomm)
drop socprot public yearm corpc cent
drop if govZ==.
drop if decommZ==.
drop country
drop _merge
save "C:\data\oppolscruggsZ.dta", replace
stata2mplus using oppolscruggsZ, replace
*IV Assesment
Using 2SLS independently for each equation in the system of equations will test the validity of the IVs. This is mostly only to test the FLP IV.

*Spending
use "C:\data\oppolZ.dta", clear
ivregress 2sls spZ (govZ = femZ), first cluster(countryx)
estat firststage
estat endogenous
*As far as I can tell, I am only testing whether the instrument (FLP) is exogenous from social policy, therefore I test only the equation with opinion and its instrument. Results are promising. So the above tests the reverse assumption: that the instrument explains variance in spending and it doesn’t.

*and the estat overid, says that there are no overidentifying restrictions
