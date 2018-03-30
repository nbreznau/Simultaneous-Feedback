*Set working directory

cd "C:\data\"

*ISSP 1985 Role of Gov I

use ZA1490.dta, clear

recode V3 (1=36)(2=278)(3=826)(4=840)(5=40)(8=380), gen(countryx)
gen year=1986
recode V101 (1=4)(2=3)(3=2)(4=1), gen(govjobs)
recode V107 (1=4)(2=3)(3=2)(4=1), gen(govincdiff)
recode  V102 V103 V104 V105 V106 (1=4) (2=3) (3=2) (4=1), gen(govprices govhealth govold govind govunemp)
gen weight85 = V141
label var weight85 "Weight85"
gen isco = V110
gen age = V117
gen sex = V118
gen mar = V120
gen edyrs = V122
tab V127
tab V128
gen hhinc = V128
recode V109 (2=0), gen(unemp_i)
sort countryx

save I85merge.dta, replace

*ISSP 1990 Role of Gov II 

use ZA1950.dta, clear

recode v3 (1=36)(2=278)(3=280)(4=826)(5=828)(6=840)(7=348)(8=380)(9=372)(10=578)(11=376), gen(countryx)
gen year=1990
recode v49 (1=4)(2=3)(3=2)(4=1), gen(govjobs)
recode v55 (1=4)(2=3)(3=2)(4=1), gen(govincdiff)
recode v50 v51 v52 v53 v54  (1=4) (2=3) (3=2) (4=1), gen(govprices govhealth govold govind govunemp)
gen weight90 = v114
label var weight90 "Weight 90"
gen sex = v59
gen age = v60
gen mar = v61
gen lifep = v62
gen isco = v66
gen edyrs = v80
gen lr = v87
gen hhinc = v100
recode v63 (5=1)(1/4=0)(6/10=0), gen(unemp_i)
sort countryx

save I90merge.dta, replace

*ISSP 1991 Religion I 

use ZA2150.dta, clear

recode v3 (18=36)(1=278)(2=280)(3=826)(4=828)(5=840)(6=348)(7=528)(8=380)(9=372)(10=578)(11=40)(12=705)(13=616)(14=376)(15=608)(16=554)(17=643), gen(countryx)
gen year=1991
recode v5 (1=4)(2=3)(3=2)(4=1), gen(govjobs)
recode v6 (1=4)(2=3)(3=2)(4=1), gen(govincdiff)
gen weight91 = v131
label var weight91 "Weight 91"
*NO WEIGHT specified for Australia or it is 0 (not possible)
*I recode it to 1 for equal weighting and so Australia doesn’t get dropped after the collapse with weights
replace weight91=1 if countryx==36
gen sex = v77
gen age = v78
gen mar = v79
gen lifep = v80
gen isco = v84
gen edyrs = v98
gen lr = v105
gen hhinc = v118
recode v81 (5=1)(1/4=0)(6/10=0), gen(unemp_i)
sort countryx

save I91merge.dta, replace

*ISSP 1996 Role of Gov III 

use ZA2900.dta, clear

recode v3 (1=36)(2=278)(3=280)(4=826)(5=828)(6=840)(7=40)(8=348)(9=380)(10=372)(11=528)(12=578)(13=752)(14=203)(15=705)(16=616)(17=100)(18=643)(19=554)(20=124)(21=608)(22=376)(23=376)(24=392)(25=724)(26=428)(27=250)(28=196)(30=756), gen(countryx)
gen year=1996
recode v36 (1=4)(2=3)(3=2)(4=1), gen(govjobs)
recode v42 (1=4)(2=3)(3=2)(4=1), gen(govincdiff)
recode v37 v38 v39 v40 v41  (1=4) (2=3) (3=2) (4=1), gen(govprices govhealth govold govind govunemp)
gen weight96 = v325
label var weight96 "Weight 96"
gen sex = v200
gen age = v201
gen mar = v202
gen lifep = v203
gen edyrs = v204
gen isco = v208
gen lrS = v223
recode v206 (5=1)(1/4=0)(6/10=0), gen(unemp_i)
sort countryx

save I96merge.dta, replace

