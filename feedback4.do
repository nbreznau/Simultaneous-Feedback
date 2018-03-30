*Variable Coding
use C:\data\feedback3.dta, clear

label value countryx countryabb
label var countryx "Country ISO"
*Fix Year
gen yeardv = year
replace yeardv = 2006 if year==2006 & countryx==620
replace yeardv = 1986 if year==1986 & countryx==36
replace yeardv = 1990 if year==1990 & countryx==36
replace yeardv = 1993 if year==1991 & countryx==36
replace yeardv = 1996 if year==1996 & countryx==36
replace yeardv = 1998 if year==1998 & countryx==36
replace yeardv = 1993 if year==1991 & countryx==40
replace yeardv = 1999 if year==1998 & countryx==40
replace yeardv = 1996 if year==1996 & countryx==124
replace yeardv = 1999 if year==1998 & countryx==124
replace yeardv = 1998 if year==1998 & countryx==208
replace yeardv = 1997 if year==1996 & countryx==250
replace yeardv = 1998 if year==1998 & countryx==250
replace yeardv = 1985 if year==1986 & countryx==276
replace yeardv = 1990 if year==1990 & countryx==276
replace yeardv = 1991 if year==1991 & countryx==276
replace yeardv = 1996 if year==1996 & countryx==276
replace yeardv = 1998 if year==1998 & countryx==276
replace yeardv = 1991 if year==1991 & countryx==372
replace yeardv = 1996 if year==1996 & countryx==372
replace yeardv = 1998 if year==1998 & countryx==372
replace yeardv = 1985 if year==1986 & countryx==380
replace yeardv = 1990 if year==1990 & countryx==380
replace yeardv = 1991 if year==1991 & countryx==380
replace yeardv = 1996 if year==1996 & countryx==380
replace yeardv = 1999 if year==1998 & countryx==380
replace yeardv = 1996 if year==1996 & countryx==392
replace yeardv = 1998 if year==1998 & countryx==392
replace yeardv = 1991 if year==1991 & countryx==528
replace yeardv = 1998 if year==1998 & countryx==528
replace yeardv = 1991 if year==1991 & countryx==554
replace yeardv = 1997 if year==1996 & countryx==554
replace yeardv = 1998 if year==1998 & countryx==554
replace yeardv = 1990 if year==1990 & countryx==578
replace yeardv = 1996 if year==1996 & countryx==578
replace yeardv = 1998 if year==1998 & countryx==578
replace yeardv = 1996 if year==1996 & countryx==724
replace yeardv = 1998 if year==1998 & countryx==724
replace yeardv = 1996 if year==1996 & countryx==752
replace yeardv = 1998 if year==1998 & countryx==752
replace yeardv = 1999 if year==1998 & countryx==756
replace yeardv = 1998 if year==1996 & countryx==756
replace yeardv = 1985 if year==1986 & countryx==826
replace yeardv = 1990 if year==1990 & countryx==826
replace yeardv = 1991 if year==1991 & countryx==826
replace yeardv = 1996 if year==1996 & countryx==826
replace yeardv = 1998 if year==1998 & countryx==826
replace yeardv = 1985 if year==1986 & countryx==840
replace yeardv = 1990 if year==1990 & countryx==840
replace yeardv = 1991 if year==1991 & countryx==840
replace yeardv = 1996 if year==1996 & countryx==840
replace yeardv = 1998 if year==1998 & countryx==840
replace yeardv = 2006 if year==2006 & countryx==36
replace yeardv = 2006 if year==2006 & countryx==124
replace yeardv = 2008 if year==2006 & countryx==208
replace yeardv = 2006 if year==2006 & countryx==246
replace yeardv = 2006 if year==2006 & countryx==250
replace yeardv = 2006 if year==2006 & countryx==276
replace yeardv = 2006 if year==2006 & countryx==826
replace yeardv = 2006 if year==2006 & countryx==372
replace yeardv = 2006 if year==2006 & countryx==392
replace yeardv = 2006 if year==2006 & countryx==528
replace yeardv = 2007 if year==2006 & countryx==554
replace yeardv = 2006 if year==2006 & countryx==578
replace yeardv = 2007 if year==2006 & countryx==724
replace yeardv = 2006 if year==2006 & countryx==752
replace yeardv = 2007 if year==2006 & countryx==756
replace yeardv = 2006 if year==2006 & countryx==840

label var yeardv "Year based on actual survey data, majority of survey took place in"

gen yeardvz = yeardv-1985
label var yeardvz "Year starting at 0 based on DV"

*GDP

