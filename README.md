# Research: Simultaneous Feedback between Opinion and Policy

# CURRENTLY UNDER CONSTRUCTION!!

This Repository provides tehnical specs and code for my research investigating feedback between public opinion and social policy using [ISSP](http://www.issp.org/menu-top/home/) data. This repository provides the basic data work up and then specific analyses for the following published papers:

Breznau, Nate. 2017. “[Positive Returns and Equilibrium: Simultaneous Feedback Between Public Opinion and Social Policy](https://doi.org/10.1111/psj.12171).” _Policy Studies Journal_ 45(4):583–612. [Preprint Available](https://osf.io/tpfrd/) on OSF!

Breznau, Nate. forthcoming. “[Simultaneous Feedback Models with Macro-Comparative Cross-Sectional Data](https://doi.org/10.12758/mda.2017.07).” _Methods, Data, Analyses_.

And for the working paper:

Breznau, Nate. working. "Decaying Positive Returns to Public Opinion and Social Policy: The Decline of Democratic Feedback." _still under production_


## Constructing the Datasets
### ISSP 
To build the macro-data used in the replications, users must get access to the ISSP data via GESIS/ZACAT. Then dowload the following data in Stata format and save to the path "C:/data/": 

__Role of Government__ 1985 ([ZA1490.dta](http://dx.doi.org/10.4232/1.1490)), 1990 ([ZA1950.dta](http://dx.doi.org/10.4232/1.1950)), 1996 ([ZA2900.dta](http://dx.doi.org/10.4232/1.2900)), 2006 ([ZA4700.dta](http://dx.doi.org/10.4232/1.4700)) and 2016 ([ZA6900_v1-0-0.dta](http://dx.doi.org/10.4232/1.12994)).

__Religion__ 1991 ([ZA2150.dta](http://dx.doi.org/10.4232/1.2150)) and 1998 ([ZA3190.dta](http://dx.doi.org/10.4232/1.3190)).

###### Note: 2016 is not necessary for replicating Breznau (2017) and Breznau (forthcoming).

### OECD

Breznau (2017) and Breznau (forthcoming) have the codes for the socx variable programmed by hand to preserve their integrity. Breznau (working) has a convenient merge file [socx80to16.dta](https://github.com/nbreznau/Simultaneous-Feedback/raw/master/socx80to16.dta) containing the OECD's Social Expenditures values for total public expenditures as a percentage of GDP, downloaded from [stats.oecd](http://stats.oecd.org) on 29.03.2018 at 21:31.

### Decommodification

Breznau (2017; forthcoming) uses the Comparative Welfare Entitlements Dataset ([CWED](http://cwed2.org/)). File available herein as [scruggso.dta](https://github.com/nbreznau/Simultaneous-Feedback/raw/master/scruggso.dta).

### Export to Mplus

I executed the first part of the project using _Mplus_. Thus, the Stata part preps all the data for use in Mplus. The Mplus output and .dat files are available in the zipped folder [Mplus_Output] , this folder includes four examples of Mplus input files representing the preferred models in Table 3 of Breznau (2017:599).