*ISSP 1998 Religion II

use ZA3190.dta, clear

recode v3 (1=36)(2=278)(3=280)(4=826)(5=828)(6=840)(7=40)(8=348)(9=380)(10=372)(11=528)(12=578)(13=752)(14=203)(15=705)(16=616)(17=100)(18=643)(19=554)(20=124)(21=608)(22=376)(23=376)(24=392)(25=724)(26=428)(27=703)(28=250)(29=196)(30=620)(31=152)(32=208)(33=756), gen(countryx)
gen year=1998
recode v5 (1=4)(2=3)(3=2)(4=1), gen(govjobs)
recode v6 (1=4)(2=3)(3=2)(4=1), gen(govincdiff)
gen weight98 = v316
label var weight98 "Weight 98"
gen sex = v200
gen age = v201
gen mar = v202
gen lifep = v203
gen edyrs = v204
gen isco = v208
gen lrS = v223
recode v206 (5=1)(1/4=0)(6/10=0), gen(unemp_i)
sort countryx

save I98merge.dta, replace

*ISSP 2006 RoG IV

use ZA4700.dta, clear

clonevar countryx = V3a
gen year=2006
recode V25 (1=4)(2=3)(3=2)(4=1), gen(govjobs)
recode V31 (1=4)(2=3)(3=2)(4=1), gen(govincdiff)
recode V26 V27 V28 V30  (1=4) (2=3) (3=2) (4=1), gen(govprices govhealth govold govunemp)
gen weight06 = weight
gen lifep = cohab
gen edyrs = educyrs
gen isco = ISCO88
gen lrS = PARTY_LR
recode wrkst (5=1)(1/4=0)(6/10=0), gen(unemp_i)
sort countryx

save I06merge.dta, replace

*ISSP 2016 RoG V

use ZA6900_v1-0-0.dta, clear

clonevar countryx = country
gen year=2016
recode v21 (1=4)(2=3)(3=2)(4=1)(*=.), gen(govjobs)
recode v27 (1=4)(2=3)(3=2)(4=1)(*=.), gen(govincdiff)
recode v22 v23 v24 v26  (1=4) (2=3) (3=2) (4=1)(*=.), gen(govprices govhealth govold govunemp)
gen weight16 = WEIGHT
gen sex = SEX
gen age = AGE
gen mar = MARITAL
recode PARTLIV (1 2=1)(*=2), gen(lifep)
gen edyrs = EDUCYRS
gen isco = .
gen isco08 = ISCO08
gen lrS = PARTY_LR
recode MAINSTAT (2=1)(*=0), gen(unemp_i)
sort countryx

save I16merge.dta, replace

***********************************************************
*    Merge for Breznau (2016) and Breznau (forthcoming)   *
***********************************************************

cd "C:\data\"

use I98merge.dta, clear

append using C:\data\I85merge.dta, keep(countryx year govjobs govincdiff govprices govhealth govold govunemp sex age mar edyrs isco unemp_i weight85)
append using C:\data\I90merge.dta, keep(countryx year govjobs govincdiff govprices govhealth govold govunemp sex age mar lifep edyrs isco unemp_i lr weight90)
append using C:\data\I91merge.dta, keep(countryx year govjobs govincdiff sex age mar lifep edyrs isco unemp_i lr weight91)
append using C:\data\I96merge.dta, keep(countryx year govjobs govincdiff govprices govhealth govold govunemp sex age mar lifep edyrs isco unemp_i lrS weight96)
append using C:\data\I06merge.dta, keep(countryx year govjobs govincdiff govprices govhealth govold govunemp sex age mar lifep edyrs isco unemp_i lrS weight06)

*Fix Weights
*1985 has a very strange weight variable that it seems will fall within the apppropriate range if divided by 100k. I cannot find anything online that discusses this problem.
gen weight85adj = weight85/100000
egen weight=rowmean(weight85adj weight90 weight91 weight96 weight98 weight06)
drop weight85 weight85adj weight90 weight91 weight96 weight98 weight06


*Unique Case ID 

recode countryx (278 280=276)

