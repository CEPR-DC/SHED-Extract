set more 1

/* Determine data year */
local year=year in 1

/* industry */

gen ind16_d=.
gen ind=.
gen ind2=.
gen ind_m03=.


if `year'==2016 {
replace ind16_d=IND2
replace ind16_d=. if IND2<0
}
if `year'==2017 {
replace ind=IND1
replace ind=. if IND1<0
}
if `year'==2018 {
replace ind=ind1
replace ind=. if ind1<0
}

lab var ind16_d "Industry (Detailed)"
#delimit ;
lab define ind16_d 
111000	"Crop Production"
112000	"Animal Production"
113000	"Forestry and Logging"
114000	"Fishing, Hunting and Trapping"
115000	"Support Activities for Agriculture and Forestry"
211000	"Oil and Gas Extraction"
212000	"Mining (except Oil and Gas)"
221000	"Utilities"
236000	"Construction of Buildings"
237000	"Heavy and Civil Engineering Construction"
238000	"Specialty Trade Contractors"
311000	"Food Manufacturing"
312000	"Beverage and Tobacco Product Manufacturing"
313000	"Textile Mills"
314000	"Textile Product Mills"
315000	"Apparel Manufacturing"
316000	"Leather and Allied Product Manufacturing"
321000	"Wood Product Manufacturing"
322000	"Paper Manufacturing"
323000	"Printing and Related Support Activities"
324000	"Petroleum and Coal Products Manufacturing"
325400	"Pharmaceutical and Medicine Manufacturing"
325680	"Health, Personal Care, and Beauty Product Manufacturing"
325690	"Household Product Manufacturing"
325990	"Other Chemical Manufacturing"
326000	"Plastics and Rubber Products Manufacturing"
331000	"Primary Metal Manufacturing"
332000	"Fabricated Metal Product Manufacturing"
333000	"Machinery Manufacturing"
334000	"Computer and Electronic Product Manufacturing"
335000	"Electrical Equipment, Appliance, and Component Manufacturing"
336000	"Transportation Equipment Manufacturing"
337000	"Furniture and Related Product Manufacturing"
339000	"Miscellaneous Manufacturing"
423000	"Merchant Wholesalers, Durable Goods"
424000	"Merchant Wholesalers, Nondurable Goods"
425000	"Wholesale Electronic Markets and Agents and Brokers"
441000	"Motor Vehicle and Parts Dealers"
442000	"Furniture and Home Furnishings Stores"
443000	"Electronics and Appliance Stores"
444000	"Building Material and Garden Equipment"
445000	"Food and Beverage Stores"
446000	"Health and Personal Care Stores"
447000	"Gasoline Stations"
448000	"Clothing and Clothing Accessories Stores"
451000	"Sporting Goods, Hobby, Book, and Music Stores"
452000	"General Merchandise Stores"
453000	"Miscellaneous Store Retailers"
454000	"Nonstore Retailers"
481000	"Air Transportation"
482000	"Rail Transportation"
483000	"Water Transportation"
484000	"Truck Transportation"
485000	"Transit and Ground Passenger Transportion"
487000	"Scenic and Sightseeing Transportation"
488000	"Support Activities for Transportation"
491000	"Postal Service"
492000	"Couriers and Messengers"
493000	"Warehousing and Storage"
511000	"Publishing Industries (except Internet)"
512000	"Motion Picture and Sound Recording Industries"
515000	"Broadcasting"
517000	"Telecommunications"
518000	"Data Processing, Hosting and Related Services"
519000	"Other Information Services"
521000	"Monetary Authorities-Central Bank"
522000	"Credit Intermediation and Related Activities"
523000	"Securities, Commodity Contracts, and Other Financial Investments and Related Activities"
524000	"Insurance Carriers and Related Activities"
525000	"Funds, Trusts, and Other Financial Vehicles"
531000	"Real Estate"
532000	"Rental and Leasing Services"
533000	"Lessors of Nonfinancial Intangible Assets (except Copyrighted Works"
541000	"Professional, Scientific, and Technical Services"
541100	"Legal Services"
541200	"Accounting, Tax Preparation, Bookkeeping, and Payroll Services"
541300	"Architectural, Engineering, and Related Services"
541400	"Specialized Design Services"
541500	"Computer Systems Design and Related Services"
541600	"Management, Scientific, and Technical Consulting Services"
541613	"Marketing Consulting Services"
541700	"Scientific Research and Development Services"
541810	"Advertising Agencies"
541820	"Public Relations Agencies"
541900	"Other Professional, Scientific, and Technical Consulting Services"
551000	"Management of Companies and Enterprises"
561000	"Administrative and Support Services"
562000	"Waste Management and Remediation Services"
611000	"Educational Services"
621000	"Ambulatory Health Care Services"
622000	"Hospitals"
623000	"Nursing and Residential Care Facilities"
624000	"Social Assistance"
711000	"Performing Arts, Spectator Sports, and Related Industries"
712000	"Museums, Historical Sites, and Similar Institutions"
713000	"Amusement, Gambling, and Recreation Industries"
721000	"Accommodation"
722000	"Food Services and Drinking Places"
811000	"Repair and Maintenance"
811100	"Automotive Repair and Maintenance"
811200	"Electronic and Precision Equipment Repair and Maintenance"
811300	"Commercial and Industrial Machinery and and Equipment Repair and Maintenance"
811400	"Personal and Household Goods Repair and Maintenance"
812100	"Personal Care Services"
812300	"Drycleaning and Laundry Services"
813100	"Religious Organizations"
813200	"Grantmaking and Giving Services"
813300	"Social Advocacy Organizations"
813400	"Civic and Social Organizations"
813900	"Business, Professional, Labor, Political, and Similar Organizations"
814000	"Private Household Services"
921000	"Executive, Legislative, and Other General Government Support"
922000	"Justice, Public Order, and Safety Activities"
923000	"Administration of Human Resource Programs"
924000	"Administration of Environmental Quality Programs"
925000	"Administration of Housing Programs, Urban Planning, and Community Development"
926000	"Administration of Economic Programs"
928000	"National Security and International Affairs"
931000	"U.S. Army"
932000	"U.S. Air Force"
933000	"U.S. Navy"
934000	"U.S. Marines"
935000	"U.S. Coastguard"
937000	"Military Reserves or National Guard"
938000	"Armed Forces"
;
#delimit cr
lab val ind16_d ind16_d
notes ind16_d: mostly equivalent to NAICS 3-digit sector categories, but (1) does not include all of them, and (2) includes some 4 through 6 digit (sub)categories for manufacturing, services, and repair and maintenance


lab var ind "Industry (tight scale)"
#delimit ;
lab define ind 
1   "Agriculture, Forestry, Fishing and Hunting"
2   "Mining, Quarrying, and Oil and Gas Extraction"
3   "Utilities"
4	"Construction"
5	"Manufacturing"
6	"Wholesale Trade"
7	"Retail Trade"
8	"Transportation and Warehousing"
9	"Information"
10	"Finance and Insurance"
11	"Real Estate and Rental and Leasing"
12	"Professional, Scientific, and Technical Services"
13	"Management of Companies and Enterprises"
14	"Administrative and Support and Waste Management and Remediation Services"
15	"Educational Services"
16	"Health Care and Social Assistance"
17	"Arts, Entertainment, and Recreation"
18	"Accommodation and Food Services"
19	"Other Services and Community/Non-Profit"
20	"Public Administration"
21	"Armed Forces"
22	"Utilities, Waste Management, and Remediation Services"
23	"Administrative and Support Services (such as Call Centers, Security, Landscaping, and Janitorial)"
24	"Child Day Care Services"
25	"Repairs and Maintenance"
26	"Personal Services (including Beauty, Pet Care, and Household)"
27	"Community/Non-Profit Organizations (including Religious and Political Organizations)"
;
#delimit cr
lab val ind ind
notes ind: numbers 1 through 20, NAICS 2-digit sector codes
notes ind: number 19 is "Other Services (except Public Administration)" in NAICS


/* occupation: consistent 2016-2018 category, 
 2016 sub-categories categorized into 2017-2018 categories */ 

if `year'==2016 {
replace ind2=1 if IND2>=111000 & IND2<=115000
replace ind2=2 if IND2>=211000 & IND2<=212000
replace ind2=3 if IND2==221000
replace ind2=4 if IND2>=236000 & IND2<=238000
replace ind2=5 if IND2>=311000 & IND2<=339000
replace ind2=6 if IND2>=423000 & IND2<=425000
replace ind2=7 if IND2>=441000 & IND2<=454000
replace ind2=8 if IND2>=481000 & IND2<=493000
replace ind2=9 if IND2>=511000 & IND2<=519000
replace ind2=10 if IND2>=521000 & IND2<=525000
replace ind2=11 if IND2>=531000 & IND2<=533000
replace ind2=12 if IND2>=541000 & IND2<=541900
replace ind2=13 if IND2==551000
replace ind2=14 if IND2>=561000 & IND2<=562000
replace ind2=15 if IND2==611000
replace ind2=16 if IND2>=621000 & IND2<=624000
replace ind2=17 if IND2>=711000 & IND2<=713000
replace ind2=18 if IND2>=721000 & IND2<=722000
replace ind2=19 if IND2>=811000 & IND2<=814000
replace ind2=20 if IND2>=921000 & IND2<=928000
replace ind2=21 if IND2>=931000 & IND2<=938000
replace ind2=. if IND2<0
}
if 2017<=`year' & `year'<=2018 {
replace ind2=ind
}
lab val ind2 ind
notes ind2: 22-27 only available in 2017-2018
 