*GDP PPP per capita in thosands of US dollars fixed at 2000 rates. Data extracted on April 19th, 2010 11:32 UTC (GMT) from OECD.Stat. Again, entered by hand to reflect exact values dowloaded in 2010.
gen gdp = .
replace gdp = 21.02 if id== 3686
replace gdp = 22.59 if id== 3690
replace gdp = 23.13 if id== 3693
replace gdp = 25.20 if id== 3696 
replace gdp = 27.10 if id== 3698 
replace gdp = 32.39 if id== 3607 
replace gdp = 21.06 if id== 4086 
replace gdp = 24.01 if id== 4093 
replace gdp = 27.83 if id== 4099 
replace gdp = 24.50 if id== 12496 
replace gdp = 27.32 if id== 12499 
replace gdp = 31.29 if id== 12406 
replace gdp = 27.33 if id== 20898 
replace gdp = 31.54 if id== 20808 
replace gdp = 29.97 if id== 24606 
replace gdp = 23.09 if id== 25097 
replace gdp = 23.81 if id== 25098 
replace gdp = 26.88 if id== 25006 
replace gdp = 18.96 if id== 27685 
replace gdp = 21.83 if id== 27690 
replace gdp = 22.76 if id== 27691 
replace gdp = 23.82 if id== 27696 
replace gdp = 24.70 if id== 27698 
replace gdp = 27.52 if id== 27606 
replace gdp = 15.87 if id== 37291 
replace gdp = 20.53 if id== 37296 
replace gdp = 24.23 if id== 37298 
replace gdp = 35.17 if id== 37206 
replace gdp = 22.27 if id== 38091 
replace gdp = 19.40 if id== 38086 
replace gdp = 23.59 if id== 38096 
replace gdp = 24.34 if id== 38098 
replace gdp = 25.27 if id== 39296 
replace gdp = 25.02 if id== 39298 
replace gdp = 27.69 if id== 39206 
replace gdp = 23.31 if id== 52891 
replace gdp = 27.40 if id== 52898 
replace gdp = 31.64 if id== 52806 
replace gdp = 17.67 if id== 55491 
replace gdp = 19.77 if id== 55497 
replace gdp = 19.64 if id== 55498 
replace gdp = 24.32 if id== 55407 
replace gdp = 26.59 if id== 57890 
replace gdp = 27.28 if id== 57891 
replace gdp = 32.49 if id== 57896 
replace gdp = 34.75 if id== 57898 
replace gdp = 39.73 if id== 57806 
replace gdp = 15.99 if id== 62098 
replace gdp = 17.48 if id== 62006 
replace gdp = 18.21 if id== 72496 
replace gdp = 19.64 if id== 72498 
replace gdp = 24.20 if id== 72407 
replace gdp = 23.98 if id== 75296 
replace gdp = 25.48 if id== 75298 
replace gdp = 32.08 if id== 75206 
replace gdp = 30.46 if id== 75698 
replace gdp = 30.71 if id== 75699 
replace gdp = 34.28 if id== 75607 
replace gdp = 17.95 if id== 82685 
replace gdp = 20.88 if id== 82690 
replace gdp = 20.52 if id== 82691 
replace gdp = 22.94 if id== 82696 
replace gdp = 24.42 if id== 82698 
replace gdp = 29.49 if id== 82606 
replace gdp = 38.31 if id== 84006 
replace gdp = 28.24 if id== 84090 
replace gdp = 27.79 if id== 84091 
replace gdp = 30.79 if id== 84096 
replace gdp = 32.81 if id== 84098 
replace gdp = 25.28 if id== 84085 
label var gdp "GDP @PPP (1,000 US$/DV year)"

*Unemployment
*Data extracted on 18 May 2010 13:07 UTC (GMT) from OECD.Stat (ALFS). Rate of uneployment as % of civilian labor force.
gen unemp = .
replace unemp = 8.1 if id== 3686
replace unemp = 6.9 if id== 3690
replace unemp = 10.9 if id== 3693
replace unemp = 8.5 if id== 3696 
replace unemp = 7.7 if id== 3698 
replace unemp = 4.4 if id== 3607 
replace unemp = 3.1 if id== 4086 
replace unemp = 4.3 if id== 4093 
replace unemp = 3.8 if id== 4099 
replace unemp = 9.6 if id== 12496 
replace unemp = 7.6 if id== 12499 
replace unemp = 6.3 if id== 12406 
replace unemp = 5.5 if id== 20898 
replace unemp = 3.4 if id== 20808 
replace unemp = 7.7 if id== 24606 
replace unemp = 11.0 if id== 25097 
replace unemp = 10.4 if id== 25098 
replace unemp = 8.8 if id== 25006 
replace unemp = 6.6 if id== 27685 
replace unemp = 4.8 if id== 27690 
replace unemp = 5.6 if id== 27691 
replace unemp = 9.0 if id== 27696 
replace unemp = 9.3 if id== 27698 
replace unemp = 10.4 if id== 27606 
replace unemp = 14.8 if id== 37291 
replace unemp = 11.9 if id== 37296 
replace unemp = 7.8 if id== 37298 
replace unemp = 4.4 if id== 37206 
replace unemp = 11.0 if id== 38091 
replace unemp = 11.2 if id== 38086 
replace unemp = 11.7 if id== 38096 
replace unemp = 11.9 if id== 38098 
replace unemp = 3.4 if id== 39296 
replace unemp = 4.1 if id== 39298 
replace unemp = 4.1 if id== 39206 
replace unemp = 7.1 if id== 52891 
replace unemp = 4.3 if id== 52898 
replace unemp = 3.9 if id== 52806 
replace unemp = 10.3 if id== 55491 
replace unemp = 6.6 if id== 55497 
replace unemp = 7.4 if id== 55498 
replace unemp = 3.6 if id== 55407 
replace unemp = 5.3 if id== 57890 
replace unemp = 5.6 if id== 57891 
replace unemp = 4.9 if id== 57896 
replace unemp = 3.2 if id== 57898 
replace unemp = 3.5 if id== 57806 
replace unemp = 5.0 if id== 62098 
replace unemp = 7.7 if id== 62006 
replace unemp = 22.1 if id== 72496 
replace unemp = 18.7 if id== 72498 
replace unemp = 8.3 if id== 72407 
replace unemp = 10.0 if id== 75296 
replace unemp = 8.5 if id== 75298 
replace unemp = 7.1 if id== 75206 
replace unemp = 3.4 if id== 75698 
replace unemp = 2.9 if id== 75699 
replace unemp = 3.5 if id== 75607 
replace unemp = 10.8 if id== 82685 
replace unemp = 6.9 if id== 82690 
replace unemp = 8.4 if id== 82691 
replace unemp = 8.1 if id== 82696 
replace unemp = 7.1 if id== 82698 
replace unemp = 5.4 if id== 82606 
replace unemp = 4.6 if id== 84006 
replace unemp = 5.6 if id== 84090 
replace unemp = 6.8 if id== 84091 
replace unemp = 5.4 if id== 84096 
replace unemp = 4.5 if id== 84098 
replace unemp = 7.0 if id== 84085 

