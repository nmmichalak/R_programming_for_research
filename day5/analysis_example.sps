* read data

GET FILE='/Users/nicholasmichalak/Desktop/analyses_template/data/hsb2.sav'.
DATASET NAME hsb2 WINDOW=FRONT.

* recode variables into new variables

COMPUTE gender = female.
COMPUTE race = RACE.
COMPUTE ses = SES.
COMPUTE schooltype = SCHTYP.
COMPUTE program = PROG.

* add value labels

VALUE LABELS  gender 0 "Male" 1 "Female".
VALUE LABELS  race 1 "Hispanic" 2 "Asian" 3 "African-American" 4 "White".
VALUE LABELS  ses 1 "Low" 2 "Middle" 3 "High".
VALUE LABELS  schooltype 1 "Public" 2 "Private".
VALUE LABELS  program 1 "General" 2 "Academic" 3 "Vocation".

* boxplots and statistics by gender

EXAMINE VARIABLES = READ WRITE MATH SCIENCE SOCST BY gender
   /PLOT = BOXPLOT
   /STATISTICS = DESCRIPTIVES
   /NOTOTAL.

* boxplots and statistics by race

EXAMINE VARIABLES = READ WRITE MATH SCIENCE SOCST BY race
   /PLOT = BOXPLOT
   /STATISTICS = DESCRIPTIVES
   /NOTOTAL.

* boxplots and statistics by ses

EXAMINE VARIABLES = READ WRITE MATH SCIENCE SOCST BY ses
   /PLOT = BOXPLOT
   /STATISTICS = DESCRIPTIVES
   /NOTOTAL.

* boxplots and statistics by schooltype

EXAMINE VARIABLES = READ WRITE MATH SCIENCE SOCST BY schooltype
   /PLOT = BOXPLOT
   /STATISTICS = DESCRIPTIVES
   /NOTOTAL.

* boxplots and statistics by program

EXAMINE VARIABLES = READ WRITE MATH SCIENCE SOCST BY program
   /PLOT = BOXPLOT
   /STATISTICS = DESCRIPTIVES
   /NOTOTAL.

* scatterplot matrix

GRAPH
   /SCATTERPLOT(MATRIX) = READ WRITE MATH SCIENCE SOCST.

* t-test example

T-TEST GROUPS = gender(0 1)
   /VARIABLES = READ WRITE MATH SCIENCE SOCST.

* correlation table

CORRELATIONS VARIABLES READ WRITE MATH SCIENCE SOCST
   /MISSING = PAIRWISE.

* ANOVA contrast: Academic versus General
* ANOVA contrast: Academic versus Vocation
* ANOVA contrast: General versus Vocation

ONEWAY READ BY program
   /CONTRAST = -1, 1, 0
   /CONTRAST = -1, 0, 1
   /CONTRAST = -0, -1, 1.

* 3 x 3 boxplots

EXAMINE VARIABLES = SOCST BY ses BY program
   /PLOT = BOXPLOT
   /STATISTICS = NONE
   /NOTOTAL.

* plot 3 x 3 means and 95% confidence intervals

GRAPH
   /BAR(SIMPLE) = MEAN(SOCST) BY ses BY program
   /INTERVAL CI(95).

* 2 x 3 ANOVA
* create contrasts first

RECODE ses (1 = -0.5) (2 = 0) (3 = 0.5) INTO lowhigh.
RECODE ses (1 = -0.5) (2 = -0.5) (3 = 1) INTO lomidVhi.
RECODE program (1 = 0.5) (2 = -0.5) (3 = 0) INTO acadgenrl.
RECODE program (1 = -0.5) (2 = -0.5) (3 = 1) INTO vocVacgen.

* print crosstabs

CROSSTABS TABLES = ses BY lowhigh lomidVhi.
CROSSTABS TABLES = program BY acadgenrl vocVacgen.

* fit ANOVA model with contrasts and interactions between them

GLM SOCST WITH lowhigh lomidVhi acadgenrl vocVacgen
   /PRINT = PARAMETER ETASQ
   /DESIGN = INTERCEPT lowhigh lomidVhi acadgenrl vocVacgen lowhigh * acadgenrl lowhigh * vocVacgen lomidVhi * acadgenrl lomidVhi * vocVacgen.

* create grouping code, ses_program

IF (ses = 1 AND program = 2) ses_prog = 1. 
IF (ses = 2 AND program = 2) ses_prog = 2. 
IF (ses = 3 AND program = 2) ses_prog = 3. 
IF (ses = 1 AND program = 1) ses_prog = 4. 
IF (ses = 2 AND program = 1) ses_prog = 5. 
IF (ses = 3 AND program = 1) ses_prog = 6. 
IF (ses = 1 AND program = 3) ses_prog = 7. 
IF (ses = 2 AND program = 3) ses_prog = 8. 
IF (ses = 3 AND program = 3) ses_prog = 9.

* add value labels

VALUE LABELS  ses_prog 1 "Low x Academic" 2 "Middle x Academic" 3 "High x Academic" 4 "Low x General" 5 "Middle x General" 6 "High x General" 7 "Low x Vocation" 8 "Middle x Vocation" 9 "High x Vocation".

* check out the order of the groups

FREQUENCIES VARIABLES = ses_prog.

* ANOVA contrast: SES linear effect
* ANOVA contrast: SES quadratic effect
* ANOVA contrast: Academic vs. General
* ANOVA contrast: Vocation vs. Academic + General
* ANOVA contrast: Academic vs. Vocation within Low SES (i.e., simple effect)

ONEWAY SOCST BY ses_prog
   /CONTRAST = -1, 0, 1, -1, 0, 1, -1, 0, 1
   /CONTRAST = 1, -2, 1, 1, -2, 1, 1, -2, 1
   /CONTRAST = -1, -1, -1, 1, 1, 1, 0, 0, 0
   /CONTRAST = -1, -1, -1, -1, -1, -1, 2, 2, 2
   /CONTRAST = -1, 0, 0, 0, 0, 0, 1, 0, 0.