/* occupation: consistent 2016-2018 category, by AMM */

/* have not checked yet and suspect there are issues */

if `year'==2016 {
replace ind_m03=1 if IND2>=111000 & IND2<=115000
replace ind_m03=2 if IND2>=211000 & IND2<=212000
replace ind_m03=3 if IND2>=236000 & IND2<=238000
replace ind_m03=4 if IND2>=311000 & IND2<=339000
replace ind_m03=5 if IND2>=423000 & IND2<=454000
replace ind_m03=6 if IND2>=481000 & IND2<=493000 | IND2==221000
replace ind_m03=7 if IND2>=511000 & IND2<=519000
replace ind_m03=8 if IND2>=521000 & IND2<=533000
replace ind_m03=9 if IND2>=541000 & IND2<=562000
replace ind_m03=10 if IND2>=611000 & IND2<=624000
replace ind_m03=11 if IND2>=711000 & IND2<=722000
replace ind_m03=12 if IND2>=811100 & IND2<=814000
replace ind_m03=13 if IND2>=921000 & IND2<=928000
replace ind_m03=14 if IND2>=931000 & IND2<=938000
}
if `year'==2017 {
replace ind_m03=1 if IND1==1
replace ind_m03=2 if IND1==2 
replace ind_m03=3 if IND1==4
replace ind_m03=4 if IND1==5
replace ind_m03=5 if IND1==6 | IND1==7
replace ind_m03=6 if IND1==8 | IND1==3
replace ind_m03=7 if IND1==9
replace ind_m03=8 if IND1==10 | IND1==11
replace ind_m03=9 if IND1>=12 & IND1<=14 | IND1==22 | IND1==23
replace ind_m03=10 if IND1==15 | IND1==16 | IND1==19 | IND1==24
replace ind_m03=11 if IND1==17 | IND1==18
replace ind_m03=12 if IND1==25 | IND1==26 | IND1==27 | IND1==19
replace ind_m03=13 if IND1==20
replace ind_m03=14 if IND1==21
}
if `year'==2018 {
replace ind_m03=1 if ind1==1
replace ind_m03=2 if ind1==2 
replace ind_m03=3 if ind1==4
replace ind_m03=4 if ind1==5
replace ind_m03=5 if ind1==6 | ind1==7
replace ind_m03=6 if ind1==8 | ind1==3
replace ind_m03=7 if ind1==9
replace ind_m03=8 if ind1==10 | ind1==11
replace ind_m03=9 if ind1>=12 & ind1<=14 | ind1==22 | ind1==23
replace ind_m03=10 if ind1==15 | ind1==16 | ind1==19 | ind1==24
replace ind_m03=11 if ind1==17 | ind1==18
replace ind_m03=12 if ind1==25 | ind1==26 | ind1==27 | ind1==19
replace ind_m03=13 if ind1==20
replace ind_m03=14 if ind1==21
replace ind_m03=. if ind1<0
}
lab var ind_m03 "Major Industry Recode"
#delimit ;
lab define ind_m03 
1 "Agriculture, Forestry, Fishing, and Hunting" 
2 "Mining" 
3 "Construction" 
4 "Manufacturing" 
5 "Wholesale and Retail Trade" 
6 "Transportation and Utilities" 
7 "Information" 
8 "Financial Activities" 
9 "Professional and Business Services" 
10 "Education and Health Services" 
11 "Leisure and Hospitality" 
12 "Other Services" 
13 "Public Administration"
14 "Armed Forces"
;
#delimit cr
lab val ind_m03 ind_m03


/* occupation */

gen occ16=.
gen occ=.
gen occ2=. 
gen occ3=.

if `year'==2016 {
replace occ16=ppcm0160
replace occ16=. if ppcm0160<0
}
if 2017<=`year' & `year'<=2018 {
replace occ=ppcm0160
replace occ=. if ppcm0160<0
}