gen id = .
replace id = 3686 if year==1986 & countryx==36
replace id = 3690 if year==1990 & countryx==36
replace id = 3693 if year==1991 & countryx==36
replace id = 3696 if year==1996 & countryx==36
replace id = 3698 if year==1998 & countryx==36
replace id = 3607 if year==2006 & countryx==36
replace id = 4086 if year==1986 & countryx==40
replace id = 4093 if year==1991 & countryx==40
replace id = 4099 if year==1998 & countryx==40
replace id = 12496 if year==1996 & countryx==124
replace id = 12499 if year==1998 & countryx==124
replace id = 12406 if year==2006 & countryx==124
replace id = 20898 if year==1998 & countryx==208
replace id = 20808 if year==2006 & countryx==208
replace id = 24606 if year==2006 & countryx==246
replace id = 25097 if year==1996 & countryx==250
replace id = 25098 if year==1998 & countryx==250
replace id = 25006 if year==2006 & countryx==250
replace id = 27685 if year==1986 & countryx==276
replace id = 27690 if year==1990 & countryx==276
replace id = 27691 if year==1991 & countryx==276
replace id = 27696 if year==1996 & countryx==276
replace id = 27698 if year==1998 & countryx==276
replace id = 27606 if year==2006 & countryx==276
replace id = 37290 if year==1990 & countryx==372
replace id = 37291 if year==1991 & countryx==372
replace id = 37296 if year==1996 & countryx==372
replace id = 37298 if year==1998 & countryx==372
replace id = 37206 if year==2006 & countryx==372
replace id = 38091 if year==1990 & countryx==380
replace id = 38090 if year==1991 & countryx==380
replace id = 38086 if year==1986 & countryx==380
replace id = 38096 if year==1996 & countryx==380
replace id = 38098 if year==1998 & countryx==380
replace id = 39296 if year==1996 & countryx==392
replace id = 39298 if year==1998 & countryx==392
replace id = 39206 if year==2006 & countryx==392
replace id = 52891 if year==1991 & countryx==528
replace id = 52898 if year==1998 & countryx==528
replace id = 52806 if year==2006 & countryx==528
replace id = 55491 if year==1991 & countryx==554
replace id = 55497 if year==1996 & countryx==554
replace id = 55498 if year==1998 & countryx==554
replace id = 55407 if year==2006 & countryx==554
replace id = 57890 if year==1990 & countryx==578
replace id = 57891 if year==1991 & countryx==578
replace id = 57896 if year==1996 & countryx==578
replace id = 57898 if year==1998 & countryx==578
replace id = 57806 if year==2006 & countryx==578
replace id = 62098 if year==1998 & countryx==620
replace id = 62006 if year==2006 & countryx==620
replace id = 72496 if year==1996 & countryx==724
replace id = 72498 if year==1998 & countryx==724
replace id = 72407 if year==2006 & countryx==724
replace id = 75296 if year==1996 & countryx==752
replace id = 75298 if year==1998 & countryx==752
replace id = 75206 if year==2006 & countryx==752
replace id = 75698 if year==1996 & countryx==756
replace id = 75699 if year==1998 & countryx==756
replace id = 75607 if year==2006 & countryx==756
replace id = 82685 if year==1986 & countryx==826
replace id = 82690 if year==1990 & countryx==826
replace id = 82691 if year==1991 & countryx==826
replace id = 82696 if year==1996 & countryx==826
replace id = 82698 if year==1998 & countryx==826
replace id = 82606 if year==2006 & countryx==826
replace id = 84006 if year==2006 & countryx==840
replace id = 84090 if year==1990 & countryx==840
replace id = 84091 if year==1991 & countryx==840
replace id = 84096 if year==1996 & countryx==840
replace id = 84098 if year==1998 & countryx==840
replace id = 84085 if year==1986 & countryx==840
*Some data are redundant in the ISSP
drop if id==37290
drop if id==38090
*SOCX Welfare Spending

*This is measured the same year of the ISSP data collection for attitudes.

*It is entered here by hand because the OECD regularly pudates or adjusts the values in their data without telling us as they informed me in an email in 2011.