label var unemp "Unemployment %of civilian LF"
*Aged Population
* “Elderly population (aged 65 and over)”. OECD Factbook 2010: Economic, Environmental and Social Statistics - ISBN 92-64-08356-1 - © OECD 2010; “Population and migration - Population - Dependent population”.								
gen aged = .
replace aged = 10.5 if id== 3686
replace aged = 11.1 if id== 3690
replace aged = 11.6 if id== 3693
replace aged = 12.0 if id== 3696 
replace aged = 12.2 if id== 3698 
replace aged = 13.2 if id== 3607 
replace aged = 14.3 if id== 4086 
replace aged = 14.9 if id== 4093 
replace aged = 15.4 if id== 4099 
replace aged = 12.1 if id== 12496 
replace aged = 12.5 if id== 12499 
replace aged = 13.2 if id== 12406 
replace aged = 14.9 if id== 20898 
replace aged = 15.9 if id== 20808 
replace aged = 16.2 if id== 24606 
replace aged = 15.6 if id== 25097 
replace aged = 15.8 if id== 25098 
replace aged = 16.4 if id== 25006 
replace aged = 14.6 if id== 27685 
replace aged = 14.9 if id== 27690 
replace aged = 15.0 if id== 27691 
replace aged = 15.6 if id== 27696 
replace aged = 15.9 if id== 27698 
replace aged = 19.5 if id== 27606 
replace aged = 11.4 if id== 37291 
replace aged = 11.4 if id== 37296 
replace aged = 11.3 if id== 37298 
replace aged = 10.9 if id== 37206 
replace aged = 15.3 if id== 38091 
replace aged = 13.4 if id== 38086 
replace aged = 17.1 if id== 38096 
replace aged = 17.7 if id== 38098 
replace aged = 15.1 if id== 39296 
replace aged = 16.2 if id== 39298 
replace aged = 20.8 if id== 39206 
replace aged = 12.9 if id== 52891 
replace aged = 13.5 if id== 52898 
replace aged = 14.4 if id== 52806 
replace aged = 11.2 if id== 55491 
replace aged = 11.5 if id== 55497 
replace aged = 11.6 if id== 55498 
replace aged = 12.5 if id== 55407 
replace aged = 16.3 if id== 57890 
replace aged = 16.3 if id== 57891 
replace aged = 15.8 if id== 57896 
replace aged = 15.6 if id== 57898 
replace aged = 14.7 if id== 57806 
replace aged = 15.7 if id== 62098 
replace aged = 17.2 if id== 62006 
replace aged = 15.6 if id== 72496 
replace aged = 16.3 if id== 72498 
replace aged = 16.6 if id== 72407 
replace aged = 17.5 if id== 75296 
replace aged = 17.4 if id== 75298 
replace aged = 17.3 if id== 75206 
replace aged = 15.1 if id== 75698 
replace aged = 15.2 if id== 75699 
replace aged = 16.3 if id== 75607 
replace aged = 15.2 if id== 82685 
replace aged = 15.7 if id== 82690 
replace aged = 15.8 if id== 82691 
replace aged = 15.9 if id== 82696 
replace aged = 15.9 if id== 82698 
replace aged = 16.0 if id== 82606 
replace aged = 12.5 if id== 84006 
replace aged = 12.5 if id== 84090 
replace aged = 12.6 if id== 84091 
replace aged = 12.7 if id== 84096 
replace aged = 12.5 if id== 84098 
replace aged = 11.9 if id== 84085 