lab var occ16 "Occupation (2016)" 
#delimit ;
lab define occ16
1 "Management" 
2 "Business and financial operations"
3 "Computer and mathematical"
4 "Architecture and engineering"
5 "Life, Physical, and Social Science"
6 "Community and Social Service"
7 "Lawyer, judge"
8 "Teacher, except college and university"
9 "Teacher, college and university"
10 "Other professional"
11 "Medical Doctor (such as physician, surgeon, dentist, veterinarian)"
12 "Other Health Care Practitioner(such as nurse, pharmacist, chiropractor, dietician)"
13 "Health Technologist or Technician (such as paramedic, lab technician)"
14 "Health Care Support (such as nursing aide, orderly, dental assistant)"
15 "Protective Service"
16 "Food Preparation and Serving"
17 "Building and Grounds Cleaning and Maintenance"
18 "Personal Care and Service"
19 "Sales Representative"
20 "Retail Sales"
21 "Other sales"
22 "Office and Administrative Support"
23 "Farming, Fishing, and Forestry" 
24 "Construction and Extraction" 
25 "Installation, Maintenance, and Repair"
26 "Precision Production (such as machinist, welder, baker, printer, tailor)" 
27 "Transportation and Material Moving" 
28 "Armed Services"
29 "Other"
;
#delimit cr
lab values occ16 occ16

