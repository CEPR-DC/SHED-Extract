set more 1

/* Determine data year */
local year=year in 1


/* region */

gen region=.
if 2016<=`year' & `year'<=2017 {
replace region=1 if ppreg==1
replace region=2 if ppreg==2
replace region=3 if ppreg==3
replace region=4 if ppreg==4
replace region=5 if ppreg9==9
}
if `year'==2018 {
replace region=1 if ppreg4==1
replace region=2 if ppreg4==2
replace region=3 if ppreg4==3
replace region=4 if ppreg4==4
replace region=5 if ppreg9==9
}
lab var region "Region"
#delimit ;
lab define region
1 "Northeast"
2 "Midwest"
3 "South"
4 "West"
5 "Pacific"
;
#delimit cr
lab val region region

gen state=.
if 2016<=`year' & `year'<=2018 {
replace state=ppstaten
}
lab var state "State"
#delimit ;
lab def state
11 "Maine"
12 "New Hampshire"
13 "Vermont"
14 "Massachusetts"
15 "Rhode Island"
16 "Connecticut"
21 "New York"
22 "New Jersey"
23 "Pennsylvania"
31 "Ohio"
32 "Indiana"
33 "Illinois"
34 "Michigan"
35 "Wisconsin"
41 "Minnesota"
42 "Iowa"
43 "Missouri"
44 "North Dakota"
45 "South Dakota"
46 "Nebraska"
47 "Kansas"
51 "Delaware"
52 "Maryland"
53 "District of Columbia"
54 "Virginia"
55 "West Virginia"
56 "North Carolina"
57 "South Carolina"
58 "Georgia"
59 "Florida"
61 "Kentucky"
62 "Tennessee"
63 "Alabama"
64 "Mississippi"
71 "Arkansas"
72 "Louisiana"
73 "Oklahoma"
74 "Texas"
81 "Montana"
82 "Idaho"
83 "Wyoming"
84 "Colorado"
85 "New Mexico"
86 "Arizona"
87 "Utah"
88 "Nevada"
91 "Washington"
92 "Oregon"
93 "California"
94 "Alaska"
95 "Hawaii"
;
#delimit cr
lab val state state