label var aged "% of population 65+"
*Instrumental Variables
*Female Labor Force Participation

*OECD Data from (Teorell et al. 2015).
gen femlf = .

replace femlf = 51 if id== 3686
replace femlf = 52.3 if id== 3690
replace femlf = 51.8 if id== 3693
replace femlf = 53.8 if id== 3696 
replace femlf = 53.8 if id== 3698 
replace femlf = 58.2 if id== 3607 
replace femlf = 42 if id== 4086 
replace femlf = 45.5 if id== 4093 
replace femlf = 48.3 if id== 4099 
replace femlf = 56.8 if id== 12496 
replace femlf = 58.2 if id== 12499 
replace femlf = 61.2 if id== 12406 
replace femlf = 59.4 if id== 20898 
replace femlf = 61.1 if id== 20808 
replace femlf = 57.3 if id== 24606 
replace femlf = 47.8 if id== 25097 
replace femlf = 48 if id== 25098 
replace femlf = 50 if id== 25006 
replace femlf = 47 if id== 27685 
replace femlf = 48 if id== 27690 
replace femlf = 48 if id== 27691 
replace femlf = 48 if id== 27696 
replace femlf = 48.9 if id== 27698 
replace femlf = 51.4 if id== 27606 
replace femlf = 36.2 if id== 37291 
replace femlf = 41.1 if id== 37296 
replace femlf = 44 if id== 37298 
replace femlf = 52.9 if id== 37206 
replace femlf = 35.5 if id== 38091 
replace femlf = 35 if id== 38086 
replace femlf = 33.8 if id== 38096 
replace femlf = 34.4 if id== 38098 
replace femlf = 50.1 if id== 39296 
replace femlf = 50.2 if id== 39298 
replace femlf = 48.4 if id== 39206 
replace femlf = 43.8 if id== 52891 
replace femlf = 50.7 if id== 52898 
replace femlf = 57.3 if id== 52806 
replace femlf = 53.6 if id== 55491 
replace femlf = 56.3 if id== 55497 
replace femlf = 56.2 if id== 55498 
replace femlf = 61.3 if id== 55407 
replace femlf = 55.2 if id== 57890 
replace femlf = 55.1 if id== 57891 
replace femlf = 57.6 if id== 57896 
replace femlf = 59.7 if id== 57898 
replace femlf = 60.4 if id== 57806 
replace femlf = 51.6 if id== 62098 
replace femlf = 55.8 if id== 62006 
replace femlf = 37.6 if id== 72496 
replace femlf = 38.6 if id== 72498 
replace femlf = 48.2 if id== 72407 
replace femlf = 58.8 if id== 75296 
replace femlf = 57 if id== 75298 
replace femlf = 59.6 if id== 75206 
replace femlf = 58 if id== 75698 
replace femlf = 58.3 if id== 75699 
replace femlf = 60.1 if id== 75607 
replace femlf = 52 if id== 82685 
replace femlf = 52.6 if id== 82690 
replace femlf = 52.5 if id== 82691 
replace femlf = 52.7 if id== 82696 
replace femlf = 53.2 if id== 82698 
replace femlf = 55.5 if id== 82606 
replace femlf = 58.4 if id== 84006 
replace femlf = 56.4 if id== 84090 
replace femlf = 56.1 if id== 84091 
replace femlf = 58.2 if id== 84096 
replace femlf = 58.8 if id== 84098 
replace femlf = 55.5 if id== 84085 

label var femlf "Female Labor Force Participation"
*Military Spending
*Not used, but interesting for sensitivity analyses. I used this in my dissertation although it is far from ideal as an instrument (Breznau 2013)

*88 is earliest year so use this for 86 and 87