lab var occ "Occupation (2017-2018)" 
#delimit ;
lab define occ
1 "Management" 
2 "Business and financial operations"
3 "Computer and mathematical"
4 "Architecture and engineering"
5 "Life, Physical, and Social Science"
6 "Community and Social Service"
7 "Lawyer, judge"
8 "Teacher, except college and university"
9 "Teacher, college and university"
10 "Other professional"
11 "Medical Doctor (such as physician, surgeon, dentist, veterinarian)"
12 "Other Health Care Practitioner(such as nurse, pharmacist, chiropractor, dietician)"
13 "Health Technologist or Technician (such as paramedic, lab technician)"
14 "Health Care Support (such as nursing aide, orderly, dental assistant)"
15 "Protective Service"
16 "Food Preparation and Serving"
17 "Building and Grounds Cleaning and Maintenance"
18 "Personal Care and Service"
19 "Sales Representative"
20 "Retail Sales"
21 "Other sales"
22 "Office and Administrative Support"
23 "Farming, Fishing, and Forestry" 
24 "Construction and Extraction" 
25 "Installation, Maintenance, and Repair"
26 "Precision Production (such as machinist, welder, baker, printer, tailor)" 
27 "Transportation and Material Moving" 
28 "Armed Services"
29 "Other"
30 "Business Operations (including Marketing)"
31 "Financial Operations or Financial Services (including Financial Advisor, Broker)"
32 "Education, Training, and Library"
33 "Arts, Design, Entertainment, Sports, and Media"
34 "Health Diagnosing or Treating Practitioner (such as physician, nurse, dentist, veterinarian, pharmacist)"
35 "Sales"
;
#delimit cr
lab values occ occ