*data extracted on 22 May 2014 18:31 UTC (GMT) from OECD.Stat
gen socx=.
replace socx = 12.1 if id== 3686
replace socx = 13.2 if id== 3690
replace socx = 15.6 if id== 3693
replace socx = 16.2 if id== 3696 
replace socx = 16.7 if id== 3698 
replace socx = 16.4 if id== 3607 
replace socx = 23.7 if id== 4086 
replace socx = 26.2 if id== 4093 
replace socx = 26.8 if id== 4099 
replace socx = 18.0 if id== 12496 
replace socx = 16.7 if id== 12499 
replace socx = 16.9 if id== 12406 
replace socx = 25.1 if id== 20898 
replace socx = 26.8 if id== 20808 
replace socx = 25.8 if id== 24606 
replace socx = 29.6 if id== 25097 
replace socx = 29.7 if id== 25098 
replace socx = 29.8 if id== 25006 
replace socx = 22.5 if id== 27685 
replace socx = 21.7 if id== 27690 
replace socx = 23.7 if id== 27691 
replace socx = 27.2 if id== 27696 
replace socx = 26.5 if id== 27698 
replace socx = 26.1 if id== 27606 
replace socx = 18.2 if id== 37291 
replace socx = 17.0 if id== 37296 
replace socx = 15.0 if id== 37298 
replace socx = 16.1 if id== 37206 
replace socx = 20.2 if id== 38091 
replace socx = 20.8 if id== 38086 
replace socx = 21.9 if id== 38096 
replace socx = 22.8 if id== 38098 
replace socx = 14.3 if id== 39296 
replace socx = 15.2 if id== 39298 
replace socx = 18.5 if id== 39206 
replace socx = 25.5 if id== 52891 
replace socx = 21.4 if id== 52898 
replace socx = 21.7 if id== 52806 
replace socx = 21.8 if id== 55491 
replace socx = 19.5 if id== 55497 
replace socx = 20.0 if id== 55498 
replace socx = 18.6 if id== 55407 
replace socx = 22.3 if id== 57890 
replace socx = 23.3 if id== 57891 
replace socx = 22.6 if id== 57896 
replace socx = 23.7 if id== 57898 
replace socx = 20.3 if id== 57806 
replace socx = 17.2 if id== 62098 
replace socx = 23.0 if id== 62006 
replace socx = 21.3 if id== 72496 
replace socx = 20.6 if id== 72498 
replace socx = 21.3 if id== 72407 
replace socx = 31.6 if id== 75296 
replace socx = 30.2 if id== 75298 
replace socx = 28.4 if id== 75206 
replace socx = 18.7 if id== 75698 
replace socx = 18.5 if id== 75699 
replace socx = 18.6 if id== 75607 
replace socx = 19.4 if id== 82685 
replace socx = 16.7 if id== 82690 
replace socx = 18.2 if id== 82691 
replace socx = 19.6 if id== 82696 
replace socx = 18.9 if id== 82698 
replace socx = 20.3 if id== 82606 
replace socx = 16.1 if id== 84006 
replace socx = 13.6 if id== 84090 
replace socx = 14.5 if id== 84091 
replace socx = 15.3 if id== 84096 
replace socx = 14.9 if id== 84098 
replace socx = 13.2 if id== 84085 

numlabel, add mask ("#.") force
save C:\data\feedback1.dta, replace




***********************************************************
*         Merge for Decaying Positive Returns             *
***********************************************************
*Merge for Breznau Positive Return Decay: The Declining Role of Social Policy Preferences in Democracies 

cd "C:\data\"

use I98merge.dta, clear

append using C:\data\I85merge.dta, keep(countryx year govjobs govincdiff govprices govhealth govold govunemp sex age mar edyrs isco unemp_i weight85)
append using C:\data\I90merge.dta, keep(countryx year govjobs govincdiff govprices govhealth govold govunemp sex age mar lifep edyrs isco unemp_i lr weight90)
append using C:\data\I91merge.dta, keep(countryx year govjobs govincdiff sex age mar lifep edyrs isco unemp_i lr weight91)
append using C:\data\I96merge.dta, keep(countryx year govjobs govincdiff govprices govhealth govold govunemp sex age mar lifep edyrs isco unemp_i lrS weight96)
append using C:\data\I06merge.dta, keep(countryx year govjobs govincdiff govprices govhealth govold govunemp sex age mar lifep edyrs isco unemp_i lrS weight06)
append using C:\data\I16merge.dta, keep(countryx year govjobs govincdiff govprices govhealth govold govunemp sex age mar lifep edyrs isco isco08 unemp_i lrS weight16)