*Data from (SIPRI 2012).
gen warspend = .
replace warspend = 2 if id==62006
replace warspend = 2 if id==62098
replace warspend = 2.1 if yeardv==1986 & countryx==36
replace warspend = 2.1 if yeardv==1993 & countryx==36
replace warspend = 1.9 if yeardv==1996 & countryx==36
replace warspend = 1.9 if yeardv==1998 & countryx==36
replace warspend = 2 if yeardv==1990 & countryx==36
replace warspend = 1.3 if yeardv==1986 & countryx==40
replace warspend = 1.1 if yeardv==1993 & countryx==40
replace warspend = 1.0 if yeardv==1999 & countryx==40
replace warspend = 1.2 if yeardv==1996 & countryx==124
replace warspend = 1.2 if yeardv==1999 & countryx==124
replace warspend = 1.6 if yeardv==1998 & countryx==208
replace warspend = 2.7 if yeardv==1997 & countryx==250
replace warspend = 2.7 if yeardv==1998 & countryx==250
replace warspend = 2.9 if yeardv==1985 & countryx==276
replace warspend = 2.2 if yeardv==1990 & countryx==276
replace warspend = 2.0 if yeardv==1991 & countryx==276
replace warspend = 1.5 if yeardv==1996 & countryx==276
replace warspend = 1.5 if yeardv==1998 & countryx==276
replace warspend = 1.2 if yeardv==1991 & countryx==372
replace warspend = 0.9 if yeardv==1996 & countryx==372
replace warspend = 0.8 if yeardv==1998 & countryx==372
replace warspend = 2.3 if yeardv==1985 & countryx==380
replace warspend = 2.1 if yeardv==1990 & countryx==380
replace warspend = 1.9 if yeardv==1996 & countryx==380
replace warspend = 2.0 if yeardv==1999 & countryx==380
replace warspend = 1.0 if yeardv==1996 & countryx==392
replace warspend = 1.0 if yeardv==1998 & countryx==392
replace warspend = 2.4 if yeardv==1991 & countryx==528
replace warspend = 1.7 if yeardv==1998 & countryx==528
replace warspend = 1.6 if yeardv==1991 & countryx==554
replace warspend = 1.3 if yeardv==1997 & countryx==554
replace warspend = 1.3 if yeardv==1998 & countryx==554
replace warspend = 2.7 if yeardv==1990 & countryx==578
replace warspend = 2.7 if yeardv==1991 & countryx==578
replace warspend = 2.1 if yeardv==1996 & countryx==578
replace warspend = 2.1 if yeardv==1998 & countryx==578
replace warspend = 1.3 if yeardv==1996 & countryx==724
replace warspend = 1.2 if yeardv==1998 & countryx==724
replace warspend = 2.1 if yeardv==1996 & countryx==752
replace warspend = 2.0 if yeardv==1998 & countryx==752
replace warspend = 1.1 if yeardv==1999 & countryx==756
replace warspend = 1.3 if yeardv==1998 & countryx==756
replace warspend = 4.1 if yeardv==1985 & countryx==826
replace warspend = 2.6 if yeardv==1996 & countryx==826
replace warspend = 4.1 if yeardv==1990 & countryx==826
replace warspend = 3.8 if yeardv==1991 & countryx==826
replace warspend = 2.4 if yeardv==1998 & countryx==826
replace warspend = 5.7 if yeardv==1985 & countryx==840
replace warspend = 4.7 if yeardv==1990 & countryx==840
replace warspend = 4.8 if yeardv==1991 & countryx==840
replace warspend = 3.3 if yeardv==1996 & countryx==840
replace warspend = 3.0 if yeardv==1998 & countryx==840
replace warspend = 1.8 if yeardv == 2006 & countryx==36
replace warspend = 1.2 if yeardv == 2006 & countryx==124
replace warspend = 1.4 if yeardv == 2008 & countryx==208
replace warspend = 1.2 if yeardv == 2006 & countryx==246
replace warspend = 2.3 if yeardv == 2006 & countryx==250
replace warspend = 1.3 if yeardv == 2006 & countryx==276
replace warspend = 2.3 if yeardv == 2006 & countryx==826
replace warspend = 0.5 if yeardv == 2006 & countryx==372
replace warspend = 0.9 if yeardv == 2006 & countryx==392
replace warspend = 1.5 if yeardv == 2006 & countryx==528
replace warspend = 1.1 if yeardv == 2007 & countryx==554
replace warspend = 1.5 if yeardv == 2006 & countryx==578
replace warspend = 1.2 if yeardv == 2007 & countryx==724
replace warspend = 1.4 if yeardv == 2006 & countryx==752
replace warspend = 0.8 if yeardv == 2007 & countryx==756
replace warspend = 4.0 if yeardv == 2006 & countryx==840
gen milexpc = (warspend/100)*gdp
label var milexpc "k intl$ per inhabitant"
*Taxes

*OECD. 2010. “Tax Statistics Database.” Retrieved December 12, 2012 (www.oecd-ilibrary.org).
gen taxpct = .