/* occupation: consistent 2016-2018 category 
 ignores changes made in 2017-2018 (addition of categories 30-35) */

 if 2016<=`year' & `year'<=2018 {
replace occ2=ppcm0160
replace occ2=. if ppcm0160<0
}
lab val occ2 occ
notes occ2: 30-35 only available in 2017-2018


/* occupation: consistent 2016-2018 category, by AMM */

if 2016<=`year' & `year'<=2018 {
replace occ3=1 if ppcm0160==1
replace occ3=2 if ppcm0160==2
replace occ3=3 if ppcm0160==3
replace occ3=4 if ppcm0160==4
replace occ3=5 if ppcm0160==5
replace occ3=6 if ppcm0160==6
replace occ3=7 if ppcm0160==7
replace occ3=8 if ppcm0160==32 | ppcm0160==8 | ppcm0160==9
replace occ3=9 if ppcm0160==33
replace occ3=10 if ppcm0160==10
replace occ3=11 if ppcm0160>=11 & ppcm0160<=13 | ppcm0160==34
replace occ3=12 if ppcm0160==14
replace occ3=13 if ppcm0160==15
replace occ3=14 if ppcm0160==16
replace occ3=15 if ppcm0160==17
replace occ3=16 if ppcm0160==18
replace occ3=17 if ppcm0160>=19 & ppcm0160<=21 | ppcm0160==24
replace occ3=18 if ppcm0160==22
replace occ3=19 if ppcm0160==23
replace occ3=20 if ppcm0160==24
replace occ3=21 if ppcm0160==25
replace occ3=22 if ppcm0160==26
replace occ3=23 if ppcm0160==27
replace occ3=24 if ppcm0160==29
replace occ3=25 if ppcm0160==28
replace occ=. if ppcm0160<0
}
lab var occ3 "Occupation 2 (2016-2018), AMM"
#delimit ;
lab define occ3 
1 "Management"
2 "Business & financial operations"
3 "Computer & mathematical"
4 "Architecture and engineering"
5 "Life, Physical, and Social Science"
6 "Community and Social Service"
7 "Legal" 
8 "Education, Training, Library"
9 "Arts, Design, Entertainment, Sports and Media" 
10 "Other Professional"
11 "Healthcare Practicioners and Technical" 
12 "Healthcare Support" 
13 "Protective Service"
14 "Food Preparation and Serving Related" 
15 "Building and Grounds Cleaning and Maintenance"
16 "Personal Care and Service" 
17 "Sales and Related" 
18 "Office and Administrative Support"
19 "Farming, Fishing, and Forestry" 
20 "Construction and Extraction" 
21 "Installation, Maintenance, and Repair"
22 "Production" 
23 "Transportation and Material Moving" 
24 "Other" 
25 "Armed Services"
;
#delimit cr
lab val occ3 occ3