*Fix Weights
*1985 has a very strange weight variable that it seems will fall within the apppropriate range if divided by 100k. 
*I cannot find anything online that discusses this problem.
gen weight85adj = weight85/100000
egen weight=rowmean(weight85adj weight90 weight91 weight96 weight98 weight06 weight16)
drop weight85 weight85adj weight90 weight91 weight96 weight98 weight06 weight16


*Unique Case ID 

recode countryx (278 280=276)

gen id = .
replace id = 3686 if year==1986 & countryx==36
replace id = 3690 if year==1990 & countryx==36
replace id = 3693 if year==1991 & countryx==36
replace id = 3696 if year==1996 & countryx==36
replace id = 3698 if year==1998 & countryx==36
replace id = 3607 if year==2006 & countryx==36
*No 36 in 2016
replace id = 4086 if year==1986 & countryx==40
replace id = 4093 if year==1991 & countryx==40
replace id = 4099 if year==1998 & countryx==40
*No 40 in 2016
replace id = 12496 if year==1996 & countryx==124
replace id = 12499 if year==1998 & countryx==124
replace id = 12406 if year==2006 & countryx==124
*No 124 in 2016
replace id = 20898 if year==1998 & countryx==208
replace id = 20808 if year==2006 & countryx==208
replace id = 20816 if year==2016 & countryx==208
replace id = 24606 if year==2006 & countryx==246
replace id = 24616 if year==2016 & countryx==246
replace id = 25097 if year==1996 & countryx==250
replace id = 25098 if year==1998 & countryx==250
replace id = 25006 if year==2006 & countryx==250
replace id = 25016 if year==2016 & countryx==250
replace id = 27685 if year==1986 & countryx==276
replace id = 27690 if year==1990 & countryx==276
replace id = 27691 if year==1991 & countryx==276
replace id = 27696 if year==1996 & countryx==276
replace id = 27698 if year==1998 & countryx==276
replace id = 27606 if year==2006 & countryx==276
replace id = 27616 if year==2016 & countryx==276
replace id = 37290 if year==1990 & countryx==372
replace id = 37291 if year==1991 & countryx==372
replace id = 37296 if year==1996 & countryx==372
replace id = 37298 if year==1998 & countryx==372
replace id = 37206 if year==2006 & countryx==372
replace id = 38091 if year==1990 & countryx==380
replace id = 38090 if year==1991 & countryx==380
replace id = 38086 if year==1986 & countryx==380
replace id = 38096 if year==1996 & countryx==380
replace id = 38098 if year==1998 & countryx==380
replace id = 39296 if year==1996 & countryx==392
replace id = 39298 if year==1998 & countryx==392
replace id = 39206 if year==2006 & countryx==392
replace id = 39216 if year==2016 & countryx==392
replace id = 52891 if year==1991 & countryx==528
replace id = 52898 if year==1998 & countryx==528
replace id = 52806 if year==2006 & countryx==528
replace id = 55491 if year==1991 & countryx==554
replace id = 55497 if year==1996 & countryx==554
replace id = 55498 if year==1998 & countryx==554
replace id = 55407 if year==2006 & countryx==554
replace id = 55416 if year==2016 & countryx==554
replace id = 57890 if year==1990 & countryx==578
replace id = 57891 if year==1991 & countryx==578
replace id = 57896 if year==1996 & countryx==578
replace id = 57898 if year==1998 & countryx==578
replace id = 57806 if year==2006 & countryx==578
replace id = 57817 if year==2016 & countryx==578
replace id = 62098 if year==1998 & countryx==620
replace id = 62006 if year==2006 & countryx==620
replace id = 72496 if year==1996 & countryx==724
replace id = 72498 if year==1998 & countryx==724
replace id = 72407 if year==2006 & countryx==724
replace id = 72416 if year==2016 & countryx==724
replace id = 75296 if year==1996 & countryx==752
replace id = 75298 if year==1998 & countryx==752
replace id = 75206 if year==2006 & countryx==752
replace id = 75216 if year==2016 & countryx==752
replace id = 75698 if year==1996 & countryx==756
replace id = 75699 if year==1998 & countryx==756
replace id = 75607 if year==2006 & countryx==756
replace id = 75617 if year==2016 & countryx==756
replace id = 82685 if year==1986 & countryx==826
replace id = 82690 if year==1990 & countryx==826
replace id = 82691 if year==1991 & countryx==826
replace id = 82696 if year==1996 & countryx==826
replace id = 82698 if year==1998 & countryx==826
replace id = 82606 if year==2006 & countryx==826
replace id = 82616 if year==2016 & countryx==826
replace id = 84006 if year==2006 & countryx==840
replace id = 84090 if year==1990 & countryx==840
replace id = 84091 if year==1991 & countryx==840
replace id = 84096 if year==1996 & countryx==840
replace id = 84098 if year==1998 & countryx==840
replace id = 84085 if year==1986 & countryx==840
replace id = 84016 if year==2016 & countryx==840