replace taxpct = 31.9 if id==62006
replace taxpct = 30.09 if id==62098
replace taxpct = 28.30 if yeardv==1986 & countryx==36
replace taxpct = 27.76 if yeardv==1990 & countryx==36
replace taxpct = 26.37 if yeardv==1993 & countryx==36
replace taxpct = 28.50 if yeardv==1996 & countryx==36
replace taxpct = 29.69 if yeardv==1998 & countryx==36
replace taxpct = 40.68 if yeardv==1986 & countryx==40
replace taxpct = 41.90 if yeardv==1993 & countryx==40
replace taxpct = 43.04 if yeardv==1999 & countryx==40
replace taxpct = 36.73 if yeardv==1996 & countryx==124
replace taxpct = 36.41 if yeardv==1999 & countryx==124
replace taxpct = 49.30 if yeardv==1998 & countryx==208
replace taxpct = 44.29 if yeardv==1997 & countryx==250
replace taxpct = 45.16 if yeardv==1998 & countryx==250
replace taxpct = 35.83 if yeardv==1985 & countryx==276
replace taxpct = 36.04 if yeardv==1990 & countryx==276
replace taxpct = 36.92 if yeardv==1991 & countryx==276
replace taxpct = 36.25 if yeardv==1996 & countryx==276
replace taxpct = 37.33 if yeardv==1998 & countryx==276
replace taxpct = 34.01 if yeardv==1991 & countryx==372
replace taxpct = 31.76 if yeardv==1996 & countryx==372
replace taxpct = 31.54 if yeardv==1998 & countryx==372
replace taxpct = 35.19 if yeardv==1985 & countryx==380
replace taxpct = 38.23 if yeardv==1990 & countryx==380
replace taxpct = 43.30 if yeardv==1996 & countryx==380
replace taxpct = 42.24 if yeardv==1999 & countryx==380
replace taxpct = 27.16 if yeardv==1996 & countryx==392
replace taxpct = 26.31 if yeardv==1998 & countryx==392
replace taxpct = 44.79 if yeardv==1991 & countryx==528
replace taxpct = 40.06 if yeardv==1998 & countryx==528
replace taxpct = 35.51 if yeardv==1991 & countryx==554
replace taxpct = 32.91 if yeardv==1997 & countryx==554
replace taxpct = 32.92 if yeardv==1998 & countryx==554
replace taxpct = 41.00 if yeardv==1990 & countryx==578
replace taxpct = 41.12 if yeardv==1991 & countryx==578
replace taxpct = 41.50 if yeardv==1996 & countryx==578
replace taxpct = 42.71 if yeardv==1998 & countryx==578
replace taxpct = 32.89 if yeardv==1996 & countryx==724
replace taxpct = 34.14 if yeardv==1998 & countryx==724
replace taxpct = 50.48 if yeardv==1996 & countryx==752
replace taxpct = 51.07 if yeardv==1998 & countryx==752
replace taxpct = 30.02 if yeardv==1999 & countryx==756
replace taxpct = 28.53 if yeardv==1998 & countryx==756
replace taxpct = 37.45 if yeardv==1985 & countryx==826
replace taxpct = 34.25 if yeardv==1996 & countryx==826
replace taxpct = 34.30 if yeardv==1990 & countryx==826
replace taxpct = 33.39 if yeardv==1991 & countryx==826
replace taxpct = 35.77 if yeardv==1998 & countryx==826
replace taxpct = 25.49 if yeardv==1985 & countryx==840
replace taxpct = 27.10 if yeardv==1990 & countryx==840
replace taxpct = 26.91 if yeardv==1991 & countryx==840
replace taxpct = 28.66 if yeardv==1996 & countryx==840
replace taxpct = 29.15 if yeardv==1998 & countryx==840
replace taxpct = 29.43 if yeardv == 2006 & countryx==36
replace taxpct = 32.97 if yeardv == 2006 & countryx==124
replace taxpct = 48.09 if yeardv == 2008 & countryx==208
replace taxpct = 42.97 if yeardv == 2006 & countryx==246
replace taxpct = 43.67 if yeardv == 2006 & countryx==250
replace taxpct = 36.05 if yeardv == 2006 & countryx==276
replace taxpct = 36.00 if yeardv == 2006 & countryx==826
replace taxpct = 30.96 if yeardv == 2006 & countryx==372
replace taxpct = 28.33 if yeardv == 2006 & countryx==392
replace taxpct = 38.72 if yeardv == 2006 & countryx==528
replace taxpct = 33.57 if yeardv == 2007 & countryx==554
replace taxpct = 43.59 if yeardv == 2006 & countryx==578
replace taxpct = 33.32 if yeardv == 2007 & countryx==724
replace taxpct = 47.36 if yeardv == 2006 & countryx==752
replace taxpct = 29.09 if yeardv == 2007 & countryx==756
replace taxpct = 27.86 if yeardv == 2006 & countryx==840

label var taxpct "Total Tax Revenue as a % of GDP"

save C:\data\feedback4.dta, replace

*Political Variables
use C:\data\feedback4.dta, clear
*Veto Points 

 
*Spain and Portugal are taken from (Lijphart 1999) directly, but then recoded to match the (Huber et al. 2004) coding.

