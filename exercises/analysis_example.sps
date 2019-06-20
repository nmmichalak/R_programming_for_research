* read data

GET FILE='/Users/nicholasmichalak/Desktop/analyses_lbl_template/data/hsb2.sav'.
DATASET NAME hsb2 WINDOW=FRONT.

* recode variables into new variables

COMPUTE gender_lbl = female.
COMPUTE race_lbl = RACE.
COMPUTE ses_lbl = SES.
COMPUTE schooltype_lbl = SCHTYP.
COMPUTE program_lbl = PROG.

* add value labels

VALUE LABELS  gender_lbl 0 "Male" 1 "Female".
VALUE LABELS  race_lbl 1 "Hispanic" 2 "Asian" 3 "African-American" 4 "White".
VALUE LABELS  ses_lbl 1 "Low" 2 "Middle" 3 "High".
VALUE LABELS  schooltype_lbl 1 "Public" 2 "Private".
VALUE LABELS  program_lbl 1 "General" 2 "Academic" 3 "Vocation".

* boxplots and statistics by gender_lbl

EXAMINE VARIABLES = READ WRITE MATH SCIENCE SOCST BY gender_lbl
   /PLOT = BOXPLOT
   /STATISTICS = DESCRIPTIVES
   /NOTOTAL.

* boxplots and statistics by race_lbl

EXAMINE VARIABLES = READ WRITE MATH SCIENCE SOCST BY race_lbl
   /PLOT = BOXPLOT
   /STATISTICS = DESCRIPTIVES
   /NOTOTAL.

* boxplots and statistics by ses_lbl

EXAMINE VARIABLES = READ WRITE MATH SCIENCE SOCST BY ses_lbl
   /PLOT = BOXPLOT
   /STATISTICS = DESCRIPTIVES
   /NOTOTAL.

* boxplots and statistics by schooltype_lbl

EXAMINE VARIABLES = READ WRITE MATH SCIENCE SOCST BY schooltype_lbl
   /PLOT = BOXPLOT
   /STATISTICS = DESCRIPTIVES
   /NOTOTAL.

* boxplots and statistics by program_lbl

EXAMINE VARIABLES = READ WRITE MATH SCIENCE SOCST BY program_lbl
   /PLOT = BOXPLOT
   /STATISTICS = DESCRIPTIVES
   /NOTOTAL.

* scatterplot matrix

GRAPH
   /SCATTERPLOT(MATRIX) = READ WRITE MATH SCIENCE SOCST.

* t-test example

T-TEST GROUPS = gender_lbl(0 1)
   /VARIABLES = READ WRITE MATH SCIENCE SOCST.

* correlation table

CORRELATIONS VARIABLES READ WRITE MATH SCIENCE SOCST
   /MISSING = PAIRWISE.

* ANOVA contrast: Academic versus General
* ANOVA contrast: Academic versus Vocation
* ANOVA contrast: General versus Vocation

ONEWAY READ BY program_lbl
   /CONTRAST = -1, 1, 0
   /CONTRAST = -1, 0, 1
   /CONTRAST = -0, -1, 1.

* 3 x 3 boxplots

EXAMINE VARIABLES = SOCST BY ses_lbl BY program_lbl
   /PLOT = BOXPLOT
   /STATISTICS = NONE
   /NOTOTAL.

* plot 3 x 3 means and 95% confidence intervals

GRAPH
   /BAR(SIMPLE) = MEAN(SOCST) BY ses_lbl BY program_lbl
   /INTERVAL CI(95).

* 2 x 3 ANOVA
* create contrasts first

RECODE ses_lbl (1 = -0.5) (2 = 0) (3 = 0.5) INTO ses_lbl_linear.
RECODE ses_lbl (1 = 0.25) (2 = -0.5) (3 = 0.25) INTO ses_lbl_quad.
RECODE program_lbl (1 = 0.5) (2 = -0.5) (3 = 0) INTO acadVgenrl.
RECODE program_lbl (1 = -0.25) (2 = -0.25) (3 = 0.5) INTO vocVacgen.

* print crosstabs

CROSSTABS TABLES = ses_lbl BY ses_lbl_linear ses_lbl_quad.
CROSSTABS TABLES = program_lbl BY acadVgenrl vocVacgen.

* fit ANOVA model with contrasts and interactions between them

GLM SOCST WITH ses_lbl_linear ses_lbl_quad acadVgenrl vocVacgen
   /PRINT = PARAMETER ETASQ
   /DESIGN = INTERCEPT ses_lbl_linear ses_lbl_quad acadVgenrl vocVacgen ses_lbl_linear * acadVgenrl ses_lbl_linear * vocVacgen ses_lbl_quad * acadVgenrl ses_lbl_quad * vocVacgen.

* create grouping code, ses_program

IF (ses_lbl = 1 AND program_lbl = 2) ses_program = 1. 
IF (ses_lbl = 2 AND program_lbl = 2) ses_program = 2. 
IF (ses_lbl = 3 AND program_lbl = 2) ses_program = 3. 
IF (ses_lbl = 1 AND program_lbl = 1) ses_program = 4. 
IF (ses_lbl = 2 AND program_lbl = 1) ses_program = 5. 
IF (ses_lbl = 3 AND program_lbl = 1) ses_program = 6. 
IF (ses_lbl = 1 AND program_lbl = 3) ses_program = 7. 
IF (ses_lbl = 2 AND program_lbl = 3) ses_program = 8. 
IF (ses_lbl = 3 AND program_lbl = 3) ses_program = 9.

* add value labels

VALUE LABELS  ses_program 1 "Low x Academic" 2 "Middle x Academic" 3 "High x Academic" 4 "Low x General" 5 "Middle x General" 6 "High x General" 7 "Low x Vocation" 8 "Middle x Vocation" 9 "High x Vocation".

* check out the order of the groups

FREQUENCIES VARIABLES = ses_program.

* ANOVA contrast: SES linear effect
* ANOVA contrast: SES low and middle vs. high effect
* ANOVA contrast: Academic vs. General
* ANOVA contrast: Vocation vs. Academic + General
* ANOVA contrast: Academic vs. Vocation within Low SES (i.e., simple effect)

ONEWAY SOCST BY ses_program
   /CONTRAST = -0.5, 0, 0.5, -0.5, 0, 0.5, -0.5, 0, 0.5
   /CONTRAST = 0.25, -0.5, 0.25, 0.25, -0.5, 0.25, 0.25, -0.5, 0.25
   /CONTRAST = -0.5, -0.5, -0.5, 0.5, 0.5, 0.5, 0, 0, 0
   /CONTRAST = -0.25, -0.25, -0.25, -0.25, -0.25, -0.25, 0.5, 0.5, 0.5.