*Some data are redundant in the ISSP
drop if id==37290
drop if id==38090

*Actual survey year, 
recode id (3686 =1986)(3690 =1990)(3693 =1993)(3696 =1996)(3698 =1998)  ///
(3607 =2007)(4086 =1986)(4093 =1993)(4099 =1999)  ///
(12496 =1996)(12499 =1999)(12406 =2006)(20898 =1998)(20808 =2008)(20816 =2016)  ///
(24606 =2006)(24616 =2016)(25097 =1997)(25098 =1998)(25006 =2006)(25016 =2016)  ///
(27685 =1985)(27690 =1990)(27691 =1991)(27696 =1996)(27698 =1998)(27606 =2006)  ///
(27616 =2016)(37290 =1990)(37291 =1991)(37296 =1996)(37298 =1998)(37206 =2006)  ///
(38091 =1991)(38090 =1990)(38086 =1986)(38096 =1996)(38098 =1998)(39296 =1996)  ///
(39298 =1998)(39206 =2006)(39216 =2016)(52891 =1991)(52898 =1998)(52806 =2006)  ///
(55491 =1991)(55497 =1997)(55498 =1998)(55407 =2007)(55416 =2016)(57890 =1990)  ///
(57891 =1991)(57896 =1996)(57898 =1998)(57806 =2006)(57817 =2017)(62098 =1998)  ///
(62006 =2006)(72496 =1996)(72498 =1998)(72407 =2007)(72416 =2016)(75296 =1996)  ///
(75298 =1998)(75206 =2006)(75216 =2016)(75698 =1998)(75699 =1999)(75607 =2007)  ///
(75617 =2017)(82685 =1985)(82690 =1990)(82691 =1991)(82696 =1996)(82698 =1998)  ///
(82606 =2006)(82616 =2016)(84006 =2006)(84090 =1990)(84091 =1991)(84096 =1996)  ///
(84098 =1998)(84085 =1985)(84016 =2016), gen(yeardv)

*Note that 2017 OECD SOCX not yet available so take 2016 for now and fix later
recode yeardv (2017=2016)

sort countryx yeardv

*SOCX Welfare Spending
merge m:m countryx yeardv using socx80to16.dta
*Some countries 2016 OECD data not yet out, take most recent year
replace socx=23.06 if countryx==392 & yeardv==2016
replace socx=19.667 if countryx==554 & yeardv==2016
replace socx=23.261 if countryx==40 & yeardv==1986 /*Austria in 1985 nearest obs*/

drop if govprices==. & govhealth==. & govold==. & govunemp==. & govjobs==. & govincdiff==.
drop if socx==.
keep countryx year yeardv id govjobs govincdiff govprices govhealth govold govunemp sex age mar lifep edyrs isco isco08 unemp_i lrS weight socx


numlabel, add mask ("#.") force
save C:\data\sfm1.dta, replace