*This is with four measures (FED, PRES, STRBIC, JUDREV) recoding each measure to be on a scale from 0-1 and then standardizing
recode countryx (36=2.5)(40=1.5)(124=2)(208=1)(246=1)(250=2)(276=3)(372=1)(380=1.5)(392=1.5)(528=.5)(554=0)(578=1)(620=1)(724=2)(752=1)(756=3)(826=0)(840=4)(*=.), gen(vetoz)
sum vetoz
egen veto5 = std(vetoz)
*This is from all 7 measures with each measure rescaled to be 0 to 1, and then the entire 7-item scale rescaled to be from 0-1.
recode countryx (36=0.48)(40=0.36)(124=0.48)(208=0.29)(246=0.24)(250=0.40)(276=0.57)(372=0.24)(380=0.36)(392=0.43)(528=0.17)(554=0.05)(578=0.19)(620=0.14)(724=0.21)(752=0.29)(756=0.62)(826=0.24)(840=0.76)(*=.), gen(veto7)
sum veto7
replace veto7 = 0.43 if yeardv==1996 & countryx==380
replace veto7 = 0.43 if yeardv==1999 & countryx==380
replace veto7 = 0.19 if yeardv==1991 & countryx==554
*With a theory of no causal impact of veto point structure and public opinion, I assume that veto7 and govsAT are uncorrelated. 
*I do not have enough degrees of freedom to achieve this inside the model (7 items for veto 7 and 2 or 6 items for govsAT), 
*thus I partial out public opinion from veto, using the following routine:
*reg veto7 govsAT
*predict v7
*reg veto7 govs6
*genv7P = veto7 - v7
*gen v76P = veto7 - v76
*pwcorr veto7 v7P v76P
*preserve
*collapse v7P v76P veto7, by(countryx)
*sum v7P veto7
*sum v76P veto7 if v76P!=.
*replace v7P = v7P + .365
*replace v76P = v76P + .375
*table countryx, c(m v7P m v76P m veto7) /*this gives the values to recode below*/
*restore
 
recode countryx (36=.4)(40=.4)(124=.4)(208=.2)(246=.2)(250=.4)(276=.6)(372=.3)(380=.5)(392=.4)(528=.2)(554=0)(578=.3)(620=.3)(724=.3)(752=.3)(756=.6)(826=.2)(840=.6), gen(vetot)
replace vetot = 0.4 if yeardv==1996 & countryx==380
replace vetot = 0.4 if yeardv==1999 & countryx==380
replace vetot = 0.2 if yeardv==1991 & countryx==554
recode countryx (36=.4)(40=.4)(124=.4)(208=.4)(246=.3)(250=.3)(276=.5)(372=.4)(380=.5)(392=.3)(528=.15)(554=0)(578=.35)(620=.3)(724=.3)(752=.3)(756=.35)(826=.25)(840=.5), gen(veto76)
replace veto76 = 0.4 if yeardv==1996 & countryx==380
replace veto76 = 0.4 if yeardv==1999 & countryx==380
replace veto76 = 0.2 if yeardv==1991 & countryx==554
replace veto7 = vetot
drop vetot

*Right Party Seats

*Quality of Government Data, see Appendix. Data are specifically from the World Bank Database of Political Institutions, 
*but taken from (Teorell et al. 2015).

*The rpc variable is the percentage of seats held by a right party when it is the 1st or 2nd largest party, otherwise it is zero.

gen rpc = .
replace rpc = 0 if id== 3686
replace rpc = 0 if id== 3690
replace rpc = 0 if id== 3693
replace rpc = 0 if id== 3696 
replace rpc = 0.128 if id== 3698 
replace rpc = 0.08 if id== 3607 
replace rpc = 0.066 if id== 4086 
replace rpc = 0.328 if id== 4093 
replace rpc = 0.29 if id== 4099 
replace rpc = 0 if id== 12496 
replace rpc = 0 if id== 12499 
replace rpc = 0 if id== 12406 
replace rpc = 0 if id== 20898 
replace rpc = .147 if id== 20808 
replace rpc = 0 if id== 24606 
replace rpc = 0.369 if id== 25097 
replace rpc = 0 if id== 25098 
replace rpc = 0.05 if id== 25006 
replace rpc = 0 if id== 27685 
replace rpc = 0 if id== 27690 
replace rpc = 0.119 if id== 27691 
replace rpc = 0.074 if id== 27696 
replace rpc = 0.074 if id== 27698 
replace rpc = 0.368 if id== 27606 
replace rpc = 0.036 if id== 37291 
replace rpc = 0.271 if id== 37296 
replace rpc = 0.024 if id== 37298 
replace rpc = 0.048 if id== 37206 
replace rpc = 0 if id== 38086 
replace rpc = 0 if id== 38091 
replace rpc = 0.581 if id== 38096 
replace rpc = 0 if id== 38098 
replace rpc = 0.393 if id== 39296 
replace rpc = 0.478 if id== 39298 
replace rpc = 0.617 if id== 39206 
replace rpc = 0.147 if id== 52891 
replace rpc = 0.207 if id== 52898 
replace rpc = 0.18 if id== 52806 
replace rpc = 0.701 if id== 55491 
replace rpc = 0.367 if id== 55497 
replace rpc = 0.367 if id== 55498 
replace rpc = 0 if id== 55407 
replace rpc = 0.085 if id== 57890 
replace rpc = 0.067 if id== 57891 
replace rpc = 0 if id== 57896 
replace rpc = 0.067 if id== 57898 
replace rpc = 0 if id== 57806 
replace rpc = 0 if id== 62098 
replace rpc = 0 if id== 62006 
replace rpc = 0 if id== 72496 
replace rpc = 0.446 if id== 72498 
replace rpc = 0 if id== 72407 
replace rpc = 0 if id== 75296 
replace rpc = 0 if id== 75298 
replace rpc = 0 if id== 75206 
replace rpc = 0.215 if id== 75698 
replace rpc = 0.215 if id== 75699 
replace rpc = 0 if id== 75607 
replace rpc = 0.611 if id== 82685 
replace rpc = 0.581 if id== 82690 
replace rpc = 0.581 if id== 82691 
replace rpc = 0.507 if id== 82696 
replace rpc = 0 if id== 82698 
replace rpc = 0 if id== 82606 
replace rpc = 0.384 if id== 84085 
replace rpc = 0.407 if id== 84090 
replace rpc = 0.384 if id== 84091 
replace rpc = 0 if id== 84096 
replace rpc = 0 if id== 84098 
replace rpc = 0.533 if id== 84006 

label var rpc "Right seats as % of total"

*Left Party Seats

*Same data as above, US is essentially miscoded as the Democrats are really a center party, but to recode one case is to lose faith in the entire data source and all cases should then be reconsidered.
gen lpc = .
replace lpc = 0.554 if id== 3686
replace lpc = 0.581 if id== 3690
replace lpc = 0.527 if id== 3693
replace lpc = 0.544 if id== 3696 
replace lpc = 0 if id== 3698 
replace lpc = 0 if id== 3607 
replace lpc = 0.491 if id== 4086 
replace lpc = 0.443 if id== 4093 
replace lpc = 0.388 if id== 4099 
replace lpc = 0.6 if id== 12496 
replace lpc = 0.513 if id== 12499 
replace lpc = 0.438 if id== 12406 
replace lpc = 0.04 if id== 20898 
replace lpc = 0 if id== 20808 
replace lpc = 0.265 if id== 24606 
replace lpc = 0 if id== 25097 
replace lpc = 0.066 if id== 25098 
replace lpc = 0 if id== 25006 
replace lpc = 0 if id== 27685 
replace lpc = 0 if id== 27690 
replace lpc = 0 if id== 27691 
replace lpc = 0 if id== 27696 
replace lpc = 0 if id== 27698 
replace lpc = 0.362 if id== 27606 
replace lpc = 0 if id== 37291 
replace lpc = 0.199 if id== 37296 
replace lpc = 0 if id== 37298 
replace lpc = 0 if id== 37206 
replace lpc = 0.116 if id== 38086 
replace lpc = 0.151 if id== 38091 
replace lpc = 0 if id== 38096 
replace lpc = 0 if id== 38098 
replace lpc = 0.143 if id== 39296 
replace lpc = 0 if id== 39298 
replace lpc = 0 if id== 39206 
replace lpc = 0 if id== 52891 
replace lpc = 0.247 if id== 52898 
replace lpc = 0 if id== 52806 
replace lpc = 0 if id== 55491 
replace lpc = 0 if id== 55497 
replace lpc = 0 if id== 55498 
replace lpc = 0.413 if id== 55407 
replace lpc = 0 if id== 57890 
replace lpc = 0.382 if id== 57891 
replace lpc = 0.406 if id== 57896 
replace lpc = 0 if id== 57898 
replace lpc = 0.089 if id== 57806 
replace lpc = 0.485 if id== 62098 
replace lpc = 0.526 if id== 62006 
replace lpc = 0.454 if id== 72496 
replace lpc = 0 if id== 72498 
replace lpc = 0.469 if id== 72407 
replace lpc = 0.461 if id== 75296 
replace lpc = 0.461 if id== 75298 
replace lpc = 0.086 if id== 75206 
replace lpc = 0.258 if id== 75698 
replace lpc = 0.258 if id== 75699 
replace lpc = 0.302 if id== 75607 
replace lpc = 0 if id== 82685 
replace lpc = 0 if id== 82690 
replace lpc = 0 if id== 82691 
replace lpc = 0 if id== 82696 
replace lpc = 0.636 if id== 82698 
replace lpc = 0.55 if id== 82606 
replace lpc = 0 if id== 84085 
replace lpc = 0 if id== 84090 
replace lpc = 0 if id== 84091 
replace lpc = 0.469 if id== 84096 
replace lpc = 0.485 if id== 84098 
replace lpc = 0 if id== 84006 
label var lpc "Left seats as % of total"


drop if socx==.
sort id
gen pctgdp = ((taxpct/100)*gdp)
sort countryx yeardvz
save C:\Data\feedbackB.dta, replace

*Merge in Scruggs Decommodification

*This is already done, just use final version
*use C:\Data\scruggs.dta, clear
*tab year
*replace year=2008 if year==2002 & countryx==208
*replace year=2007 if year==2002 & countryx==554
*There is no Spain or Portugal in the data
*replace year=2007 if year==2002 & countryx==756
*replace year=2006 if year==2002
*gen yeardvz=year-1985
*drop if yeardvz<0
*drop unemp pensions sickness year
*sort countryx yeardvz
*save C:\Data\scruggso.dta, replace

use C:\Data\feedbackB.dta, clear
sort countryx yeardvz
drop _merge
merge countryx yeardvz using C:\Data\scruggso.dta
label var decomm "Scruggs decommodification index"
drop country _merge
drop if socx==.
save C:\Data\feedbackC.dta, replace
