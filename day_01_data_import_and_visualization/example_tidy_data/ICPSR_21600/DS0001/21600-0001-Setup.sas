/*-------------------------------------------------------------------------
 |                                                                         
 |                    SAS SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |          (DATASET 0001: WAVE I: IN-HOME QUESTIONNAIRE, PUBLIC
 |                              USE SAMPLE)
 |
 |
 | SAS setup sections are provided for the ASCII version of this data
 | collection.  These sections are listed below:
 |
 | PROC FORMAT:  creates user-defined formats for the variables. Formats
 | replace original value codes with value code descriptions. Only
 | variables with user-defined formats are included in this section.
 |
 | DATA:  begins a SAS data step and names an output SAS data set.
 |
 | INFILE:  identifies the input file to be read with the input statement.
 | Users must replace the "data-filename" with a filename specifying the
 | directory on the user's computer system in which the downloaded and
 | unzipped data file is physically located (e.g.,
 | "c:\temp\21600-0001-data.txt").
 |
 | INPUT:  assigns the name, type, decimal specification (if any), and
 | specifies the beginning and ending column locations for each variable
 | in the data file.
 |
 | LABEL:  assigns descriptive labels to all variables. Variable labels
 | and variable names may be identical for some variables.
 |
 | MISSING VALUE RECODES:  sets user-defined numeric missing values to
 | missing as interpreted by the SAS system. Only variables with
 | user-defined missing values are included in this section.
 |
 | If any variables have more than one missing value, they are assigned
 | to the standard missing value of a single period (.) in the statement
 | below. To maintain the original meaning of missing codes, users may want
 | to take advantage of the SAS missing values (the letters A-Z or an
 | underscore preceded by a period).
 |
 | An example of a standard missing value recode:
 |
 |   IF (RELATION = 98 OR RELATION = 99) THEN RELATION = .; 
 |
 | The same example using special missing value recodes:
 |
 |    IF RELATION = 98 THEN RELATION = .A;
 |    IF RELATION = 99 THEN RELATION = .B;
 |
 | FORMAT:  associates the formats created by the PROC FORMAT step with
 | the variables named in the INPUT statement.
 |
 | NOTE:  Users should modify this setup file to suit their specific needs.
 | Sections for PROC FORMAT, FORMAT, and MISSING VALUE RECODES have been
 | commented out (i.e., '/*'). To include these sections in the final SAS
 | setup, users should remove the SAS comment indicators from the desired
 | section(s).
 |
 |------------------------------------------------------------------------*/

* SAS PROC FORMAT;

/*
PROC FORMAT;
VALUE pa53ffff  0='(0) (0) No (go to A49)' 1='(1) (1) Yes (skip to A50)'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legit skip (2/fewer marriages/-like relationship last 18';
VALUE h1ri9_1f  1='(01) (1) All of them' 2='(02) (2) Most of them'
                3='(03) (3) A few of them' 4='(04) (4) One of them' 5='(05) (5) None of them'
                6='(06) (6) When relationship w/{INITIALS} began/no close friends' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R doesn''t have special friend)'
                98='(98) (98) Don''t know';
VALUE h1hr2rff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R lives with 17/fewer persons)' 8='(8) (8) Don''t know';
VALUE h1fp5dff  96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (hasn''t menstruated)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1fp2fff  1='(1) (1) My body is about as curvy as when in grade school'
                2='(2) (2) My body is a little more curvy than when in grade school'
                3='(3) (3) My body is somewhat more curvy than when in grade school'
                4='(4) (4) My body is a lot more curvy than when in grade school'
                5='(5) (5) My body is a whole lot more curvy than when in grade sch' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (male respondent)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1nr31a_1f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1ri38b_1f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                9='(09) (9) Norplant' 11='(11) (11) Depo Provera' 12='(12) (12) Contraceptive film'
                13='(13) (13) Some other method' 14='(14) (14) No other method' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1da9fff  0='(000) (0) Doesn''t watch videos' 996='(996) (996) Refused'
                998='(998) (998) Don''t know';
VALUE h1ri1m__1f  0='(00) (0) Don''t consider this person special friend'
                1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March' 4='(04) (4) April'
                5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July' 8='(08) (8) August'
                9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R has no/only one special friend)'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1rx38af  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 11='(11) (11) Depo Provera'
                13='(13) (13) Some other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1to10ff  0='(00) (0) No days (If 0/skip to Q.12)'
                96='(96) (96) Refused (skip to Q.12)' 97='(97) (97) Legit skip (skip to Q.12)'
                98='(98) (98) Don''t know (skip to Q.12)' 99='(99) (99) Not applicable (skip to Q.12)';
VALUE h1ir16ff  0='(00) (0) No interruptions (skip to Q.18)'
                96='(96) (96) Refused (skip to Q.18)' 98='(98) (98) Don''t know (skip to Q.18)';
VALUE h1ri11yf  75='(75) (75) 1975' 78='(78) (78) 1978' 88='(88) (88) 1988'
                89='(89) (89) 1989' 90='(90) (90) 1990' 91='(91) (91) 1991' 92='(92) (92) 1992'
                93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (no special friend/relationship on-goin'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1hr2cff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R live with 2/fewer persons)' 8='(8) (8) Don''t know';
VALUE pc15ffff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (adolescent doesn''t have girl/boyfriend)';
VALUE pa16ffff  0='(0) (0) No (skip to A18)' 1='(1) (1) Yes (skip to A18)'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (works outside the home)';
VALUE h1to53ff  0='(0) (0) No (skip to next section)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to next section)' 8='(8) (8) Don''t know (skip to next section)'
                9='(9) (9) Not applicable (skip to next section)';
VALUE h1to2fff  0='(00) (0) Never smoked a whole cigarette (skip to Q.9)'
                1='(01) (1) 1 year' 2='(02) (2) 2 years' 4='(04) (4) 3-4 years' 5='(05) (5) 5 years'
                6='(06) (6) 6 years' 7='(07) (7) 7 years' 8='(08) (8) 8 years' 9='(09) (9) 9 years'
                10='(10) (10) 10 years' 11='(11) (11) 11 years' 12='(12) (12) 12 years'
                13='(13) (13) 13 years' 14='(14) (14) 14 years' 15='(15) (15) 15 years'
                16='(16) (16) 16 years' 17='(17) (17) 17 years' 18='(18) (18) 18 years'
                19='(19) (19) 19 years' 20='(20) (20) 20 years' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (never tried smoking cigarettes)'
                98='(98) (98) Don''t know';
VALUE h1nr13_f  97='(97) (97) Legitimate skip (never had a sexual relationship)'
                98='(98) (98) Don''t know';
VALUE h1nr14_f  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (never had a sexual relationship)' 8='(8) (8) Don''t know';
VALUE h1ri28__1f  0='(0) (0) No (skip to next partner/section)' 1='(1) (1) Yes'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (intercourse more than once in same mont';
VALUE pc65_mff  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Respondent refused to answer'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know';
VALUE h1nr42__1f  0='(0) (0) No (skip to Q.44)' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (intercourse in only one month)';
VALUE h1rx13__1f  1='(1) (1) In your neighborhood' 2='(2) (2) Not in your neighborhood'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (relationship still going on)';
VALUE pa63ffff  0='(0) (0) No (skip to Section B)' 1='(1) (1) Yes (go to A64)'
                6='(6) (6) Respondent refused to answer';
VALUE h1hr9pff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 15/fewer persons)'
                8='(8) (8) Don''t know';
VALUE h1ri38af  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                9='(09) (9) Norplant' 10='(10) (10) Ring' 11='(11) (11) Depo Provera'
                12='(12) (12) Contraceptive film' 13='(13) (13) Some other method'
                96='(96) (96) Refused (skip to Q.41)'
                97='(97) (97) Legitimate skip (didn''t use birth control)'
                98='(98) (98) Don''t know (skip to Q.41)';
VALUE h1to19ff  1='(01) (1) Beer' 2='(02) (2) Wine' 3='(03) (3) Wine coolers'
                4='(04) (4) Straight liquor' 5='(05) (5) Mixed drinks' 6='(06) (6) Whatever is available'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (hasn''t drunk in past 12 months)'
                98='(98) (98) Don''t know';
VALUE nrrxflgf  1='(1) (1) Yes';
VALUE h1co17if  1='(1) (1) Less than 1 year ago' 2='(2) (2) 1 or more years ago'
                7='(7) (7) Legitimate skip (have never been told bacterial vaginosi';
VALUE h1hr2off  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R lives with 14/fewer persons)' 8='(8) (8) Don''t know';
VALUE h1fs1fff  0='(0) (0) Never/rarely' 1='(1) (1) Sometimes'
                2='(2) (2) A lot of the time' 3='(3) (3) Most/all of the time' 6='(6) (6) Refused'
                8='(8) (8) Don''t know';
VALUE h1fp14_f  7='(7) (7) Legitimate skip';
VALUE h1rx9_1f  1='(01) (1) All of them' 2='(02) (2) Most of them'
                3='(03) (3) A few of them' 4='(04) (4) One of them' 5='(05) (5) None of them'
                6='(06) (6) When relationship w/{INITIALS} began/no close friends' 96='(96) (96) Refused'
                97='(97) (97) Legit skip (No sexual relation/section 26 questions ask'
                98='(98) (98) Don''t know';
VALUE h1fv13ff  996='(996) (996) Refused' 997='(997) (997) Legitimate skip'
                998='(998) (998) Don''t know' 999='(999) (999) Not applicable';
VALUE h1ff3eff  2='(02) (2) 1st or 2nd' 3='(03) (3) 3rd' 4='(04) (4) 4th' 5='(05) (5) 5th'
                6='(06) (6) 6th' 7='(07) (7) 7th' 8='(08) (8) 8th' 9='(09) (9) 9th' 10='(10) (10) 10th'
                11='(11) (11) 11th' 12='(12) (12) 12th' 13='(13) (13) Beyond high school (skip to Q.6)'
                97='(97) (97) Legitimate skip';
VALUE h1fp11m_2f  11='(11) (11) November or December' 97='(97) (97) Legitimate skip';
VALUE h1ri29b_2f  2='(02) (2) Withdrawal' 6='(06) (6) Foam/jelly/creme/suppositories'
                14='(14) (14) No other method' 97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1rm13ff  1='(01) (1) Always' 2='(02) (2) Most of the time'
                3='(03) (3) Some of the time' 4='(04) (4) Almost never' 5='(05) (5) Never'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (no MOM)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1gh38ff  1='(1) (1) Less than 10 minutes' 2='(2) (2) 10 to 20 minutes'
                3='(3) (3) 21 to 30 minutes' 4='(4) (4) More than 30 minutes' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know';
VALUE h1ri20_f  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R doesn''t have special friend)' 8='(8) (8) Don''t know';
VALUE h1rx18df  0='(0) (0) Not marked' 1='(1) (1) Marked (ask Q.19)' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (No/one sexual relation/section 26 questions '
                8='(8) (8) Don''t know';
VALUE h1gi19ff  0='(0) (0) No' 1='(1) (1) Yes' 7='(7) (7) Legitimate skip (not in school)';
VALUE h1hr6aff  1='(01) (1) Biological father' 2='(02) (2) Stepfather'
                3='(03) (3) Adoptive father' 4='(04) (4) Step/adoptive father' 5='(05) (5) Foster father'
                6='(06) (6) Other' 7='(07) (7) Biological mother' 8='(08) (8) Step mother'
                9='(09) (9) Adoptive mother' 10='(10) (10) Step/adoptive mother'
                11='(11) (11) Foster mother' 12='(12) (12) Other'
                97='(97) (97) Legitimate skip (not a mother/father)';
VALUE h1rx8a__1f  0='(0) (0) Not marked' 1='(1) (1) Marked'
                7='(7) (7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske';
VALUE h1ws9cff  0='(0) (0) No (skip to Q.12)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (look like members of the same family)';
VALUE h1ri25y_1f  90='(90) (90) 1990' 91='(91) (91) 1991' 92='(92) (92) 1992'
                93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (intercourse not confirmed)' 98='(98) (98) Don''t know';
VALUE h1mp2fff  1='(1) (1) I have few scattered hair/growth isn''t thick'
                2='(2) (2) Hair is somewhat thick/still see a lot of skin under it'
                3='(3) (3) Hair is thick/can''t see much skin under it'
                4='(4) (4) Hair is very thick/like grown man''s facial hair' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (female respondent)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE pc36_0ff  0='(0) (0) Not marked' 1='(1) (1) Marked' 6='(6) (6) Refused to answer'
                7='(7) (7) Legitimate skip (adolescent hasn''t lived apart from R)';
VALUE h1hr2gff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R lives with 6/fewer persons)' 8='(8) (8) Don''t know';
VALUE h1ri38c_2f  2='(02) (2) Withdrawal' 3='(03) (3) Rhythm (safe time)'
                4='(04) (4) Birth control pills' 5='(05) (5) Vaginal sponge'
                6='(06) (6) Foam/jelly/creme/suppositories' 7='(07) (7) Diaphragm, with/without jelly'
                9='(09) (9) Norplant' 12='(12) (12) Contraceptive film' 13='(13) (13) Some other method'
                14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (used only one birth control method)';
VALUE h1gi9fff  1='(1) (1) White' 2='(2) (2) Black/African American'
                3='(3) (3) American Indian/Native American' 4='(4) (4) Asian/Pacific Islander'
                5='(5) (5) Other' 6='(6) (6) Refused' 8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE pa15ffff  0='(0) (0) No (skip to A16)' 1='(1) (1) Yes (go to A15)'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legit skip (hasn''t worked outside home in past 12 months';
VALUE h1hr7off  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R lives with 14/fewer persons)'
                998='(998) (998) Don''t know';
VALUE pc47ffff  0='(0) (0) No (skip to C49)' 1='(1) (1) Yes (go to C48)'
                6='(6) (6) Respondent refused to answer' 8='(8) (8) Don''t know';
VALUE h1fp12__1f  0='(0) (0) No (skip to Q.15)' 1='(1) (1) Yes' 7='(7) (7) Legitimate skip';
VALUE h1to7fff  0='(00) (0) No cigarettes' 96='(96) (96) Refused'
                97='(97) (97) Legit skip (never smoked regularly/didn''t smoke past 30'
                98='(98) (98) Don''t know';
VALUE h1pl2fff  0='(0) (0) No' 1='(1) (1) Yes' 7='(7) (7) Legitimate skip';
VALUE h1ee11ff  1='(1) (1) 0/you don''t drive' 2='(2) (2) 1-50 miles'
                3='(3) (3) 51-100 miles' 4='(4) (4) Over 100 miles' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (have never driven a car)' 8='(8) (8) Don''t know';
VALUE h1ri5a__1f  2='(02) (2) 1st or 2nd' 3='(03) (3) 3rd' 4='(04) (4) 4th' 5='(05) (5) 5th'
                6='(06) (6) 6th' 7='(07) (7) 7th' 8='(08) (8) 8th' 9='(09) (9) 9th' 10='(10) (10) 10th'
                11='(11) (11) 11th' 12='(12) (12) 12th' 13='(13) (13) Beyond high school'
                14='(14) (14) {INITIALS} wasn''t in school (skip to Q.7)'
                15='(15) (15) {INITIALS} was in school/don''t know what grade'
                16='(16) (16) Don''t know whether {INITIALS} was in school' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R has no/only one special friend)'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1rf11ff  1='(01) (1) Always' 2='(02) (2) Most of the time'
                3='(03) (3) Some of the time' 4='(04) (4) Almost never' 5='(05) (5) Never'
                6='(06) (6) He takes me to school' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (no DAD)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1ir7ddf  0='(0) (0) Not marked (skip to Q.9)' 1='(1) (1) Marked'
                7='(7) (7) Legitimate skip (3rd person not present)';
VALUE h1ff5aff  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (goes to R''s school/no sister school)'
                8='(8) (8) Don''t know';
VALUE studsib_1f  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (skip to next section)';
VALUE h1fp10ff  0='(0) (0) None (skip to Q.12)' 1='(1) (1) 1 time' 2='(2) (2) 2 times'
                3='(3) (3) 3 or more times' 7='(7) (7) Legitimate skip';
VALUE h1mf6aff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip';
VALUE h1fp13b_1f  14='(14) (14) No other method' 97='(97) (97) Legitimate skip';
VALUE h1co8fff  0='(0) (0) No (skip to Q.10)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.10)'
                7='(7) (7) Legitimate skip (hasn''t had intercourse/used condom)'
                8='(8) (8) Don''t know (skip to Q.10)';
VALUE pc25ffff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (adolescent not in school now)';
VALUE pc23ffff  1='(01) (1) 9:00pm or earlier' 2='(02) (2) By 10:00pm'
                3='(03) (3) By 11:00pm' 4='(04) (4) by 12:00 (midnight)' 5='(05) (5) By 1:00am'
                6='(06) (6) After 1:00am' 7='(07) (7) (He/she) has not set bedtime'
                96='(96) (96) Respondent refused to answer' 98='(98) (98) Don''t know';
VALUE h1id1aff  1='(1) (1) Card kept' 2='(2) (2) Card rejected' 6='(6) (6) Refused'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1ri6_1f  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (No special friend/friend not in school)'
                8='(8) (8) Don''t know';
VALUE h1gi21ff  1='(01) (1) Suspended/expelled' 2='(02) (2) Dropped out'
                3='(03) (3) Sick/injured/on leave' 4='(04) (4) Graduated'
                5='(05) (5) Pregnant (R is female)' 6='(06) (6) Other' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (in school)' 98='(98) (98) Don''t know';
VALUE h1ff4cff  0='(0) (0) No' 1='(1) (1) Yes (skip to Q.6)' 7='(7) (7) Legitimate skip';
VALUE h1ir8bff  0='(0) (0) No one 6-11' 1='(1) (1) One person 6-11'
                2='(2) (2) Two people 6-11' 3='(3) (3) Three people 6-11'
                7='(7) (7) Legitimate skip (able to determine relationship)';
VALUE h1ri4_2f  96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (no 2nd spec friend/age given)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1hr9nff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 13/fewer persons)'
                8='(8) (8) Don''t know';
VALUE h1co12cf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                7='(07) (7) Diaphragm, with/without jelly' 8='(08) (8) IUD (intrauterine device)'
                9='(09) (9) Norplant' 10='(10) (10) Ring' 11='(11) (11) Depo Provera'
                12='(12) (12) Contraceptive film' 13='(13) (13) Some other method'
                14='(14) (14) No other method' 96='(96) (96) Refused (skip to Q.13)'
                97='(97) (97) Legit skip(hasn''t receive birth con/only 1 from Dr./cli'
                98='(98) (98) Don''t know (skip to Q.13)';
VALUE h1gi7aff  0='(0) (0) Not marked' 1='(1) (1) Marked'
                7='(7) (7) Legitimate skip (not Asian/Pacific Islander)' 8='(8) (8) Don''t know';
VALUE h1ri8a__1f  0='(0) (0) Not marked' 1='(1) (1) Marked' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R has no/only one special friend)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1rx9_2f  1='(01) (1) All of them' 2='(02) (2) Most of them'
                3='(03) (3) A few of them' 4='(04) (4) One of them' 5='(05) (5) None of them'
                6='(06) (6) When relationship w/{INITIALS} began/no close friends' 96='(96) (96) Refused'
                97='(97) (97) Legit skip (No/one sexual relation/section 26 questions'
                98='(98) (98) Don''t know';
VALUE h1rx38bf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 5='(05) (5) Vaginal sponge'
                7='(07) (7) Diaphragm, with/without jelly' 9='(09) (9) Norplant'
                11='(11) (11) Depo Provera' 13='(13) (13) Some other method'
                14='(14) (14) No other method' 97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1rx18d_1f  0='(0) (0) Not marked' 1='(1) (1) Marked (ask Q.19)'
                7='(7) (7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske';
VALUE h1ri22a_2f  1='(01) (1) We went out together in a group'
                2='(02) (2) I met my partner''s parents'
                3='(03) (3) I told other people that we were a couple'
                4='(04) (4) Saw less of friends/so I could spend more time w/partner'
                5='(05) (5) We went out together alone' 6='(06) (6) We held hands'
                7='(07) (7) I gave my partner a present' 8='(08) (8) My partner game me a present'
                9='(09) (9) I told my partner I loved him/her'
                10='(10) (10) My partner told me that s/he loved me'
                11='(11) (11) We thought of ourselves as a couple'
                12='(12) (12) We talked about contraception/STDs' 13='(13) (13) We kissed'
                14='(14) (14) We touched each other under clothing/with no clothes on'
                15='(15) (15) We had sexual intercourse'
                16='(16) (16) We touched each others'' genitals (private parts)'
                17='(17) (17) My partner/I got pregnant' 18='(18) (18) We got married'
                97='(97) (97) Legitimate skip (R has two/fewer special friends)';
VALUE twincfff  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legit skip (not study sib/two or fewer HH member ages 12';
VALUE h1ws7cff  1='(1) (1) Identical' 2='(2) (2) Fraternal'
                7='(7) (7) Legitimate skip (not R''s twin)';
VALUE h1ws8cff  1='(1) (1) Two peas' 7='(7) (7) Legitimate skip (not R''s twin)';
VALUE h1ri33bf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                9='(09) (9) Norplant' 11='(11) (11) Depo Provera' 13='(13) (13) Some other method'
                14='(14) (14) No other method' 97='(97) (97) Legitimate skip (didn''t use birth control)'
                98='(98) (98) Don''t know';
VALUE h1hr8eff  0='(000) (0) Less than a year'
                997='(997) (997) Legitimate skip (age given)' 998='(998) (998) Don''t know';
VALUE h1fp11y_1f  94='(94) (94) 1994' 97='(97) (97) Legitimate skip';
VALUE h1ri18af  0='(0) (0) Not marked' 1='(1) (1) Marked' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R doesn''t have special friend)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1rx21af  0='(0) (0) Card rejected' 1='(1) (1) Card kept' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (No sexual relation/section 26 questions aske'
                8='(8) (8) Don''t know';
VALUE h1jo16ff  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (hasn''t drunk alcohol alone)';
VALUE h1gh37ff  0='(0) (0) 0 days (skip to Q.39)' 1='(1) (1) 1 day' 2='(2) (2) 2 days'
                3='(3) (3) 3 days' 4='(4) (4) 4 days' 5='(5) (5) 5 days'
                6='(6) (6) Refused (skip to Q.39)' 7='(7) (7) Legitimate skip (not in school now)'
                8='(8) (8) Don''t know (skip to Q.39)';
VALUE h1ri29b_1f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                6='(06) (6) Foam/jelly/creme/suppositories' 9='(09) (9) Norplant'
                11='(11) (11) Depo Provera' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1hr3eff  2='(02) (2) Partner' 3='(03) (3) Son' 4='(04) (4) Daughter'
                5='(05) (5) Brother' 6='(06) (6) Brother''s wife' 7='(07) (7) Brother''s partner'
                8='(08) (8) Sister' 9='(09) (9) Sister''s husband' 10='(10) (10) Sister''s partner'
                11='(11) (11) Father' 13='(13) (13) Father''s partner' 14='(14) (14) Mother'
                15='(15) (15) Mother''s husband' 16='(16) (16) Mother''s partner'
                17='(17) (17) Father-in-law' 19='(19) (19) Grandfather' 20='(20) (20) Grandmother'
                22='(22) (22) Great-grandmother' 23='(23) (23) Uncle' 24='(24) (24) Aunt'
                25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 4/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE pc14ffff  0='(0) (0) No (skip to C17)' 1='(1) (1) Yes (go to C15)'
                6='(6) (6) Respondent refused to answer' 8='(8) (8) Don''t know (skip to C17)';
VALUE pc5fffff  1='(1) (1) None' 2='(2) (2) $100 or less' 3='(3) (3) $101-$200'
                4='(4) (4) $201-$500' 5='(5) (5) More than $500' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (biological mother lives in household)'
                8='(8) (8) Don''t know';
VALUE h1fp3fff  0='(0) (0) No (skip to Q.6)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.6)' 7='(7) (7) Legitimate skip (male respondent)'
                8='(8) (8) Don''t know (skip to Q.6)' 9='(9) (9) Not applicable (skip to Q.6)';
VALUE h1nr43__1f  1='(01) (1) 1 time' 2='(02) (2) 2 times' 4='(04) (4) 4 times'
                97='(97) (97) Legitimate skip';
VALUE h1co14yf  89='(89) (89) 1989 and before' 90='(90) (90) 1990' 91='(91) (91) 1991'
                92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                96='(96) (96) Refused'
                97='(97) (97) Legitimate skip(never taken birth control pills regular'
                98='(98) (98) Don''t know';
VALUE h1to16ff  96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (hasn''t drunk in past 12 months)'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1fv14yf  0='(00) (0) Never treated' 80='(80) (80) 1977 to 1980'
                87='(87) (87) 1981 to 1987' 88='(88) (88) 1988' 89='(89) (89) 1989' 90='(90) (90) 1990'
                91='(91) (91) 1991' 92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994'
                95='(95) (95) 1995' 96='(96) (96) Refused' 97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1hr2kff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R lives with 10/fewer persons)' 8='(8) (8) Don''t know';
VALUE h1ir8dff  0='(0) (0) No one 19 and older' 1='(1) (1) One person 19 and older'
                2='(2) (2) Two people 19 and older' 3='(3) (3) Three people 19 and older'
                7='(7) (7) Legitimate skip (able to determine relationship)' 8='(8) (8) Don''t know';
VALUE h1jo14ff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (drink=no)';
VALUE h1to48ff  0='(0) (0) No (skip to Q.50)' 1='(1) (1) Yes' 7='(7) (7) Legitimate skip';
VALUE s6afffff  0='(0) (0) Not marked' 1='(1) (1) Marked';
VALUE h1rx5a__2f  3='(03) (3) 1st to 3rd' 6='(06) (6) 6th' 8='(08) (8) 8th' 9='(09) (9) 9th'
                10='(10) (10) 10th' 11='(11) (11) 11th' 12='(12) (12) 12th'
                13='(13) (13) Beyond high school'
                14='(14) (14) {INITIALS} wasn''t in school (skip to Q.7)'
                16='(16) (16) You don''t know whether {INITIALS} is in school (skip to'
                97='(97) (97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask';
VALUE s7ffffff  1='(01) (1) Chinese' 2='(02) (2) Filipino' 3='(03) (3) Japanese'
                4='(04) (4) Asian Indian' 5='(05) (5) Korean' 6='(06) (6) Vietnamese' 7='(07) (7) Other'
                97='(97) (97) Legitimate skip' 99='(99) (99) Multiple response';
VALUE h1ri22af  1='(01) (1) We went out together in a group'
                2='(02) (2) I met my partner''s parents'
                3='(03) (3) I told other people that we were a couple'
                4='(04) (4) Saw less of friends/so I could spend more time w/partner'
                5='(05) (5) We went out together alone' 6='(06) (6) We held hands'
                7='(07) (7) I gave my partner a present' 8='(08) (8) My partner game me a present'
                9='(09) (9) I told my partner I loved him/her'
                10='(10) (10) My partner told me that s/he loved me'
                11='(11) (11) We thought of ourselves as a couple'
                12='(12) (12) We talked about contraception/STDs' 13='(13) (13) We kissed'
                14='(14) (14) We touched each other under clothing/with no clothes on'
                15='(15) (15) We had sexual intercourse'
                16='(16) (16) We touched each others'' genitals (private parts)'
                17='(17) (17) My partner/I got pregnant' 18='(18) (18) We got married'
                97='(97) (97) Legitimate skip (R doesn''t have special friend)';
VALUE h1gi16mf  1='(01) (1) January to March' 2='(02) (2) April to June'
                3='(03) (3) July to September' 4='(04) (4) October to December'
                97='(97) (97) Legitimate skip (never married)';
VALUE s13fffff  0='(0) (0) No' 1='(1) (1) Yes' 7='(7) (7) Legitimate skip'
                8='(8) (8) I don''t know';
VALUE h1hr9qff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 16/fewer persons)'
                8='(8) (8) Don''t know';
VALUE h1ed6aff  0='(0) (0) Not marked' 1='(1) (1) Marked' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know';
VALUE h1to40ff  0='(00) (0) You never tried any other type of illegal drug'
                1='(01) (1) 1 year' 3='(03) (3) 2-3 years' 6='(06) (6) 4-6 years' 9='(09) (9) 8-9 years'
                11='(11) (11) 10-11 years' 12='(12) (12) 12 years' 13='(13) (13) 13 years'
                14='(14) (14) 14 years' 15='(15) (15) 15 years' 16='(16) (16) 16 years'
                17='(17) (17) 17 years' 18='(18) (18) 18 years and older' 96='(96) (96) Refused'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1rx25mf  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 97='(97) (97) Legitimate skip (intercourse not confirmed)'
                98='(98) (98) Don''t know';
VALUE h1nr31b_1f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 11='(11) (11) Depo Provera'
                13='(13) (13) Some other method' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1pl8fff  0='(0) (0) No (skip to Q.10)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.10)'
                7='(7) (7) Legitimate skip (no physical/functional limitations)'
                8='(8) (8) Don''t know (skip to Q.10)';
VALUE pb18ffff  1='(01) (1) Completely unhappy' 10='(10) (10) Completely happy'
                96='(96) (96) Respondent refused to answer'
                97='(97) (97) Legitimate skip (no current spouse/partner)';
VALUE h1rx38b_1f  2='(02) (2) Withdrawal' 3='(03) (3) Rhythm (safe time)'
                4='(04) (4) Birth control pills' 6='(06) (6) Foam/jelly/creme/suppositories'
                12='(12) (12) Contraceptive film' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE pd3fffff  1='(1) (1) As alike as two peas in a pod'
                2='(2) (2) Of a normal family likeness' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (adolescent not a twin)' 8='(8) (8) Don''t know';
VALUE h1ri33b_2f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                6='(06) (6) Foam/jelly/creme/suppositories' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)' 98='(98) (98) Don''t know';
VALUE h1ri6_2f  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (no 2nd spec frnd/spec frnd not in schoo'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1rp1fff  1='(1) (1) Strongly agree' 2='(2) (2) Agree'
                3='(3) (3) Neither agree nor disagree' 4='(4) (4) Disagree' 5='(5) (5) Strongly disagree'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (age<15 or unknown)'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1fv9fff  0='(0) (0) None (skip to Q.11)' 1='(1) (1) 1 day' 2='(2) (2) 2 or 3 days'
                3='(3) (3) 4 or 5 days' 4='(4) (4) 6 or more days' 6='(6) (6) Refused (skip to Q.11)'
                8='(8) (8) Don''t know (skip to Q.11)' 9='(9) (9) Not applicable (skip to Q.11)';
VALUE pd4cffff  1='(1) (1) Frequently' 2='(2) (2) Occasionally' 3='(3) (3) Never'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (adolescent not a twin)' 9='(9) (9) Not applicable';
VALUE h1mf2eff  0='(0) (0) No (skip to Q.6)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (4/fewer male friends nominated)'
                8='(8) (8) Don''t know (skip to Q.6)';
VALUE pc60_1ff  0='(0) (0) Not marked' 1='(1) (1) Marked'
                6='(6) (6) Respondent refused to answer' 7='(7) (7) Legitimate skip';
VALUE h1se3fff  1='(01) (1) Very sure' 2='(02) (2) Moderately sure'
                3='(03) (3) Neither sure nor unsure' 4='(04) (4) Moderately unsure'
                5='(05) (5) Very unsure' 6='(06) (6) I never want to use birth control'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1rm4fff  1='(01) (1) Professional 1/doctor/lawyer/scientist'
                2='(02) (2) Professional 2/teacher/librarian/nurse'
                3='(03) (3) Manager/executive/director'
                4='(04) (4) Technical/computer specialist/radiologist'
                5='(05) (5) Office worker/bookkeepers/clerk/secretary'
                6='(06) (6) Sales worker/insurance agent/store clerk'
                7='(07) (7) Restaurant worker/personal service/housekeeper'
                8='(08) (8) Craftsperson/toolmaker/woodworker'
                9='(09) (9) Construction worker/carpenter/crane operator'
                10='(10) (10) Mechanic/electrician/plumber/machinist'
                11='(11) (11) Factory worker/laborer/assembler/janitor'
                12='(12) (12) Transportation/bus or taxi driver'
                13='(13) (13) Military/security/police officer/soldier/fire fighter'
                14='(14) (14) Farm/fishery worker' 15='(15) (15) Other' 16='(16) (16) None (skip to Q.6)'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (no MOM)' 98='(98) (98) Don''t know';
VALUE h1hr2qff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R lives with 16/fewer persons)' 8='(8) (8) Don''t know';
VALUE h1hr3jff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 17='(17) (17) Father-in-law'
                18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather' 20='(20) (20) Grandmother'
                21='(21) (21) Great-grandfather' 22='(22) (22) Great-grandmother' 23='(23) (23) Uncle'
                24='(24) (24) Aunt' 25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 9/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE h1ws5dff  1='(01) (1) A lot more' 2='(02) (2) A little more'
                3='(03) (3) The same amount' 4='(04) (4) A little less' 5='(05) (5) A lot less'
                6='(06) (6) Not applicable' 96='(96) (96) Refused'
                97='(97) (97) Legit skip (not study sib/3 or fewer HH member ages 12-';
VALUE h1ri29bf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                11='(11) (11) Depo Provera' 13='(13) (13) Some other method'
                14='(14) (14) No other method' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (didn''t use birth control)' 98='(98) (98) Don''t know';
VALUE h1to38ff  996='(996) (996) Refused'
                997='(997) (997) Legitimate skip (never tried inhalants such as these)'
                998='(998) (998) Don''t know' 999='(999) (999) Not applicable';
VALUE h1ri27__1f  1='(1) (1) Once' 2='(2) (2) More than once (skip to Q.31)'
                7='(7) (7) Legit skip (1st intercourse date/not recent intercourse '
                8='(8) (8) Don''t know (skip to Q.31)';
VALUE h1hr7bff  0='(000) (0) Less than a year' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R live with 1/fewer persons)'
                998='(998) (998) Don''t know';
VALUE pc1fffff  1='(01) (1) Biological mother' 2='(02) (2) Step mother'
                3='(03) (3) Adoptive mother' 4='(04) (4) Foster mother' 5='(05) (5) Grandmother'
                6='(06) (6) Aunt' 7='(07) (7) Other female relative'
                8='(08) (8) Other female non-relative' 9='(09) (9) Biological father'
                10='(10) (10) Step father' 11='(11) (11) Adoptive father' 13='(13) (13) Grandfather'
                14='(14) (14) Uncle' 15='(15) (15) Other male relative'
                16='(16) (16) Other male non-relative' 96='(96) (96) Respondent refused to answer';
VALUE h1rm8fff  1='(1) (1) At home' 2='(2) (2) Outside home'
                3='(3) (3) Both home/outside home' 7='(7) (7) Legitimate skip';
VALUE h1hr9sff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 18/fewer persons)'
                8='(8) (8) Don''t know';
VALUE h1gi6aff  0='(0) (0) Not marked' 1='(1) (1) Marked' 6='(6) (6) Refused'
                8='(8) (8) Don''t know';
VALUE h1pa1fff  1='(1) (1) Strongly disapprove' 2='(2) (2) Disapprove'
                3='(3) (3) Neither disapprove nor approve' 4='(4) (4) Approve'
                5='(5) (5) Strongly approve' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (no resident MOM or married)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1nr51ff  96='(96) (96) Refused' 97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1rx9_3f  1='(01) (1) All of them' 2='(02) (2) Most of them'
                3='(03) (3) A few of them' 4='(04) (4) One of them' 5='(05) (5) None of them'
                6='(06) (6) When relationship w/{INITIALS} began/no close friends'
                97='(97) (97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask';
VALUE h1rx13_f  1='(1) (1) In your neighborhood' 2='(2) (2) Not in your neighborhood'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (relationship still going on)'
                8='(8) (8) Don''t know';
VALUE h1jo22af  0='(0) (0) Not selected' 1='(1) (1) Selected' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hasn''t gotten into fight when using dru'
                8='(8) (8) Don''t know';
VALUE h1lr1fff  0='(0) (0) No (skip to next section)' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (''yes'' to romantic relationship)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1fp20yf  94='(94) (94) 1994' 95='(95) (95) 1995' 97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know/pregnancy hasn''t ended';
VALUE h1hr7hff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R lives with 7/fewer persons)'
                998='(998) (998) Don''t know';
VALUE pa52ffff  1='(1) (1) Marriage' 2='(2) (2) Marriage-like'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legit skip (2/fewer marriages/-like relationship last 18';
VALUE h1ri33c_1f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                7='(07) (7) Diaphragm, with/without jelly' 14='(14) (14) No other method'
                96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (used only one birth control method)'
                98='(98) (98) Don''t know';
VALUE h1hr15ff  1='(01) (1) 1st child' 2='(02) (2) 2nd child' 3='(03) (3) 3rd child'
                4='(04) (4) 4th child' 5='(05) (5) 5th child' 6='(06) (6) 6th child'
                7='(07) (7) 7th child' 8='(08) (8) 8th child' 9='(09) (9) 9th child'
                10='(10) (10) 10th child' 11='(11) (11) 11th child' 12='(12) (12) 12th child'
                13='(13) (13) 13th child' 14='(14) (14) 14th child' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know';
VALUE pa23ffff  1='(1) (1) Once a week or more'
                2='(2) (2) Less than once a week/at least once a month'
                3='(3) (3) Less than once a month' 4='(4) (4) Never'
                6='(6) (6) Respondent refused to answer' 7='(7) (7) Legitimate skip (no religion)';
VALUE h1hr7fff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R lives with 5/fewer persons)'
                998='(998) (998) Don''t know' 999='(999) (999) Not applicable (skip to Q.9)';
VALUE pa5_1fff  0='(0) (0) Not marked' 1='(1) (1) Marked'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (not of Hispanic/Latino origin)';
VALUE h1ri32__1f  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (didn''t use birth control';
VALUE h1ri7_2f  1='(1) (1) In your neighborhood' 2='(2) (2) Not in your neighborhood'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R has no/only one special friend)'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE pc19b_of  98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1co13ff  0='(0) (0) No (skip to Q.16)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.16)'
                7='(7) (7) Legit skip (hasn''t received birth control from Dr./clini'
                8='(8) (8) Don''t know (skip to Q.16)';
VALUE h1ri1m__2f  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R has two/fewer special friends)'
                98='(98) (98) Don''t know';
VALUE h1ri29cf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                8='(08) (8) IUD (intrauterine device)' 13='(13) (13) Some other method'
                14='(14) (14) No other method' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (used only one birth control method)'
                98='(98) (98) Don''t know';
VALUE pa61ffff  1='(01) (1) Never' 2='(02) (2) Once a month or less'
                3='(03) (3) Two or three days a month' 4='(04) (4) Once or twice a week'
                5='(05) (5) 3-5 days a week' 6='(06) (6) Nearly everyday'
                96='(96) (96) Respondent refused to answer';
VALUE h1jo15ff  0='(0) (0) No (skip to Q.17)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.17)' 7='(7) (7) Legitimate skip (drink=no)';
VALUE h1rx14__1f  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (No/one sexual relation/section 26 questions '
                8='(8) (8) Don''t know';
VALUE h1to8fff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (never smoked regularly/didn''t smoke past 30d'
                8='(8) (8) Don''t know';
VALUE h1gi5aff  0='(0) (0) Not marked' 1='(1) (1) Marked'
                7='(7) (7) Legitimate skip (not Hispanic)' 8='(8) (8) Don''t know';
VALUE h1ws8bff  1='(1) (1) Two peas' 2='(2) (2) Same family (skip to Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (not R''s twin)';
VALUE h1rx25y_1f  89='(89) (89) 1989' 92='(92) (92) 1992' 94='(94) (94) 1994'
                95='(95) (95) 1995' 97='(97) (97) Legitimate skip (intercourse not confirmed)'
                98='(98) (98) Don''t know';
VALUE h1nr31af  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 9='(09) (9) Norplant' 11='(11) (11) Depo Provera'
                13='(13) (13) Some other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1hr6cff  1='(01) (1) Biological father' 2='(02) (2) Stepfather'
                3='(03) (3) Adoptive father' 4='(04) (4) Step/adoptive father' 5='(05) (5) Foster father'
                6='(06) (6) Other' 7='(07) (7) Biological mother' 8='(08) (8) Step mother'
                9='(09) (9) Adoptive mother' 11='(11) (11) Foster mother'
                97='(97) (97) Legitimate skip (not a father/mother)';
VALUE s25fffff  0='(0) (0) No (skip to Q.27)' 1='(1) (1) Yes (got to Q.26)';
VALUE h1fp1fff  1='(1) (1) My breasts are about the same as when in grade school'
                2='(2) (2) My breasts are a little bigger than when in grade school'
                3='(3) (3) My breasts are somewhat bigger than when in grade school'
                4='(4) (4) My breasts are a lot bigger than when in grade school'
                5='(5) (5) My breasts are a whole lot bigger than when in grade sch' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (male respondent)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1hr9hff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 7/fewer persons)'
                8='(8) (8) Don''t know';
VALUE h1ri16__1f  0='(0) (0) No (skip to Q.18)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.18)'
                7='(7) (7) Legitimate skip (R has no/only one special friend)'
                8='(8) (8) Don''t know (skip to Q.18)' 9='(9) (9) Not applicable (skip to Q.18)';
VALUE h1nr27c_1f  4='(04) (4) Birth control pills' 5='(05) (5) Vaginal sponge'
                6='(06) (6) Foam/jelly/creme/suppositories' 9='(09) (9) Norplant'
                11='(11) (11) Depo Provera' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1rx29af  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1ws3cff  1='(1) (1) Very often' 2='(2) (2) Often' 3='(3) (3) Sometimes'
                4='(4) (4) Seldom' 5='(5) (5) Never' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (not study sib/two or fewer HH member ages 12'
                8='(8) (8) Don''t know';
VALUE h1ri38cf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                9='(09) (9) Norplant' 10='(10) (10) Ring' 11='(11) (11) Depo Provera'
                12='(12) (12) Contraceptive film' 13='(13) (13) Some other method'
                14='(14) (14) No other method' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (used only one birth control method)'
                98='(98) (98) Don''t know';
VALUE h1co17ff  1='(1) (1) Less than 1 year ago' 2='(2) (2) 1-2 years ago'
                3='(3) (3) More than 2 years ago' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (have never been told had genital warts)';
VALUE h1hr3dff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather'
                20='(20) (20) Grandmother' 21='(21) (21) Great-grandfather'
                22='(22) (22) Great-grandmother' 23='(23) (23) Uncle' 24='(24) (24) Aunt'
                25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 3/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE h1hr10ef  0='(00) (0) Less than year'
                96='(96) (96) Refused (skip to next HH member/Q.12)'
                97='(97) (97) Legitimate skip (have always lived in same HH)'
                98='(98) (98) Don''t know (skip to next HH member/Q.12)';
VALUE h1rm10ff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (no MOM)' 8='(8) (8) Don''t know';
VALUE h1hr3gff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather'
                20='(20) (20) Grandmother' 21='(21) (21) Great-grandfather'
                22='(22) (22) Great-grandmother' 23='(23) (23) Uncle' 24='(24) (24) Aunt'
                25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 6/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE h1rm5fff  0='(0) (0) No' 1='(1) (1) Yes (skip to Q.7)' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip' 8='(8) (8) Don''t know';
VALUE h1jo18af  0='(0) (0) Not selected' 1='(1) (1) Selected' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hasn''t drunk alcohol when using drugs)'
                8='(8) (8) Don''t know';
VALUE h1ri14__2f  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R has two/fewer special friends)' 8='(8) (8) Don''t know';
VALUE h1nr40_f  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (partner is female)';
VALUE h1rf13ff  1='(01) (1) Always' 2='(02) (2) Most of the time'
                3='(03) (3) Some of the time' 4='(04) (4) Almost never' 5='(05) (5) Never'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (no DAD)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE rxcard1f  0='(0) (0) No problems with ordered cards'
                1='(1) (1) Reserve code in ordered sequence/resulting in recoding'
                2='(2) (2) Inconsistent data in ordered sequence/resulting in recod'
                3='(3) (3) Inconsistent data/reserve code resulting in recoding'
                4='(4) (4) All cards=96/98/99/system missing'
                7='(7) (7) Legitimate skip/no cards ordered';
VALUE pa2fffff  996='(996) (996) Respondent refused to answer';
VALUE h1ri10__1f  0='(0) (0) No' 1='(1) (1) Yes (skip to Q.14)'
                6='(6) (6) Refused (skip to Q.14)'
                7='(7) (7) Legitimate skip (R has no/only one special friend)'
                8='(8) (8) Don''t know (skip to Q.14)' 9='(9) (9) Not applicable (skip to Q.14)';
VALUE h1wp15ff  1='(1) (1) Low' 5='(5) (5) High' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (no DAD)' 8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1hr6dff  1='(01) (1) Biological father' 2='(02) (2) Stepfather'
                3='(03) (3) Adoptive father' 4='(04) (4) Step/adoptive father'
                7='(07) (7) Biological mother' 8='(08) (8) Step mother' 9='(09) (9) Adoptive mother'
                10='(10) (10) Step/adoptive mother' 97='(97) (97) Legitimate skip (not a father/mother)';
VALUE h1rx22a_2f  1='(01) (1) We went out together in a group'
                2='(02) (2) I met my partner''s parents'
                3='(03) (3) I told other people that we were a couple'
                4='(04) (4) Saw less of friends/so I could spend more time w/partner'
                5='(05) (5) We went out together alone' 6='(06) (6) We held hands'
                7='(07) (7) I gave my partner a present' 8='(08) (8) My partner game me a present'
                9='(09) (9) I told my partner I loved him/her'
                10='(10) (10) My partner told me that s/he loved me'
                11='(11) (11) We thought of ourselves as a couple'
                12='(12) (12) We talked about contraception/STDs' 13='(13) (13) We kissed'
                14='(14) (14) We touched each other under clothing/with no clothes on'
                15='(15) (15) We had sexual intercourse'
                16='(16) (16) We touched each others'' genitals (private parts)'
                17='(17) (17) My partner/I got pregnant' 18='(18) (18) We got married'
                97='(97) (97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask';
VALUE h1ri31_f  0='(0) (0) No (skip to next partner/section)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to next partner/section)'
                7='(7) (7) Legitimate skip (had intercourse only once)'
                8='(8) (8) Don''t know (skip to next partner/section)';
VALUE h1fp24af  0='(0) (0) No' 1='(1) (1) Yes (skip to Q.26)' 7='(7) (7) Legitimate skip';
VALUE h1nr7fff  996='(996) (996) Refused'
                997='(997) (997) Legitimate skip (never had a sexual relationship)'
                998='(998) (998) Don''t know';
VALUE h1ri33a_1f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                11='(11) (11) Depo Provera' 97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1rx13__2f  1='(1) (1) In your neighborhood' 2='(2) (2) Not in your neighborhood'
                7='(7) (7) Legitimate skip (relationship still going on)' 8='(8) (8) Don''t know';
VALUE h1nr18df  0='(0) (0) Not marked' 1='(1) (1) Marked (ask Q.19)' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (never had a sexual relationship)';
VALUE h1ir5fff  1='(1) (1) Very immature' 2='(2) (2) Immature' 3='(3) (3) About average'
                4='(4) (4) Mature' 5='(5) (5) Very mature' 6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1ri21a_1f  0='(0) (0) Card rejected' 1='(1) (1) Card kept' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R has no/only one special friend)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1nr23y_1f  89='(89) (89) 1989' 90='(90) (90) 1990' 91='(91) (91) 1991'
                92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (never had a sexual relationship)'
                98='(98) (98) Don''t know';
VALUE h1nr24yf  88='(88) (88) 1988' 89='(89) (89) 1989' 90='(90) (90) 1990'
                91='(91) (91) 1991' 92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994'
                95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (never had a sexual relationship)'
                98='(98) (98) Don''t know';
VALUE h1rp5fff  1='(1) (1) Almost no chance' 2='(2) (2) Some chance/but probably not'
                3='(3) (3) A 50-50 chance' 4='(4) (4) A good chance' 5='(5) (5) Almost certain'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (age<15 or unknown)'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1co17bf  1='(1) (1) Less than 1 year ago' 2='(2) (2) 1-2 years ago'
                3='(3) (3) More than 2 years ago' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (have never been told had syphilis)';
VALUE h1co16ff  0='(0) (0) No' 1='(1) (1) Yes (ask Q.17F)' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hasn''t had intercourse)' 8='(8) (8) Don''t know';
VALUE h1co12bf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                7='(07) (7) Diaphragm, with/without jelly' 8='(08) (8) IUD (intrauterine device)'
                9='(09) (9) Norplant' 10='(10) (10) Ring' 11='(11) (11) Depo Provera'
                12='(12) (12) Contraceptive film' 13='(13) (13) Some other method'
                14='(14) (14) No other method (skip to Q.13)' 96='(96) (96) Refused (skip to Q.13)'
                97='(97) (97) Legit skip (hasn''t received birth control from Dr./clin'
                98='(98) (98) Don''t know (skip to Q.13)';
VALUE h1rx11y_1f  93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                97='(97) (97) Legitimate skip (relationship still going on)' 98='(98) (98) Don''t know';
VALUE h1mf2bff  0='(0) (0) No (skip to Q.6)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.6)'
                7='(7) (7) Legitimate skip (only 1 male friend nominated)';
VALUE pd2fffff  1='(1) (1) Definitely identical' 2='(2) (2) Probably identical'
                3='(3) (3) Definitely fraternal' 4='(4) (4) Probably fraternal'
                7='(7) (7) Legitimate skip (adolescent not a twin)' 8='(8) (8) Don''t know';
VALUE h1co2mff  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (hasn''t had intercourse)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE pa36ffff  1='(1) (1) To be well-behaved' 2='(2) (2) To be popular'
                3='(3) (3) To think for himself' 4='(4) (4) To work hard' 5='(5) (5) To help others'
                6='(6) (6) Respondent refused to answer';
VALUE h1nr27bf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                11='(11) (11) Depo Provera' 14='(14) (14) No other method' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip';
VALUE h1ri18ef  0='(0) (0) Not marked' 1='(1) (1) Marked' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R has two/fewer special friends)'
                8='(8) (8) Don''t know (skip to Q.20)';
VALUE h1su5fff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (no friends tried to kill themselves)' 8='(8) (8) Don''t know';
VALUE twinbfff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (not study sib/one HH member ages 12-18)';
VALUE h1co9fff  1='(1) (1) None of the time' 2='(2) (2) Some of the time'
                3='(3) (3) Half of the time' 4='(4) (4) Most of the time' 5='(5) (5) All of the time'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (have never used condom)';
VALUE h1gh59bf  0='(00) (0) 0 inches' 1='(01) (1) 1 inch' 2='(02) (2) 2 inches'
                3='(03) (3) 3 inches' 4='(04) (4) 4 inches' 5='(05) (5) 5 inches' 6='(06) (6) 6 inches'
                7='(07) (7) 7 inches' 8='(08) (8) 8 inches' 9='(09) (9) 9 inches'
                10='(10) (10) 10 inches' 11='(11) (11) 11 inches' 96='(96) (96) Refused'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1gh39ff  0='(0) (0) Never' 1='(1) (1) Rarely' 2='(2) (2) Sometimes'
                3='(3) (3) Most of the time' 4='(4) (4) Always' 5='(5) (5) Never rides a bicycle'
                6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1to35ff  996='(996) (996) Refused'
                997='(997) (997) Legitimate skip (never tried cocaine)' 998='(998) (998) Don''t know'
                999='(999) (999) Not applicable';
VALUE h1nr10_f  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (never had a sexual relationship)';
VALUE h1ri36__1f  0='(0) (0) No (skip to next partner/section)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (intercourse in only one month)';
VALUE h1fv12ff  1='(1) (1) At school' 2='(2) (2) In your neighborhood' 3='(3) (3) At home'
                4='(4) (4) At work' 5='(5) (5) Someplace else' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (never fought)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1rx11m_1f  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 97='(97) (97) Legitimate skip (relationship still going on)'
                98='(98) (98) Don''t know';
VALUE pb22ffff  1='(01) (1) Never' 2='(02) (2) Once a month or less'
                3='(03) (3) Two or three days a month' 4='(04) (4) Once or twice a week'
                5='(05) (5) 3-5 days a week' 6='(06) (6) Nearly everyday'
                96='(96) (96) Respondent refused to answer'
                97='(97) (97) Legitimate skip (no current spouse/partner)' 98='(98) (98) Don''t know';
VALUE h1co6fff  0='(0) (0) No (skip to Q.8)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.8)' 7='(7) (7) Legitimate skip (hasn''t had intercourse)'
                8='(8) (8) Don''t know (skip to Q.8)';
VALUE h1rx29bf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 11='(11) (11) Depo Provera'
                14='(14) (14) No other method' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1co17jf  1='(1) (1) Less than 1 year ago' 2='(2) (2) 1 or more years ago'
                7='(7) (7) Legit skip(have never been told non-gonococcal vaginitis';
VALUE h1hr9mff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 12/fewer persons)'
                8='(8) (8) Don''t know';
VALUE h1nr36c_2f  4='(04) (4) Birth control pills' 13='(13) (13) Some other method'
                14='(14) (14) No other method' 97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1rx31__1f  0='(0) (0) No (skip to next partner/section)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to next partner/section)'
                7='(7) (7) Legitimate skip (intercourse only once in same month)';
VALUE h1ri5a_f  2='(02) (2) 1st or 2nd' 3='(03) (3) 3rd' 4='(04) (4) 4th' 5='(05) (5) 5th'
                6='(06) (6) 6th' 7='(07) (7) 7th' 8='(08) (8) 8th' 9='(09) (9) 9th' 10='(10) (10) 10th'
                11='(11) (11) 11th' 12='(12) (12) 12th' 13='(13) (13) Beyond 12th grade (skip to Q.7)'
                14='(14) (14) {INITIALS} wasn''t in school (skip to Q.7)'
                15='(15) (15) {INITIALS} was in school/don''t know what grade'
                16='(16) (16) Don''t know whether {INITIALS} was in school' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R doesn''t have special friend)'
                98='(98) (98) Don''t know';
VALUE h1rx31_f  0='(0) (0) No (skip to next partner/section)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to next partner/section)'
                7='(7) (7) Legitimate skip (had intercourse only once)';
VALUE h1mf3aff  2='(02) (2) 1st or 2nd' 3='(03) (3) 3rd' 4='(04) (4) 4th' 5='(05) (5) 5th'
                6='(06) (6) 6th' 7='(07) (7) 7th' 8='(08) (8) 8th' 9='(09) (9) 9th' 10='(10) (10) 10th'
                11='(11) (11) 11th' 12='(12) (12) 12th' 13='(13) (13) Beyond high school (skip to Q.6)'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know (skip to Q.6)';
VALUE h1id2_2f  1='(01) (1) We would go out together in a group'
                2='(02) (2) I would meet my partner''s parents'
                3='(03) (3) I would tell other people that we were a couple'
                4='(04) (4) See less of other friends/could spend more time w/partne'
                5='(05) (5) We would go out together alone' 6='(06) (6) We would hold hands'
                7='(07) (7) I would give my partner a present'
                8='(08) (8) My partner would give me a present'
                9='(09) (9) I would tell my partner that I loved him or her'
                10='(10) (10) My partner would tell me that he or she loved me'
                11='(11) (11) We would think of ourselves as a couple'
                12='(12) (12) Would talk about contraception or STDs' 13='(13) (13) We would kiss.'
                14='(14) (14) Would touch each other under clothing/with no clothes o'
                15='(15) (15) We would have sex' 16='(16) (16) My partner or I would get pregnant'
                17='(17) (17) We would get married' 96='(96) (96) Refused (skip to Q.5)'
                97='(97) (97) Legitimate skip (all remaining cards rejected/refused)'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1re1fff  0='(00) (0) None (skip to next section)' 1='(01) (1) Adventist'
                2='(02) (2) AME/AME Zion/CME' 3='(03) (3) Assemblies of God' 4='(04) (4) Baptist'
                5='(05) (5) Christian Church (Disciples of Christ)' 6='(06) (6) Christian Science'
                7='(07) (7) Congregational' 8='(08) (8) Episcopal' 9='(09) (9) Friends/Quaker'
                10='(10) (10) Holiness' 11='(11) (11) Jehovah''s Witness'
                12='(12) (12) Later Day Saints (Mormon)' 13='(13) (13) Lutheran' 14='(14) (14) Methodist'
                15='(15) (15) National Baptist' 16='(16) (16) Pentecostal' 17='(17) (17) Presbyterian'
                18='(18) (18) United Church of Christ' 19='(19) (19) other Protestant'
                20='(20) (20) Baha''i' 21='(21) (21) Buddhist' 22='(22) (22) Catholic'
                23='(23) (23) Eastern Orthodox' 24='(24) (24) Hindu' 25='(25) (25) Islam/Moslem/Muslim'
                26='(26) (26) Jewish-Conservative/Reformed/Orthodox/Reconstructionist'
                27='(27) (27) Unitarian' 28='(28) (28) Other religion'
                96='(96) (96) Refused (skip to next section)'
                98='(98) (98) Don''t know (skip to next section)'
                99='(99) (99) Not applicable (skip to next section)';
VALUE pa26ffff  1='(1) (1) Agree' 2='(2) (2) Disagree'
                3='(3) (3) Religion has no sacred scriptures' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (no religion)' 8='(8) (8) Don''t know';
VALUE h1rx29b_1f  2='(02) (2) Withdrawal' 4='(04) (4) Birth control pills'
                14='(14) (14) Not other method'
                97='(97) (97) Legitimate skip (used only one birth control method)';
VALUE h1rx11mf  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (relationship still going on)' 98='(98) (98) Don''t know';
VALUE s52fffff  1='(1) (1) Within the last 12 months' 2='(2) (2) 1-2 years ago'
                3='(3) (3) More than 2 years ago' 4='(4) (4) I don''t remember'
                5='(5) (5) I''ve never had a dental exam';
VALUE h1nr29__1f  0='(0) (0) No (skip to Q.42)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.42)'
                7='(7) (7) Legitimate skip (had intercourse only once)';
VALUE h1ir28ff  1='(1) (1) ENTER COMMENTS' 2='(2) (2) NO COMMENTS' 6='(6) (6) Refused'
                8='(8) (8) Don''t know';
VALUE pb11ffff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (hasn''t worked outside home in past 12mn';
VALUE h1ws12ef  1='(1) (1) Not at all' 2='(2) (2) Very little' 3='(3) (3) Somewhat'
                4='(4) (4) Quite a bit' 5='(5) (5) Very much' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (not study sib/4 or fewer HH member ages 12-1';
VALUE h1ff2bff  0='(0) (0) No (skip to Q.6)' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (only 1 female friend nominated)' 8='(8) (8) Don''t know';
VALUE pc6bffff  0='(0) (0) No (go to C7)' 1='(1) (1) Yes (skip to C10'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legit skip (biologic father completed parent questionnai';
VALUE h1nr5fff  0='(0) (0) No (skip to Q.54)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.54)' 8='(8) (8) Don''t know (skip to Q.54)'
                9='(9) (9) Not applicable (skip to Q.54)';
VALUE h1ri7_3f  1='(1) (1) In your neighborhood' 2='(2) (2) Not in your neighborhood'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R has two/fewer special friends)'
                8='(8) (8) Don''t know';
VALUE h1nr16_f  0='(0) (0) No (skip to Q.18)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.18)'
                7='(7) (7) Legitimate skip (never had a sexual relationship)'
                8='(8) (8) Don''t know (skip to Q.18)';
VALUE h1ri5a__2f  3='(03) (3) 3rd' 5='(05) (5) 5th' 6='(06) (6) 6th' 7='(07) (7) 7th'
                8='(08) (8) 8th' 9='(09) (9) 9th' 10='(10) (10) 10th' 11='(11) (11) 11th'
                12='(12) (12) 12th' 13='(13) (13) Beyond high school'
                14='(14) (14) {INITIALS} wasn''t in school (skip to Q.7)'
                15='(15) (15) {INITIALS} was in school/don''t know what grade'
                16='(16) (16) Don''t know whether{INITIALS} was in school (skip to Q.7'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (R has two/fewer special friends)'
                98='(98) (98) Don''t know';
VALUE fr_flagf  0='(0) (0) Asked nominate up to 5 male/female friends'
                1='(1) (1) Asked nominate 1 male/female friend';
VALUE pd4affff  1='(1) (1) Frequently' 2='(2) (2) Occasionally' 3='(3) (3) Never'
                7='(7) (7) Legitimate skip (adolescent not a twin)' 8='(8) (8) Don''t know';
VALUE h1wp11ff  1='(1) (1) Low' 5='(5) (5) High' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (no MOM)' 8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1su1fff  0='(0) (0) No (skip to Q.4)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.4)' 8='(8) (8) Don''t know (skip to Q.4)'
                9='(9) (9) Not applicable (skip to Q.4)';
VALUE h1nr22__1f  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (never had sexual relationship/same sex partn'
                8='(8) (8) Don''t know';
VALUE h1rx8a_f  0='(0) (0) Not marked' 1='(1) (1) Marked' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (No sexual relation/section 26 questions aske'
                8='(8) (8) Don''t know';
VALUE h1ri33af  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills' 9='(09) (9) Norplant'
                11='(11) (11) Depo Provera' 13='(13) (13) Some other method'
                96='(96) (96) Refused (skip to next partner/section)'
                97='(97) (97) Legitimate skip (didn''t use birth control)'
                98='(98) (98) Don''t know (skip to next partner/section)';
VALUE pa41_1ff  0='(0) (0) Not marked' 1='(1) (1) Marked'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legit skip (no marriage/marriage-like relation last 18yr';
VALUE h1rx18af  0='(0) (0) Not marked' 1='(1) (1) Marked' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (No/one sexual relation/section 26 questions '
                8='(8) (8) Don''t know';
VALUE h1ri38b_2f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                7='(07) (7) Diaphragm, with/without jelly' 12='(12) (12) Contraceptive film'
                13='(13) (13) Some other method' 14='(14) (14) No other method' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (didn''t use birth control)' 98='(98) (98) Don''t know';
VALUE pc54ffff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip' 8='(8) (8) Don''t know';
VALUE h1ds1fff  0='(0) (0) Never' 1='(1) (1) 1 or 2 times' 2='(2) (2) 3 or 4 times'
                3='(3) (3) 5 or more times' 6='(6) (6) Refused' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1hr3kff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather'
                20='(20) (20) Grandmother' 21='(21) (21) Great-grandfather'
                22='(22) (22) Great-grandmother' 23='(23) (23) Uncle' 24='(24) (24) Aunt'
                25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 10/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE h1rx41__1f  9997='(9997) (9997) Legitimate skip';
VALUE pa30ffff  1='(01) (1) Near old workplace' 2='(02) (2) Near current workplace'
                3='(03) (3) Had outgrown previous housing' 4='(04) (4) Affordable good housing'
                5='(05) (5) Less crime' 6='(06) (6) Less illegal activity by adolescents'
                7='(07) (7) Close to friends/relatives' 8='(08) (8) Better schools'
                9='(09) (9) Children of appropriate ages' 10='(10) (10) Born here'
                96='(96) (96) Respondent refused to answer' 97='(97) (97) Legitimate skip';
VALUE s48fffff  1='(1) (1) I try very had to do my best'
                2='(2) (2) I try hard enough/but not as hard as I could'
                3='(3) (3) I don''t try very hard' 4='(4) (4) I never try at all'
                9='(9) (9) Multiple response';
VALUE h1nm8fff  0='(00) (0) Less than a year (skip to Q.10)'
                1='(01) (1) 1 year old (skip to Q.10)' 2='(02) (2) 2 years old' 3='(03) (3) 3 years old'
                4='(04) (4) 4 years old' 5='(05) (5) 5 years old' 6='(06) (6) 6 years old'
                7='(07) (7) 7 years old' 8='(08) (8) 8 years old' 9='(09) (9) 9 years old'
                10='(10) (10) 10 years old' 11='(11) (11) 11 years old' 12='(12) (12) 12 years old'
                13='(13) (13) 13 years old' 14='(14) (14) 14 years old' 15='(15) (15) 15 years old'
                16='(16) (16) 16 years old' 17='(17) (17) 17 years old' 18='(18) (18) 18 years old'
                19='(19) (19) 19 years old' 97='(97) (97) Legitimate skip (skip to Q.10)'
                98='(98) (98) Don''t know';
VALUE h1ri20__1f  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R has no/only one special friend)' 8='(8) (8) Don''t know';
VALUE h1mf5aff  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (goes to R''s school/no sister school)';
VALUE h1nm4fff  1='(01) (1) 8th grade or less'
                2='(02) (2) >8th grade/didn''t graduate high school'
                3='(03) (3) Business/trade/voc. school instead high school'
                4='(04) (4) High school graduate' 5='(05) (5) GED'
                6='(06) (6) Business/trade/voc. school after high school'
                7='(07) (7) College/didn''t graduate' 8='(08) (8) Graduated from college/university'
                9='(09) (9) Prof training beyond 4-year college/univ'
                11='(11) (11) Went to school/Resp doesn''t know level'
                12='(12) (12) Resp doesn''t know if mom went to school' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know';
VALUE h1to46ff  0='(0) (0) Never' 1='(1) (1) 1 time or 2 times'
                2='(2) (2) 3 or more times' 7='(7) (7) Legitimate skip';
VALUE h1ri2_1f  80='(80) (80) 1980' 85='(85) (85) 1985' 86='(86) (86) 1986'
                87='(87) (87) 1987' 88='(88) (88) 1988' 89='(89) (89) 1989' 90='(90) (90) 1990'
                91='(91) (91) 1991' 92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994'
                95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (month/year given)' 98='(98) (98) Don''t know';
VALUE h1ff2aff  0='(0) (0) No (skip to Q.6)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.6)'
                7='(7) (7) Legitimate skip (no female friend nominated)'
                8='(8) (8) Don''t know (skip to Q.6)';
VALUE h1rx15_f  5='(05) (5) 1st to 5th' 6='(06) (6) 6th' 7='(07) (7) 7th' 8='(08) (8) 8th'
                9='(09) (9) 9th' 10='(10) (10) 10th' 11='(11) (11) 11th' 12='(12) (12) 12th'
                13='(13) (13) {INITIALS} graduated from H.S./in another kind of schoo'
                14='(14) (14) {INITIALS} has graduated from high school/is out of sch'
                15='(15) (15) {INITIALS} has dropped out of school'
                16='(16) (16) {INITIALS} is in school/but don''t know what grade'
                17='(17) (17) You don''t know whether {INITIALS} is in school' 96='(96) (96) Refused'
                97='(97) (97) Legit skip (No sexual relation/Section 26 questions ask'
                98='(98) (98) Don''t know';
VALUE h1ir7aff  0='(0) (0) Not marked' 1='(1) (1) Marked'
                7='(7) (7) Legitimate skip (3rd person not present)';
VALUE h1rx27__2f  1='(1) (1) Once' 2='(2) (2) More than once (skip to Q.31)'
                7='(7) (7) Legit skip (1st intercourse date/not=recent intercourse ';
VALUE pc3fffff  0='(0) (0) No (skip to C5)' 1='(1) (1) Yes (go to C4)'
                7='(7) (7) Legitimate skip (biological mother lives in household)'
                8='(8) (8) Don''t know (skip to C5)';
VALUE h1nr15__1f  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (never had a sexual relationship)' 8='(8) (8) Don''t know';
VALUE h1ir20ff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (never bored/impatient)' 8='(8) (8) Don''t know';
VALUE h1nr31cf  2='(02) (2) Withdrawal' 4='(04) (4) Birth control pills'
                6='(06) (6) Foam/jelly/creme/suppositories' 9='(09) (9) Norplant' 10='(10) (10) Ring'
                12='(12) (12) Contraceptive film' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1fp8fff  1='(01) (1) 1 time' 2='(02) (2) 2 times' 3='(03) (3) 3 times'
                4='(04) (4) 4 or more times' 97='(97) (97) Legitimate skip (hasn''t been pregnant)'
                98='(98) (98) Don''t know';
VALUE h1nr18af  0='(0) (0) Not marked' 1='(1) (1) Marked' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (never had a sexual relationship)';
VALUE h1gh32ff  0='(0) (0) Didn''t eat' 1='(1) (1) Ate once' 2='(2) (2) Ate twice or more'
                6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1ri29a_1f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                11='(11) (11) Depo Provera' 97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1id6fff  1='(1) (1) Not at all' 2='(2) (2) Very little' 3='(3) (3) Somewhat'
                4='(4) (4) Quite a bit' 5='(5) (5) Very much' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (currently married)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1ws1dff  1='(1) (1) A lot' 2='(2) (2) Some' 3='(3) (3) Little' 4='(4) (4) None'
                6='(6) (6) Refused' 7='(7) (7) Legit skip (not study sib/3 or fewer HH member ages 12-1';
VALUE h1fp9mff  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (hasn''t been pregnant)' 98='(98) (98) Don''t know';
VALUE h1rx38c_1f  2='(02) (2) Withdrawal' 4='(04) (4) Birth control pills'
                7='(07) (7) Diaphragm, with/without jelly' 13='(13) (13) Some other method'
                14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (used only one birth control method)';
VALUE pa13ffff  0='(0) (0) No (go to A14)' 1='(1) (1) Yes (skip to A17)'
                6='(6) (6) Respondent refused to answer';
VALUE h1ri26yf  89='(89) (89) 1989' 90='(90) (90) 1990' 91='(91) (91) 1991'
                92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (intercourse not confirmed)'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1hr6eff  1='(01) (1) Biological father' 2='(02) (2) Stepfather'
                3='(03) (3) Adoptive father' 4='(04) (4) Step/adoptive father'
                7='(07) (7) Biological mother' 8='(08) (8) Step mother' 9='(09) (9) Adoptive mother'
                97='(97) (97) Legitimate skip (not a father/mother)';
VALUE h1hr3fff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                11='(11) (11) Father' 13='(13) (13) Father''s partner' 14='(14) (14) Mother'
                16='(16) (16) Mother''s partner' 17='(17) (17) Father-in-law' 19='(19) (19) Grandfather'
                20='(20) (20) Grandmother' 22='(22) (22) Great-grandmother' 23='(23) (23) Uncle'
                24='(24) (24) Aunt' 25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 5/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE h1rx29cf  12='(12) (12) Contraceptive film' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (used only one birth control method)';
VALUE h1to1fff  0='(0) (0) No (skip to Q.9)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.9)' 8='(8) (8) Don''t know (skip to Q.9)'
                9='(9) (9) Not applicable (skip to Q.9)';
VALUE bio_sexf  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused';
VALUE pc7fffff  0='(0) (0) No (skip to C9)' 1='(1) (1) Yes (go to C8)'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legit skip (adolescent never lived w/biological father)'
                8='(8) (8) Don''t know (skip to C9)';
VALUE h1fp20m_2f  97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know/pregnancy hasn''t ended';
VALUE h1co3fff  0='(0) (0) No (skip to Q.5)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.5)' 7='(7) (7) Legitimate skip (hasn''t had intercourse)'
                8='(8) (8) Don''t know (skip to Q.5)';
VALUE h1to45ff  4='(04) (4) 1-4 years' 11='(11) (11) 5-11 years'
                14='(14) (14) 12-14 years' 15='(15) (15) 15 years and older'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know';
VALUE h1rx1y_f  0='(00) (0) Don''t consider this person a special friend'
                79='(79) (79) 1979' 87='(87) (87) 1987' 89='(89) (89) 1989' 90='(90) (90) 1990'
                91='(91) (91) 1991' 92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994'
                95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legit skip (No sexual relation/section 26 questions ask'
                98='(98) (98) Don''t know';
VALUE h1hr8aff  997='(997) (997) Legitimate skip (age given)'
                998='(998) (998) Don''t know';
VALUE h1pf23ff  1='(1) (1) Strongly agree' 2='(2) (2) Agree'
                3='(3) (3) Neither agree nor disagree' 4='(4) (4) Disagree' 5='(5) (5) Strongly disagree'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (no resident DAD)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1hr3rff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather'
                20='(20) (20) Grandmother' 21='(21) (21) Great-grandfather'
                22='(22) (22) Great-grandmother' 23='(23) (23) Uncle' 24='(24) (24) Aunt'
                25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 17/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE pc18ffff  1='(1) (1) Excellent' 2='(2) (2) Very good' 3='(3) (3) Good'
                4='(4) (4) Fair' 5='(5) (5) Poor' 6='(6) (6) Respondent refused to answer'
                8='(8) (8) Don''t know';
VALUE h1rx3_2f  96='(96) (96) Refused' 97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know';
VALUE h1rx19af  0='(0) (0) Not marked' 1='(1) (1) Marked'
                7='(7) (7) Legitimate skip (not Asian/Pacific Islander)';
VALUE h1ir1fff  1='(1) (1) Very unattractive' 2='(2) (2) Unattractive'
                3='(3) (3) About average' 4='(4) (4) Attractive' 5='(5) (5) Very attractive'
                6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1co17ef  1='(1) (1) Less than 1 year ago' 2='(2) (2) 1 or more years ago'
                7='(7) (7) Legitimate skip (have never been told had genital herpes';
VALUE h1hr3qff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather'
                20='(20) (20) Grandmother' 21='(21) (21) Great-grandfather'
                22='(22) (22) Great-grandmother' 23='(23) (23) Uncle' 24='(24) (24) Aunt'
                25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 16/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE h1ws12df  1='(1) (1) Not at all' 2='(2) (2) Very little' 3='(3) (3) Somewhat'
                4='(4) (4) Quite a bit' 5='(5) (5) Very much' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (not study sib/3 or fewer HH member ages 12-1';
VALUE h1pl15ff  1='(1) (1) Some' 2='(2) (2) A lot/unable to do this'
                7='(7) (7) Legitimate skip';
VALUE h1hr2lff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R lives with 11/fewer persons)' 8='(8) (8) Don''t know';
VALUE h1rm2fff  0='(0) (0) No' 1='(1) (1) Yes (skip to Q.4)'
                6='(6) (6) Refused (skip to Q.4)' 7='(7) (7) Legitimate skip (no MOM)'
                8='(8) (8) Don''t know (skip to Q.4)';
VALUE pa42ffff  1='(1) (1) Marriage' 2='(2) (2) Marriage-like'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legit skip (no marriage/marriage-like relation last 18yr';
VALUE h1co16df  0='(0) (0) No' 1='(1) (1) Yes (ask Q.17D)' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hasn''t had intercourse)' 8='(8) (8) Don''t know';
VALUE s59bffff  0='(0) (0) Never' 1='(1) (1) Once or twice'
                2='(2) (2) Once a month or less' 3='(3) (3) 2 or 3 days a month'
                4='(4) (4) Once or twice a week' 5='(5) (5) 3-5 days a week' 6='(6) (6) Nearly everyday';
VALUE h1ri10__2f  0='(0) (0) No' 1='(1) (1) Yes (skip to Q.14)' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R has two/fewer special friends)' 8='(8) (8) Don''t know';
VALUE h1ws10af  0='(0) (0) No (skip to Q.12)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (strangers never confused)';
VALUE h1da10ff  0='(000) (0) Doesn''t play videos/computer games'
                996='(996) (996) Refused' 998='(998) (998) Don''t know';
VALUE h1gi3fff  0='(00) (0) Since birth/under 1y/o when moved'
                19='(19) (19) 19 years old and older' 96='(96) (96) Refused' 98='(98) (98) Don''t know';
VALUE pc29afff  1='(1) (1) Strongly agree' 2='(2) (2) Agree'
                3='(3) (3) Neither agree nor disagree' 4='(4) (4) Disagree' 5='(5) (5) Strongly disagree'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (adolescent not in school now)';
VALUE h1nm7fff  0='(0) (0) No (skip to Q.10)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.10)' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know (skip to Q.10)';
VALUE pd4bffff  1='(1) (1) Frequently' 2='(2) (2) Occasionally' 3='(3) (3) Never'
                7='(7) (7) Legitimate skip (adolescent not a twin)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1gi8fff  1='(1) (1) White' 2='(2) (2) Black/African American'
                3='(3) (3) American Indian/Native American' 4='(4) (4) Asian/Pacific Islander'
                5='(5) (5) Other' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (only one race marked in Q.6)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1ws1cff  1='(1) (1) A lot' 2='(2) (2) Some' 3='(3) (3) Little' 4='(4) (4) None'
                6='(6) (6) Refused' 7='(7) (7) Legit skip (not study sib/two or fewer HH member ages 12'
                8='(8) (8) Don''t know';
VALUE h1hr14ff  1='(01) (1) One child' 96='(96) (96) Refused' 98='(98) (98) Don''t know';
VALUE h1ri38c_1f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                7='(07) (7) Diaphragm, with/without jelly' 9='(09) (9) Norplant' 10='(10) (10) Ring'
                13='(13) (13) Some other method' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (used only one birth control method)'
                98='(98) (98) Don''t know';
VALUE h1re5fff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (Q.1 not=1 to 19)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1rx33cf  1='(01) (1) Condoms (rubbers)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 9='(09) (9) Norplant' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (used only one birth control method)';
VALUE h1rx27_f  1='(1) (1) Once' 2='(2) (2) More than once (skip to Q.31)'
                6='(6) (6) Refused (skip to Q.31)'
                7='(7) (7) Legit skip (1st intercourse date/not recent intercourse ';
VALUE h1ri33c_2f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (used only one birth control method)';
VALUE h1rx28_f  0='(0) (0) No (skip to next partner/section)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (had intercourse more than once/same mon';
VALUE h1rx27__1f  1='(1) (1) Once' 2='(2) (2) More than once (skip to Q.31)'
                6='(6) (6) Refused (skip to Q.31)'
                7='(7) (7) Legit skip (1st intercourse date/not=recent intercourse ';
VALUE h1hr3nff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather'
                20='(20) (20) Grandmother' 21='(21) (21) Great-grandfather'
                22='(22) (22) Great-grandmother' 23='(23) (23) Uncle' 24='(24) (24) Aunt'
                25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 13/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE s1ffffff  10='(10) (10) 10 or younger' 19='(19) (19) 19 or older';
VALUE h1ri36_f  0='(0) (0) No (skip to next partner/section)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to next partner/section)'
                7='(7) (7) Legitimate skip (intercourse in only 1 month)'
                8='(8) (8) Don''t know (skip to next partner/section)';
VALUE h1nf2fff  0='(0) (0) No (skip to Q.4)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.4)' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know (skip to Q.4)';
VALUE h1ws6cff  1='(1) (1) Not at all' 2='(2) (2) Very little' 3='(3) (3) Somewhat'
                4='(4) (4) Quite a bit' 5='(5) (5) Very much' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R''s twin)' 8='(8) (8) Don''t know';
VALUE h1co16jf  0='(0) (0) No' 1='(1) (1) Yes (ask Q.17J)'
                7='(7) (7) Legitimate skip (hasn''t had intercourse or male)' 8='(8) (8) Don''t know';
VALUE h1kq1bff  1='(1) (1) Very' 2='(2) (2) Moderately' 3='(3) (3) Slightly'
                4='(4) (4) Not at all' 6='(6) (6) Refused' 7='(7) (7) Legitimate skip (less than 15)'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE pa6_1fff  0='(0) (0) Not marked' 1='(1) (1) Marked'
                6='(6) (6) Respondent refused to answer';
VALUE pa64ffff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip';
VALUE pa1fffff  1='(1) (1) Male' 2='(2) (2) Female';
VALUE studsibf  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (skip to next section)' 8='(8) (8) Don''t know';
VALUE h1rx41_f 
                9997='(9997) (9997) Legitimate skip (didn''t use birth control/Q.36 not=ye'
                9998='(9998) (9998) Don''t know';
VALUE twinffff  7='(7) (7) Legit skip (not study sib/5 or fewer HH member ages 12-1';
VALUE h1ir22af  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (never embarrassed)' 8='(8) (8) Don''t know';
VALUE h1nr17af  0='(0) (0) Not marked' 1='(1) (1) Marked'
                7='(7) (7) Legitimate skip (never had a sexual relationship)';
VALUE s54fffff  0='(0) (0) No (skip to Q.56)' 1='(1) (1) Yes (go to Q.55)';
VALUE h1to37ff  0='(00) (0) You never tried inhalants such as these' 1='(01) (1) 1 year'
                2='(02) (2) 2 years' 3='(03) (3) 3 years' 4='(04) (4) 4 years' 5='(05) (5) 5 years'
                6='(06) (6) 6 years' 7='(07) (7) 7 years' 8='(08) (8) 8 years' 9='(09) (9) 9 years'
                10='(10) (10) 10 years' 11='(11) (11) 11 years' 12='(12) (12) 12 years'
                13='(13) (13) 13 years' 14='(14) (14) 14 years' 15='(15) (15) 15 years'
                16='(16) (16) 16 years' 17='(17) (17) 17 years' 18='(18) (18) 18 years and older'
                96='(96) (96) Refused' 98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE smp01fff  0='(0) (0) No' 1='(1) (1) Yes';
VALUE $h1gh50ff  '999996'='(999996) (999996) Refused'
                '999998'='(999998) (999998) Don''t know' '999999'='(999999) (999999) Not applicable';
VALUE h1gh31af  0='(0) (0) Not marked' 1='(1) (1) Marked' 7='(7) (7) Legitimate skip';
VALUE h1hr3sff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather'
                20='(20) (20) Grandmother' 21='(21) (21) Great-grandfather'
                22='(22) (22) Great-grandmother' 23='(23) (23) Uncle' 24='(24) (24) Aunt'
                25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 18/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE s11fffff  0='(0) (0) No (skip to Q.17)' 1='(1) (1) Yes (go to Q.12)';
VALUE h1gh16ff  0='(0) (0) Never' 1='(1) (1) Just a few times'
                2='(2) (2) About once a week' 3='(3) (3) Almost every day' 4='(4) (4) Every day'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip' 8='(8) (8) Don''t know';
VALUE h1hr9eff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 4/fewer persons)'
                8='(8) (8) Don''t know';
VALUE h1se4fff  1='(01) (1) Moderately below average' 2='(02) (2) Slightly below average'
                3='(03) (3) About average' 4='(04) (4) Slightly above average'
                5='(05) (5) Moderately above average' 6='(06) (6) Extremely above average'
                96='(96) (96) Refused' 98='(98) (98) Don''t know';
VALUE h1hr7cff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R live with 2/fewer persons)'
                998='(998) (998) Don''t know' 999='(999) (999) Not applicable';
VALUE h1rx20_f  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (No sexual relation/section 26 questions aske'
                8='(8) (8) Don''t know';
VALUE ricard1f  0='(0) (0) No problems with ordered sequence of cards'
                1='(1) (1) Reserve code in ordered sequence/resulting in recoding'
                2='(2) (2) Inconsistent data in ordered sequence/resulting in recod'
                3='(3) (3) Inconsistent data/reserve code ordered seq/resulting rec'
                4='(4) (4) All cards=96/98/99/system missing'
                7='(7) (7) Legitimate skip/no cards ordered';
VALUE h1rx15__1f  5='(05) (5) 1st to 5th' 6='(06) (6) 6th' 7='(07) (7) 7th' 8='(08) (8) 8th'
                9='(09) (9) 9th' 10='(10) (10) 10th' 11='(11) (11) 11th' 12='(12) (12) 12th'
                13='(13) (13) {INITIALS} graduated from H.S./in another kind of schoo'
                14='(14) (14) {INITIALS} has graduated from high school/is out of sch'
                15='(15) (15) {INITIALS} has dropped out of school'
                16='(16) (16) {INITIALS} is in school/but don''t know what grade'
                17='(17) (17) You don''t know whether {INITIALS} is in school' 96='(96) (96) Refused'
                97='(97) (97) Legit skip (No/one sexual relation/section 26 questions'
                98='(98) (98) Don''t know';
VALUE h1hr4dff  1='(01) (1) Biological son' 7='(07) (7) Biological daughter'
                8='(08) (8) Step daughter' 97='(97) (97) Legitimate skip (not a son/daughter)';
VALUE h1rm3fff  17='(017) (17) Barbados' 30='(030) (30) Cambodia' 32='(032) (32) Canada'
                37='(037) (37) People''s Republic of China' 38='(038) (38) Colombia' 43='(043) (43) Cuba'
                51='(051) (51) The Dominican Republic' 52='(052) (52) Ecuador'
                54='(054) (54) El Salvador' 61='(061) (61) France' 75='(075) (75) Germany'
                79='(079) (79) Guatemala' 83='(083) (83) Haiti' 84='(084) (84) Honduras'
                87='(087) (87) India' 93='(093) (93) Italy' 95='(095) (95) Jamaica' 96='(096) (96) Japan'
                102='(102) (102) South Korea' 105='(105) (105) Laos' 123='(123) (123) Mexico'
                142='(142) (142) Nicaragua' 144='(144) (144) Nigeria' 151='(151) (151) Panama'
                154='(154) (154) Peru' 155='(155) (155) The Philippines' 157='(157) (157) Portugal'
                187='(187) (187) Taiwan' 190='(190) (190) Thailand' 193='(193) (193) Trinidad/Tobago'
                202='(202) (202) Great Britain' 213='(213) (213) Hong Kong' 221='(221) (221) Puerto Rico'
                222='(222) (222) American Samoa' 231='(231) (231) Viet-Nam'
                232='(232) (232) Western Samoa' 311='(311) (311) Eastern/North Africa'
                312='(312) (312) Central/North Africa' 313='(313) (313) Western/North Africa'
                314='(314) (314) South Africa' 321='(321) (321) Middle East'
                322='(322) (322) Central Asia' 323='(323) (323) Southeast Asia'
                331='(331) (331) Northern/Western Europe' 332='(332) (332) British Isles'
                333='(333) (333) Southern/Western Europe' 334='(334) (334) Eastern Europe'
                335='(335) (335) Southern/Eastern Europe' 336='(336) (336) Southern Europe'
                341='(341) (341) Oceania/Pacific Ocean Islands'
                361='(361) (361) Central/Northern South America' 362='(362) (362) Southern South America'
                372='(372) (372) Greater Antilles' 373='(373) (373) Lesser Antilles'
                996='(996) (996) Refused' 997='(997) (997) Legitimate skip' 998='(998) (998) Don''t know'
                999='(999) (999) Not applicable/Other';
VALUE h1nr24y_1f  81='(81) (81) 1981' 89='(89) (89) 1989' 90='(90) (90) 1990'
                91='(91) (91) 1991' 92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994'
                95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (never had a sexual relationship)'
                98='(98) (98) Don''t know';
VALUE h1co17df  2='(2) (2) 1 or more years ago' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (have never been told had HIV/AIDS)';
VALUE h1fp11m_1f  1='(01) (1) January or February' 3='(03) (3) March'
                4='(04) (4) April or May' 7='(07) (7) July or August' 9='(09) (9) September or October'
                11='(11) (11) November or December' 97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know';
VALUE h1fv10ff  1='(1) (1) A handgun' 2='(2) (2) Other kind of guy-rifle/shotgun/etc.'
                3='(3) (3) A club/stick/bat/pipe' 4='(4) (4) A knife or razor'
                5='(5) (5) Some other kind of weapon' 6='(6) (6) Refused' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know';
VALUE h1su8fff  1='(1) (1) Not honestly at all' 2='(2) (2) Somewhat honestly'
                3='(3) (3) Very honestly' 4='(4) (4) Completely honestly' 6='(6) (6) Refused'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1rx38cf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                6='(06) (6) Foam/jelly/creme/suppositories' 12='(12) (12) Contraceptive film'
                14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (used only one birth control method)'
                98='(98) (98) Don''t know';
VALUE h1co1fff  0='(0) (0) No (skip to next section)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to next section)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable (skip to next section)';
VALUE h1rx5a__1f  3='(03) (3) 1st to 3rd' 5='(05) (5) 5th' 6='(06) (6) 6th' 7='(07) (7) 7th'
                8='(08) (8) 8th' 9='(09) (9) 9th' 10='(10) (10) 10th' 11='(11) (11) 11th'
                12='(12) (12) 12th' 13='(13) (13) Beyond high school'
                14='(14) (14) {INITIALS} wasn''t in school (skip to Q.7)'
                15='(15) (15) {INITIALS} was in school/but don''t know what grade'
                16='(16) (16) Don''t know whether {INITIALS} was in school (skip to Q.'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know';
VALUE h1nr36bf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 5='(05) (5) Vaginal sponge'
                6='(06) (6) Foam/jelly/creme/suppositories' 8='(08) (8) IUD (intrauterine device)'
                14='(14) (14) No other method' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (didn''t use birth control)' 98='(98) (98) Don''t know';
VALUE h1ri33cf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                7='(07) (7) Diaphragm, with/without jelly' 11='(11) (11) Depo Provera'
                12='(12) (12) Contraceptive film' 13='(13) (13) Some other method'
                14='(14) (14) No other method' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (used only one birth control method)';
VALUE h1to20ff  0='(0) (0) Never' 1='(1) (1) Once' 2='(2) (2) Twice' 3='(3) (3) 3-4 times'
                4='(4) (4) 5 or more times' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hasn''t drunk in past 12 months)' 8='(8) (8) Don''t know';
VALUE h1jo21ff  0='(0) (0) No (skip to Q.23)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.23)' 7='(7) (7) Legitimate skip (drugs=no)';
VALUE h1rx6_1f  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (partner not in school)' 8='(8) (8) Don''t know';
VALUE pa39ffff  996='(996) (996) Respondent refused to answer'
                997='(997) (997) Legitimate skip (never married)';
VALUE h1rx1m_f  0='(00) (0) Don''t consider this person a special friend'
                1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March' 4='(04) (4) April'
                5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July' 8='(08) (8) August'
                9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (No sexual relation/section questions a'
                98='(98) (98) Don''t know';
VALUE h1nr44ff  0='(0) (0) No (skip to Q.54)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.54)'
                7='(7) (7) Legitimate skip (didn''t answer yes to Q.5)'
                8='(8) (8) Don''t know (skip to Q.54)';
VALUE h1hr7sff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R lives with 18/fewer persons)'
                998='(998) (998) Don''t know';
VALUE pc17ffff  0='(00) (0) 0' 1='(01) (1) 1' 2='(02) (2) 2' 3='(03) (3) 3' 4='(04) (4) 4'
                5='(05) (5) 5' 6='(06) (6) 6 or more' 96='(96) (96) Respondent refused to answer';
VALUE h1id5fff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (currently married)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1ri1y__2f  90='(90) (90) 1990' 91='(91) (91) 1991' 92='(92) (92) 1992'
                93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R has two/fewer special friends)'
                98='(98) (98) Don''t know';
VALUE h1rx14_f  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (No sexual relation/section 26 questions aske'
                8='(8) (8) Don''t know';
VALUE h1da1fff  0='(0) (0) Not at all' 1='(1) (1) 1 or 2 times' 2='(2) (2) 3 or 4 times'
                3='(3) (3) 5 or more times' 6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1ri4_1f  96='(96) (96) Refused'
                97='(97) (97) Legitimate skip(no special friend/age special friend gi'
                98='(98) (98) Don''t know';
VALUE h1nr26_f  0='(0) (0) No (skip to Q.42)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (didn''t have sexual intercourse)';
VALUE h1gi6dff  0='(0) (0) Not marked (skip to Q.8)'
                1='(1) (1) Marked (If Asian/Pacific Islander among R''s answer ask Q'
                6='(6) (6) Refused (skip to Q.8)' 8='(8) (8) Don''t know (skip to Q.8)';
VALUE h1hr5cff  1='(01) (1) Full brother' 2='(02) (2) Half-brother'
                3='(03) (3) Step brother' 4='(04) (4) Adoptive brother' 5='(05) (5) Foster brother'
                6='(06) (6) Other' 7='(07) (7) Full sister' 8='(08) (8) Half-sister'
                9='(09) (9) Step sister' 10='(10) (10) Adoptive sister' 11='(11) (11) Foster sister'
                12='(12) (12) Other' 97='(97) (97) Legitimate skip (not a brother/sister)';
VALUE h1wp1fff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (no MOM/DAD)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1hr6fff  1='(01) (1) Biological father' 2='(02) (2) Stepfather'
                7='(07) (7) Biological mother' 8='(08) (8) Step mother' 11='(11) (11) Foster mother'
                97='(97) (97) Legitimate skip (not a father/mother)';
VALUE h1mf4aff  0='(0) (0) No' 1='(1) (1) Yes (skip to Q.5a)' 7='(7) (7) Legitimate skip';
VALUE pa11ffff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (currently married)';
VALUE h1nr13__1f  96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (never had a sexual relationship)'
                98='(98) (98) Don''t know';
VALUE h1hr7eff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R live with 4/fewer persons)'
                998='(998) (998) Don''t know';
VALUE h1pa4fff  1='(1) (1) Strongly disapprove' 2='(2) (2) Disapprove'
                3='(3) (3) Neither disapprove nor approve' 4='(4) (4) Approve'
                5='(5) (5) Strongly approve' 6='(6) (6) Refused'
                7='(7) (7) Legimate skip (no resident DAD or married)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1re6fff  1='(1) (1) At least once a day' 2='(2) (2) At least once a week'
                3='(3) (3) At least once a month' 4='(4) (4) Less than once a month' 5='(5) (5) Never'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (no religion)' 8='(8) (8) Don''t know';
VALUE pc33ffff  1='(1) (1) Very well' 2='(2) (2) Fairly well' 3='(3) (3) Not so well'
                4='(4) (4) Not well at all' 6='(6) (6) Respondent refused to answer';
VALUE h1hr9aff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (respondent lives alone)'
                8='(8) (8) Don''t know';
VALUE pc19a_pf  3='(03) (3) Less than 4lbs' 4='(04) (4) 4' 5='(05) (5) 5' 6='(06) (6) 6'
                7='(07) (7) 7' 8='(08) (8) 8' 9='(09) (9) 9' 10='(10) (10) 10' 11='(11) (11) 11'
                12='(12) (12) 12 lbs or more' 98='(98) (98) Don''t know';
VALUE h1ri21a_2f  0='(0) (0) Card rejected' 1='(1) (1) Card kept' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R has two/fewer special friends)' 8='(8) (8) Don''t know';
VALUE pc24ffff  0='(0) (0) No (skip to C30)' 1='(1) (1) Yes (go to C25)'
                6='(6) (6) Respondent refused to answer';
VALUE h1hr9tff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 19/fewer persons)'
                8='(8) (8) Don''t know';
VALUE pa40ffff  0='(00) (0) 0 (skip to A55)' 1='(01) (1) 1 (go to A41)'
                2='(02) (2) 2 (go to A41)' 3='(03) (3) 3 (go to A41)' 4='(04) (4) 4 (go to A41)'
                5='(05) (5) 5 (go to A41)' 6='(06) (6) 6 or more (go to A41)'
                96='(96) (96) Respondent refused to answer';
VALUE h1ri6_3f  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (no 3rd special friend/friend not in sch'
                8='(8) (8) Don''t know';
VALUE h1ri25mf  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (intercourse not confirmed)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1hr2eff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R live with 4/fewer persons)' 8='(8) (8) Don''t know';
VALUE h1jo11ff  0='(0) (0) No (skip to Q.14)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.14)' 7='(7) (7) Legitimate skip (drink=no)';
VALUE h1rf2fff  0='(0) (0) No' 1='(1) (1) Yes (skip to Q.4)'
                6='(6) (6) Refused (skip to Q.4)' 7='(7) (7) Legitimate skip (no DAD)'
                8='(8) (8) Don''t know (skip to Q.4)' 9='(9) (9) Not applicable (skip to Q.4)';
VALUE h1gi1mff  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused';
VALUE h1to13ff  0='(0) (0) No (skip to Q.15)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (hasn''t had a drink)' 8='(8) (8) Don''t know (skip to Q.29)';
VALUE s28fffff  0='(00) (0) 0 (skip to instructions on page 7)' 1='(01) (1) 1'
                2='(02) (2) 2' 3='(03) (3) 3' 4='(04) (4) 4' 5='(05) (5) 5' 6='(06) (6) 6 or more'
                97='(97) (97) Legitimate skip' 98='(98) (98) Error (If Q.28>Q.27, recoded to 98=error)'
                99='(99) (99) Multiple response';
VALUE h1gh41ff  0='(0) (0) Never' 1='(1) (1) Rarely' 2='(2) (2) Sometimes'
                3='(3) (3) Most of the time' 4='(4) (4) Always' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip' 8='(8) (8) Don''t know';
VALUE h1hr4bff  1='(01) (1) Biological son' 2='(02) (2) Step son'
                7='(07) (7) Biological daughter' 8='(08) (8) Step daughter' 12='(12) (12) Other'
                97='(97) (97) Legitimate skip (not a son/daughter)';
VALUE h1hr5aff  1='(01) (1) Full brother' 2='(02) (2) Half-brother'
                3='(03) (3) Step brother' 4='(04) (4) Adoptive brother' 5='(05) (5) Foster brother'
                6='(06) (6) Other' 7='(07) (7) Full sister' 8='(08) (8) Half-sister'
                9='(09) (9) Step sister' 10='(10) (10) Adoptive sister'
                97='(97) (97) Legitimate skip (not a brother/sister)';
VALUE h1ri9_3f  1='(01) (1) All of them' 2='(02) (2) Most of them'
                3='(03) (3) A few of them' 4='(04) (4) One of them' 5='(05) (5) None of them'
                6='(06) (6) When relationship w/{INITIALS} began/no close friends' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R has two/fewer special friends)'
                98='(98) (98) Don''t know';
VALUE h1rx1m__1f  0='(00) (0) You don''t consider this person a special friend'
                1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March' 4='(04) (4) April'
                5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July' 8='(08) (8) August'
                9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused' 97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know';
VALUE h1to4fff  0='(00) (0) Under one year' 1='(01) (1) 1 year' 2='(02) (2) 2 years'
                5='(05) (5) 2-5 years' 6='(06) (6) 6 years' 7='(07) (7) 7 years' 8='(08) (8) 8 years'
                9='(09) (9) 9 years' 10='(10) (10) 10 years' 11='(11) (11) 11 years'
                12='(12) (12) 12 years' 13='(13) (13) 13 years' 14='(14) (14) 14 years'
                15='(15) (15) 15 years' 16='(16) (16) 16 years' 17='(17) (17) 17 years'
                18='(18) (18) 18 years and older' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (never smoked regular)' 98='(98) (98) Don''t know';
VALUE h1hr2nff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R lives with 13/fewer persons)' 8='(8) (8) Don''t know';
VALUE pc37ffff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Respondent refused to answer'
                8='(8) (8) Don''t know';
VALUE h1ri2_3f  89='(89) (89) 1989' 90='(90) (90) 1990' 91='(91) (91) 1991'
                92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (month/year given)'
                98='(98) (98) Don''t know';
VALUE h1hr3cff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 17='(17) (17) Father-in-law'
                18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather' 20='(20) (20) Grandmother'
                21='(21) (21) Great-grandfather' 22='(22) (22) Great-grandmother' 23='(23) (23) Uncle'
                24='(24) (24) Aunt' 25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 2/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE h1wp8fff  0='(00) (0) No days' 1='(01) (1) 1 day' 2='(02) (2) 2 days'
                3='(03) (3) 3 days' 4='(04) (4) 4 days' 5='(05) (5) 5 days' 6='(06) (6) 6 days'
                7='(07) (7) 7 days' 96='(96) (96) Refused' 97='(97) (97) Legitimate skip (no MOM/DAD)'
                98='(98) (98) Don''t know';
VALUE h1rx29b_2f  14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1ri3_1f  96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R doesn''t have special friend)'
                98='(98) (98) Don''t know';
VALUE h1nm1fff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (MOM is biological mother)' 8='(8) (8) Don''t know';
VALUE h1gh43ff  0='(0) (0) Never' 1='(1) (1) 1 time' 2='(2) (2) 2 or 3 times'
                3='(3) (3) 4 or 5 times' 4='(4) (4) 6 or more times' 6='(6) (6) Refused'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1ri8a_f  0='(0) (0) Not marked' 1='(1) (1) Marked' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R doesn''t have special friend)' 8='(8) (8) Don''t know';
VALUE h1nf9fff  0='(00) (0) Less than 1 year' 1='(01) (1) 1 year' 2='(02) (2) 2 years'
                3='(03) (3) 3 years' 4='(04) (4) 4 years' 5='(05) (5) 5 years' 6='(06) (6) 6 years'
                7='(07) (7) 7 years' 8='(08) (8) 8 years' 9='(09) (9) 9 years' 10='(10) (10) 10 years'
                11='(11) (11) 11 years' 12='(12) (12) 12 years' 13='(13) (13) 13 years'
                14='(14) (14) 14 years' 15='(15) (15) 15 years' 16='(16) (16) 16 years'
                17='(17) (17) 17 years' 18='(18) (18) 18 years or longer' 97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1ri4_3f  96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (no 3rd/age special friend given)'
                98='(98) (98) Don''t know';
VALUE h1ir26ff  0='(0) (0) No' 1='(1) (1) Yes/in 1 eye' 2='(2) (2) Yes/in both eyes'
                6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1ir21ff  0='(0) (0) No (skip to Q.23)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.23)' 8='(8) (8) Don''t know (skip to Q.23)'
                9='(9) (9) Not applicable (skip to Q.23)';
VALUE pc64ffff  0='(0) (0) No (go to C65)' 1='(1) (1) Yes (skip to C66)'
                6='(6) (6) Respondent refused to answer' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know (go to C66)';
VALUE h1hr2pff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R lives with 15/fewer persons)' 8='(8) (8) Don''t know';
VALUE h1rm11ff  1='(01) (1) Always' 2='(02) (2) Most of the time'
                3='(03) (3) Some of the time' 4='(04) (4) Almost never' 5='(05) (5) Never'
                6='(06) (6) She takes me to school' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (no MOM)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1nr43__2f  1='(01) (1) 1 time' 97='(97) (97) Legitimate skip';
VALUE h1ff5eff  0='(0) (0) No (skip to Q.6)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (goes to R''s school/no sister school)'
                8='(8) (8) Don''t know';
VALUE h1gh44ff  1='(1) (1) Very high' 2='(2) (2) High' 3='(3) (3) Low'
                4='(4) (4) Very low' 5='(5) (5) None' 6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1to6yff  77='(77) (77) 1976 to 1977' 79='(79) (79) 1978 to 1979'
                80='(80) (80) 1980' 82='(82) (82) 1981 to 1982' 84='(84) (84) 1983 to 1984'
                85='(85) (85) 1985' 86='(86) (86) 1986' 87='(87) (87) 1987' 88='(88) (88) 1988'
                89='(89) (89) 1989' 90='(90) (90) 1990' 91='(91) (91) 1991' 92='(92) (92) 1992'
                93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1rx21a_2f  0='(0) (0) Card rejected' 1='(1) (1) Card kept' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
                8='(8) (8) Don''t know';
VALUE h1gh28ff  1='(1) (1) Very underweight' 2='(2) (2) Slightly underweight'
                3='(3) (3) About the right weight' 4='(4) (4) Slightly overweight'
                5='(5) (5) Very overweight' 6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE pc43aaff  1='(1) (1) Not at all' 2='(2) (2) Somewhat' 3='(3) (3) A moderate amount'
                4='(4) (4) A great deal' 6='(6) (6) Respondent refused to answer';
VALUE h1ri13__1f  1='(1) (1) In your neighborhood' 2='(2) (2) Not in your neighborhood'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (no 2nd special friend/relationship on-g'
                8='(8) (8) Don''t know';
VALUE h1rf4fff  1='(01) (1) Professional 1/doctor/lawyer/scientist'
                2='(02) (2) Professional 2/teacher/librarian/nurse'
                3='(03) (3) Manager/executive/director'
                4='(04) (4) Technical/computer specialist/radiologist'
                5='(05) (5) Office worker/bookkeepers/clerk/secretary'
                6='(06) (6) Sales worker/insurance agent/store clerk'
                7='(07) (7) Restaurant worker/personal service/housekeeper'
                8='(08) (8) Craftsperson/toolmaker/woodworker'
                9='(09) (9) Construction worker/carpenter/crane operator'
                10='(10) (10) Mechanic/electrician/plumber/machinist'
                11='(11) (11) Factory worker/laborer/assembler/janitor'
                12='(12) (12) Transportation/bus or taxi driver'
                13='(13) (13) Military/security/police officer/soldier/fire fighter'
                14='(14) (14) Farm/fishery worker' 15='(15) (15) Other' 16='(16) (16) None (skip to Q.6)'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (no DAD)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1nr36b_1f  2='(02) (2) Withdrawal' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                12='(12) (12) Contraceptive film' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1nr39__1f  997='(997) (997) Legitimate skip (didn''t use birth control)';
VALUE h1gi15ff  0='(0) (0) No (skip to Q.18)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.18)' 7='(7) (7) Legitimate skip (age<15 or unknown)'
                8='(8) (8) Don''t know (skip to Q.18)';
VALUE h1jo13ff  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legit skip (Not been drinking during most recent fight)';
VALUE h1ri29a_2f  1='(01) (1) Condoms (rubbers)' 4='(04) (4) Birth control pills'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1ri12_f  74='(74) (74) 1974' 85='(85) (85) 1985' 87='(87) (87) 1987'
                92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (no special friend/month ended given)'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1co17hf  1='(1) (1) Less than 1 year ago' 2='(2) (2) 1 or more years ago'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (have never been told hepatitis B)';
VALUE pa47ffff  1='(1) (1) Marriage' 2='(2) (2) Marriage-like'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legit skip (no/only 1 marriage-like relationship last 18';
VALUE h1jo1fff  0='(0) (0) No (skip to Q.3)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.3)' 7='(7) (7) Legitimate skip (sex=no or drink=no)'
                8='(8) (8) Don''t know (skip to Q.3)';
VALUE s45affff  0='(00) (0) No chance' 1='(01) (1) 1' 2='(02) (2) Some chance'
                3='(03) (3) 3' 4='(04) (4) About 50-50' 5='(05) (5) 5' 6='(06) (6) Pretty likely'
                7='(07) (7) 7' 8='(08) (8) It will happen' 99='(99) (99) Multiple response';
VALUE h1pl16ff  0='(0) (0) No (skip to Q.18)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.18)' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know (skip to Q.18)';
VALUE h1su7fff  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (no family members tried to kill themsel'
                8='(8) (8) Don''t know';
VALUE h1ff7aff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip' 9='(9) (9) Not applicable';
VALUE h1rx24af  0='(0) (0) No (skip to next section)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (didn''t retain card O)';
VALUE h1ws8dff  7='(7) (7) Legitimate skip (not R''s twin)';
VALUE h1nb7fff  1='(1) (1) Very unhappy' 2='(2) (2) A little happy'
                3='(3) (3) Wouldn''t make any difference' 4='(4) (4) A little happy'
                5='(5) (5) Very happy' 6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1rx33a_1f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 5='(05) (5) Vaginal sponge'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE s60affff  0='(0) (0) Never' 1='(1) (1) Rarely' 2='(2) (2) Occasionally'
                3='(3) (3) Often' 4='(4) (4) Everyday' 9='(9) (9) Multiple response';
VALUE h1id2_1f  1='(01) (1) We would go out together in a group'
                2='(02) (2) I would meet my partner''s parents'
                3='(03) (3) I would tell other people that we were a couple'
                4='(04) (4) See less of other friends/could spend more time w/partne'
                5='(05) (5) We would go out together alone' 6='(06) (6) We would hold hands'
                7='(07) (7) I would give my partner a present'
                8='(08) (8) My partner would give me a present'
                9='(09) (9) I would tell my partner that I loved him or her'
                10='(10) (10) My partner would tell me that he or she loved me'
                11='(11) (11) We would think of ourselves as a couple'
                12='(12) (12) Would talk about contraception or STDs' 13='(13) (13) We would kiss.'
                14='(14) (14) Would touch each other under clothing/with no clothes o'
                15='(15) (15) We would have sex' 16='(16) (16) My partner or I would get pregnant'
                17='(17) (17) We would get married' 96='(96) (96) Refused (skip to Q.5)'
                97='(97) (97) Legitimate skip (all cards rejected/refused)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1ri35__1f  1='(1) (1) Used more than one method at same time'
                2='(2) (2) Used one method at time/method varied time-to-time'
                3='(3) (3) Sometimes only one method/sometimes more than one'
                7='(7) (7) Legitimate skip (used only one method)';
VALUE h1nr15_f  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (never had a sexual relationship)';
VALUE h1rx33c_2f  1='(01) (1) Condoms (rubbers)'
                97='(97) (97) Legitimate skip (used only one birth control method)'
                98='(98) (98) Don''t know';
VALUE h1rx1y__1f  0='(00) (0) You don''t consider this person a special friend'
                89='(89) (89) 1989' 90='(90) (90) 1990' 91='(91) (91) 1991' 92='(92) (92) 1992'
                93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know';
VALUE h1ws10df  7='(7) (7) Legitimate skip (strangers never confused)';
VALUE h1co16af  0='(0) (0) No' 1='(1) (1) Yes (ask Q.17A)' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hasn''t had intercourse)' 8='(8) (8) Don''t know';
VALUE h1hs11ff  0='(0) (0) No (skip to Q.13)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.13)' 7='(7) (7) Legitimate skip (R isn''t female)'
                8='(8) (8) Don''t know (skip to Q.13)';
VALUE h1hr2iff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R lives with 8/fewer persons)' 8='(8) (8) Don''t know';
VALUE h1rx7_2f  1='(1) (1) In your neighborhood' 2='(2) (2) Not in your neighborhood'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip' 8='(8) (8) Don''t know';
VALUE h1hr3iff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather'
                20='(20) (20) Grandmother' 21='(21) (21) Great-grandfather'
                22='(22) (22) Great-grandmother' 23='(23) (23) Uncle' 24='(24) (24) Aunt'
                25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 8/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE pa59ffff  1='(1) (1) Very easy' 2='(2) (2) Somewhat easy' 3='(3) (3) Somewhat hard'
                4='(4) (4) Very hard' 6='(6) (6) Respondent refused to answer';
VALUE h1to44ff  1='(1) (1) Once or twice (skip to Q.50)' 2='(2) (2) A few times'
                3='(3) (3) Many times' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (never injected an illegal drug)';
VALUE h1da8fff  0='(000) (0) Doesn''t watch T.V.' 996='(996) (996) Refused'
                998='(998) (998) Don''t know';
VALUE h1co16ef  0='(0) (0) No' 1='(1) (1) Yes (ask Q.17E)' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hasn''t had intercourse)' 8='(8) (8) Don''t know';
VALUE h1co11ff  0='(0) (0) No (skip to Q.16)' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hasn''t had intercourse)';
VALUE h1nr27c_2f  1='(01) (1) Condoms (rubbers)' 11='(11) (11) Depo Provera'
                14='(14) (14) No other method' 97='(97) (97) Legitimate skip (didn''t use birth control)'
                98='(98) (98) Don''t know';
VALUE h1fp13bf  14='(14) (14) No other method (skip to Q.14)'
                97='(97) (97) Legitimate skip';
VALUE h1ws3bff  1='(1) (1) Very often' 2='(2) (2) Often' 3='(3) (3) Sometimes'
                4='(4) (4) Seldom' 5='(5) (5) Never' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (not study sib/one HH member ages 12-18)'
                8='(8) (8) Don''t know';
VALUE h1ri15_f  1='(01) (1) 1st' 2='(02) (2) 2nd' 3='(03) (3) 3rd' 4='(04) (4) 4th'
                5='(05) (5) 5th' 6='(06) (6) 6th' 7='(07) (7) 7th' 8='(08) (8) 8th' 9='(09) (9) 9th'
                10='(10) (10) 10th' 11='(11) (11) 11th' 12='(12) (12) 12th'
                13='(13) (13) {INITIALS} graduated from H.S./in another kind of schoo'
                14='(14) (14) {INITIALS} has graduated from high school/is out of sch'
                15='(15) (15) {INITIALS} has dropped out of school'
                16='(16) (16) {INITIALS} is in school/but don''t know what grade'
                17='(17) (17) You don''t know whether {INITIALS} is in school' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R doesn''t have special friend)'
                98='(98) (98) Don''t know';
VALUE h1nr53ff  1='(1) (1) All male' 2='(2) (2) All female'
                3='(3) (3) Some male/some female' 7='(7) (7) Legitimate skip';
VALUE h1hr7kff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R lives with 10/fewer persons)'
                998='(998) (998) Don''t know';
VALUE h1rx28__2f  0='(0) (0) No (skip to next section)' 1='(1) (1) Yes'
                7='(7) (7) Legit skip (had intercourse more than once in same month';
VALUE h1da11ff  0='(000) (0) Doesn''t listen to the radio' 996='(996) (996) Refused'
                998='(998) (998) Don''t know';
VALUE h1jo8aff  0='(0) (0) Not selected' 1='(1) (1) Selected'
                7='(7) (7) Legit skip (Not been using drugs at most recent intercou';
VALUE h1pf7fff  1='(1) (1) Strongly agree' 2='(2) (2) Agree'
                3='(3) (3) Neither agree nor disagree' 4='(4) (4) Disagree' 5='(5) (5) Strongly disagree'
                6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1nr38_f  1='(1) (1) Used more than one method at same time'
                2='(2) (2) Used one method at time/method varied time-to-time'
                3='(3) (3) Sometimes only one method/sometimes more than one'
                7='(7) (7) Legitimate skip (didn''t use birth control)' 8='(8) (8) Don''t know';
VALUE s17fffff  0='(0) (0) No (skip to Q.23)' 1='(1) (1) Yes (got to Q.18)'
                9='(9) (9) Multiple response';
VALUE imonthff  1='(01) (1) January' 4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June'
                7='(07) (7) July' 8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October'
                11='(11) (11) November' 12='(12) (12) December';
VALUE h1co5yff  80='(80) (80) 1976-1980' 86='(86) (86) 1981-1986' 88='(88) (88) 1987-1988'
                89='(89) (89) 1989' 90='(90) (90) 1990' 91='(91) (91) 1991' 92='(92) (92) 1992'
                93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (hasn''t had intercourse)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1ri11m_2f  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (no 3rd special friend/relationship on-'
                98='(98) (98) Don''t know';
VALUE h1nr31a_2f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 9='(09) (9) Norplant' 11='(11) (11) Depo Provera'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1hr3mff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather'
                20='(20) (20) Grandmother' 21='(21) (21) Great-grandfather'
                22='(22) (22) Great-grandmother' 23='(23) (23) Uncle' 24='(24) (24) Aunt'
                25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 12/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE h1hr9off  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 14/fewer persons)'
                8='(8) (8) Don''t know';
VALUE h1gh53ff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1co4aff  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                7='(07) (7) Diaphragm, with/without jelly' 8='(08) (8) IUD (intrauterine device)'
                9='(09) (9) Norplant' 10='(10) (10) Ring' 11='(11) (11) Depo Provera'
                12='(12) (12) Contraceptive film' 13='(13) (13) Some other method'
                14='(14) (14) No other method (skip to Q.5)' 96='(96) (96) Refused (skip to Q.5)'
                97='(97) (97) Legitimate skip (didn''t use birth control)'
                98='(98) (98) Don''t know (skip to Q.5)';
VALUE h1su6fff  0='(0) (0) No (skip to Q.8)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.8)' 8='(8) (8) Don''t know (skip to Q.8)'
                9='(9) (9) Not applicable (skip to Q.8)';
VALUE h1to3fff  0='(0) (0) No (skip to Q.5)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.5)'
                7='(7) (7) Legitimate skip (never smoked a whole cigarette)';
VALUE h1rx33b_2f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                14='(14) (14) No other method' 97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1ri38a_1f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 11='(11) (11) Depo Provera'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE pc30ffff  1='(1) (1) A brilliant student' 2='(2) (2) A leader in school activities'
                3='(3) (3) An athletic star' 4='(4) (4) The most popular'
                5='(5) (5) (He/she) has already graduated from high school'
                6='(6) (6) Respondent refused to answer';
VALUE pa35ffff  1='(1) (1) Not at all' 2='(2) (2) Some' 3='(3) (3) Very much'
                6='(6) (6) Respondent refused to answer';
VALUE h1ee5fff  0='(000) (0) None' 996='(996) (996) Refused'
                997='(997) (997) Legitimate skip (doesn''t work for pay in non-summer we'
                998='(998) (998) Don''t know' 999='(999) (999) Not applicable';
VALUE h1nm14ff  1='(1) (1) Not close at all' 2='(2) (2) Not very close'
                3='(3) (3) Somewhat close' 4='(4) (4) Quite close' 5='(5) (5) Extremely close'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip' 8='(8) (8) Don''t know';
VALUE h1rm9fff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (no MOM)' 8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1co16if  0='(0) (0) No' 1='(1) (1) Yes (ask Q.17I)'
                7='(7) (7) Legitimate skip (hasn''t had intercourse)' 8='(8) (8) Don''t know';
VALUE h1ed8fff  1='(01) (1) 1st' 2='(02) (2) 2nd' 3='(03) (3) 3rd' 4='(04) (4) 4th'
                5='(05) (5) 5th' 6='(06) (6) 6th' 7='(07) (7) 7th' 8='(08) (8) 8th' 9='(09) (9) 9th'
                10='(10) (10) 10th' 11='(11) (11) 11th' 12='(12) (12) 12th' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE pa24ffff  1='(1) (1) Very important' 2='(2) (2) Fairly important'
                3='(3) (3) Fairly unimportant' 4='(4) (4) Not important at all'
                6='(6) (6) Respondent refused to answer' 7='(7) (7) Legitimate skip (no religion)';
VALUE h1fv14mf  0='(00) (0) Never treated' 1='(01) (1) January' 2='(02) (2) February'
                3='(03) (3) March' 4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June'
                7='(07) (7) July' 8='(08) (8) August' 9='(09) (9) September'
                10='(10) (10) October to December' 96='(96) (96) Refused' 97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1pl11ff  1='(1) (1) Some' 2='(2) (2) A lot' 3='(3) (3) Unable to do this'
                7='(7) (7) Legitimate skip';
VALUE h1nb6fff  1='(1) (1) Not at all' 2='(2) (2) Very little' 3='(3) (3) Somewhat'
                4='(4) (4) Quite a bit' 5='(5) (5) Very much' 6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1rx1y__2f  89='(89) (89) 1989' 92='(92) (92) 1992' 93='(93) (93) 1993'
                94='(94) (94) 1994' 95='(95) (95) 1995'
                97='(97) (97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
                98='(98) (98) Don''t know';
VALUE h1nr23mf  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (never had a sexual relationship)'
                98='(98) (98) Don''t know';
VALUE pa17ffff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (doesn''t work outside the home)';
VALUE rr_flagf  0='(0) (0) Skips followed correctly'
                1='(1) (1) Skips NOT followed correctly';
VALUE h1mo4fff  1='(1) (1) Strongly agree' 2='(2) (2) Agree'
                3='(3) (3) Neither agree nor disagree' 4='(4) (4) Disagree' 5='(5) (5) Strongly disagree'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (married or <15/no MOM)'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1gh51ff  96='(96) (96) Refused' 98='(98) (98) Don''t know';
VALUE h1hr9iff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 8/fewer persons)'
                8='(8) (8) Don''t know';
VALUE s20fffff  1='(01) (1) Homemaker' 2='(02) (2) Professional 1/doctor/lawyer/scientist'
                3='(03) (3) Professional 2/teacher/librarian/nurse'
                4='(04) (4) Manager/executive/director'
                5='(05) (5) Technical/computer specialist/radiologist'
                6='(06) (6) Office worker/bookkeepers/clerk/secretary'
                7='(07) (7) Sales worker/insurance agent/store clerk'
                8='(08) (8) Restaurant worker/personal service/waitress/housekeeper'
                9='(09) (9) Craftsperson/toolmaker/woodworker'
                10='(10) (10) Construction worker/carpenter/crane operator'
                11='(11) (11) Mechanic/electrician/plumber/machinist'
                12='(12) (12) Factory worker/laborer/assembler/janitor'
                13='(13) (13) Transportation/bus or taxi driver'
                14='(14) (14) Military/security/police officer/soldier/fire fighter'
                15='(15) (15) Farm/fishery worker' 16='(16) (16) He doesn''t work/but he isn''t disabled'
                17='(17) (17) He is disabled/therefore doesn''t work' 18='(18) (18) He is retired'
                19='(19) (19) He receives Public Assistance/welfare'
                20='(20) (20) He works/but I don''t know what his job is'
                97='(97) (97) Legitimate skip (no MOM)' 99='(99) (99) Multiple response';
VALUE h1nr47ff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip';
VALUE pa58ffff  1='(1) (1) Excellent' 2='(2) (2) Very good' 3='(3) (3) Good'
                4='(4) (4) Fair' 5='(5) (5) Poor' 6='(6) (6) Respondent refused to answer';
VALUE pc9fffff  1='(1) (1) None' 2='(2) (2) $100 or less' 3='(3) (3) $101-$200'
                4='(4) (4) $201-$500' 5='(5) (5) More than $500' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (biological father lives in household)'
                8='(8) (8) Don''t know';
VALUE h1mp1fff  1='(1) (1) I have not hair at all' 2='(2) (2) I have a little hair'
                3='(3) (3) I have some hair/not a lot/spread out/is thicker'
                4='(4) (4) I have a lot of hair that is thick'
                5='(5) (5) Have whole lot of hair that is very thick/much as grown ' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (female respondent)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1kq2aff  1='(1) (1) True <the correct answer>' 2='(2) (2) False'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (less than 15)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1ws5eff  1='(01) (1) A lot more' 2='(02) (2) A little more'
                3='(03) (3) The same amount' 4='(04) (4) A little less' 5='(05) (5) A lot less'
                6='(06) (6) Not applicable' 96='(96) (96) Refused'
                97='(97) (97) Legit skip (not study sib/4 or fewer HH member ages 12-';
VALUE h1fp20mf  1='(01) (1) January to March' 4='(04) (4) April' 5='(05) (5) May'
                6='(06) (6) June' 7='(07) (7) July' 8='(08) (8) August or September'
                10='(10) (10) October to December' 97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know/pregnancy hasn''t ended';
VALUE pc65_yff  1='(01) (1) 1977' 2='(02) (2) 1978' 3='(03) (3) 1979' 4='(04) (4) 1980'
                5='(05) (5) 1981' 6='(06) (6) 1982' 7='(07) (7) 1983' 8='(08) (8) 1984' 9='(09) (9) 1985'
                10='(10) (10) 1986' 11='(11) (11) 1987' 12='(12) (12) 1988' 13='(13) (13) 1989'
                14='(14) (14) 1990' 15='(15) (15) 1991' 16='(16) (16) 1992' 17='(17) (17) 1993'
                18='(18) (18) 1994-95' 96='(96) (96) Respondent refused to answer'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know';
VALUE h1rx2_3f  93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                97='(97) (97) Legitimate skip (month/year given)' 98='(98) (98) Don''t know';
VALUE pc68_yff  1='(01) (1) 1977' 2='(02) (2) 1978' 3='(03) (3) 1979' 4='(04) (4) 1980'
                5='(05) (5) 1981' 6='(06) (6) 1982' 7='(07) (7) 1983' 8='(08) (8) 1984' 9='(09) (9) 1985'
                10='(10) (10) 1986' 11='(11) (11) 1987' 12='(12) (12) 1988' 13='(13) (13) 1989'
                14='(14) (14) 1990' 15='(15) (15) 1991' 16='(16) (16) 1992' 17='(17) (17) 1993'
                18='(18) (18) 1994' 19='(19) (19) 1995' 20='(20) (20) (He/she) lived there at birth'
                96='(96) (96) Respondent refused to answer' 97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know';
VALUE h1to11ff  0='(00) (0) Under one year' 1='(01) (1) 1 year' 2='(02) (2) 2 years'
                3='(03) (3) 3 years' 4='(04) (4) 4 years' 5='(05) (5) 5 years' 6='(06) (6) 6 years'
                7='(07) (7) 7 years' 8='(08) (8) 8 years' 9='(09) (9) 9 years' 10='(10) (10) 10 years'
                11='(11) (11) 11 years' 12='(12) (12) 12 years' 13='(13) (13) 13 years'
                14='(14) (14) 14 years' 15='(15) (15) 15 years' 16='(16) (16) 16 years'
                17='(17) (17) 17 years' 18='(18) (18) 18 years and older' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (didn''t use chewing tobacco/snuff)'
                98='(98) (98) Don''t know';
VALUE h1rx17af  0='(0) (0) Not marked' 1='(1) (1) Marked' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (not Hispanic)';
VALUE h1rx12__1f  93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (month relationship ended given)'
                98='(98) (98) Don''t know';
VALUE h1nr43_f  97='(97) (97) Legitimate skip';
VALUE h1rx11yf  89='(89) (89) 1989' 91='(91) (91) 1991' 92='(92) (92) 1992'
                93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (relationship still going on)' 98='(98) (98) Don''t know';
VALUE h1ws9bff  0='(0) (0) No (skip to Q.12)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.12)'
                7='(7) (7) Legitimate skip (look like members of the same family)';
VALUE h1hr11af  0='(00) (0) Less than one month' 1='(01) (1) 1 month'
                2='(02) (2) 2 months' 3='(03) (3) 3 months' 4='(04) (4) 4 months' 5='(05) (5) 5 months'
                6='(06) (6) 6 months' 7='(07) (7) 7 months' 8='(08) (8) 8 months' 9='(09) (9) 9 months'
                10='(10) (10) 10 months' 11='(11) (11) 11 months'
                97='(97) (97) Legitimate skip (number years lived together>=1)';
VALUE h1nr23yf  78='(78) (78) 1978' 79='(79) (79) 1979' 88='(88) (88) 1988'
                89='(89) (89) 1989' 90='(90) (90) 1990' 91='(91) (91) 1991' 92='(92) (92) 1992'
                93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (never had a sexual relationship)'
                98='(98) (98) Don''t know';
VALUE h1fp17_f  0='(0) (0) No' 1='(1) (1) Yes' 2='(2) (2) You didn''t care'
                7='(7) (7) Legitimate skip';
VALUE h1jo5fff  0='(0) (0) No (skip to Q.7)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.7)' 7='(7) (7) Legitimate skip (sex=no or drugs=no)';
VALUE h1jo6aff  0='(0) (0) Not selected' 1='(1) (1) Selected' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hadn''t been using drugs at 1st intercou'
                8='(8) (8) Don''t know';
VALUE h1rx33c_1f  1='(01) (1) Condoms (rubbers)' 14='(14) (14) No other method'
                96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (used only one birth control method)';
VALUE h1hr10af  0='(00) (0) Less than a year'
                96='(96) (96) Refused (skip to next HH member/Q.12)'
                97='(97) (97) Legitimate skip (have always lived in same HH)'
                98='(98) (98) Don''t know (skip to next HH member/Q.12)';
VALUE h1ws3aff  1='(1) (1) Very often' 2='(2) (2) Often' 3='(3) (3) Sometimes'
                4='(4) (4) Seldom' 5='(5) (5) Never' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (not study sib/no HH member ages 12-18)'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1jo2fff  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (hadn''t been drinking at 1st intercourse';
VALUE h1nf1fff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (DAD is biological father)' 8='(8) (8) Don''t know';
VALUE h1gh29ff  1='(1) (1) Lose weight' 2='(2) (2) Gain weight (skip to Q.31)'
                3='(3) (3) Stay the same weight' 4='(4) (4) Not trying to do anything about weight'
                6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1hr9lff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 11/fewer persons)'
                8='(8) (8) Don''t know';
VALUE h1fp4fff  7='(07) (7) 7 years old and younger' 8='(08) (8) 8 years old'
                9='(09) (9) 9 years old' 10='(10) (10) 10 years old' 11='(11) (11) 11 years old'
                12='(12) (12) 12 years old' 13='(13) (13) 13 years old' 14='(14) (14) 14 years old'
                15='(15) (15) 15 years old' 16='(16) (16) 16 years old'
                17='(17) (17) 17 years old and older' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (hasn''t menstruated)' 98='(98) (98) Don''t know';
VALUE h1gh27af  0='(0) (0) Not marked' 1='(1) (1) Marked' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip' 8='(8) (8) Don''t know';
VALUE h1nf3fff  0='(00) (0) Less than 1 year old' 1='(01) (1) 1 year old'
                2='(02) (2) 2 years old' 3='(03) (3) 3 years old' 4='(04) (4) 4 years old'
                5='(05) (5) 5 years old' 6='(06) (6) 6 years old' 7='(07) (7) 7 years old'
                8='(08) (8) 8 years old' 9='(09) (9) 9 years old' 10='(10) (10) 10 years old'
                11='(11) (11) 11 years old' 12='(12) (12) 12 years old' 13='(13) (13) 13 years old'
                14='(14) (14) 14 years old' 15='(15) (15) 15 years old' 16='(16) (16) 16 years old'
                17='(17) (17) 17 years old' 18='(18) (18) 18 years old or older'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know';
VALUE h1ri40_f  1='(1) (1) Used more than one method at same time'
                2='(2) (2) Used one method at time/method varied time-to-time'
                3='(3) (3) Sometimes only one method/sometimes more than one'
                7='(7) (7) Legitimate skip (used only one method)' 8='(8) (8) Don''t know';
VALUE h1nr25_f  1='(1) (1) Once' 2='(2) (2) More than once (skip to Q.29)'
                6='(6) (6) Refused' 7='(7) (7) Legit skip (1st intercourse date/not=recent intercourse '
                8='(8) (8) Don''t know';
VALUE s14fffff  1='(01) (1) Homemaker' 2='(02) (2) Professional 1/doctor/lawyer/scientist'
                3='(03) (3) Professional 2/teacher/librarian/nurse'
                4='(04) (4) Manager/executive/director'
                5='(05) (5) Technical/computer specialist/radiologist'
                6='(06) (6) Office worker/bookkeepers/clerk/secretary'
                7='(07) (7) Sales worker/insurance agent/store clerk'
                8='(08) (8) Restaurant worker/personal service/waitress/housekeeper'
                9='(09) (9) Craftsperson/toolmaker/woodworker'
                10='(10) (10) Construction worker/carpenter/crane operator'
                11='(11) (11) Mechanic/electrician/plumber/machinist'
                12='(12) (12) Factory worker/laborer/assembler/janitor'
                13='(13) (13) Transportation/bus or taxi driver'
                14='(14) (14) Military/security/police officer/soldier/fire fighter'
                15='(15) (15) Farm/fishery worker'
                16='(16) (16) She doesn''t work/but she isn''t disabled'
                17='(17) (17) She is disabled/therefore doesn''t work' 18='(18) (18) She is retired'
                19='(19) (19) She receives Public Assistance/welfare'
                20='(20) (20) She works/but I don''t know what her job is'
                97='(97) (97) Legitimate skip (no MOM)' 99='(99) (99) Multiple response';
VALUE h1ed10ff  3='(03) (3) 1st to 3rd' 4='(04) (4) 4th' 5='(05) (5) 5th' 6='(06) (6) 6th'
                7='(07) (7) 7th' 8='(08) (8) 8th' 9='(09) (9) 9th' 10='(10) (10) 10th'
                11='(11) (11) 11th' 12='(12) (12) 12th' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip' 99='(99) (99) Not applicable';
VALUE h1rf1fff  1='(01) (1) 8th grade or less'
                2='(02) (2) >8th grade/didn''t graduate high school'
                3='(03) (3) Business/trade/voc. school instead high school'
                4='(04) (4) High school graduate' 5='(05) (5) GED'
                6='(06) (6) Business/trade/voc. school after high school'
                7='(07) (7) College/didn''t graduate' 8='(08) (8) Graduated from college/university'
                9='(09) (9) Prof training beyond 4-year college/univ'
                10='(10) (10) He never went to school'
                11='(11) (11) Went to school/Resp doesn''t know level'
                12='(12) (12) Resp doesn''t know if he went to school' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1co10ff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hasn''t had intercourse)' 8='(8) (8) Don''t know';
VALUE pa48ffff  0='(0) (0) No (go to A49)' 1='(1) (1) Yes (skip to A50)'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legit skip (no/only 1 marriage-like relationship last 18';
VALUE h1gh2fff  0='(0) (0) Never' 1='(1) (1) Just a few times'
                2='(2) (2) About once a week' 3='(3) (3) Almost every day' 4='(4) (4) Every day'
                6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1re4fff  1='(1) (1) Very important' 2='(2) (2) Fairly important'
                3='(3) (3) Fairly unimportant' 4='(4) (4) Not important at all' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (no religion)' 8='(8) (8) Don''t know';
VALUE h1wp13ff  1='(1) (1) Not at all' 2='(2) (2) Very little' 3='(3) (3) Somewhat'
                4='(4) (4) Quite a bit' 5='(5) (5) Very much' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (no DAD)' 8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1ri24a_1f  0='(0) (0) No (skip to next partner/section)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to next partner/section)'
                7='(7) (7) Legitimate skip (didn''t retain card O)'
                8='(8) (8) Don''t know (skip to next partner/section)';
VALUE h1nr27af  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 9='(09) (9) Norplant' 11='(11) (11) Depo Provera'
                13='(13) (13) Some other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)'
                98='(98) (98) Don''t know (skip to Q.28)';
VALUE pc22ffff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (adolescent doesn''t have health insuranc'
                8='(8) (8) Don''t know';
VALUE s16fffff  1='(1) (1) Not at all' 2='(2) (2) A little' 3='(3) (3) Some'
                4='(4) (4) Quite a bit' 5='(5) (5) Very much' 7='(7) (7) Legitimate skip'
                9='(9) (9) Multiple response';
VALUE s4ffffff  0='(0) (0) No (skip to Q.6)' 1='(1) (1) Yes (go to Q.5)'
                8='(8) (8) I don''t know (skip to Q.6)';
VALUE h1gh46ff  1='(1) (1) Very high' 2='(2) (2) High' 3='(3) (3) Low'
                4='(4) (4) Very low' 5='(5) (5) No chance' 6='(6) (6) Refused' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE s65fffff  0='(0) (0) No' 1='(1) (1) Yes' 9='(9) (9) Multiple response';
VALUE h1fp5mff  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (hasn''t menstruated)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1rx30_f  7='(7) (7) Legitimate skip (used condoms)';
VALUE h1hr7qff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R lives with 16/fewer persons)'
                998='(998) (998) Don''t know';
VALUE h1pf6fff  1='(1) (1) Strongly agree' 2='(2) (2) Agree'
                3='(3) (3) Neither agree nor disagree' 4='(4) (4) Disagree' 5='(5) (5) Strongly disagree'
                6='(6) (6) Refused' 8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1nr27cf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                13='(13) (13) Some other method' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE pc31ffff  1='(1) (1) Very disappointed' 2='(2) (2) Somewhat disappointed'
                3='(3) (3) Not disappointed' 6='(6) (6) Respondent refused to answer';
VALUE h1hr7tff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R lives with 19/fewer persons)'
                998='(998) (998) Don''t know';
VALUE pb5_1fff  0='(0) (0) Not marked' 1='(1) (1) Marked'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (no current spouse/partner)';
VALUE h1to6mff  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused' 97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1hr2dff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R live with 3/fewer persons)' 8='(8) (8) Don''t know';
VALUE h1nm10ff  0='(0) (0) Not at all' 1='(1) (1) Once or twice' 2='(2) (2) Several times'
                3='(3) (3) About once a month' 4='(4) (4) About once a week'
                5='(5) (5) More than once a week' 6='(6) (6) Refused' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know';
VALUE h1ri26y_2f  89='(89) (89) 1989' 92='(92) (92) 1992' 93='(93) (93) 1993'
                94='(94) (94) 1994' 95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (intercourse not confirmed)' 98='(98) (98) Don''t know';
VALUE s46affff  0='(0) (0) Never' 1='(1) (1) Just a few times'
                2='(2) (2) About once a week' 3='(3) (3) Almost everyday' 4='(4) (4) Everyday'
                9='(9) (9) Multiple response';
VALUE h1nr31b_2f  2='(02) (2) Withdrawal' 4='(04) (4) Birth control pills'
                14='(14) (14) No other method' 97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1rx20__2f  1='(1) (1) Male' 2='(2) (2) Female'
                7='(7) (7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske';
VALUE h1hr10cf  0='(00) (0) Less than one year'
                96='(96) (96) Refused (skip to next HH member/Q.12)'
                97='(97) (97) Legitimate skip (have always lived in same HH)'
                98='(98) (98) Don''t know (skip to next HH member/Q.12)';
VALUE h1rx16_f  0='(0) (0) No (skip to Q.18)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.18)'
                7='(7) (7) Legit skip (No sexual relation/section 26 questions aske'
                8='(8) (8) Don''t know (skip to Q.18)';
VALUE h1gh59af  4='(04) (4) 4 feet' 5='(05) (5) 5 feet' 6='(06) (6) 6 feet'
                96='(96) (96) Refused' 98='(98) (98) Don''t know';
VALUE h1ri36__2f  0='(0) (0) No (skip to next section)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (intercourse in only one month)'
                8='(8) (8) Don''t know (skip to next section)';
VALUE h1ee4fff  0='(000) (0) None (skip to Q.6)' 996='(996) (996) Refused'
                998='(998) (998) Don''t know (skip to Q.6)'
                999='(999) (999) Not applicable (skip to Q.6)';
VALUE h1rx22a_1f  1='(01) (1) We went out together in a group'
                2='(02) (2) I met my partner''s parents'
                3='(03) (3) I told other people that we were a couple'
                4='(04) (4) Saw less of friends/so I could spend more time w/partner'
                5='(05) (5) We went out together alone' 6='(06) (6) We held hands'
                7='(07) (7) I gave my partner a present' 8='(08) (8) My partner game me a present'
                9='(09) (9) I told my partner I loved him/her'
                10='(10) (10) My partner told me that s/he loved me'
                11='(11) (11) We thought of ourselves as a couple'
                12='(12) (12) We talked about contraception/STDs' 13='(13) (13) We kissed'
                14='(14) (14) We touched each other under clothing/with no clothes on'
                15='(15) (15) We had sexual intercourse'
                16='(16) (16) We touched each others'' genitals (private parts)'
                17='(17) (17) My partner/I got pregnant' 18='(18) (18) We got married'
                97='(97) (97) Legit skip (No/one sexual relation/section 26 questions';
VALUE iyearfff  94='(94) (94) 1994' 95='(95) (95) 1995';
VALUE h1hr7iff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R lives with 8/fewer persons)'
                998='(998) (998) Don''t know';
VALUE h1co4bff  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                7='(07) (7) Diaphragm, with/without jelly' 8='(08) (8) IUD (intrauterine device)'
                9='(09) (9) Norplant' 10='(10) (10) Ring' 11='(11) (11) Depo Provera'
                12='(12) (12) Contraceptive film' 13='(13) (13) Some other method'
                14='(14) (14) No other method (skip to Q.5)' 96='(96) (96) Refused (skip to Q.5)'
                97='(97) (97) Legitimate skip (didn''t use birth control/refused to an'
                98='(98) (98) Don''t know (skip to Q.5)' 99='(99) (99) Not applicable';
VALUE h1ws10bf  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (strangers never confused)';
VALUE h1nr27b_1f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                6='(06) (6) Foam/jelly/creme/suppositories' 8='(08) (8) IUD (intrauterine device)'
                14='(14) (14) No other method' 97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1ed3fff  0='(0) (0) No (skip to Q.5)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.5)' 8='(8) (8) Don''t know (skip to Q.5)';
VALUE h1gi14ff  0='(0) (0) No' 1='(1) (1) Yes' 7='(7) (7) Legitimate skip (born in U.S.)'
                8='(8) (8) Don''t know';
VALUE h1hr2sff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R lives with 18/fewer persons)' 8='(8) (8) Don''t know';
VALUE h1ee12ff  1='(1) (1) Almost no chance' 2='(2) (2) Some chance/probably not'
                3='(3) (3) A 50-50 chance' 4='(4) (4) A good chance' 5='(5) (5) Almost certain'
                6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1ee8fff  0='(00) (0) None' 96='(96) (96) Refused' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1ri1y__1f  0='(00) (0) Don''t consider this person special friend'
                87='(87) (87) 1987' 88='(88) (88) 1988' 89='(89) (89) 1989' 90='(90) (90) 1990'
                91='(91) (91) 1991' 92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994'
                95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R has no/only one special friend)'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1rx26y_1f  92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994'
                95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (intercourse not confirmed)' 98='(98) (98) Don''t know';
VALUE h1nf4fff  1='(01) (1) 8th grade or less'
                2='(02) (2) >8th grade/didn''t graduate high school'
                3='(03) (3) Business/trade/voc. school instead high school'
                4='(04) (4) High school graduate' 5='(05) (5) GED'
                6='(06) (6) Business/trade/voc. school after high school'
                7='(07) (7) College/didn''t graduate' 8='(08) (8) Graduated from college/university'
                9='(09) (9) Prof training beyond 4-year college/univ'
                11='(11) (11) Went to school/Resp doesn''t know level'
                12='(12) (12) Resp doesn''t know if dad went to school' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know';
VALUE h1mf2dff  0='(0) (0) No (skip to Q.6)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.6)'
                7='(7) (7) Legitimate skip (3/fewer male friends nominated)'
                8='(8) (8) Don''t know (skip to Q.6)';
VALUE h1hr2jff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R lives with 9/fewer persons)' 8='(8) (8) Don''t know';
VALUE s62affff  1='(1) (1) Strongly agree' 2='(2) (2) Agree'
                3='(3) (3) Neither agree nor disagree' 4='(4) (4) Disagree' 5='(5) (5) Strongly disagree'
                9='(9) (9) Multiple response';
VALUE h1rm1fff  1='(01) (1) 8th grade or less'
                2='(02) (2) >8th grade/didn''t graduate high school'
                3='(03) (3) Business/trade/voc. school instead high school'
                4='(04) (4) High school graduate' 5='(05) (5) GED'
                6='(06) (6) Business/trade/voc. school after high school'
                7='(07) (7) College/didn''t graduate' 8='(08) (8) Graduated from college/university'
                9='(09) (9) Prof training beyond 4-year college/university'
                10='(10) (10) She never went to school'
                11='(11) (11) Went to school/Resp doesn''t know level'
                12='(12) (12) Resp doesn''t know if she went to school' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (no MOM)' 98='(98) (98) Don''t know';
VALUE h1co16bf  0='(0) (0) No' 1='(1) (1) Yes (ask Q.17B)' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hasn''t had intercourse)' 8='(8) (8) Don''t know';
VALUE h1ri14__1f  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R has no/only one special friend)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1jo9fff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (drink=no)' 8='(8) (8) Don''t know';
VALUE h1hr7gff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R lives with 6/fewer persons)'
                998='(998) (998) Don''t know';
VALUE h1rf5fff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip' 8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1fp11yf  94='(94) (94) 1994' 95='(95) (95) 1995' 97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know';
VALUE s47fffff  0='(0) (0) None' 1='(1) (1) Less than 1 hour' 2='(2) (2) 1-2 hours'
                3='(3) (3) 3-4 hours' 4='(4) (4) More than 4 hours' 9='(9) (9) Multiple response';
VALUE h1ri29c_1f  2='(02) (2) Withdrawal' 4='(04) (4) Birth control pills'
                14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (used only one birth control method)';
VALUE pa3fffff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Respondent refused to answer';
VALUE h1nr33_f  1='(1) (1) Used more than one method at same time'
                2='(2) (2) Used one method at time/method varied time-to-time'
                3='(3) (3) Sometimes only one method/sometimes more than one'
                7='(7) (7) Legitimate skip (didn''t use birth control)';
VALUE h1hr9kff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 10/fewer persons)'
                8='(8) (8) Don''t know';
VALUE pa37ffff  1='(1) (1) To be well-behaved' 2='(2) (2) To be popular'
                3='(3) (3) To think for herself' 4='(4) (4) To work hard' 5='(5) (5) To help others'
                6='(6) (6) Respondent refused to answer';
VALUE h1to34ff  0='(00) (0) You never tried cocaine' 1='(01) (1) 1 year'
                2='(02) (2) 2 years' 3='(03) (3) 3 years' 7='(07) (7) 4-7 years'
                10='(10) (10) 8-10 years' 11='(11) (11) 11 years' 12='(12) (12) 12 years'
                13='(13) (13) 13 years' 14='(14) (14) 14 years' 15='(15) (15) 15 years'
                16='(16) (16) 16 years' 17='(17) (17) 17 years' 18='(18) (18) 18 years and older'
                96='(96) (96) Refused' 98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1jo17ff  0='(0) (0) No (skip to Q.19)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.19)' 7='(7) (7) Legitimate skip (drink=no or drugs=no)';
VALUE h1kq1aff  1='(1) (1) True' 2='(2) (2) False <the correct answer>'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (less than 15)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE s5ffffff  1='(01) (1) Mexican/Mexican American' 2='(02) (2) Chicano/Chicana'
                3='(03) (3) Cuban' 4='(04) (4) Puerto Rican' 5='(05) (5) Central/South American'
                6='(06) (6) Other Hispanic' 97='(97) (97) Legitimate skip' 98='(98) (98) I don''t know'
                99='(99) (99) Multiple response';
VALUE h1ir13ff  1='(01) (1) Detached single-family house' 2='(02) (2) Mobile home/trailer'
                3='(03) (3) Single-family row/town house (2 or more attached units)'
                4='(04) (4) Divided house' 5='(05) (5) Small apartment building (2-4 units)'
                6='(06) (6) Apt building (5 or more units)/free access to housing un'
                7='(07) (7) Apt building (5 or more units)/locked entry/doorman/both' 8='(08) (8) Other'
                97='(97) (97) Legitimate skip (rural area)' 99='(99) (99) Not applicable';
VALUE h1nr29_f  0='(0) (0) No (skip to Q.42)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (had intercourse only once)';
VALUE h1hr7jff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R lives with 9/fewer persons)'
                998='(998) (998) Don''t know';
VALUE h1ir18ff  0='(0) (0) No' 1='(1) (1) Yes' 2='(2) (2) Perhaps' 6='(6) (6) Refused'
                8='(8) (8) Don''t know';
VALUE h1ws7aff  1='(1) (1) Identical' 2='(2) (2) Fraternal' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (not R''s twin)';
VALUE h1ir10ff  1='(1) (1) Detached single-family house' 2='(2) (2) Mobile home/trailer'
                3='(3) (3) Single-family row/town house (2 or more attached units)'
                4='(4) (4) Divided house' 5='(5) (5) Small apartment building (2-4 units)'
                6='(6) (6) Apt building (5 or more units)/free access to housing un'
                7='(7) (7) Apt building (5 or more units)/locked entry/doorman/both' 8='(8) (8) Other';
VALUE h1ed5fff  0='(0) (0) No (skip to Q.7)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.7)' 8='(8) (8) Don''t know (skip to Q.7)';
VALUE h1hr9rff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 17/fewer persons)'
                8='(8) (8) Don''t know';
VALUE h1nr34_f  0='(0) (0) No (skip to Q.42)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (intercourse in only one month)';
VALUE pb10ffff  0='(0) (0) No (skip to B12)' 1='(1) (1) Yes (go to B11)'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (works outside the home)';
VALUE h1pr1fff  1='(01) (1) Not at all' 2='(02) (2) Very little' 3='(03) (3) Somewhat'
                4='(04) (4) Quite a bit' 5='(05) (5) Very much' 6='(06) (6) Does not apply'
                96='(96) (96) Refused' 98='(98) (98) Don''t know';
VALUE h1rx29c_2f  97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE pa31ffff  1='(1) (1) Definitely would' 2='(2) (2) Probably would' 3='(3) (3) Might'
                4='(4) (4) Probably would not' 5='(5) (5) Definitely would not'
                6='(6) (6) Respondent refused to answer';
VALUE h1ri18df  0='(0) (0) Not marked' 1='(1) (1) Marked (ask Q.19)' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R has two/fewer special friends)' 8='(8) (8) Don''t know';
VALUE pc20ffff  1='(01) (1) Less than 3 months'
                2='(02) (2) 3 months to less than 6 months' 3='(03) (3) 6 months to less than 9 months'
                4='(04) (4) 9 months to less than 12 months'
                5='(05) (5) 12 months to less than 24 months' 6='(06) (6) 24 months or more'
                7='(07) (7) (He/she) was not breastfed' 96='(96) (96) Respondent refused to answer'
                98='(98) (98) Don''t know';
VALUE h1ri32_f  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (didn''t use birth control)';
VALUE h1nr48ff  0='(0) (0) Never' 1='(1) (1) Rarely' 2='(2) (2) Sometimes'
                3='(3) (3) Often' 4='(4) (4) Always' 6='(6) (6) Refused' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know';
VALUE h1co12af  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                7='(07) (7) Diaphragm, with/without jelly' 8='(08) (8) IUD (intrauterine device)'
                9='(09) (9) Norplant' 10='(10) (10) Ring' 11='(11) (11) Depo Provera'
                12='(12) (12) Contraceptive film' 13='(13) (13) Some other method'
                14='(14) (14) No other method' 96='(96) (96) Refused (skip to Q.13)'
                97='(97) (97) Legit skip (hasn''t received birth control from Dr./clin'
                98='(98) (98) Don''t know (skip to Q.13)';
VALUE h1se1fff  1='(01) (1) Very sure' 2='(02) (2) Moderately sure'
                3='(03) (3) Neither sure nor unsure' 4='(04) (4) Moderately unsure'
                5='(05) (5) Very unsure' 6='(06) (6) I never want to use birth control'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (age<15 or unknown)'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1rx33b_1f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 5='(05) (5) Vaginal sponge'
                12='(12) (12) Contraceptive film' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1nr20af  0='(0) (0) Not marked' 1='(1) (1) Marked' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (never had a sexual relationship)' 8='(8) (8) Don''t know';
VALUE s63fffff  0='(0) (0) Never' 1='(1) (1) 1 or 2 times' 2='(2) (2) 3 to 5 times'
                3='(3) (3) 6 or 7 times' 4='(4) (4) More than 7 times' 9='(9) (9) Multiple response';
VALUE h1jo7fff  0='(0) (0) No (skip to Q.9)' 1='(1) (1) Yes'
                2='(2) (2) You have had sexual intercourse only once (skip to Q.9)'
                6='(6) (6) Refused (skip to Q.9)' 7='(7) (7) Legitimate skip (sex=no or drink=no)';
VALUE h1pl3fff  0='(0) (0) No' 1='(1) (1) Yes' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know';
VALUE pb20ffff  1='(1) (1) A lot' 2='(2) (2) Some' 3='(3) (3) A little'
                4='(4) (4) Not at all' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (no current spouse/partner)';
VALUE pa46_1ff  0='(0) (0) Not marked' 1='(1) (1) Marked'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legit skip (no/only 1 marriage-like relationship last 18';
VALUE h1to31ff  996='(996) (996) Refused'
                997='(997) (997) Legitimate skip (hasn''t tried marijuana)' 998='(998) (998) Don''t know'
                999='(999) (999) Not applicable';
VALUE h1to22ff  0='(0) (0) Never' 1='(1) (1) Once' 2='(2) (2) Twice' 3='(3) (3) 3-4 times'
                4='(4) (4) 5 or more times' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hasn''t drunk in past 12 months)';
VALUE h1hr4aff  1='(01) (1) Biological son' 7='(07) (7) Biological daughter'
                97='(97) (97) Legitimate skip (not a son/daughter)';
VALUE h1ff6dff  0='(0) (0) No' 1='(1) (1) Yes' 7='(7) (7) Legitimate skip'
                9='(9) (9) Not applicable';
VALUE h1ri26y_1f  90='(90) (90) 1990' 92='(92) (92) 1992' 93='(93) (93) 1993'
                94='(94) (94) 1994' 95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (intercourse not confirmed)' 98='(98) (98) Don''t know';
VALUE h1ee1fff  1='(1) (1) Low' 5='(5) (5) High' 6='(6) (6) Refused'
                8='(8) (8) Don''t know';
VALUE h1ws9aff  0='(0) (0) No (skip to Q.12)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (look like members of the same family)'
                8='(8) (8) Don''t know (skip to Q.12)';
VALUE h1fv11ff  1='(01) (1) A total stranger' 2='(02) (2) A friend or someone you knew'
                3='(03) (3) A {GIRLFRIEND/BOYFRIEND} or date'
                4='(04) (4) A parent/brother/sister/other family member'
                5='(05) (5) Someone not listed here'
                6='(06) (6) More than one of the persons listed above'
                7='(07) (7) Never fought (skip to next section)'
                96='(96) (96) Refused (skip to next section)'
                98='(98) (98) Don''t know (skip to next section)'
                99='(99) (99) Not applicable (skip to next section)';
VALUE h1gh60ff  996='(996) (996) Refused' 998='(998) (998) Don''t know'
                999='(999) (999) Not applicable';
VALUE h1ri24a_2f  0='(0) (0) No (skip to next section)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to next section)'
                7='(7) (7) Legitimate skip (didn''t retain card O)';
VALUE h1ri18a_1f  0='(0) (0) Not marked' 1='(1) (1) Marked' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R has two/fewer special friends)' 8='(8) (8) Don''t know';
VALUE h1hr3bff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                11='(11) (11) Father' 12='(12) (12) Father''s wife' 13='(13) (13) Father''s partner'
                14='(14) (14) Mother' 15='(15) (15) Mother''s husband' 16='(16) (16) Mother''s partner'
                17='(17) (17) Father-in-law' 19='(19) (19) Grandfather' 20='(20) (20) Grandmother'
                21='(21) (21) Great-grandfather' 22='(22) (22) Great-grandmother' 23='(23) (23) Uncle'
                24='(24) (24) Aunt' 25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 1/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE h1rr1fff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable (skip to next section)';
VALUE s27fffff  1='(01) (1) 1/I live by myself (skip to instructions on page 7)'
                6='(06) (6) 6 or more'
                7='(07) (7) Don''t live in regular household/live in shelter/group ho'
                99='(99) (99) Multiple response';
VALUE h1nr31c_2f  3='(03) (3) Rhythm (safe time)'
                97='(97) (97) Legitimate skip (didn''t use birth control)' 98='(98) (98) Don''t know';
VALUE twinefff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (not study sib/4 or fewer HH member ages 12-1';
VALUE h1ri27_f  1='(1) (1) Once' 2='(2) (2) More than once (skip to Q.31)'
                6='(6) (6) Refused (skip to Q.31)'
                7='(7) (7) Legit skip (1st intercourse date/not recent intercourse '
                8='(8) (8) Don''t know (skip to Q.31)';
VALUE h1ws1aff  1='(1) (1) A lot' 2='(2) (2) Some' 3='(3) (3) Little' 4='(4) (4) None'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (not study sib/no HH member ages 12-18)'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1to21ff  0='(0) (0) Never' 1='(1) (1) Once' 2='(2) (2) Twice' 3='(3) (3) 3-4 times'
                4='(4) (4) 5 or more times' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hasn''t drunk in past 12 months)' 9='(9) (9) Not applicable';
VALUE h1nm3fff  1='(01) (1) 1 y/o or younger' 2='(02) (2) 2 years old'
                3='(03) (3) 3 years old' 4='(04) (4) 4 years old' 5='(05) (5) 5 years old'
                6='(06) (6) 6 years old' 7='(07) (7) 7 years old' 8='(08) (8) 8 years old'
                9='(09) (9) 9 years old' 10='(10) (10) 10 years old' 11='(11) (11) 11 years old'
                12='(12) (12) 12 years old' 13='(13) (13) 13 years old' 14='(14) (14) 14 years old'
                15='(15) (15) 15 years old' 16='(16) (16) 16 years old' 17='(17) (17) 17 years old/older'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know';
VALUE h1ri9_2f  1='(01) (1) All of them' 2='(02) (2) Most of them'
                3='(03) (3) A few of them' 4='(04) (4) One of them' 5='(05) (5) None of them'
                6='(06) (6) When relationship w/{INITIALS} began/no close friends' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R has no/only one special friend)'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1ri15__1f  1='(01) (1) 1st' 2='(02) (2) 2nd' 3='(03) (3) 3rd' 4='(04) (4) 4th'
                5='(05) (5) 5th' 6='(06) (6) 6th' 7='(07) (7) 7th' 8='(08) (8) 8th' 9='(09) (9) 9th'
                10='(10) (10) 10th' 11='(11) (11) 11th' 12='(12) (12) 12th'
                13='(13) (13) {INITIALS} graduated from H.S./in another kind of schoo'
                14='(14) (14) {INITIALS} has graduated from high school/is out of sch'
                15='(15) (15) {INITIALS} has dropped out of school'
                16='(16) (16) {INITIALS} is in school/but don''t know what grade'
                17='(17) (17) You don''t know whether {INITIALS} is in school' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R has no/only one special friend)'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1rx4_3f  97='(97) (97) Legitimate skip (age of partner given)';
VALUE h1ir12ff  1='(01) (1) Rural (skip to Q.15)' 2='(02) (2) Suburban'
                3='(03) (3) Urban/residential only'
                4='(04) (4) 3 or more commercial properties/mostly retail'
                5='(05) (5) 3 or more commercial properties/mostly wholesale/industr' 6='(06) (6) Other'
                96='(96) (96) Refused' 98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1jo3fff  0='(0) (0) No (skip to Q.5)' 1='(1) (1) Yes'
                2='(2) (2) You have had sexual intercourse only once (skip to Q.5)'
                6='(6) (6) Refused (skip to Q.5)' 7='(7) (7) Legitimate skip (sex=no or drink=no)'
                8='(8) (8) Don''t know (skip to Q.5)';
VALUE h1fp13af  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 11='(11) (11) Depo Provera'
                97='(97) (97) Legitimate skip';
VALUE h1to14ff  1='(01) (1) 1 year' 2='(02) (2) 2 years' 3='(03) (3) 3 years'
                4='(04) (4) 4 years' 5='(05) (5) 5 years' 6='(06) (6) 6 years' 7='(07) (7) 7 years'
                8='(08) (8) 8 years' 9='(09) (9) 9 years' 10='(10) (10) 10 years' 11='(11) (11) 11 years'
                12='(12) (12) 12 years' 13='(13) (13) 13 years' 14='(14) (14) 14 years'
                15='(15) (15) 15 years' 16='(16) (16) 16 years' 17='(17) (17) 17 years'
                18='(18) (18) 18 years' 19='(19) (19) 19 years and older' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (hasn''t had a drink/drunk when not with'
                98='(98) (98) Don''t know';
VALUE h1ws11af  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (teachers never confused)';
VALUE h1hr2hff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R lives with 7/fewer persons)' 8='(8) (8) Don''t know';
VALUE h1ri1y_f  0='(00) (0) Don''t consider this person special friend'
                77='(77) (77) 1977' 78='(78) (78) 1978' 79='(79) (79) 1979' 80='(80) (80) 1980'
                81='(81) (81) 1981' 84='(84) (84) 1984' 85='(85) (85) 1985' 86='(86) (86) 1986'
                87='(87) (87) 1987' 88='(88) (88) 1988' 89='(89) (89) 1989' 90='(90) (90) 1990'
                91='(91) (91) 1991' 92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994'
                95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R doesn''t have special friend)'
                98='(98) (98) Don''t know/don''t remember' 99='(99) (99) Not applicable';
VALUE h1mp3fff  1='(1) (1) No/about the same as when in grade school'
                2='(2) (2) Yes/a little lower as when in grade school'
                3='(3) (3) Yes/somewhat lower than when in grade school'
                4='(4) (4) Yes/a lot lower than when in grade school'
                5='(5) (5) Yes/a whole lot lower than when in grade school' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (female respondent)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1hr2aff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (respondent lives alone)' 8='(8) (8) Don''t know';
VALUE pa4fffff  0='(0) (0) No (skip to A6)' 1='(1) (1) Yes (go to A5)'
                6='(6) (6) Respondent refused to answer';
VALUE h1hr7dff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R live with 3/fewer persons)'
                998='(998) (998) Don''t know' 999='(999) (999) Not applicable (skip to Q.9)';
VALUE h1fp21_f  1='(1) (1) It hasn''t ended/still pregnant (skip to next section)'
                2='(2) (2) A live birth'
                4='(4) (4) Still birth/miscarriage (skip to next pregnancy/section)'
                5='(5) (5) An abortion (skip to next pregnancy/section)' 7='(7) (7) Legitimate skip';
VALUE h1pl18ff  0='(0) (0) No (skip to Q.20)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.20)' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know (skip to Q.20)';
VALUE h1ri21af  0='(0) (0) Card rejected' 1='(1) (1) Card kept' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R doesn''t have special friend)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1rx33af  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1nr36a_1f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 8='(08) (8) IUD (intrauterine device)'
                13='(13) (13) Some other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1ir8aff  0='(0) (0) No one under 6' 1='(1) (1) One person under 6'
                2='(2) (2) Two people under 6' 3='(3) (3) Three people under 6'
                4='(4) (4) Four people under 6'
                7='(7) (7) Legitimate skip (able to determine relationship)';
VALUE h1hr4cff  1='(01) (1) Biological son' 6='(06) (6) Other'
                7='(07) (7) Biological daughter' 8='(08) (8) Step daughter'
                97='(97) (97) Legitimate skip (not son/daughter)';
VALUE pa9fffff  1='(1) (1) White' 2='(2) (2) Black/African American'
                3='(3) (3) American Indian/Native American' 4='(4) (4) Asian/Pacific Islander';
VALUE pa33ffff  1='(1) (1) No problem at all' 2='(2) (2) A small problem'
                3='(3) (3) A big problem' 6='(6) (6) Respondent refused to answer';
VALUE h1ri10_f  0='(0) (0) No' 1='(1) (1) Yes (skip to Q.14)'
                6='(6) (6) Refused (skip to Q.14)'
                7='(7) (7) Legitimate skip (R doesn''t have special friend)'
                8='(8) (8) Don''t know (skip to Q.14)';
VALUE h1ri28__2f  0='(0) (0) No (skip to next section)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (intercourse more than once in same mont';
VALUE h1to17ff  1='(01) (1) Every day/almost every day' 2='(02) (2) 3-5 days/week'
                3='(03) (3) 1 or 2 days/week' 4='(04) (4) 2 or 3 days/month'
                5='(05) (5) Once a month or less (3-12 times in past 12 months)'
                6='(06) (6) 1 or 2 days in past 12 months' 7='(07) (7) Never' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (hasn''t drunk in past 12 months)'
                98='(98) (98) Don''t know';
VALUE h1hr3pff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather'
                20='(20) (20) Grandmother' 21='(21) (21) Great-grandfather'
                22='(22) (22) Great-grandmother' 23='(23) (23) Uncle' 24='(24) (24) Aunt'
                25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 15/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE h1co7aff  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                7='(07) (7) Diaphragm, with/without jelly' 8='(08) (8) IUD (intrauterine device)'
                9='(09) (9) Norplant' 10='(10) (10) Ring' 11='(11) (11) Depo Provera'
                12='(12) (12) Contraceptive film' 13='(13) (13) Some other method'
                14='(14) (14) No other method' 96='(96) (96) Refused (skip to Q.8)'
                97='(97) (97) Legitimate skip (didn''t use birth control)'
                98='(98) (98) Don''t know (skip to Q.8)' 99='(99) (99) Not applicable';
VALUE h1gh26ff  0='(0) (0) No (skip to Q.28)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.28)' 8='(8) (8) Don''t know (skip to Q.28)';
VALUE h1co17gf  1='(1) (1) Less than 1 year ago' 2='(2) (2) 1 or more years ago'
                7='(7) (7) Legitimate skip (have never been told trichomoniasis)';
VALUE h1gi16yf  93='(93) (93) 1991 to 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                97='(97) (97) Legitimate skip (never married)';
VALUE pc4fffff  996='(996) (996) Respondent refused to answer'
                997='(997) (997) Legit skip (adolescent never lived w/biological mother'
                998='(998) (998) Don''t know';
VALUE h1nr31bf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                6='(06) (6) Foam/jelly/creme/suppositories' 10='(10) (10) Ring'
                13='(13) (13) Some other method' 14='(14) (14) No other method' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (didn''t use birth control)' 98='(98) (98) Don''t know';
VALUE h1rx16__1f  0='(0) (0) No (skip to Q.18)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.18)'
                7='(7) (7) Legit skip (No/one sexual relation/section 26 questions '
                8='(8) (8) Don''t know (skip to Q.18)';
VALUE h1ir14ff  1='(01) (1) Very well kept'
                2='(02) (2) Fairly well kept (needs cosmetic work)'
                3='(03) (3) Poorly kept (needs minor repairs)'
                4='(04) (4) Very poorly kept (needs major repairs)' 6='(06) (6) Refused'
                97='(97) (97) Legitimate skip (rural area)' 98='(98) (98) Don''t know';
VALUE h1mo1fff  1='(1) (1) Strongly agree' 2='(2) (2) Agree'
                3='(3) (3) Neither agree nor disagree' 4='(4) (4) Disagree' 5='(5) (5) Strongly disagree'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (married or <15)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE pc69ffff  0='(0) (0) No (skip to D5)' 1='(1) (1) Yes (go to D1)';
VALUE h1wp9fff  1='(1) (1) Not at all' 2='(2) (2) Very little' 3='(3) (3) Somewhat'
                4='(4) (4) Quite a bit' 5='(5) (5) Very much' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (no MOM)' 8='(8) (8) Don''t know';
VALUE h1ee10ff  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (have never driven a car)';
VALUE h1nr36b_2f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1nr36cf  2='(02) (2) Withdrawal' 3='(03) (3) Rhythm (safe time)'
                4='(04) (4) Birth control pills' 5='(05) (5) Vaginal sponge'
                6='(06) (6) Foam/jelly/creme/suppositories' 10='(10) (10) Ring'
                11='(11) (11) Depo Provera' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1rf3fff  30='(030) (30) Cambodia' 32='(032) (32) Canada'
                37='(037) (37) People''s Republic of China' 38='(038) (38) Colombia' 43='(043) (43) Cuba'
                51='(051) (51) The Dominican Republic' 52='(052) (52) Ecuador'
                54='(054) (54) El Salvador' 75='(075) (75) Germany' 79='(079) (79) Guatemala'
                83='(083) (83) Haiti' 84='(084) (84) Honduras' 87='(087) (87) India' 89='(089) (89) Iran'
                93='(093) (93) Italy' 95='(095) (95) Jamaica' 96='(096) (96) Japan'
                102='(102) (102) South Korea' 105='(105) (105) Laos' 123='(123) (123) Mexico'
                142='(142) (142) Nicaragua' 144='(144) (144) Nigeria' 150='(150) (150) Pakistan'
                151='(151) (151) Panama' 154='(154) (154) Peru' 155='(155) (155) The Philippines'
                157='(157) (157) Portugal' 187='(187) (187) Taiwan' 193='(193) (193) Trinidad/Tobago'
                202='(202) (202) Great Britain' 213='(213) (213) Hong Kong' 221='(221) (221) Puerto Rico'
                231='(231) (231) Viet-Nam' 232='(232) (232) Western Samoa'
                311='(311) (311) Eastern/North Africa' 312='(312) (312) Central/North Africa'
                313='(313) (313) Western/North Africa' 314='(314) (314) South Africa'
                321='(321) (321) Middle East' 322='(322) (322) Central Asia'
                323='(323) (323) Southeast Asia' 331='(331) (331) Northern/Western Europe'
                332='(332) (332) British Isles' 333='(333) (333) Southern/Western Europe'
                334='(334) (334) Eastern Europe' 335='(335) (335) Southern/Eastern Europe'
                336='(336) (336) Southern Europe' 341='(341) (341) Oceania/Pacific Ocean Islands'
                361='(361) (361) Central/Northern South America' 362='(362) (362) Southern South America'
                371='(371) (371) Greater and Lesser Antilles' 996='(996) (996) Refused'
                997='(997) (997) Legitimate skip' 998='(998) (998) Don''t know'
                999='(999) (999) Not applicable/Other';
VALUE h1ri16_f  0='(0) (0) No (skip to Q.18)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.18)'
                7='(7) (7) Legitimate skip (R doesn''t have special friend)'
                8='(8) (8) Don''t know (skip to Q.18)' 9='(9) (9) Not applicable (skip to Q.18)';
VALUE pb8fffff  1='(01) (1) 8th grade or less'
                2='(02) (2) >8th grade/didn''t graduate high school'
                3='(03) (3) Business/trade/voc. school instead high school'
                4='(04) (4) High school graduate' 5='(05) (5) Completed a GED'
                6='(06) (6) Business/trade/voc. school after high school'
                7='(07) (7) College/didn''t graduate' 8='(08) (8) Graduated from college/university'
                9='(09) (9) Prof training beyond 4-year college/univ' 10='(10) (10) Never went to school'
                11='(11) (11) (He/she) went to school/but doesn''t know how far'
                12='(12) (12) Doesn''t know if (he/she) went to school'
                96='(96) (96) Respondent refused to answer'
                97='(97) (97) Legitimate skip (no current spouse/partner)';
VALUE h1nb1fff  1='(1) (1) True' 2='(2) (2) False' 6='(6) (6) Refused'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1hr9cff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 2/fewer persons)'
                8='(8) (8) Don''t know';
VALUE h1ri24af  0='(0) (0) No (skip to next partner/section)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to next partner/section)'
                7='(7) (7) Legitimate skip (didn''t retain card O)';
VALUE h1rx17a_1f  0='(0) (0) Not marked' 1='(1) (1) Marked'
                7='(7) (7) Legitimate skip (not Hispanic)';
VALUE h1hr12ff  0='(00) (0) No one' 1='(01) (1) 1st household member'
                2='(02) (2) 2nd household member' 3='(03) (3) 3rd household member'
                4='(04) (4) 4th household member' 5='(05) (5) 5th household member'
                6='(06) (6) 6th household member' 7='(07) (7) 7th household member'
                8='(08) (8) 8th household member' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (listed a father/mother)' 98='(98) (98) Don''t know';
VALUE h1ws8aff  1='(1) (1) Two peas' 2='(2) (2) Same family (skip to Q.12)'
                7='(7) (7) Legitimate skip (not R''s twin)' 8='(8) (8) Don''t know';
VALUE h1nr42_f  0='(0) (0) No (skip to Q.44)' 1='(1) (1) Yes' 7='(7) (7) Legitimate skip';
VALUE h1gi10ff  1='(1) (1) English' 2='(2) (2) Spanish' 3='(3) (3) Other'
                6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1rx22af  1='(01) (1) We went out together in a group'
                2='(02) (2) I met my partner''s parents'
                3='(03) (3) I told other people that we were a couple'
                4='(04) (4) Saw less of friends/so I could spend more time w/partner'
                5='(05) (5) We went out together alone' 6='(06) (6) We held hands'
                7='(07) (7) I gave my partner a present' 8='(08) (8) My partner game me a present'
                9='(09) (9) I told my partner I loved him/her'
                10='(10) (10) My partner told me that s/he loved me'
                11='(11) (11) We thought of ourselves as a couple'
                12='(12) (12) We talked about contraception/STDs' 13='(13) (13) We kissed'
                14='(14) (14) We touched each other under clothing/with no clothes on'
                15='(15) (15) We had sexual intercourse'
                16='(16) (16) We touched each others'' genitals (private parts)'
                17='(17) (17) My partner/I got pregnant' 18='(18) (18) We got married'
                97='(97) (97) Legit skip (No sexual relation/section 26 questions ask';
VALUE h1hr7mff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R lives with 12/fewer persons)'
                998='(998) (998) Don''t know';
VALUE pc66_yff  1='(01) (1) 1977' 2='(02) (2) 1978' 3='(03) (3) 1979' 4='(04) (4) 1980'
                5='(05) (5) 1981' 6='(06) (6) 1982' 7='(07) (7) 1983' 8='(08) (8) 1984' 9='(09) (9) 1985'
                10='(10) (10) 1986' 11='(11) (11) 1987' 12='(12) (12) 1988' 13='(13) (13) 1989'
                14='(14) (14) 1990' 15='(15) (15) 1991' 16='(16) (16) 1992' 17='(17) (17) 1993'
                18='(18) (18) 1994' 19='(19) (19) 1995' 96='(96) (96) Respondent refused to answer'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know';
VALUE h1jo12ff  0='(0) (0) No (skip to Q.14)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (fight=no)';
VALUE h1to5fff  0='(00) (0) No days' 96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (never smoked regular)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE h1rx26y_2f  89='(89) (89) 1989' 93='(93) (93) 1993' 94='(94) (94) 1994'
                95='(95) (95) 1995' 97='(97) (97) Legitimate skip (intercourse not confirmed)'
                98='(98) (98) Don''t know';
VALUE h1co7bff  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                7='(07) (7) Diaphragm, with/without jelly' 8='(08) (8) IUD (intrauterine device)'
                9='(09) (9) Norplant' 10='(10) (10) Ring' 11='(11) (11) Depo Provera'
                12='(12) (12) Contraceptive film' 13='(13) (13) Some other method'
                14='(14) (14) No other method (skip to Q.8)' 96='(96) (96) Refused (skip to Q.8)'
                97='(97) (97) Legitimate skip (didn''t use birth control/refused to an'
                98='(98) (98) Don''t know (skip to Q.8)' 99='(99) (99) Not applicable';
VALUE h1ri41_f  9996='(9996) (9996) Refused'
                9997='(9997) (9997) Legitimate skip (didn''t use birth control/Q.36 not Ye'
                9998='(9998) (9998) Don''t know';
VALUE h1fp11mf  1='(01) (1) January or February' 3='(03) (3) March'
                4='(04) (4) April or May' 6='(06) (6) June' 7='(07) (7) July or August'
                9='(09) (9) September or October' 11='(11) (11) November or December'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know';
VALUE h1hr3aff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                11='(11) (11) Father' 12='(12) (12) Father''s wife' 13='(13) (13) Father''s partner'
                14='(14) (14) Mother' 15='(15) (15) Mother''s husband' 16='(16) (16) Mother''s partner'
                18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather' 20='(20) (20) Grandmother'
                21='(21) (21) Great-grandfather' 22='(22) (22) Great-grandmother' 23='(23) (23) Uncle'
                24='(24) (24) Aunt' 25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (respondent lives alone)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE h1rx21a_1f  0='(0) (0) Card rejected' 1='(1) (1) Card kept' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (No/one sexual relation/section 26 questions '
                8='(8) (8) Don''t know';
VALUE pa25ffff  1='(1) (1) At least once a day' 2='(2) (2) At least once a week'
                3='(3) (3) At least once a month'
                4='(4) (4) From time to time/but less than once a month' 5='(5) (5) Never'
                6='(6) (6) Respondent refused to answer' 7='(7) (7) Legitimate skip (no religion)';
VALUE h1mp4fff  1='(1) (1) I look younger than most' 2='(2) (2) I look younger than some'
                3='(3) (3) I look about average' 4='(4) (4) I look older than some'
                5='(5) (5) I look older than most' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (female respondent)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1rx1m__2f  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December'
                97='(97) (97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
                98='(98) (98) Don''t know';
VALUE h1pl12ff  0='(0) (0) No (skip to Q.14)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.14)' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know (skip to Q.14)';
VALUE h1gh24ff  1='(1) (1) Less than a year ago' 2='(2) (2) 1 to 2 years ago'
                3='(3) (3) More than 2 years ago' 4='(4) (4) Never' 6='(6) (6) Refused'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1jo19ff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (drugs=no)';
VALUE h1hr2fff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R lives with 5/fewer persons)' 8='(8) (8) Don''t know';
VALUE h1hr3lff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather'
                20='(20) (20) Grandmother' 21='(21) (21) Great-grandfather'
                22='(22) (22) Great-grandmother' 23='(23) (23) Uncle' 24='(24) (24) Aunt'
                25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 11/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE pa51_1ff  0='(0) (0) Not marked' 1='(1) (1) Marked'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legit skip (2/fewer marriages/-like relationship last 18';
VALUE s51fffff  1='(1) (1) Within the last 12 months' 2='(2) (2) 1-2 years ago'
                3='(3) (3) More than 2 years ago' 4='(4) (4) I don''t remember'
                5='(5) (5) I''ve never had a physical exam';
VALUE h1hr9gff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 6/fewer persons)'
                8='(8) (8) Don''t know';
VALUE h1gh54ff  1='(1) (1) Very minor' 2='(2) (2) Minor' 3='(3) (3) Serious'
                4='(4) (4) Very serious' 5='(5) (5) Extremely serious' 6='(6) (6) Refused'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE pa55ffff  9996='(9996) (9996) Respondent refused to answer';
VALUE h1rm12ff  1='(01) (1) Always' 2='(02) (2) Most of the time'
                3='(03) (3) Some of the time' 4='(04) (4) Almost never' 5='(05) (5) Never'
                6='(06) (6) She brings me home from school' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (no MOM)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1ir4fff  1='(1) (1) Very candid' 2='(2) (2) Moderately candid'
                3='(3) (3) Somewhat candid' 4='(4) (4) Not candid' 6='(6) (6) Refused'
                8='(8) (8) Don''t know';
VALUE h1hr5bff  1='(01) (1) Full brother' 2='(02) (2) Half-brother'
                3='(03) (3) Step brother' 4='(04) (4) Adoptive brother' 5='(05) (5) Foster brother'
                6='(06) (6) Other' 7='(07) (7) Full sister' 8='(08) (8) Half-sister'
                9='(09) (9) Step sister' 10='(10) (10) Adoptive sister' 11='(11) (11) Foster sister'
                12='(12) (12) Other' 97='(97) (97) Legitimate skip (not a brother/sister)'
                98='(98) (98) Don''t know';
VALUE h1ed7fff  0='(0) (0) No (skip to Q.9)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.9)' 8='(8) (8) Don''t know (skip to Q.9)';
VALUE h1ri7_1f  1='(1) (1) In your neighborhood' 2='(2) (2) Not in your neighborhood'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R doesn''t have special friend)'
                8='(8) (8) Don''t know';
VALUE h1ws1bff  1='(1) (1) A lot' 2='(2) (2) Some' 3='(3) (3) Little' 4='(4) (4) None'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (not study sib/one HH member ages 12-18)'
                8='(8) (8) Don''t know';
VALUE h1ri29c_2f  1='(01) (1) Condoms (rubbers)' 3='(03) (3) Rhythm (safe time)'
                14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (used only one birth control method)';
VALUE h1ws5aff  1='(01) (1) A lot more' 2='(02) (2) A little more'
                3='(03) (3) The same amount' 4='(04) (4) A little less' 5='(05) (5) A lot less'
                6='(06) (6) Not applicable' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (not study sib/no HH member ages 12-18)'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1hr2mff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R lives with 12/fewer persons)' 8='(8) (8) Don''t know';
VALUE h1co4cff  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                7='(07) (7) Diaphragm, with/without jelly' 8='(08) (8) IUD (intrauterine device)'
                9='(09) (9) Norplant' 10='(10) (10) Ring' 11='(11) (11) Depo Provera'
                12='(12) (12) Contraceptive film' 13='(13) (13) Some other method'
                14='(14) (14) No other method' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (didn''t use birth control/used one meth'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1rx25yf  89='(89) (89) 1989' 90='(90) (90) 1990' 91='(91) (91) 1991'
                92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (intercourse not confirmed)'
                98='(98) (98) Don''t know';
VALUE s9ffffff  1='(1) (1) This is my first year' 2='(2) (2) This is my second year'
                3='(3) (3) This is my third year' 4='(4) (4) This is my fourth year'
                5='(5) (5) This is my fifth year' 6='(6) (6) I''ve been her more than five years';
VALUE h1fp7fff  0='(0) (0) No (skip to next section)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to next section)'
                7='(7) (7) Legitimate skip (male resp/hasn''t had sexual intercourse'
                8='(8) (8) Don''t know (skip to next section)';
VALUE h1hs1fff  0='(0) (0) No (skip to Q.3)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.3)' 8='(8) (8) Don''t know (skip to Q.3)';
VALUE h1gi13mf  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (born in U.S.)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1ri8a__2f  0='(0) (0) Not marked' 1='(1) (1) Marked' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R has two/fewer special friends)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1rx7_3f  1='(1) (1) In your neighborhood' 2='(2) (2) Not in your neighborhood'
                7='(7) (7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske';
VALUE sch_yrff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused';
VALUE h1ff2cff  0='(0) (0) No (skip to Q.6)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (2/fewer female friends nominated)'
                8='(8) (8) Don''t know (skip to Q.6)';
VALUE h1co17af  1='(1) (1) Less than 1 year ago' 2='(2) (2) 1-2 years ago'
                3='(3) (3) More than 2 years ago' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (have never been told had chlamydia)';
VALUE h1ri38a_2f  1='(01) (1) Condoms (rubbers)' 4='(04) (4) Birth control pills'
                11='(11) (11) Depo Provera' 97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1ws3dff  1='(1) (1) Very often' 2='(2) (2) Often' 3='(3) (3) Sometimes'
                4='(4) (4) Seldom' 5='(5) (5) Never' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (not study sib/3 or fewer HH member ages 12-1';
VALUE h1ir8cff  0='(0) (0) No one 12-18' 1='(1) (1) One person 12-18'
                2='(2) (2) Two people 12-18' 3='(3) (3) Three people 12-18'
                7='(7) (7) Legitimate skip (able to determine relationship)';
VALUE pc42afff  1='(1) (1) Strongly agree' 2='(2) (2) Agree'
                3='(3) (3) Neither agree nor disagree' 4='(4) (4) Disagree' 5='(5) (5) Strongly disagree'
                6='(6) (6) Respondent refused to answer';
VALUE h1ri2_2f  80='(80) (80) 1980' 86='(86) (86) 1986' 87='(87) (87) 1987'
                88='(88) (88) 1988' 89='(89) (89) 1989' 90='(90) (90) 1990' 91='(91) (91) 1991'
                92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (month/year given)'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1nm9fff  0='(00) (0) Less than 1 year (skip to Q.10)'
                1='(01) (1) 1 year (skip to Q.10)' 2='(02) (2) 2 years' 3='(03) (3) 3 years'
                4='(04) (4) 4 years' 5='(05) (5) 5 years' 6='(06) (6) 6 years' 7='(07) (7) 7 years'
                8='(08) (8) 8 years' 9='(09) (9) 9 years' 10='(10) (10) 10 years' 11='(11) (11) 11 years'
                12='(12) (12) 12 years' 13='(13) (13) 13 years' 14='(14) (14) 14 years'
                15='(15) (15) 15 years' 16='(16) (16) 16 years' 17='(17) (17) 17 years'
                18='(18) (18) 18 years' 19='(19) (19) 19 years'
                97='(97) (97) Legitimate skip (skip to Q.10)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1rx28__1f  0='(0) (0) No (skip to next partner/section)' 1='(1) (1) Yes'
                7='(7) (7) Legit skip (had intercourse more than once in same month';
VALUE s10affff  1='(1) (1) A' 2='(2) (2) B' 3='(3) (3) C' 4='(4) (4) D or lower'
                5='(5) (5) I didn''t take this subject' 7='(7) (7) Legitimate skip'
                8='(8) (8) I don''t know' 9='(9) (9) Multiple response';
VALUE h1ws12af  1='(1) (1) Not at all' 2='(2) (2) Very little' 3='(3) (3) Somewhat'
                4='(4) (4) Quite a bit' 5='(5) (5) Very much' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (not study sib/no HH member ages 12-18)'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1rx26yf  91='(91) (91) 1991' 92='(92) (92) 1992' 93='(93) (93) 1993'
                94='(94) (94) 1994' 95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (intercourse not confirmed)' 98='(98) (98) Don''t know';
VALUE pc34afff  1='(1) (1) Always' 2='(2) (2) Often' 3='(3) (3) Sometimes'
                4='(4) (4) Seldom' 5='(5) (5) Never' 6='(6) (6) Respondent refused to answer';
VALUE h1ri33b_1f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 7='(07) (7) Diaphragm, with/without jelly'
                11='(11) (11) Depo Provera' 12='(12) (12) Contraceptive film'
                13='(13) (13) Some other method' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)' 98='(98) (98) Don''t know';
VALUE h1jo24ff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (drugs=no)' 8='(8) (8) Don''t know';
VALUE h1gh1aff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip' 8='(8) (8) Don''t know';
VALUE h1rx36__1f  0='(0) (0) No (skip to next section)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (intercourse in only one month)';
VALUE h1nr36c_1f  1='(01) (1) Condoms (rubbers)' 3='(03) (3) Rhythm (safe time)'
                6='(06) (6) Foam/jelly/creme/suppositories' 7='(07) (7) Diaphragm, with/without jelly'
                8='(08) (8) IUD (intrauterine device)' 9='(09) (9) Norplant'
                14='(14) (14) No other method' 97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1ff2eff  0='(0) (0) No (skip to Q.6)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (4/fewer female friends nominated)';
VALUE h1co17cf  1='(1) (1) Less than 1 year ago' 2='(2) (2) 1-2 years ago'
                3='(3) (3) More than 2 years ago' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (have never been told had gonorrhea)';
VALUE h1ir11ff  1='(1) (1) Very well kept'
                2='(2) (2) Fairly well kept (needs cosmetic work)'
                3='(3) (3) Poorly kept (needs minor repairs)'
                4='(4) (4) Very poorly kept (needs major repairs)' 6='(6) (6) Refused'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1to41ff  996='(996) (996) Refused'
                997='(997) (997) Legitimate skip (never tried any other type of illegal'
                998='(998) (998) Don''t know' 999='(999) (999) Not applicable';
VALUE h1bc1fff  1='(1) (1) Strongly agree' 2='(2) (2) Agree'
                3='(3) (3) Neither agree nor disagree' 4='(4) (4) Disagree' 5='(5) (5) Strongly disagree'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (sex=no or age <15)'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1rx2_2f  85='(85) (85) 1985' 89='(89) (89) 1989' 90='(90) (90) 1990'
                91='(91) (91) 1991' 92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994'
                95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (month/year given)' 98='(98) (98) Don''t know';
VALUE pc58ffff  1='(1) (1) Accident (go to C59)' 2='(2) (2) Disease (go to C59)'
                3='(3) (3) Present at birth (skip to C60)' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip' 8='(8) (8) Don''t know';
VALUE h1ws6dff  1='(1) (1) Not at all' 2='(2) (2) Very little' 3='(3) (3) Somewhat'
                4='(4) (4) Quite a bit' 5='(5) (5) Very much' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R''s twin)';
VALUE s23fffff  0='(0) (0) No (skip to Q.25)' 1='(1) (1) Yes (got to Q.24)';
VALUE h1hr11bf  0='(00) (0) Less than one month' 1='(01) (1) 1 month'
                2='(02) (2) 2 months' 3='(03) (3) 3 months' 4='(04) (4) 4 months' 5='(05) (5) 5 months'
                6='(06) (6) 6 months' 7='(07) (7) 7 months' 8='(08) (8) 8 months' 9='(09) (9) 9 months'
                10='(10) (10) 10 months' 11='(11) (11) 11 months'
                97='(97) (97) Legitimate skip (number years lived together>=1)'
                98='(98) (98) Don''t know';
VALUE h1ri16__2f  0='(0) (0) No (skip to Q.18)' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R has two/fewer special friends)' 8='(8) (8) Don''t know';
VALUE h1ri31__1f  0='(0) (0) No (skip to next partner/section)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (intercourse only once)'
                8='(8) (8) Don''t know( skip to next partner/section)';
VALUE h1ri12__2f  92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994'
                95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (no 3rd special friend/relationship on-'
                98='(98) (98) Don''t know';
VALUE h1ri11mf  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (no special friend/relationship on-goin'
                98='(98) (98) Don''t know';
VALUE h1ri37_f  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (didn''t use birth control)';
VALUE h1nr36af  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                6='(06) (6) Foam/jelly/creme/suppositories' 9='(09) (9) Norplant'
                11='(11) (11) Depo Provera' 13='(13) (13) Some other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)'
                98='(98) (98) Don''t know (skip to Q.42)';
VALUE h1rx29c_1f  12='(12) (12) Contraceptive film' 14='(14) (14) Not other method'
                97='(97) (97) Legitimate skip (used only one birth control method)';
VALUE h1su3fff  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (didn''t attempt suicide)';
VALUE h1ri41__1f  9996='(9996) (9996) Refused'
                9997='(9997) (9997) Legitimate skip (didn''t use birth control/Q.36 not ye'
                9998='(9998) (9998) Don''t know';
VALUE h1re2fff  1='(1) (1) Agree' 2='(2) (2) Disagree'
                3='(3) (3) Religion doesn''t have sacred scriptures' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (no religion)' 8='(8) (8) Don''t know';
VALUE pa38ffff  0='(0) (0) No (skip to A40)' 1='(1) (1) Yes (go to A39)'
                6='(6) (6) Respondent refused to answer';
VALUE h1ff4aff  0='(0) (0) No' 1='(1) (1) Yes (skip to Q.5a)' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip';
VALUE h1ri11y_1f  90='(90) (90) 1990' 91='(91) (91) 1991' 92='(92) (92) 1992'
                93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (no 2nd special friend/relationship on-'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1to54af  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (gun not available)' 8='(8) (8) Don''t know';
VALUE h1nr31c_1f  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                4='(04) (4) Birth control pills' 5='(05) (5) Vaginal sponge'
                13='(13) (13) Some other method' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)' 98='(98) (98) Don''t know';
VALUE h1hr9fff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 5/fewer persons)'
                8='(8) (8) Don''t know';
VALUE h1ri3_2f  96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R has no/only one special friend)'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1fp9yff  91='(91) (91) 1991 and before' 92='(92) (92) 1992' 93='(93) (93) 1993'
                94='(94) (94) 1994' 95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (hasn''t been pregnant)' 98='(98) (98) Don''t know';
VALUE h1lr4fff  0='(0) (0) No (skip to next section)'
                1='(1) (1) Yes (asked to give initials)' 6='(6) (6) Refused (asked to give initials)'
                7='(7) (7) Legitimate skip' 8='(8) (8) Don''t know (asked to give initials)'
                9='(9) (9) Not applicable (asked to give initials)';
VALUE h1ws3eff  1='(1) (1) Very often' 2='(2) (2) Often' 3='(3) (3) Sometimes'
                4='(4) (4) Seldom' 5='(5) (5) Never' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (not study sib/4 or fewer HH member ages 12-1';
VALUE h1ri32__2f  0='(0) (0) No (skip to next section)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (didn''t use birth control)';
VALUE h1hr3off  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather'
                20='(20) (20) Grandmother' 21='(21) (21) Great-grandfather'
                22='(22) (22) Great-grandmother' 23='(23) (23) Uncle' 24='(24) (24) Aunt'
                25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 14/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE h1ri25m_1f  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (intercourse not confirmed)' 98='(98) (98) Don''t know';
VALUE h1gh57ff  0='(0) (0) No' 1='(1) (1) Yes (skip to Q.59)' 6='(6) (6) Refused'
                8='(8) (8) Don''t know';
VALUE h1ws1eff  1='(1) (1) A lot' 2='(2) (2) Some' 3='(3) (3) Little' 4='(4) (4) None'
                6='(6) (6) Refused' 7='(7) (7) Legit skip (not study sib/4 or fewer HH member ages 12-1';
VALUE h1gh1fff  1='(1) (1) Excellent' 2='(2) (2) Very good' 3='(3) (3) Good'
                4='(4) (4) Fair' 5='(5) (5) Poor' 6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1gh48ff  0='(0) (0) Never' 1='(1) (1) Just a few times'
                2='(2) (2) About once a week' 3='(3) (3) Almost every day' 4='(4) (4) Every day'
                6='(6) (6) Refused' 8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1hr7nff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R lives with 13/fewer persons)'
                998='(998) (998) Don''t know';
VALUE h1hr5eff  1='(01) (1) Full brother' 2='(02) (2) Half-brother'
                3='(03) (3) Step brother' 4='(04) (4) Adoptive brother' 5='(05) (5) Foster brother'
                7='(07) (7) Full sister' 8='(08) (8) Half-sister' 9='(09) (9) Step sister'
                10='(10) (10) Adoptive sister' 11='(11) (11) Foster sister' 12='(12) (12) Other'
                97='(97) (97) Legitimate skip (not a brother/sister)';
VALUE h1fp12_f  0='(0) (0) No (skip to Q.15)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (skip to Q.15)';
VALUE pb14ffff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (no current spouse/partner)';
VALUE h1ri29af  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                13='(13) (13) Some other method'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE s50fffff  1='(1) (1) Excellent' 2='(2) (2) Very good' 3='(3) (3) Good'
                4='(4) (4) Fair' 5='(5) (5) Poor' 9='(9) (9) Multiple response';
VALUE h1hr7aff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (respondent lives alone)' 998='(998) (998) Don''t know';
VALUE h1hr10df  0='(00) (0) Less than year'
                96='(96) (96) Refused (skip to next HH member/Q.12)'
                97='(97) (97) Legitimate skip (have always lived in same HH)'
                98='(98) (98) Don''t know (skip to next HH member/Q.12)' 99='(99) (99) Not applicable';
VALUE h1ed11ff  1='(01) (1) A' 2='(02) (2) B' 3='(03) (3) C' 4='(04) (4) D or lower'
                5='(05) (5) Didn''t take this subject' 6='(06) (6) Took subject/wasn''t graded this way'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know';
VALUE h1ri38bf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                5='(05) (5) Vaginal sponge' 6='(06) (6) Foam/jelly/creme/suppositories'
                7='(07) (7) Diaphragm, with/without jelly' 8='(08) (8) IUD (intrauterine device)'
                9='(09) (9) Norplant' 10='(10) (10) Ring' 11='(11) (11) Depo Provera'
                12='(12) (12) Contraceptive film' 13='(13) (13) Some other method'
                14='(14) (14) No other method' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (didn''t use birth control)' 98='(98) (98) Don''t know';
VALUE h1ri33a_2f  1='(01) (1) Condoms (rubbers)'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE pc48ffff  96='(96) (96) Respondent refused to answer' 97='(97) (97) Legitimate skip';
VALUE h1hr7lff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R lives with 11/fewer persons)'
                998='(998) (998) Don''t know';
VALUE h1nr21_f  1='(1) (1) In your neighborhood' 2='(2) (2) Not in your neighborhood'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (never had a sexual relationship)'
                8='(8) (8) Don''t know';
VALUE pc13ffff  1='(1) (1) A good influence' 2='(2) (2) A bad influence'
                3='(3) (3) Neither a good nor a bad influence' 6='(6) (6) Respondent refused to answer'
                8='(8) (8) Don''t know';
VALUE h1co16cf  0='(0) (0) No' 1='(1) (1) Yes (ask Q.17C)' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hasn''t had intercourse)' 8='(8) (8) Don''t know';
VALUE h1gi20ff  7='(07) (7) 7th grade' 8='(08) (8) 8th grade' 9='(09) (9) 9th grade'
                10='(10) (10) 10th grade' 11='(11) (11) 11th grade' 12='(12) (12) 12th grade'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (not in school)'
                98='(98) (98) Don''t know'
                99='(99) (99) Not applicable/school doesn''t have grade levels';
VALUE h1nr3fff  0='(0) (0) No (skip to Q.5)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.5)' 8='(8) (8) Don''t know (skip to Q.5)'
                9='(9) (9) Not applicable (skip to Q.5)';
VALUE h1gh40ff  0='(0) (0) Never (skip to Q.42)' 1='(1) (1) Once or twice'
                2='(2) (2) About once a month' 3='(3) (3) About once a week' 4='(4) (4) Almost every day'
                6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1ri13_f  1='(1) (1) In your neighborhood' 2='(2) (2) Not in your neighborhood'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (no special friend/relationship on-going'
                8='(8) (8) Don''t know';
VALUE pc68_mff  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 20='(20) (20) (He/she) lived there at birth'
                96='(96) (96) Respondent refused to answer' 97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know';
VALUE h1pl10ff  0='(0) (0) No (skip to Q.12)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.12)' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know (skip to Q.12)';
VALUE h1hs7fff  0='(0) (0) No (skip to Q.9)' 1='(1) (1) Yes' 6='(6) (6) Refused'
                8='(8) (8) Don''t know';
VALUE h1rx12_f  90='(90) (90) 1990' 93='(93) (93) 1993' 94='(94) (94) 1994'
                95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (month relationship ended given)'
                98='(98) (98) Don''t know';
VALUE h1ws11df  7='(7) (7) Legitimate skip (teachers never confused)';
VALUE twindfff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (not study sib/3 or fewer HH member ages 12-1';
VALUE h1rx4_1f  13='(13) (13) 13 years old' 14='(14) (14) 14 years old'
                15='(15) (15) 15 years old' 17='(17) (17) 17 years old' 96='(96) (96) Refused'
                97='(97) (97) Legit skip (partner age given)' 98='(98) (98) Don''t know';
VALUE h1rx16__2f  0='(0) (0) No (skip to Q.18)' 1='(1) (1) Yes'
                7='(7) (7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske';
VALUE h1fp15_f  1='(1) (1) Definitely no' 2='(2) (2) Probably no'
                3='(3) (3) Neither wanted/nor didn''t want' 4='(4) (4) Probably yes'
                5='(5) (5) Definitely yes' 7='(7) (7) Legitimate skip';
VALUE twinafff  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (not study sib/no HH member ages 12-18)'
                9='(9) (9) Not applicable';
VALUE h1to36ff  0='(000) (0) No times' 1='(001) (1) 1 time' 2='(002) (2) 2 times'
                3='(003) (3) 3 times' 4='(004) (4) 4 times' 5='(005) (5) 5 times'
                10='(010) (10) 7-10 times' 14='(014) (14) 11-14 times' 30='(030) (30) 15-30 times'
                33='(033) (33) 33 or more times' 996='(996) (996) Refused'
                997='(997) (997) Legitimate skip (never tried cocaine)' 998='(998) (998) Don''t know'
                999='(999) (999) Not applicable';
VALUE h1hr3tff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather'
                20='(20) (20) Grandmother' 21='(21) (21) Great-grandfather'
                22='(22) (22) Great-grandmother' 23='(23) (23) Uncle' 24='(24) (24) Aunt'
                25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 19/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE pb7fffff  1='(01) (1) Adventist' 2='(02) (2) AME/AME Zion/CME'
                3='(03) (3) Assemblies of God' 5='(05) (5) Baptist' 6='(06) (6) Buddhist'
                7='(07) (7) Catholic' 8='(08) (8) Christian Church (Disciples of Christ)'
                9='(09) (9) Christian Science' 10='(10) (10) Congregational'
                11='(11) (11) Eastern Orthodox' 12='(12) (12) Episcopal' 13='(13) (13) Friends/Quaker'
                14='(14) (14) Hindu' 15='(15) (15) Holiness' 16='(16) (16) Islam/Moslem/Muslim'
                17='(17) (17) Jehovah''s Witness'
                18='(18) (18) Jewish-Conservative/Reformed/Orthodox/Reconstructionist'
                19='(19) (19) Later Day Saints (Mormon)' 20='(20) (20) Lutheran' 21='(21) (21) Methodist'
                23='(23) (23) Other Protestant' 24='(24) (24) Other religion' 25='(25) (25) Pentecostal'
                26='(26) (26) Presbyterian' 27='(27) (27) Unitarian' 28='(28) (28) None'
                96='(96) (96) Respondent refused to answer'
                97='(97) (97) Legitimate skip (no current spouse/partner)';
VALUE studsib_2f  7='(7) (7) Legitimate skip (skip to next section)';
VALUE h1lr2fff  0='(0) (0) No (skip to next section)' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip' 8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1nr34__1f  0='(0) (0) No (skip to Q.39)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (intercourse in only one month)';
VALUE h1ir17af  0='(0) (0) Not marked' 1='(1) (1) Marked'
                7='(7) (7) Legitimate skip (no interruptions)';
VALUE h1gi2fff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1co16hf  0='(0) (0) No' 1='(1) (1) Yes (ask Q.17H)' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hasn''t had intercourse)' 8='(8) (8) Don''t know';
VALUE h1hr7rff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R lives with 17/fewer persons)'
                998='(998) (998) Don''t know';
VALUE h1co14mf  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip(never taken birth control pills regular'
                98='(98) (98) Don''t know';
VALUE s15fffff  0='(0) (0) No' 1='(1) (1) Yes' 7='(7) (7) Legitimate skip'
                8='(8) (8) I don''t know' 9='(9) (9) Multiple response';
VALUE s3ffffff  13='(13) (13) My school doesn''t have grade levels of this kind'
                99='(99) (99) Multiple response';
VALUE pa60ffff  1='(1) (1) Never' 2='(2) (2) Rarely' 3='(3) (3) Sometimes'
                4='(4) (4) Most of the time' 5='(5) (5) Always' 6='(6) (6) Respondent refused to answer';
VALUE h1ee9fff  0='(0) (0) No (skip to Q.12)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.12)' 8='(8) (8) Don''t know (skip to Q.12)';
VALUE h1rf12ff  1='(01) (1) Always' 2='(02) (2) Most of the time'
                3='(03) (3) Some of the time' 4='(04) (4) Almost never' 5='(05) (5) Never'
                6='(06) (6) He brings me home from school' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (no DAD)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE h1nr22_f  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (never had sexual relationship/same sex partn';
VALUE h1nr39_f  997='(997) (997) Legitimate skip (didn''t use birth control)'
                998='(998) (998) Don''t know';
VALUE h1hr9jff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 9/fewer persons)'
                8='(8) (8) Don''t know';
VALUE pa22ffff  1='(01) (1) Adventist' 2='(02) (2) AME/AME Zion/CME'
                3='(03) (3) Assemblies of God' 5='(05) (5) Baptist' 6='(06) (6) Buddhist'
                7='(07) (7) Catholic' 8='(08) (8) Christian Church (Disciples of Christ)'
                9='(09) (9) Christian Science' 10='(10) (10) Congregational'
                11='(11) (11) Eastern Orthodox' 12='(12) (12) Episcopal' 13='(13) (13) Friends/Quaker'
                14='(14) (14) Hindu' 15='(15) (15) Holiness' 16='(16) (16) Islam/Moslem/Muslim'
                17='(17) (17) Jehovah''s Witness'
                18='(18) (18) Jewish-Conservative/Reformed/Orthodox/Reconstructionist'
                19='(19) (19) Later Day Saints (Mormon)' 20='(20) (20) Lutheran' 21='(21) (21) Methodist'
                23='(23) (23) Other Protestant' 24='(24) (24) Other religion' 25='(25) (25) Pentecostal'
                26='(26) (26) Presbyterian' 27='(27) (27) Unitarian' 28='(28) (28) None (skip to A27)'
                96='(96) (96) Respondent refused to answer';
VALUE h1ri25yf  80='(80) (80) 1980' 87='(87) (87) 1987' 88='(88) (88) 1988'
                89='(89) (89) 1989' 90='(90) (90) 1990' 91='(91) (91) 1991' 92='(92) (92) 1992'
                93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (intercourse not confirmed)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE pa7_1fff  0='(0) (0) Not marked' 1='(1) (1) Marked'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (not Asian/Pacific Islander)';
VALUE h1ri22a_1f  1='(01) (1) We went out together in a group'
                2='(02) (2) I met my partner''s parents'
                3='(03) (3) I told other people that we were a couple'
                4='(04) (4) Saw less of friends/so I could spend more time w/partner'
                5='(05) (5) We went out together alone' 6='(06) (6) We held hands'
                7='(07) (7) I gave my partner a present' 8='(08) (8) My partner game me a present'
                9='(09) (9) I told my partner I loved him/her'
                10='(10) (10) My partner told me that s/he loved me'
                11='(11) (11) We thought of ourselves as a couple'
                12='(12) (12) We talked about contraception/STDs' 13='(13) (13) We kissed'
                14='(14) (14) We touched each other under clothing/with no clothes on'
                15='(15) (15) We had sexual intercourse'
                16='(16) (16) We touched each others'' genitals (private parts)'
                17='(17) (17) My partner/I got pregnant' 18='(18) (18) We got married'
                97='(97) (97) Legitimate skip (R has no/only one special friend)';
VALUE h1ws5cff  1='(01) (1) A lot more' 2='(02) (2) A little more'
                3='(03) (3) The same amount' 4='(04) (4) A little less' 5='(05) (5) A lot less'
                6='(06) (6) Not applicable' 96='(96) (96) Refused'
                97='(97) (97) Legit skip (not study sib/two or fewer HH member ages 1'
                98='(98) (98) Don''t know';
VALUE h1fp20m_1f  1='(01) (1) January to March' 4='(04) (4) April' 5='(05) (5) May'
                8='(08) (8) August or September' 10='(10) (10) October to December'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know/pregnancy hasn''t ended';
VALUE h1ri20__2f  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R has two/fewer special friends)' 8='(8) (8) Don''t know';
VALUE h1ri35_f  1='(1) (1) Used more than one method at same time'
                2='(2) (2) Used one method at time/method varied time-to-time'
                3='(3) (3) Sometimes only one method/sometimes more than one' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (used only one method)';
VALUE h1nr4fff  996='(996) (996) Refused'
                997='(997) (997) Legitimate skip (never exchanged sex for drugs/money)'
                998='(998) (998) Don''t know' 999='(999) (999) Not applicable';
VALUE h1nr6fff  996='(996) (996) Refused'
                997='(997) (997) Legitimate skip (never had a sexual relationship)'
                998='(998) (998) Don''t know' 999='(999) (999) Not applicable';
VALUE h1to12ff  0='(0) (0) No (skip to Q.29)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.29)' 8='(8) (8) Don''t know (skip to Q.29)'
                9='(9) (9) Not applicable (skip to Q.29)';
VALUE h1pf1fff  1='(1) (1) Strongly agree' 2='(2) (2) Agree'
                3='(3) (3) Neither agree nor disagree' 4='(4) (4) Disagree' 5='(5) (5) Strongly disagree'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (no resident MOM)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1rx3_1f  96='(96) (96) Refused'
                97='(97) (97) Legit skip (No sexual relation/section 26 questions ask'
                98='(98) (98) Don''t know';
VALUE h1hr7pff  0='(000) (0) Less than 1y/o' 996='(996) (996) Refused (skip to Q.9)'
                997='(997) (997) Legitimate skip (R lives with 15/fewer persons)'
                998='(998) (998) Don''t know';
VALUE h1rx5a_f  5='(05) (5) 5th' 6='(06) (6) 6th' 7='(07) (7) 7th' 8='(08) (8) 8th'
                9='(09) (9) 9th' 10='(10) (10) 10th' 11='(11) (11) 11th' 12='(12) (12) 12th'
                13='(13) (13) Beyond high school'
                14='(14) (14) {INITIALS} wasn''t in school (skip to Q.7)'
                15='(15) (15) {INITIALS} was in school/but don''t know what grade'
                16='(16) (16) Don''t know whether {INITIALS} was in school (skip to Q.'
                96='(96) (96) Refused'
                97='(97) (97) Legit skip (No sexual relation/section 26 questions ask'
                98='(98) (98) Don''t know';
VALUE pa44ffff  1='(1) (1) Separation' 2='(2) (2) Divorce' 3='(3) (3) Annulment'
                4='(4) (4) Death' 5='(5) (5) Other' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (relationship still going on)';
VALUE h1gi13yf  77='(77) (77) 1975 to 1977' 78='(78) (78) 1978' 79='(79) (79) 1979'
                80='(80) (80) 1980' 81='(81) (81) 1981' 82='(82) (82) 1982' 83='(83) (83) 1983'
                84='(84) (84) 1984' 85='(85) (85) 1985' 86='(86) (86) 1986' 87='(87) (87) 1987'
                88='(88) (88) 1988' 89='(89) (89) 1989' 90='(90) (90) 1990' 91='(91) (91) 1991'
                92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (born in U.S.)' 98='(98) (98) Don''t know'
                99='(99) (99) Not applicable';
VALUE s12fffff  1='(01) (1) 8th grade or less'
                2='(02) (2) >8th grade/didn''t graduate high school' 3='(03) (3) High school graduate'
                4='(04) (4) Completed a GED' 5='(05) (5) Business/trade/voc. school after high school'
                6='(06) (6) College/didn''t graduate' 7='(07) (7) Graduated from college/university'
                8='(08) (8) Prof training beyond 4-year college/univ'
                9='(09) (9) Went to school/but I don''t know level'
                10='(10) (10) She never went to school'
                11='(11) (11) I don''t know if she went to school' 97='(97) (97) Legitimate skip'
                99='(99) (99) Multiple response';
VALUE h1rx7_1f  1='(1) (1) In your neighborhood' 2='(2) (2) Not in your neighborhood'
                6='(6) (6) Refused' 7='(7) (7) Legit skip (No sexual relation/section 26 questions aske'
                8='(8) (8) Don''t know';
VALUE pb2fffff  1='(1) (1) Male' 2='(2) (2) Female'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (no current spouse/partner)';
VALUE h1ri28_f  0='(0) (0) No (skip to next partner/section)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (intercourse >once same month)';
VALUE h1ws6aff  1='(1) (1) Not at all' 2='(2) (2) Very little' 3='(3) (3) Somewhat'
                4='(4) (4) Quite a bit' 5='(5) (5) Very much' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R''s twin)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1ff2dff  0='(0) (0) No (skip to Q.6)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (3/fewer female friends nominated)';
VALUE h1gh42ff  0='(0) (0) Never' 1='(1) (1) Rarely' 2='(2) (2) Sometimes'
                3='(3) (3) Most of the time' 4='(4) (4) Always' 6='(6) (6) Refused'
                8='(8) (8) Don''t know';
VALUE h1ri14_f  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R doesn''t have special friend)' 8='(8) (8) Don''t know';
VALUE h1ws12bf  1='(1) (1) Not at all' 2='(2) (2) Very little' 3='(3) (3) Somewhat'
                4='(4) (4) Quite a bit' 5='(5) (5) Very much' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (not study sib/one HH member ages 12-18)'
                8='(8) (8) Don''t know';
VALUE h1ee6fff  0='(000) (0) None (skip to Q.8)' 996='(996) (996) Refused'
                998='(998) (998) Don''t know (skip to Q.8)'
                999='(999) (999) Not applicable (skip to Q.8)';
VALUE h1nf8fff  0='(00) (0) Less than 1 year old (skip to Q.10)'
                1='(01) (1) 1 year old (skip to Q.10)' 2='(02) (2) 2 years old' 3='(03) (3) 3 years old'
                4='(04) (4) 4 years old' 5='(05) (5) 5 years old' 6='(06) (6) 6 years old'
                7='(07) (7) 7 years old' 8='(08) (8) 8 years old' 9='(09) (9) 9 years old'
                10='(10) (10) 10 years old' 11='(11) (11) 11 years old' 12='(12) (12) 12 years old'
                13='(13) (13) 13 years old' 14='(14) (14) 14 years old' 15='(15) (15) 15 years old'
                16='(16) (16) 16 years old' 17='(17) (17) 17 years old'
                18='(18) (18) 18 years old or older' 96='(96) (96) Refused (skip to Q.10)'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know (skip to Q.10)';
VALUE h1pl14ff  0='(0) (0) No (skip to Q.16)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.16)' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know (skip to Q.16)';
VALUE pb12ffff  0='(0) (0) No (skip to B14)' 1='(1) (1) Yes (skip to B14)'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (works outside the home)';
VALUE h1ri17af  0='(0) (0) Not marked' 1='(1) (1) Marked' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (not Hispanic)' 8='(8) (8) Don''t know';
VALUE h1su2fff  0='(0) (0) 0 times (skip to Q.4)' 1='(1) (1) 1 times'
                2='(2) (2) 2 or 3 times' 3='(3) (3) 4 or 5 times' 4='(4) (4) 6 or more times'
                6='(6) (6) Refused (skip to Q.4)'
                7='(7) (7) Legit skip (didn''t seriously think about committing suic'
                8='(8) (8) Don''t know (skip to Q.4)';
VALUE h1pl9fff  1='(1) (1) Some' 2='(2) (2) A lot/unable to do this'
                7='(7) (7) Legitimate skip' 8='(8) (8) Don''t know';
VALUE h1ri1m_f  0='(00) (0) Don''t consider this person special friend'
                1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March' 4='(04) (4) April'
                5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July' 8='(08) (8) August'
                9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R doesn''t have special friend)'
                98='(98) (98) Don''t know/don''t remember' 99='(99) (99) Not applicable';
VALUE h1ee7fff  0='(000) (0) None' 996='(996) (996) Refused'
                997='(997) (997) Legitimate skip (doesn''t work for pay in a summer week'
                998='(998) (998) Don''t know' 999='(999) (999) Not applicable';
VALUE h1nr18d_1f  0='(0) (0) Not marked' 1='(1) (1) Marked (ask Q.19)' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (never had a sexual relationship)' 8='(8) (8) Don''t know';
VALUE h1ed2fff  996='(996) (996) Refused' 997='(997) (997) Legitimate skip'
                998='(998) (998) Don''t know';
VALUE h1mf2cff  0='(0) (0) No (skip to Q.6)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (2/fewer male friends nominated)'
                8='(8) (8) Don''t know (skip to Q.6)';
VALUE pc55ffff  0='(0) (0) No (skip to C63)' 1='(1) (1) Yes (go to C56)'
                6='(6) (6) Respondent refused to answer' 7='(7) (7) Legitimate skip';
VALUE h1ff3aff  2='(02) (2) 1st or 2nd' 3='(03) (3) 3rd' 4='(04) (4) 4th' 5='(05) (5) 5th'
                6='(06) (6) 6th' 7='(07) (7) 7th' 8='(08) (8) 8th' 9='(09) (9) 9th' 10='(10) (10) 10th'
                11='(11) (11) 11th' 12='(12) (12) 12th' 13='(13) (13) Beyond high school (skip to Q.6)'
                96='(96) (96) Refused (skip to Q.6)' 97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know (skip to Q.6)';
VALUE h1ri15__2f  1='(01) (1) 1st' 2='(02) (2) 2nd' 3='(03) (3) 3rd' 4='(04) (4) 4th'
                5='(05) (5) 5th' 6='(06) (6) 6th' 7='(07) (7) 7th' 8='(08) (8) 8th' 9='(09) (9) 9th'
                10='(10) (10) 10th' 11='(11) (11) 11th' 12='(12) (12) 12th'
                13='(13) (13) {INITIALS} graduated from H.S./in another kind of schoo'
                14='(14) (14) {INITIALS} has graduated from high school/is out of sch'
                15='(15) (15) {INITIALS} has dropped out of school'
                16='(16) (16) {INITIALS} is in school/but don''t know what grade'
                17='(17) (17) You don''t know whether {INITIALS} is in school' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R has two/fewer special friends)'
                98='(98) (98) Don''t know';
VALUE pc59ffff  96='(96) (96) Respondent refused to answer' 97='(97) (97) Legitimate skip'
                98='(98) (98) Don''t know';
VALUE h1gi18ff  0='(0) (0) No (skip to Q.21)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.21)' 8='(8) (8) Don''t know (skip to Q.21)';
VALUE h1co16gf  0='(0) (0) No' 1='(1) (1) Yes (ask Q.17G)' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (hasn''t had intercourse)' 8='(8) (8) Don''t know';
VALUE pa12ffff  1='(01) (1) 8th grade or less'
                2='(02) (2) >8th grade/didn''t graduate high school'
                3='(03) (3) Business/trade/voc. school instead high school'
                4='(04) (4) High school graduate' 5='(05) (5) Completed a GED'
                6='(06) (6) Business/trade/voc. school after high school'
                7='(07) (7) College/didn''t graduate' 8='(08) (8) Graduated from college/university'
                9='(09) (9) Prof training beyond 4-year college/univ' 10='(10) (10) Never went to school'
                96='(96) (96) Respondent refused to answer';
VALUE h1fv1fff  0='(0) (0) Never' 1='(1) (1) Once' 2='(2) (2) More than once'
                6='(6) (6) Refused' 8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1ri13__2f  1='(1) (1) In your neighborhood' 2='(2) (2) Not in your neighborhood'
                7='(7) (7) Legitimate skip (no 3rd special friend/relationship on-g'
                8='(8) (8) Don''t know';
VALUE h1hr2tff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R lives with 19/fewer persons)' 8='(8) (8) Don''t know';
VALUE s53fffff  1='(1) (1) Within the last 12 months' 2='(2) (2) 1-2 years ago'
                3='(3) (3) More than 2 years ago' 4='(4) (4) I don''t remember'
                5='(5) (5) I''ve never had any of these services' 9='(9) (9) Multiple response';
VALUE h1hr3hff  1='(01) (1) Wife/husband' 2='(02) (2) Partner' 3='(03) (3) Son'
                4='(04) (4) Daughter' 5='(05) (5) Brother' 6='(06) (6) Brother''s wife'
                7='(07) (7) Brother''s partner' 8='(08) (8) Sister' 9='(09) (9) Sister''s husband'
                10='(10) (10) Sister''s partner' 11='(11) (11) Father' 12='(12) (12) Father''s wife'
                13='(13) (13) Father''s partner' 14='(14) (14) Mother' 15='(15) (15) Mother''s husband'
                16='(16) (16) Mother''s partner' 18='(18) (18) Mother-in-law' 19='(19) (19) Grandfather'
                20='(20) (20) Grandmother' 21='(21) (21) Great-grandfather'
                22='(22) (22) Great-grandmother' 23='(23) (23) Uncle' 24='(24) (24) Aunt'
                25='(25) (25) Cousin' 26='(26) (26) Nephew' 27='(27) (27) Niece'
                28='(28) (28) Other relative' 29='(29) (29) Other non-relative'
                96='(96) (96) Refused (skip to Q.7)'
                97='(97) (97) Legitimate skip (R live with 7/fewer persons)'
                98='(98) (98) Don''t know (skip to Q.7)';
VALUE h1re3fff  1='(1) (1) Once a week or more'
                2='(2) (2) Once a month or more/less than once a week' 3='(3) (3) Less than once a month'
                4='(4) (4) Never' 6='(6) (6) Refused' 7='(7) (7) Legitimate skip (no religion)'
                8='(8) (8) Don''t know';
VALUE h1fp13a_1f  1='(01) (1) Condoms (rubbers)' 97='(97) (97) Legitimate skip';
VALUE h1fp6fff  1='(1) (1) I look younger than most' 2='(2) (2) I look younger than some'
                3='(3) (3) I look about average' 4='(4) (4) I look older than some'
                5='(5) (5) I look older than most' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (male respondent)' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE h1gi11ff  0='(0) (0) No' 1='(1) (1) Yes (skip to Q.15)'
                6='(6) (6) Refused (skip to Q.15)'
                7='(7) (7) Legitimate skip (lived at current address since birth)'
                8='(8) (8) Don''t know (skip to Q.15)';
VALUE pc8fffff  996='(996) (996) Respondent refused to answer'
                997='(997) (997) Legit skip (adolescent never lived w/biological father'
                998='(998) (998) Don''t know';
VALUE h1rx4_2f  15='(15) (15) 15 years old' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (age of partner given)' 98='(98) (98) Don''t know';
VALUE h1hr9dff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R lives with 3/fewer persons)'
                8='(8) (8) Don''t know';
VALUE h1ed9fff  0='(0) (0) No (skip to Q.11)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.11)' 8='(8) (8) Don''t know (skip to Q.11)';
VALUE h1hr9bff  0='(0) (0) No' 1='(1) (1) Yes (skip to next HH member/Q.12)'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip (R live with 1/fewer persons)'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1co15ff  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip(never taken birth control pills regularl';
VALUE h1ed19ff  1='(1) (1) Strongly agree' 2='(2) (2) Agree'
                3='(3) (3) Neither agree nor disagree' 4='(4) (4) Disagree' 5='(5) (5) Strongly disagree'
                6='(6) (6) Refused' 7='(7) (7) Legitimate skip' 8='(8) (8) Don''t know';
VALUE h1rx33bf  1='(01) (1) Condoms (rubbers)' 2='(02) (2) Withdrawal'
                3='(03) (3) Rhythm (safe time)' 4='(04) (4) Birth control pills'
                14='(14) (14) No other method' 97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1rx10__1f  0='(0) (0) No' 1='(1) (1) Yes (skip to Q.14)' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (No/one sexual relation/section 26 questions '
                8='(8) (8) Don''t know';
VALUE pc63ffff  0='(0) (0) No (go to C64)' 1='(1) (1) Yes (skip to C69)'
                6='(6) (6) Respondent refused to answer' 8='(8) (8) Don''t know (go to C69)';
VALUE h1rx38c_2f  5='(05) (5) Vaginal sponge' 14='(14) (14) No other method'
                97='(97) (97) Legitimate skip (used only one birth control method)';
VALUE h1rx10__2f  0='(0) (0) No' 1='(1) (1) Yes (skip to Q.14)'
                7='(7) (7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske';
VALUE h1to9fff  0='(0) (0) No friends' 1='(1) (1) One friend' 2='(2) (2) Two friends'
                3='(3) (3) Three friends' 6='(6) (6) Refused' 8='(8) (8) Don''t know'
                9='(9) (9) Not applicable';
VALUE pa14ffff  0='(0) (0) No (skip to A16)' 1='(1) (1) Yes (go to A15)'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (works outside the home)';
VALUE h1gi4fff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused (skip to Q.6)'
                8='(8) (8) Don''t know (skip to Q.6)';
VALUE pa43ffff  0='(0) (0) No (go to A44)' 1='(1) (1) Yes (skip to A45)'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legit skip (no marriage/marriage-like relation last 18yr';
VALUE twingfff  7='(7) (7) Legit skip (not study sib/6 or fewer HH member ages 12-1';
VALUE h1rx20__1f  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (No/one sexual relation/section 26 questions '
                8='(8) (8) Don''t know';
VALUE h1ri30_f  0='(0) (0) No' 1='(1) (1) Yes' 7='(7) (7) Legitimate skip (used condoms)';
VALUE h1ri31__2f  0='(0) (0) No (skip to next section)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (had intercourse only once)';
VALUE pa62ffff  1='(01) (1) Never' 2='(02) (2) Once' 3='(03) (3) Twice'
                4='(04) (4) Three times' 5='(05) (5) Four times' 6='(06) (6) Five or more times'
                96='(96) (96) Respondent refused to answer';
VALUE h1ir9fff  1='(1) (1) Inside respondent''s house'
                2='(2) (2) Immediately outside respondent''s house' 3='(3) (3) In interviewer''s car'
                4='(4) (4) At another location' 6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1su4fff  0='(0) (0) No (skip to Q.6)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.6)' 8='(8) (8) Don''t know (skip to Q.6)'
                9='(9) (9) Not applicable (skip to Q.6)';
VALUE pa8bffff  1='(1) (1) White' 2='(2) (2) Black/African American'
                3='(3) (3) American Indian/Native American' 4='(4) (4) Asian/Pacific Islander'
                5='(5) (5) Other' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (answered only one race)';
VALUE h1jo4fff  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legit skip (hadn''t been drinking at most recent intercou';
VALUE h1to15ff  1='(01) (1) Every day/almost every day' 2='(02) (2) 3-5 days/week'
                3='(03) (3) 1 or 2 days/week' 4='(04) (4) 2 or 3 days/month'
                5='(05) (5) Once a month or less (3-12 times in past 12 months)'
                6='(06) (6) 1 or 2 days in past 12 months' 7='(07) (7) Never (skip to Q.29)'
                96='(96) (96) Refused (skip to Q.29)'
                97='(97) (97) Legitimate skip (hasn''t had a drink)'
                98='(98) (98) Don''t know (skip to Q.29)';
VALUE s2ffffff  1='(1) (1) Male' 2='(2) (2) Female' 9='(9) (9) Multiple response';
VALUE h1nr27b_2f  2='(02) (2) Withdrawal' 4='(04) (4) Birth control pills'
                12='(12) (12) Contraceptive film' 14='(14) (14) No other method' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (didn''t use birth control)';
VALUE h1co2yff  77='(77) (77) 1976-1977' 81='(81) (81) 1980-1981' 83='(83) (83) 1982-1983'
                84='(84) (84) 1984' 85='(85) (85) 1985' 86='(86) (86) 1986' 87='(87) (87) 1987'
                88='(88) (88) 1988' 89='(89) (89) 1989' 90='(90) (90) 1990' 91='(91) (91) 1991'
                92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (hasn''t had intercourse)'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1mf2aff  0='(0) (0) No (skip to Q.6)' 1='(1) (1) Yes'
                6='(6) (6) Refused (skip to Q.6)' 7='(7) (7) Legitimate skip (no male friend nominated)'
                8='(8) (8) Don''t know (skip to Q.6)';
VALUE h1ri12__1f  91='(91) (91) 1991' 93='(93) (93) 1993' 94='(94) (94) 1994'
                95='(95) (95) 1995' 96='(96) (96) Refused'
                97='(97) (97) Legit skip (no 2nd spec frnd/month relationship ended g'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE pb21ffff  1='(1) (1) Excellent' 2='(2) (2) Very good' 3='(3) (3) Good'
                4='(4) (4) Fair' 5='(5) (5) Poor' 6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (no current spouse/partner)' 8='(8) (8) Don''t know';
VALUE pb3fffff  0='(0) (0) No (skip to B5)' 1='(1) (1) Yes (go to B4)'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (no current spouse/partner)'
                8='(8) (8) Don''t know (skip to B5)';
VALUE h1fp24a_1f  0='(0) (0) No (skip to Q.26)' 1='(1) (1) Yes' 7='(7) (7) Legitimate skip';
VALUE h1ri11y_2f  93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (no 3rd special friend/relationship on-'
                98='(98) (98) Don''t know';
VALUE h1ws5bff  1='(01) (1) A lot more' 2='(02) (2) A little more'
                3='(03) (3) The same amount' 4='(04) (4) A little less' 5='(05) (5) A lot less'
                6='(06) (6) Not applicable' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (not study sib/one HH member ages 12-18'
                98='(98) (98) Don''t know';
VALUE h1ws9dff  7='(7) (7) Legitimate skip (look like members of same family)';
VALUE h1ws12cf  1='(1) (1) Not at all' 2='(2) (2) Very little' 3='(3) (3) Somewhat'
                4='(4) (4) Quite a bit' 5='(5) (5) Very much' 6='(6) (6) Refused'
                7='(7) (7) Legit skip (not study sib/two or fewer HH member ages 12'
                8='(8) (8) Don''t know';
VALUE h1rx15__2f  5='(05) (5) 1st to 5th' 7='(07) (7) 7th' 8='(08) (8) 8th' 9='(09) (9) 9th'
                10='(10) (10) 10th' 11='(11) (11) 11th' 12='(12) (12) 12th'
                13='(13) (13) {INITIALS} graduated from H.S./in another kind of schoo'
                14='(14) (14) {INITIALS} has graduated from high school/is out of sch'
                17='(17) (17) You don''t know whether {INITIALS} is in school'
                97='(97) (97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask';
VALUE h1rx2_1f  88='(88) (88) 1988' 89='(89) (89) 1989' 91='(91) (91) 1991'
                92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (month/year given)'
                98='(98) (98) Don''t know';
VALUE h1ri11m_1f  1='(01) (1) January' 2='(02) (2) February' 3='(03) (3) March'
                4='(04) (4) April' 5='(05) (5) May' 6='(06) (6) June' 7='(07) (7) July'
                8='(08) (8) August' 9='(09) (9) September' 10='(10) (10) October' 11='(11) (11) November'
                12='(12) (12) December' 96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (no 2nd special friend/relationship on-'
                98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1to30ff  0='(00) (0) You never tried marijuana' 1='(01) (1) 1 year'
                2='(02) (2) 2 years' 3='(03) (3) 3 years' 4='(04) (4) 4 years' 5='(05) (5) 5 years'
                6='(06) (6) 6 years' 7='(07) (7) 7 years' 8='(08) (8) 8 years' 9='(09) (9) 9 years'
                10='(10) (10) 10 years' 11='(11) (11) 11 years' 12='(12) (12) 12 years'
                13='(13) (13) 13 years' 14='(14) (14) 14 years' 15='(15) (15) 15 years'
                16='(16) (16) 16 years' 17='(17) (17) 17 years' 18='(18) (18) 18 years and older'
                96='(96) (96) Refused' 98='(98) (98) Don''t know' 99='(99) (99) Not applicable';
VALUE h1to43ff  0='(0) (0) No (skip to Q.50)' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (never tried any other type of illegal d'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1ed1fff  0='(0) (0) Never' 1='(1) (1) 1 or 2 times' 2='(2) (2) 3 to 10 times'
                3='(3) (3) More than 10 times' 6='(6) (6) Refused' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE h1gi1yff  74='(74) (74) 1974' 75='(75) (75) 1975' 76='(76) (76) 1976'
                77='(77) (77) 1977' 78='(78) (78) 1978' 79='(79) (79) 1979' 80='(80) (80) 1980'
                81='(81) (81) 1981' 82='(82) (82) 1982' 83='(83) (83) 1983' 96='(96) (96) Refused';
VALUE h1hr2bff  1='(1) (1) Male' 2='(2) (2) Female' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (R live with 1/fewer persons)' 8='(8) (8) Don''t know';
VALUE $versionf  '1'='(1) (1) Version 1' '2'='(2) (2) Version 2' '3'='(3) (3) Version 3'
                '4'='(4) (4) Version 4' '5'='(5) (5) Version 5';
VALUE pc2fffff  0='(0) (0) No (go to C3)' 1='(1) (1) Yes (skip to C6A)'
                7='(7) (7) Legit skip (biologic mother completed parent questionnai';
VALUE h1gi12ff  30='(030) (30) Cambodia' 32='(032) (32) Canada'
                37='(037) (37) People''s Republic of China' 38='(038) (38) Colombia' 43='(043) (43) Cuba'
                51='(051) (51) The Dominican Republic' 52='(052) (52) Ecuador'
                54='(054) (54) El Salvador' 75='(075) (75) Germany' 79='(079) (79) Guatemala'
                83='(083) (83) Haiti' 84='(084) (84) Honduras' 87='(087) (87) India'
                95='(095) (95) Jamaica' 96='(096) (96) Japan' 102='(102) (102) South Korea'
                105='(105) (105) Laos' 123='(123) (123) Mexico' 142='(142) (142) Nicaragua'
                151='(151) (151) Panama' 154='(154) (154) Peru' 155='(155) (155) The Philippines'
                187='(187) (187) Taiwan' 190='(190) (190) Thailand' 193='(193) (193) Trinidad/Tobago'
                202='(202) (202) Great Britain' 213='(213) (213) Hong Kong' 221='(221) (221) Puerto Rico'
                231='(231) (231) Viet-Nam' 311='(311) (311) Eastern/North Africa'
                313='(313) (313) Western/North Africa' 314='(314) (314) South Africa'
                321='(321) (321) Middle East' 322='(322) (322) Central Asia'
                331='(331) (331) Northern/Western Europe' 332='(332) (332) British Isles'
                333='(333) (333) Southern/Western Europe' 334='(334) (334) Eastern Europe'
                337='(337) (337) Southern Europe' 341='(341) (341) Oceania/Pacific Ocean Islands'
                361='(361) (361) Central/Northern South America'
                371='(371) (371) Greater and Lesser Antilles' 996='(996) (996) Refused'
                997='(997) (997) Legitimate skip (born in U.S.)' 998='(998) (998) Don''t know'
                999='(999) (999) Not applicable/Other';
VALUE pc10ffff  0='(0) (0) No' 1='(1) (1) Yes' 2='(2) (2) (He/she) doesn''t go to school'
                6='(6) (6) Respondent refused to answer';
VALUE h1ff3dff  2='(02) (2) 1st or 2nd' 3='(03) (3) 3rd' 4='(04) (4) 4th' 5='(05) (5) 5th'
                6='(06) (6) 6th' 7='(07) (7) 7th' 8='(08) (8) 8th' 9='(09) (9) 9th' 10='(10) (10) 10th'
                11='(11) (11) 11th' 12='(12) (12) 12th' 13='(13) (13) Beyond high school (skip to Q.6)'
                97='(97) (97) Legitimate skip' 98='(98) (98) Don''t know (skip to Q.6)'
                99='(99) (99) Not applicable (skip to Q.6)';
VALUE h1rx6_3f  0='(0) (0) No' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (partner not in school)';
VALUE pb9fffff  0='(0) (0) No (go to B10)' 1='(1) (1) Yes (skip to B13)'
                6='(6) (6) Respondent refused to answer'
                7='(7) (7) Legitimate skip (no current spouse/partner)';
VALUE h1rx36_f  0='(0) (0) No (skip to next partner/section)' 1='(1) (1) Yes'
                7='(7) (7) Legitimate skip (intercourse in only one month)'
                8='(8) (8) Don''t know (skip to next partner/section)';
VALUE pa10ffff  1='(1) (1) Single/never married (go to A11)'
                2='(2) (2) Married (skip to A12)' 3='(3) (3) Widowed (go to A11)'
                4='(4) (4) Divorced (go to A11)' 5='(5) (5) Separated (go to A11)'
                6='(6) (6) Respondent refused to answer';
VALUE s59affff  0='(00) (0) Never' 1='(01) (1) Once or twice'
                2='(02) (2) Once a month or less' 3='(03) (3) 2 or 3 days a month'
                4='(04) (4) Once or twice a week' 5='(05) (5) 3-5 days a week'
                6='(06) (6) Nearly everyday' 99='(99) (99) Multiple response';
VALUE h1ri41__2f  9996='(9996) (9996) Refused'
                9997='(9997) (9997) Legitimate skip (didn''t use birth control/Q.36 not=ye'
                9998='(9998) (9998) Don''t know';
VALUE h1ws5gff  97='(97) (97) Legit skip (not study sib/6 or fewer HH member ages 12-';
VALUE h1ir3fff  1='(1) (1) Very poorly groomed' 2='(2) (2) Poorly groomed'
                3='(3) (3) About average' 4='(4) (4) Well groomed' 5='(5) (5) Very well groomed'
                6='(6) (6) Refused' 8='(8) (8) Don''t know';
VALUE h1ri25y_2f  80='(80) (80) 1980' 90='(90) (90) 1990' 91='(91) (91) 1991'
                92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                97='(97) (97) Legitimate skip (intercourse not confirmed)' 98='(98) (98) Don''t know';
VALUE h1ri3_3f  96='(96) (96) Refused'
                97='(97) (97) Legitimate skip (R has two/fewer special friends)'
                98='(98) (98) Don''t know';
VALUE h1rx10_f  0='(0) (0) No' 1='(1) (1) Yes (skip to Q.14)'
                6='(6) (6) Refused (skip to Q.14)' 7='(7) (7) Legitimate skip'
                8='(8) (8) Don''t know (skip to Q.14)';
VALUE h1nr24y_2f  81='(81) (81) 1981' 89='(89) (89) 1989' 90='(90) (90) 1990'
                92='(92) (92) 1992' 93='(93) (93) 1993' 94='(94) (94) 1994' 95='(95) (95) 1995'
                96='(96) (96) Refused' 97='(97) (97) Legitimate skip (never had a sexual relationship)'
                98='(98) (98) Don''t know';
VALUE h1rx3_3f  97='(97) (97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask';
VALUE h1rf9fff  0='(0) (0) No' 1='(1) (1) Yes' 6='(6) (6) Refused'
                7='(7) (7) Legitimate skip (no DAD)' 8='(8) (8) Don''t know' 9='(9) (9) Not applicable';
VALUE s18fffff  1='(01) (1) 8th grade or less'
                2='(02) (2) >8th grade/didn''t graduate high school' 3='(03) (3) High school graduate'
                4='(04) (4) Completed a GED' 5='(05) (5) Business/trade/voc. school after high school'
                6='(06) (6) College/didn''t graduate' 7='(07) (7) Graduated from college/university'
                8='(08) (8) Prof training beyond 4-year college/univ'
                9='(09) (9) Went to school/but I don''t know level'
                10='(10) (10) He never went to school' 11='(11) (11) I don''t know if he went to school'
                97='(97) (97) Legitimate skip' 99='(99) (99) Multiple response';
*/


* SAS DATA, INFILE, INPUT STATEMENTS;

DATA;
INFILE "data-filename" LRECL=3630;
INPUT
       AID $1-8                IMONTH 9-10
        IDAY 11-12              IYEAR 13-14             SCH_YR 15
        BIO_SEX 16              VERSION $17             SMP01 18
        SMP03 19                H1GI1M 20-21            H1GI1Y 22-23
        H1GI2 24                H1GI3 25-26             H1GI4 27
        H1GI5A 28               H1GI5B 29               H1GI5C 30
        H1GI5D 31               H1GI5E 32               H1GI5F 33
        H1GI6A 34               H1GI6B 35               H1GI6C 36
        H1GI6D 37               H1GI6E 38               H1GI7A 39
        H1GI7B 40               H1GI7C 41               H1GI7D 42
        H1GI7E 43               H1GI7F 44               H1GI7G 45
        H1GI8 46                H1GI9 47                H1GI10 48
        H1GI11 49               H1GI12 50-52            H1GI13M 53-54
        H1GI13Y 55-56           H1GI14 57               H1GI15 58
        H1GI16M 59-60           H1GI16Y 61-62           H1GI18 63
        H1GI19 64               H1GI20 65-66            H1GI21 67-68
        H1DA1 69                H1DA2 70                H1DA3 71
        H1DA4 72                H1DA5 73                H1DA6 74
        H1DA7 75                H1DA8 76-78             H1DA9 79-81
        H1DA10 82-84            H1DA11 85-87            H1GH1 88
        H1GH1A 89               H1GH2 90                H1GH3 91
        H1GH4 92                H1GH5 93                H1GH6 94
        H1GH7 95                H1GH8 96                H1GH9 97
        H1GH10 98               H1GH11 99               H1GH12 100
        H1GH13 101              H1GH14 102              H1GH15 103
        H1GH16 104              H1GH17 105              H1GH18 106
        H1GH19 107              H1GH20 108              H1GH21 109
        H1GH22 110              H1GH23A 111             H1GH23B 112
        H1GH23C 113             H1GH23D 114             H1GH23E 115
        H1GH23F 116             H1GH23G 117             H1GH23H 118
        H1GH23I 119             H1GH23J 120             H1GH24 121
        H1GH25 122              H1GH26 123              H1GH27A 124
        H1GH27B 125             H1GH27C 126             H1GH27D 127
        H1GH27E 128             H1GH27F 129             H1GH27G 130
        H1GH27H 131             H1GH27I 132             H1GH27J 133
        H1GH28 134              H1GH29 135              H1GH30A 136
        H1GH30B 137             H1GH30C 138             H1GH30D 139
        H1GH30E 140             H1GH30F 141             H1GH30G 142
        H1GH31A 143             H1GH31B 144             H1GH31C 145
        H1GH31D 146             H1GH31F 147             H1GH31G 148
        H1GH32 149              H1GH33 150              H1GH34 151
        H1GH35 152              H1GH36 153              H1GH37 154
        H1GH38 155              H1GH39 156              H1GH40 157
        H1GH41 158              H1GH42 159              H1GH43 160
        H1GH44 161              H1GH45 162-163          H1GH46 164
        H1GH47 165-166          H1GH48 167              H1GH49 168
        H1GH50 $169-174         H1GH51 175-176          H1GH52 177
        H1GH53 178              H1GH54 179              H1GH55 180
        H1GH56 181              H1GH57 182              H1GH58 183
        H1GH59A 184-185         H1GH59B 186-187         H1GH60 188-190
        H1TS1 191               H1TS2 192               H1TS3 193
        H1TS4 194               H1TS5 195               H1TS6 196
        H1TS7 197               H1TS8 198               H1TS9 199
        H1TS10 200              H1TS11 201              H1TS12 202
        H1TS13 203              H1TS14 204              H1TS15 205
        H1TS16 206              H1TS17 207              H1ED1 208
        H1ED2 209-211           H1ED3 212               H1ED4A 213
        H1ED4B 214              H1ED4C 215              H1ED4D 216
        H1ED4E 217              H1ED4F 218              H1ED4G 219
        H1ED4H 220              H1ED4I 221              H1ED4J 222
        H1ED4K 223              H1ED4M 224              H1ED5 225
        H1ED6A 226              H1ED6B 227              H1ED6C 228
        H1ED6D 229              H1ED6E 230              H1ED6F 231
        H1ED6G 232              H1ED6H 233              H1ED6I 234
        H1ED6J 235              H1ED6K 236              H1ED6L 237
        H1ED6M 238              H1ED7 239               H1ED8 240-241
        H1ED9 242               H1ED10 243-244          H1ED11 245-246
        H1ED12 247-248          H1ED13 249-250          H1ED14 251-252
        H1ED15 253              H1ED16 254              H1ED17 255
        H1ED18 256              H1ED19 257              H1ED20 258
        H1ED21 259              H1ED22 260              H1ED23 261
        H1ED24 262              H1PL1 263               H1PL2 264
        H1PL3 265               H1PL4 266               H1PL5 267
        H1PL6 268               H1PL7 269               H1PL8 270
        H1PL9 271               H1PL10 272              H1PL11 273
        H1PL12 274              H1PL13 275              H1PL14 276
        H1PL15 277              H1PL16 278              H1PL17 279
        H1PL18 280              H1PL19 281              H1PL20 282
        H1PL21 283              H1PL22 284              H1PL23 285
        H1PL24 286              H1PL25 287              H1PL26 288
        H1PL29 289              H1PL30 290              H1PL31 291
        H1PL33 292              H1PL34 293              H1PL37 294
        H1PL38 295              H1HS1 296               H1HS2A 297
        H1HS2B 298              H1HS2C 299              H1HS2D 300
        H1HS2E 301              H1HS3 302               H1HS4A 303
        H1HS4B 304              H1HS4C 305              H1HS4D 306
        H1HS4E 307              H1HS5 308               H1HS6A 309
        H1HS6B 310              H1HS6C 311              H1HS6D 312
        H1HS6E 313              H1HS7 314               H1HS8A 315
        H1HS8B 316              H1HS8C 317              H1HS8D 318
        H1HS8E 319              H1HS9 320               H1HS10A 321
        H1HS10B 322             H1HS10C 323             H1HS10D 324
        H1HS10E 325             H1HS11 326              H1HS12A 327
        H1HS12B 328             H1HS12C 329             H1HS12D 330
        H1HS12E 331             H1RP1 332               H1RP2 333
        H1RP3 334               H1RP4 335               H1RP5 336
        H1RP6 337               H1SE1 338-339           H1SE2 340-341
        H1SE3 342-343           H1SE4 344-345           H1FS1 346
        H1FS2 347               H1FS3 348               H1FS4 349
        H1FS5 350               H1FS6 351               H1FS7 352
        H1FS8 353               H1FS9 354               H1FS10 355
        H1FS11 356              H1FS12 357              H1FS13 358
        H1FS14 359              H1FS15 360              H1FS16 361
        H1FS17 362              H1FS18 363              H1FS19 364
        H1HR2A 365              H1HR3A 366-367          H1HR4A 368-369
        H1HR5A 370-371          H1HR6A 372-373          H1HR7A 374-378 .1
        H1HR8A 379-381          H1HR9A 382              H1HR10A 383-384
        H1HR11A 385-386         H1HR2B 387              H1HR3B 388-389
        H1HR4B 390-391          H1HR5B 392-393          H1HR6B 394-395
        H1HR7B 396-400 .1       H1HR8B 401-403          H1HR9B 404
        H1HR10B 405-406         H1HR11B 407-408         H1HR2C 409
        H1HR3C 410-411          H1HR4C 412-413          H1HR5C 414-415
        H1HR6C 416-417          H1HR7C 418-420          H1HR8C 421-423
        H1HR9C 424              H1HR10C 425-426         H1HR11C 427-428
        H1HR2D 429              H1HR3D 430-431          H1HR4D 432-433
        H1HR5D 434-435          H1HR6D 436-437          H1HR7D 438-440
        H1HR8D 441-443          H1HR9D 444              H1HR10D 445-446
        H1HR11D 447-448         H1HR2E 449              H1HR3E 450-451
        H1HR4E 452-453          H1HR5E 454-455          H1HR6E 456-457
        H1HR7E 458-460          H1HR8E 461-463          H1HR9E 464
        H1HR10E 465-466         H1HR11E 467-468         H1HR2F 469
        H1HR3F 470-471          H1HR4F 472-473          H1HR5F 474-475
        H1HR6F 476-477          H1HR7F 478-480          H1HR8F 481-483
        H1HR9F 484              H1HR10F 485-486         H1HR11F 487-488
        H1HR2G 489              H1HR3G 490-491          H1HR4G 492-493
        H1HR5G 494-495          H1HR6G 496-497          H1HR7G 498-500
        H1HR8G 501-503          H1HR9G 504              H1HR10G 505-506
        H1HR11G 507-508         H1HR2H 509              H1HR3H 510-511
        H1HR4H 512-513          H1HR5H 514-515          H1HR6H 516-517
        H1HR7H 518-520          H1HR8H 521-523          H1HR9H 524
        H1HR10H 525-526         H1HR11H 527-528         H1HR2I 529
        H1HR3I 530-531          H1HR4I 532-533          H1HR5I 534-535
        H1HR6I 536-537          H1HR7I 538-540          H1HR8I 541-543
        H1HR9I 544              H1HR10I 545-546         H1HR11I 547-548
        H1HR2J 549              H1HR3J 550-551          H1HR4J 552-553
        H1HR5J 554-555          H1HR6J 556-557          H1HR7J 558-560
        H1HR8J 561-563          H1HR9J 564              H1HR10J 565-566
        H1HR11J 567-568         H1HR2K 569              H1HR3K 570-571
        H1HR4K 572-573          H1HR5K 574-575          H1HR6K 576-577
        H1HR7K 578-580          H1HR8K 581-583          H1HR9K 584
        H1HR10K 585-586         H1HR11K 587-588         H1HR2L 589
        H1HR3L 590-591          H1HR4L 592-593          H1HR5L 594-595
        H1HR6L 596-597          H1HR7L 598-600          H1HR8L 601-603
        H1HR9L 604              H1HR10L 605-606         H1HR11L 607-608
        H1HR2M 609              H1HR3M 610-611          H1HR4M 612-613
        H1HR5M 614-615          H1HR6M 616-617          H1HR7M 618-620
        H1HR8M 621-623          H1HR9M 624              H1HR10M 625-626
        H1HR11M 627-628         H1HR2N 629              H1HR3N 630-631
        H1HR4N 632-633          H1HR5N 634-635          H1HR6N 636-637
        H1HR7N 638-640          H1HR8N 641-643          H1HR9N 644
        H1HR10N 645-646         H1HR11N 647-648         H1HR2O 649
        H1HR3O 650-651          H1HR4O 652-653          H1HR5O 654-655
        H1HR6O 656-657          H1HR7O 658-660          H1HR8O 661-663
        H1HR9O 664              H1HR10O 665-666         H1HR11O 667-668
        H1HR2P 669              H1HR3P 670-671          H1HR4P 672-673
        H1HR5P 674-675          H1HR6P 676-677          H1HR7P 678-680
        H1HR8P 681-683          H1HR9P 684              H1HR10P 685-686
        H1HR11P 687-688         H1HR2Q 689              H1HR3Q 690-691
        H1HR4Q 692-693          H1HR5Q 694-695          H1HR6Q 696-697
        H1HR7Q 698-700          H1HR8Q 701-703          H1HR9Q 704
        H1HR10Q 705-706         H1HR11Q 707-708         H1HR2R 709
        H1HR3R 710-711          H1HR4R 712-713          H1HR5R 714-715
        H1HR6R 716-717          H1HR7R 718-720          H1HR8R 721-723
        H1HR9R 724              H1HR10R 725-726         H1HR11R 727-728
        H1HR2S 729              H1HR3S 730-731          H1HR4S 732-733
        H1HR5S 734-735          H1HR6S 736-737          H1HR7S 738-740
        H1HR8S 741-743          H1HR9S 744              H1HR10S 745-746
        H1HR11S 747-748         H1HR2T 749              H1HR3T 750-751
        H1HR4T 752-753          H1HR5T 754-755          H1HR6T 756-757
        H1HR7T 758-760          H1HR8T 761-763          H1HR9T 764
        H1HR10T 765-766         H1HR11T 767-768         H1HR12 769-770
        H1HR13 771-772          H1HR14 773-774          H1HR15 775-776
        H1NM1 777               H1NM2 778               H1NM3 779-780
        H1NM4 781-782           H1NM5 783               H1NM6 784
        H1NM7 785               H1NM8 786-787           H1NM9 788-789
        H1NM10 790              H1NM11 791              H1NM12A 792
        H1NM12B 793             H1NM12C 794             H1NM12D 795
        H1NM12E 796             H1NM12F 797             H1NM12G 798
        H1NM12H 799             H1NM12I 800             H1NM12J 801
        H1NM13 802              H1NM14 803              H1NF1 804
        H1NF2 805               H1NF3 806-807           H1NF4 808-809
        H1NF5 810               H1NF6 811               H1NF7 812
        H1NF8 813-814           H1NF9 815-816           H1NF10 817
        H1NF11 818              H1NF12A 819             H1NF12B 820
        H1NF12C 821             H1NF12D 822             H1NF12E 823
        H1NF12F 824             H1NF12G 825             H1NF12H 826
        H1NF12I 827             H1NF12J 828             H1NF13 829
        H1NF14 830              H1RM1 831-832           H1RM2 833
        H1RM3 834-836           H1RM4 837-838           H1RM5 839
        H1RM6 840               H1RM7 841-843           H1RM8 844
        H1RM9 845               H1RM10 846              H1RM11 847-848
        H1RM12 849-850          H1RM13 851-852          H1RM14 853
        H1RF1 854-855           H1RF2 856               H1RF3 857-859
        H1RF4 860-861           H1RF5 862               H1RF6 863
        H1RF7 864-866           H1RF8 867               H1RF9 868
        H1RF10 869              H1RF11 870-871          H1RF12 872-873
        H1RF13 874-875          H1RF14 876              H1WP1 877
        H1WP2 878               H1WP3 879               H1WP4 880
        H1WP5 881               H1WP6 882               H1WP7 883
        H1WP8 884-885           H1WP9 886               H1WP10 887
        H1WP11 888              H1WP12 889              H1WP13 890
        H1WP14 891              H1WP15 892              H1WP16 893
        H1WP17A 894             H1WP17B 895             H1WP17C 896
        H1WP17D 897             H1WP17E 898             H1WP17F 899
        H1WP17G 900             H1WP17H 901             H1WP17I 902
        H1WP17J 903             H1WP17K 904             H1WP18A 905
        H1WP18B 906             H1WP18C 907             H1WP18D 908
        H1WP18E 909             H1WP18F 910             H1WP18G 911
        H1WP18H 912             H1WP18I 913             H1WP18J 914
        H1WP18K 915             H1MO1 916               H1MO2 917
        H1MO3 918               H1MO4 919               H1MO5 920
        H1MO6 921               H1MO7 922               H1MO8 923
        H1MO9 924               H1MO10 925              H1MO11 926
        H1MO12 927              H1MO13 928              H1MO14 929
        H1PF1 930               H1PF2 931               H1PF3 932
        H1PF4 933               H1PF5 934               H1PF6 935
        H1PF7 936               H1PF8 937               H1PF9 938
        H1PF10 939              H1PF11 940              H1PF12 941
        H1PF13 942              H1PF14 943              H1PF15 944
        H1PF16 945              H1PF17 946              H1PF18 947
        H1PF19 948              H1PF20 949              H1PF21 950
        H1PF22 951              H1PF23 952              H1PF24 953
        H1PF25 954              H1PF26 955              H1PF27 956
        H1PF28 957              H1PF29 958              H1PF30 959
        H1PF31 960              H1PF32 961              H1PF33 962
        H1PF34 963              H1PF35 964              H1PF36 965
        H1KQ1A 966              H1KQ1B 967              H1KQ2A 968
        H1KQ2B 969              H1KQ3A 970              H1KQ3B 971
        H1KQ4A 972              H1KQ4B 973              H1KQ5A 974
        H1KQ5B 975              H1KQ6A 976              H1KQ6B 977
        H1KQ7A 978              H1KQ7B 979              H1KQ8A 980
        H1KQ8B 981              H1KQ9A 982              H1KQ9B 983
        H1KQ10A 984             H1KQ10B 985             FR_FLAG 986
        H1MF2A 987              H1MF3A 988-989          H1MF4A 990
        H1MF5A 991              H1MF6A 992              H1MF7A 993
        H1MF8A 994              H1MF9A 995              H1MF10A 996
        H1MF2B 997              H1MF3B 998-999          H1MF4B 1000
        H1MF5B 1001             H1MF6B 1002             H1MF7B 1003
        H1MF8B 1004             H1MF9B 1005             H1MF10B 1006
        H1MF2C 1007             H1MF3C 1008-1009        H1MF4C 1010
        H1MF5C 1011             H1MF6C 1012             H1MF7C 1013
        H1MF8C 1014             H1MF9C 1015             H1MF10C 1016
        H1MF2D 1017             H1MF3D 1018-1019        H1MF4D 1020
        H1MF5D 1021             H1MF6D 1022             H1MF7D 1023
        H1MF8D 1024             H1MF9D 1025             H1MF10D 1026
        H1MF2E 1027             H1MF3E 1028-1029        H1MF4E 1030
        H1MF5E 1031             H1MF6E 1032             H1MF7E 1033
        H1MF8E 1034             H1MF9E 1035             H1MF10E 1036
        H1FF2A 1037             H1FF3A 1038-1039        H1FF4A 1040
        H1FF5A 1041             H1FF6A 1042             H1FF7A 1043
        H1FF8A 1044             H1FF9A 1045             H1FF10A 1046
        H1FF2B 1047             H1FF3B 1048-1049        H1FF4B 1050
        H1FF5B 1051             H1FF6B 1052             H1FF7B 1053
        H1FF8B 1054             H1FF9B 1055             H1FF10B 1056
        H1FF2C 1057             H1FF3C 1058-1059        H1FF4C 1060
        H1FF5C 1061             H1FF6C 1062             H1FF7C 1063
        H1FF8C 1064             H1FF9C 1065             H1FF10C 1066
        H1FF2D 1067             H1FF3D 1068-1069        H1FF4D 1070
        H1FF5D 1071             H1FF6D 1072             H1FF7D 1073
        H1FF8D 1074             H1FF9D 1075             H1FF10D 1076
        H1FF2E 1077             H1FF3E 1078-1079        H1FF4E 1080
        H1FF5E 1081             H1FF6E 1082             H1FF7E 1083
        H1FF8E 1084             H1FF9E 1085             H1FF10E 1086
        H1ID1A 1087             H1ID1B 1088             H1ID1C 1089
        H1ID1D 1090             H1ID1E 1091             H1ID1F 1092
        H1ID1G 1093             H1ID1H 1094             H1ID1I 1095
        H1ID1J 1096             H1ID1K 1097             H1ID1L 1098
        H1ID1M 1099             H1ID1N 1100             H1ID1O 1101
        H1ID1P 1102             H1ID1Q 1103             H1ID1R 1104
        H1ID2_1 1105-1106       H1ID2_2 1107-1108       H1ID2_3 1109-1110
        H1ID2_4 1111-1112       H1ID2_5 1113-1114       H1ID2_6 1115-1116
        H1ID2_7 1117-1118       H1ID2_8 1119-1120       H1ID2_9 1121-1122
        H1ID2_10 1123-1124      H1ID2_11 1125-1126      H1ID2_12 1127-1128
        H1ID2_13 1129-1130      H1ID2_14 1131-1132      H1ID2_15 1133-1134
        H1ID2_16 1135-1136      H1ID2_17 1137-1138      H1ID5 1139
        H1ID6 1140              H1RR1 1141              RR_FLAG 1142
        H1LR1 1143              H1LR2 1144              H1LR3 1145
        H1LR4 1146              H1CO1 1147              H1CO2M 1148-1149
        H1CO2Y 1150-1151        H1CO3 1152              H1CO4A 1153-1154
        H1CO4B 1155-1156        H1CO4C 1157-1158        H1CO5M 1159-1160
        H1CO5Y 1161-1162        H1CO6 1163              H1CO7A 1164-1165
        H1CO7B 1166-1167        H1CO7C 1168-1169        H1CO8 1170
        H1CO9 1171              H1CO10 1172             H1CO11 1173
        H1CO12A 1174-1175       H1CO12B 1176-1177       H1CO12C 1178-1179
        H1CO13 1180             H1CO14M 1181-1182       H1CO14Y 1183-1184
        H1CO15 1185             H1CO16A 1186            H1CO16B 1187
        H1CO16C 1188            H1CO16D 1189            H1CO16E 1190
        H1CO16F 1191            H1CO16G 1192            H1CO16H 1193
        H1CO16I 1194            H1CO16J 1195            H1CO17A 1196
        H1CO17B 1197            H1CO17C 1198            H1CO17D 1199
        H1CO17E 1200            H1CO17F 1201            H1CO17G 1202
        H1CO17H 1203            H1CO17I 1204            H1CO17J 1205
        H1RI1M_1 1206-1207      H1RI1Y_1 1208-1209      H1RI2_1 1210-1211
        H1RI3_1 1212-1213       H1RI4_1 1214-1215       H1RI5A_1 1216-1217
        H1RI6_1 1218            H1RI7_1 1219            H1RI8A_1 1220
        H1RI8B_1 1221           H1RI8C_1 1222           H1RI8D_1 1223
        H1RI8E_1 1224           H1RI8F_1 1225           H1RI8G_1 1226
        H1RI8H_1 1227           H1RI9_1 1228-1229       H1RI10_1 1230
        H1RI11M1 1231-1232      H1RI11Y1 1233-1234      H1RI12_1 1235-1236
        H1RI13_1 1237           H1RI14_1 1238           H1RI15_1 1239-1240
        H1RI16_1 1241           H1RI17A1 1242           H1RI17B1 1243
        H1RI17C1 1244           H1RI17D1 1245           H1RI17E1 1246
        H1RI17F1 1247           H1RI18A1 1248           H1RI18B1 1249
        H1RI18C1 1250           H1RI18D1 1251           H1RI18E1 1252
        H1RI19A1 1253           H1RI19B1 1254           H1RI19C1 1255
        H1RI19D1 1256           H1RI19E1 1257           H1RI19F1 1258
        H1RI19G1 1259           H1RI20_1 1260           H1RI21A1 1261
        H1RI21B1 1262           H1RI21C1 1263           H1RI21D1 1264
        H1RI21E1 1265           H1RI21F1 1266           H1RI21G1 1267
        H1RI21H1 1268           H1RI21I1 1269           H1RI21J1 1270
        H1RI21K1 1271           H1RI21L1 1272           H1RI21M1 1273
        H1RI21N1 1274           H1RI21O1 1275           H1RI21P1 1276
        H1RI21Q1 1277           H1RI21R1 1278           H1RI22A1 1279-1280
        H1RI22B1 1281-1282      H1RI22C1 1283-1284      H1RI22D1 1285-1286
        H1RI22E1 1287-1288      H1RI22F1 1289-1290      H1RI22G1 1291-1292
        H1RI22H1 1293-1294      H1RI22I1 1295-1296      H1RI22J1 1297-1298
        H1RI22K1 1299-1300      H1RI22L1 1301-1302      H1RI22M1 1303-1304
        H1RI22N1 1305-1306      H1RI22O1 1307-1308      H1RI22P1 1309-1310
        H1RI22Q1 1311-1312      H1RI22R1 1313-1314      H1RI24A1 1315
        H1RI25M1 1316-1317      H1RI25Y1 1318-1319      H1RI26M1 1320-1321
        H1RI26Y1 1322-1323      H1RI27_1 1324           H1RI28_1 1325
        H1RI29A1 1326-1327      H1RI29B1 1328-1329      H1RI29C1 1330-1331
        H1RI30_1 1332           H1RI31_1 1333           H1RI32_1 1334
        H1RI33A1 1335-1336      H1RI33B1 1337-1338      H1RI33C1 1339-1340
        H1RI34_1 1341           H1RI35_1 1342           H1RI36_1 1343
        H1RI37_1 1344           H1RI38A1 1345-1346      H1RI38B1 1347-1348
        H1RI38C1 1349-1350      H1RI39_1 1351           H1RI40_1 1352
        H1RI41_1 1353-1356      H1RI1M_2 1357-1358      H1RI1Y_2 1359-1360
        H1RI2_2 1361-1362       H1RI3_2 1363-1364       H1RI4_2 1365-1366
        H1RI5A_2 1367-1368      H1RI6_2 1369            H1RI7_2 1370
        H1RI8A_2 1371           H1RI8B_2 1372           H1RI8C_2 1373
        H1RI8D_2 1374           H1RI8E_2 1375           H1RI8F_2 1376
        H1RI8G_2 1377           H1RI8H_2 1378           H1RI9_2 1379-1380
        H1RI10_2 1381           H1RI11M2 1382-1383      H1RI11Y2 1384-1385
        H1RI12_2 1386-1387      H1RI13_2 1388           H1RI14_2 1389
        H1RI15_2 1390-1391      H1RI16_2 1392           H1RI17A2 1393
        H1RI17B2 1394           H1RI17C2 1395           H1RI17D2 1396
        H1RI17E2 1397           H1RI17F2 1398           H1RI18A2 1399
        H1RI18B2 1400           H1RI18C2 1401           H1RI18D2 1402
        H1RI18E2 1403           H1RI19A2 1404           H1RI19B2 1405
        H1RI19C2 1406           H1RI19D2 1407           H1RI19E2 1408
        H1RI19F2 1409           H1RI19G2 1410           H1RI20_2 1411
        H1RI21A2 1412           H1RI21B2 1413           H1RI21C2 1414
        H1RI21D2 1415           H1RI21E2 1416           H1RI21F2 1417
        H1RI21G2 1418           H1RI21H2 1419           H1RI21I2 1420
        H1RI21J2 1421           H1RI21K2 1422           H1RI21L2 1423
        H1RI21M2 1424           H1RI21N2 1425           H1RI21O2 1426
        H1RI21P2 1427           H1RI21Q2 1428           H1RI21R2 1429
        H1RI22A2 1430-1431      H1RI22B2 1432-1433      H1RI22C2 1434-1435
        H1RI22D2 1436-1437      H1RI22E2 1438-1439      H1RI22F2 1440-1441
        H1RI22G2 1442-1443      H1RI22H2 1444-1445      H1RI22I2 1446-1447
        H1RI22J2 1448-1449      H1RI22K2 1450-1451      H1RI22L2 1452-1453
        H1RI22M2 1454-1455      H1RI22N2 1456-1457      H1RI22O2 1458-1459
        H1RI22P2 1460-1461      H1RI22Q2 1462-1463      H1RI22R2 1464-1465
        H1RI24A2 1466           H1RI25M2 1467-1468      H1RI25Y2 1469-1470
        H1RI26M2 1471-1472      H1RI26Y2 1473-1474      H1RI27_2 1475
        H1RI28_2 1476           H1RI29A2 1477-1478      H1RI29B2 1479-1480
        H1RI29C2 1481-1482      H1RI30_2 1483           H1RI31_2 1484
        H1RI32_2 1485           H1RI33A2 1486-1487      H1RI33B2 1488-1489
        H1RI33C2 1490-1491      H1RI34_2 1492           H1RI35_2 1493
        H1RI36_2 1494           H1RI37_2 1495           H1RI38A2 1496-1497
        H1RI38B2 1498-1499      H1RI38C2 1500-1501      H1RI39_2 1502
        H1RI40_2 1503           H1RI41_2 1504-1507      H1RI1M_3 1508-1509
        H1RI1Y_3 1510-1511      H1RI2_3 1512-1513       H1RI3_3 1514-1515
        H1RI4_3 1516-1517       H1RI5A_3 1518-1519      H1RI6_3 1520
        H1RI7_3 1521            H1RI8A_3 1522           H1RI8B_3 1523
        H1RI8C_3 1524           H1RI8D_3 1525           H1RI8E_3 1526
        H1RI8F_3 1527           H1RI8G_3 1528           H1RI8H_3 1529
        H1RI9_3 1530-1531       H1RI10_3 1532           H1RI11M3 1533-1534
        H1RI11Y3 1535-1536      H1RI12_3 1537-1538      H1RI13_3 1539
        H1RI14_3 1540           H1RI15_3 1541-1542      H1RI16_3 1543
        H1RI17A3 1544           H1RI17B3 1545           H1RI17C3 1546
        H1RI17D3 1547           H1RI17E3 1548           H1RI17F3 1549
        H1RI18A3 1550           H1RI18B3 1551           H1RI18C3 1552
        H1RI18D3 1553           H1RI18E3 1554           H1RI19A3 1555
        H1RI19B3 1556           H1RI19C3 1557           H1RI19D3 1558
        H1RI19E3 1559           H1RI19F3 1560           H1RI19G3 1561
        H1RI20_3 1562           H1RI21A3 1563           H1RI21B3 1564
        H1RI21C3 1565           H1RI21D3 1566           H1RI21E3 1567
        H1RI21F3 1568           H1RI21G3 1569           H1RI21H3 1570
        H1RI21I3 1571           H1RI21J3 1572           H1RI21K3 1573
        H1RI21L3 1574           H1RI21M3 1575           H1RI21N3 1576
        H1RI21O3 1577           H1RI21P3 1578           H1RI21Q3 1579
        H1RI21R3 1580           H1RI22A3 1581-1582      H1RI22B3 1583-1584
        H1RI22C3 1585-1586      H1RI22D3 1587-1588      H1RI22E3 1589-1590
        H1RI22F3 1591-1592      H1RI22G3 1593-1594      H1RI22H3 1595-1596
        H1RI22I3 1597-1598      H1RI22J3 1599-1600      H1RI22K3 1601-1602
        H1RI22L3 1603-1604      H1RI22M3 1605-1606      H1RI22N3 1607-1608
        H1RI22O3 1609-1610      H1RI22P3 1611-1612      H1RI22Q3 1613-1614
        H1RI22R3 1615-1616      H1RI24A3 1617           H1RI25M3 1618-1619
        H1RI25Y3 1620-1621      H1RI26M3 1622-1623      H1RI26Y3 1624-1625
        H1RI27_3 1626           H1RI28_3 1627           H1RI29A3 1628-1629
        H1RI29B3 1630-1631      H1RI29C3 1632-1633      H1RI30_3 1634
        H1RI31_3 1635           H1RI32_3 1636           H1RI33A3 1637-1638
        H1RI33B3 1639-1640      H1RI33C3 1641-1642      H1RI34_3 1643
        H1RI35_3 1644           H1RI36_3 1645           H1RI37_3 1646
        H1RI38A3 1647-1648      H1RI38B3 1649-1650      H1RI38C3 1651-1652
        H1RI39_3 1653           H1RI40_3 1654           H1RI41_3 1655-1658
        RICARD1 1659            RICARD2 1660            RICARD3 1661
        H1NR1 1662              H1NR2 1663              H1NR3 1664
        H1NR4 1665-1667         H1NR5 1668              H1NR6 1669-1671
        H1NR7 1672-1674         H1NR8 1675-1677         H1NR10_1 1678
        H1NR11_1 1679           H1NR12_1 1680           NRRXFLG1 1681
        H1RX1M_1 1682-1683      H1RX1Y_1 1684-1685      H1RX2_1 1686-1687
        H1RX3_1 1688-1689       H1RX4_1 1690-1691       H1RX5A_1 1692-1693
        H1RX6_1 1694            H1RX7_1 1695            H1RX8A_1 1696
        H1RX8B_1 1697           H1RX8C_1 1698           H1RX8D_1 1699
        H1RX8E_1 1700           H1RX8F_1 1701           H1RX8G_1 1702
        H1RX8H_1 1703           H1RX9_1 1704-1705       H1RX10_1 1706
        H1RX11M1 1707-1708      H1RX11Y1 1709-1710      H1RX12_1 1711-1712
        H1RX13_1 1713           H1RX14_1 1714           H1RX15_1 1715-1716
        H1RX16_1 1717           H1RX17A1 1718           H1RX17B1 1719
        H1RX17C1 1720           H1RX17D1 1721           H1RX17E1 1722
        H1RX17F1 1723           H1RX18A1 1724           H1RX18B1 1725
        H1RX18C1 1726           H1RX18D1 1727           H1RX18E1 1728
        H1RX19A1 1729           H1RX19B1 1730           H1RX19C1 1731
        H1RX19D1 1732           H1RX19E1 1733           H1RX19F1 1734
        H1RX19G1 1735           H1RX20_1 1736           H1RX21A1 1737
        H1RX21B1 1738           H1RX21C1 1739           H1RX21D1 1740
        H1RX21E1 1741           H1RX21F1 1742           H1RX21G1 1743
        H1RX21H1 1744           H1RX21I1 1745           H1RX21J1 1746
        H1RX21K1 1747           H1RX21L1 1748           H1RX21M1 1749
        H1RX21N1 1750           H1RX21O1 1751           H1RX21P1 1752
        H1RX21Q1 1753           H1RX21R1 1754           H1RX22A1 1755-1756
        H1RX22B1 1757-1758      H1RX22C1 1759-1760      H1RX22D1 1761-1762
        H1RX22E1 1763-1764      H1RX22F1 1765-1766      H1RX22G1 1767-1768
        H1RX22H1 1769-1770      H1RX22I1 1771-1772      H1RX22J1 1773-1774
        H1RX22K1 1775-1776      H1RX22L1 1777-1778      H1RX22M1 1779-1780
        H1RX22N1 1781-1782      H1RX22O1 1783-1784      H1RX22P1 1785-1786
        H1RX22Q1 1787-1788      H1RX22R1 1789-1790      H1RX24A1 1791
        H1RX25M1 1792-1793      H1RX25Y1 1794-1795      H1RX26M1 1796-1797
        H1RX26Y1 1798-1799      H1RX27_1 1800           H1RX28_1 1801
        H1RX29A1 1802-1803      H1RX29B1 1804-1805      H1RX29C1 1806-1807
        H1RX30_1 1808           H1RX31_1 1809           H1RX32_1 1810
        H1RX33A1 1811-1812      H1RX33B1 1813-1814      H1RX33C1 1815-1816
        H1RX34_1 1817           H1RX35_1 1818           H1RX36_1 1819
        H1RX37_1 1820           H1RX38A1 1821-1822      H1RX38B1 1823-1824
        H1RX38C1 1825-1826      H1RX39_1 1827           H1RX40_1 1828
        H1RX41_1 1829-1832      H1NR13_1 1833-1834      H1NR14_1 1835
        H1NR15_1 1836           H1NR16_1 1837           H1NR17A1 1838
        H1NR17B1 1839           H1NR17C1 1840           H1NR17D1 1841
        H1NR17E1 1842           H1NR17F1 1843           H1NR18A1 1844
        H1NR18B1 1845           H1NR18C1 1846           H1NR18D1 1847
        H1NR18E1 1848           H1NR19A1 1849           H1NR19B1 1850
        H1NR19C1 1851           H1NR19D1 1852           H1NR19E1 1853
        H1NR19F1 1854           H1NR19G1 1855           H1NR20A1 1856
        H1NR20B1 1857           H1NR20C1 1858           H1NR20D1 1859
        H1NR20E1 1860           H1NR20F1 1861           H1NR20G1 1862
        H1NR20H1 1863           H1NR21_1 1864           H1NR22_1 1865
        H1NR23M1 1866-1867      H1NR23Y1 1868-1869      H1NR24M1 1870-1871
        H1NR24Y1 1872-1873      H1NR25_1 1874           H1NR26_1 1875
        H1NR27A1 1876-1877      H1NR27B1 1878-1879      H1NR27C1 1880-1881
        H1NR28_1 1882           H1NR29_1 1883           H1NR30_1 1884
        H1NR31A1 1885-1886      H1NR31B1 1887-1888      H1NR31C1 1889-1890
        H1NR32_1 1891           H1NR33_1 1892           H1NR34_1 1893
        H1NR35_1 1894           H1NR36A1 1895-1896      H1NR36B1 1897-1898
        H1NR36C1 1899-1900      H1NR37_1 1901           H1NR38_1 1902
        H1NR39_1 1903-1905      H1NR40_1 1906           H1NR41_1 1907
        H1NR42_1 1908           H1NR43_1 1909-1910      H1NR10_2 1911
        H1NR11_2 1912           H1NR12_2 1913           NRRXFLG2 1914
        H1RX1M_2 1915-1916      H1RX1Y_2 1917-1918      H1RX2_2 1919-1920
        H1RX3_2 1921-1922       H1RX4_2 1923-1924       H1RX5A_2 1925-1926
        H1RX6_2 1927            H1RX7_2 1928            H1RX8A_2 1929
        H1RX8B_2 1930           H1RX8C_2 1931           H1RX8D_2 1932
        H1RX8E_2 1933           H1RX8F_2 1934           H1RX8G_2 1935
        H1RX8H_2 1936           H1RX9_2 1937-1938       H1RX10_2 1939
        H1RX11M2 1940-1941      H1RX11Y2 1942-1943      H1RX12_2 1944-1945
        H1RX13_2 1946           H1RX14_2 1947           H1RX15_2 1948-1949
        H1RX16_2 1950           H1RX17A2 1951           H1RX17B2 1952
        H1RX17C2 1953           H1RX17D2 1954           H1RX17E2 1955
        H1RX17F2 1956           H1RX18A2 1957           H1RX18B2 1958
        H1RX18C2 1959           H1RX18D2 1960           H1RX18E2 1961
        H1RX19A2 1962           H1RX19B2 1963           H1RX19C2 1964
        H1RX19D2 1965           H1RX19E2 1966           H1RX19F2 1967
        H1RX19G2 1968           H1RX20_2 1969           H1RX21A2 1970
        H1RX21B2 1971           H1RX21C2 1972           H1RX21D2 1973
        H1RX21E2 1974           H1RX21F2 1975           H1RX21G2 1976
        H1RX21H2 1977           H1RX21I2 1978           H1RX21J2 1979
        H1RX21K2 1980           H1RX21L2 1981           H1RX21M2 1982
        H1RX21N2 1983           H1RX21O2 1984           H1RX21P2 1985
        H1RX21Q2 1986           H1RX21R2 1987           H1RX22A2 1988-1989
        H1RX22B2 1990-1991      H1RX22C2 1992-1993      H1RX22D2 1994-1995
        H1RX22E2 1996-1997      H1RX22F2 1998-1999      H1RX22G2 2000-2001
        H1RX22H2 2002-2003      H1RX22I2 2004-2005      H1RX22J2 2006-2007
        H1RX22K2 2008-2009      H1RX22L2 2010-2011      H1RX22M2 2012-2013
        H1RX22N2 2014-2015      H1RX22O2 2016-2017      H1RX22P2 2018-2019
        H1RX22Q2 2020-2021      H1RX22R2 2022-2023      H1RX24A2 2024
        H1RX25M2 2025-2026      H1RX25Y2 2027-2028      H1RX26M2 2029-2030
        H1RX26Y2 2031-2032      H1RX27_2 2033           H1RX28_2 2034
        H1RX29A2 2035-2036      H1RX29B2 2037-2038      H1RX29C2 2039-2040
        H1RX30_2 2041           H1RX31_2 2042           H1RX32_2 2043
        H1RX33A2 2044-2045      H1RX33B2 2046-2047      H1RX33C2 2048-2049
        H1RX34_2 2050           H1RX35_2 2051           H1RX36_2 2052
        H1RX37_2 2053           H1RX38A2 2054-2055      H1RX38B2 2056-2057
        H1RX38C2 2058-2059      H1RX39_2 2060           H1RX40_2 2061
        H1RX41_2 2062-2065      H1NR13_2 2066-2067      H1NR14_2 2068
        H1NR15_2 2069           H1NR16_2 2070           H1NR17A2 2071
        H1NR17B2 2072           H1NR17C2 2073           H1NR17D2 2074
        H1NR17E2 2075           H1NR17F2 2076           H1NR18A2 2077
        H1NR18B2 2078           H1NR18C2 2079           H1NR18D2 2080
        H1NR18E2 2081           H1NR19A2 2082           H1NR19B2 2083
        H1NR19C2 2084           H1NR19D2 2085           H1NR19E2 2086
        H1NR19F2 2087           H1NR19G2 2088           H1NR20A2 2089
        H1NR20B2 2090           H1NR20C2 2091           H1NR20D2 2092
        H1NR20E2 2093           H1NR20F2 2094           H1NR20G2 2095
        H1NR20H2 2096           H1NR21_2 2097           H1NR22_2 2098
        H1NR23M2 2099-2100      H1NR23Y2 2101-2102      H1NR24M2 2103-2104
        H1NR24Y2 2105-2106      H1NR25_2 2107           H1NR26_2 2108
        H1NR27A2 2109-2110      H1NR27B2 2111-2112      H1NR27C2 2113-2114
        H1NR28_2 2115           H1NR29_2 2116           H1NR30_2 2117
        H1NR31A2 2118-2119      H1NR31B2 2120-2121      H1NR31C2 2122-2123
        H1NR32_2 2124           H1NR33_2 2125           H1NR34_2 2126
        H1NR35_2 2127           H1NR36A2 2128-2129      H1NR36B2 2130-2131
        H1NR36C2 2132-2133      H1NR37_2 2134           H1NR38_2 2135
        H1NR39_2 2136-2138      H1NR40_2 2139           H1NR41_2 2140
        H1NR42_2 2141           H1NR43_2 2142-2143      H1NR10_3 2144
        H1NR11_3 2145           H1NR12_3 2146           NRRXFLG3 2147
        H1RX1M_3 2148-2149      H1RX1Y_3 2150-2151      H1RX2_3 2152-2153
        H1RX3_3 2154-2155       H1RX4_3 2156-2157       H1RX5A_3 2158-2159
        H1RX6_3 2160            H1RX7_3 2161            H1RX8A_3 2162
        H1RX8B_3 2163           H1RX8C_3 2164           H1RX8D_3 2165
        H1RX8E_3 2166           H1RX8F_3 2167           H1RX8G_3 2168
        H1RX8H_3 2169           H1RX9_3 2170-2171       H1RX10_3 2172
        H1RX11M3 2173-2174      H1RX11Y3 2175-2176      H1RX12_3 2177-2178
        H1RX13_3 2179           H1RX14_3 2180           H1RX15_3 2181-2182
        H1RX16_3 2183           H1RX17A3 2184           H1RX17B3 2185
        H1RX17C3 2186           H1RX17D3 2187           H1RX17E3 2188
        H1RX17F3 2189           H1RX18A3 2190           H1RX18B3 2191
        H1RX18C3 2192           H1RX18D3 2193           H1RX18E3 2194
        H1RX19A3 2195           H1RX19B3 2196           H1RX19C3 2197
        H1RX19D3 2198           H1RX19E3 2199           H1RX19F3 2200
        H1RX19G3 2201           H1RX20_3 2202           H1RX21A3 2203
        H1RX21B3 2204           H1RX21C3 2205           H1RX21D3 2206
        H1RX21E3 2207           H1RX21F3 2208           H1RX21G3 2209
        H1RX21H3 2210           H1RX21I3 2211           H1RX21J3 2212
        H1RX21K3 2213           H1RX21L3 2214           H1RX21M3 2215
        H1RX21N3 2216           H1RX21O3 2217           H1RX21P3 2218
        H1RX21Q3 2219           H1RX21R3 2220           H1RX22A3 2221-2222
        H1RX22B3 2223-2224      H1RX22C3 2225-2226      H1RX22D3 2227-2228
        H1RX22E3 2229-2230      H1RX22F3 2231-2232      H1RX22G3 2233-2234
        H1RX22H3 2235-2236      H1RX22I3 2237-2238      H1RX22J3 2239-2240
        H1RX22K3 2241-2242      H1RX22L3 2243-2244      H1RX22M3 2245-2246
        H1RX22N3 2247-2248      H1RX22O3 2249-2250      H1RX22P3 2251-2252
        H1RX22Q3 2253-2254      H1RX22R3 2255-2256      H1RX24A3 2257
        H1RX25M3 2258-2259      H1RX25Y3 2260-2261      H1RX26M3 2262-2263
        H1RX26Y3 2264-2265      H1RX27_3 2266           H1RX28_3 2267
        H1RX29A3 2268-2269      H1RX29B3 2270-2271      H1RX29C3 2272-2273
        H1RX30_3 2274           H1RX31_3 2275           H1RX32_3 2276
        H1RX33A3 2277-2278      H1RX33B3 2279-2280      H1RX33C3 2281-2282
        H1RX34_3 2283           H1RX35_3 2284           H1RX36_3 2285
        H1RX37_3 2286           H1RX38A3 2287-2288      H1RX38B3 2289-2290
        H1RX38C3 2291-2292      H1RX39_3 2293           H1RX40_3 2294
        H1RX41_3 2295-2298      H1NR13_3 2299-2300      H1NR14_3 2301
        H1NR15_3 2302           H1NR16_3 2303           H1NR17A3 2304
        H1NR17B3 2305           H1NR17C3 2306           H1NR17D3 2307
        H1NR17E3 2308           H1NR17F3 2309           H1NR18A3 2310
        H1NR18B3 2311           H1NR18C3 2312           H1NR18D3 2313
        H1NR18E3 2314           H1NR19A3 2315           H1NR19B3 2316
        H1NR19C3 2317           H1NR19D3 2318           H1NR19E3 2319
        H1NR19F3 2320           H1NR19G3 2321           H1NR20A3 2322
        H1NR20B3 2323           H1NR20C3 2324           H1NR20D3 2325
        H1NR20E3 2326           H1NR20F3 2327           H1NR20G3 2328
        H1NR20H3 2329           H1NR21_3 2330           H1NR22_3 2331
        H1NR23M3 2332-2333      H1NR23Y3 2334-2335      H1NR24M3 2336-2337
        H1NR24Y3 2338-2339      H1NR25_3 2340           H1NR26_3 2341
        H1NR27A3 2342-2343      H1NR27B3 2344-2345      H1NR27C3 2346-2347
        H1NR28_3 2348           H1NR29_3 2349           H1NR30_3 2350
        H1NR31A3 2351-2352      H1NR31B3 2353-2354      H1NR31C3 2355-2356
        H1NR32_3 2357           H1NR33_3 2358           H1NR34_3 2359
        H1NR35_3 2360           H1NR36A3 2361-2362      H1NR36B3 2363-2364
        H1NR36C3 2365-2366      H1NR37_3 2367           H1NR38_3 2368
        H1NR39_3 2369-2371      H1NR40_3 2372           H1NR41_3 2373
        H1NR42_3 2374           H1NR43_3 2375-2376      H1NR44 2377
        H1NR45 2378-2379        H1NR46 2380-2381        H1NR47 2382
        H1NR48 2383             H1NR49 2384             H1NR50 2385-2386
        H1NR51 2387-2388        H1NR52 2389             H1NR53 2390
        RXCARD1 2391            RXCARD2 2392            RXCARD3 2393
        H1BC1 2394              H1BC2 2395              H1BC3 2396
        H1BC4 2397              H1BC5 2398              H1BC6 2399
        H1BC7 2400              H1BC8 2401              H1TO1 2402
        H1TO2 2403-2404         H1TO3 2405              H1TO4 2406-2407
        H1TO5 2408-2409         H1TO6M 2410-2411        H1TO6Y 2412-2413
        H1TO7 2414-2415         H1TO8 2416              H1TO9 2417
        H1TO10 2418-2419        H1TO11 2420-2421        H1TO12 2422
        H1TO13 2423             H1TO14 2424-2425        H1TO15 2426-2427
        H1TO16 2428-2429        H1TO17 2430-2431        H1TO18 2432-2433
        H1TO19 2434-2435        H1TO20 2436             H1TO21 2437
        H1TO22 2438             H1TO23 2439             H1TO24 2440
        H1TO25 2441             H1TO26 2442             H1TO27 2443
        H1TO28 2444             H1TO29 2445             H1TO30 2446-2447
        H1TO31 2448-2450        H1TO32 2451-2453        H1TO33 2454
        H1TO34 2455-2456        H1TO35 2457-2459        H1TO36 2460-2462
        H1TO37 2463-2464        H1TO38 2465-2467        H1TO39 2468-2470
        H1TO40 2471-2472        H1TO41 2473-2475        H1TO42 2476-2478
        H1TO43 2479             H1TO44 2480             H1TO45 2481-2482
        H1TO46 2483             H1TO47 2484             H1TO48 2485
        H1TO49 2486             H1TO50 2487             H1TO51 2488
        H1TO52 2489             H1TO53 2490             H1TO54A 2491
        H1TO54B 2492            H1TO54C 2493            H1TO54D 2494
        H1DS1 2495              H1DS2 2496              H1DS3 2497
        H1DS4 2498              H1DS5 2499              H1DS6 2500
        H1DS7 2501              H1DS8 2502              H1DS9 2503
        H1DS10 2504             H1DS11 2505             H1DS12 2506
        H1DS13 2507             H1DS14 2508             H1DS15 2509
        H1JO1 2510              H1JO2 2511              H1JO3 2512
        H1JO4 2513              H1JO5 2514              H1JO6A 2515
        H1JO6B 2516             H1JO6C 2517             H1JO6D 2518
        H1JO6E 2519             H1JO7 2520              H1JO8A 2521
        H1JO8B 2522             H1JO8C 2523             H1JO8D 2524
        H1JO8E 2525             H1JO9 2526              H1JO10 2527
        H1JO11 2528             H1JO12 2529             H1JO13 2530
        H1JO14 2531             H1JO15 2532             H1JO16 2533
        H1JO17 2534             H1JO18A 2535            H1JO18B 2536
        H1JO18C 2537            H1JO18D 2538            H1JO18E 2539
        H1JO19 2540             H1JO20 2541             H1JO21 2542
        H1JO22A 2543            H1JO22B 2544            H1JO22C 2545
        H1JO22D 2546            H1JO22E 2547            H1JO23 2548
        H1JO24 2549             H1JO25 2550             H1JO26 2551
        H1FV1 2552              H1FV2 2553              H1FV3 2554
        H1FV4 2555              H1FV5 2556              H1FV6 2557
        H1FV7 2558              H1FV8 2559              H1FV9 2560
        H1FV10 2561             H1FV11 2562-2563        H1FV12 2564
        H1FV13 2565-2567        H1FV14M 2568-2569       H1FV14Y 2570-2571
        H1MP1 2572              H1MP2 2573              H1MP3 2574
        H1MP4 2575              H1FP1 2576              H1FP2 2577
        H1FP3 2578              H1FP4 2579-2580         H1FP5M 2581-2582
        H1FP5D 2583-2584        H1FP6 2585              H1FP7 2586
        H1FP8 2587-2588         H1FP9M 2589-2590        H1FP9Y 2591-2592
        H1FP10 2593             H1FP11M1 2594-2595      H1FP11Y1 2596-2597
        H1FP12_1 2598           H1FP13A1 2599-2600      H1FP13B1 2601-2602
        H1FP13C1 2603-2604      H1FP14_1 2605           H1FP15_1 2606
        H1FP17_1 2607           H1FP20M1 2608-2609      H1FP20Y1 2610-2611
        H1FP21_1 2612           H1FP22_1 2613           H1FP23A1 2614
        H1FP24A1 2615           H1FP11M2 2616-2617      H1FP11Y2 2618-2619
        H1FP12_2 2620           H1FP13A2 2621-2622      H1FP13B2 2623-2624
        H1FP13C2 2625-2626      H1FP14_2 2627           H1FP15_2 2628
        H1FP17_2 2629           H1FP20M2 2630-2631      H1FP20Y2 2632-2633
        H1FP21_2 2634           H1FP22_2 2635           H1FP23A2 2636
        H1FP24A2 2637           H1FP11M3 2638-2639      H1FP11Y3 2640-2641
        H1FP12_3 2642           H1FP13A3 2643-2644      H1FP13B3 2645-2646
        H1FP13C3 2647-2648      H1FP14_3 2649           H1FP15_3 2650
        H1FP17_3 2651           H1FP20M3 2652-2653      H1FP20Y3 2654-2655
        H1FP21_3 2656           H1FP22_3 2657           H1FP23A3 2658
        H1FP24A3 2659           H1FP11M4 2660-2661      H1FP11Y4 2662-2663
        H1FP12_4 2664           H1FP13A4 2665-2666      H1FP13B4 2667-2668
        H1FP13C4 2669-2670      H1FP14_4 2671           H1FP15_4 2672
        H1FP17_4 2673           H1FP20M4 2674-2675      H1FP20Y4 2676-2677
        H1FP21_4 2678           H1FP22_4 2679           H1FP23A4 2680
        H1FP24A4 2681           H1FP11M5 2682-2683      H1FP11Y5 2684-2685
        H1FP12_5 2686           H1FP13A5 2687-2688      H1FP13B5 2689-2690
        H1FP13C5 2691-2692      H1FP14_5 2693           H1FP15_5 2694
        H1FP17_5 2695           H1FP20M5 2696-2697      H1FP20Y5 2698-2699
        H1FP21_5 2700           H1FP22_5 2701           H1FP23A5 2702
        H1FP24A5 2703           H1SU1 2704              H1SU2 2705
        H1SU3 2706              H1SU4 2707              H1SU5 2708
        H1SU6 2709              H1SU7 2710              H1SU8 2711
        H1PA1 2712              H1PA2 2713              H1PA3 2714
        H1PA4 2715              H1PA5 2716              H1PA6 2717
        H1PA7 2718              H1PR1 2719-2720         H1PR2 2721-2722
        H1PR3 2723-2724         H1PR4 2725-2726         H1PR5 2727-2728
        H1PR6 2729-2730         H1PR7 2731-2732         H1PR8 2733-2734
        H1NB1 2735              H1NB2 2736              H1NB3 2737
        H1NB4 2738              H1NB5 2739              H1NB6 2740
        H1NB7 2741              H1RE1 2742-2743         H1RE2 2744
        H1RE3 2745              H1RE4 2746              H1RE5 2747
        H1RE6 2748              H1RE7 2749              H1EE1 2750
        H1EE2 2751              H1EE3 2752              H1EE4 2753-2757 .1
        H1EE5 2758-2760         H1EE6 2761-2763         H1EE7 2764-2768 .1
        H1EE8 2769-2770         H1EE9 2771              H1EE10 2772
        H1EE11 2773             H1EE12 2774             H1EE13 2775
        H1EE14 2776             H1EE15 2777             STUDSIBA 2778
        TWINA 2779              H1WS1A 2780             H1WS2A 2781
        H1WS3A 2782             H1WS4A 2783             H1WS5A 2784-2785
        H1WS6A 2786             H1WS7A 2787             H1WS8A 2788
        H1WS9A 2789             H1WS10A 2790            H1WS11A 2791
        H1WS12A 2792            STUDSIBB 2793           TWINB 2794
        H1WS1B 2795             H1WS2B 2796             H1WS3B 2797
        H1WS4B 2798             H1WS5B 2799-2800        H1WS6B 2801
        H1WS7B 2802             H1WS8B 2803             H1WS9B 2804
        H1WS10B 2805            H1WS11B 2806            H1WS12B 2807
        STUDSIBC 2808           TWINC 2809              H1WS1C 2810
        H1WS2C 2811             H1WS3C 2812             H1WS4C 2813
        H1WS5C 2814-2815        H1WS6C 2816             H1WS7C 2817
        H1WS8C 2818             H1WS9C 2819             H1WS10C 2820
        H1WS11C 2821            H1WS12C 2822            STUDSIBD 2823
        TWIND 2824              H1WS1D 2825             H1WS2D 2826
        H1WS3D 2827             H1WS4D 2828             H1WS5D 2829-2830
        H1WS6D 2831             H1WS7D 2832             H1WS8D 2833
        H1WS9D 2834             H1WS10D 2835            H1WS11D 2836
        H1WS12D 2837            STUDSIBE 2838           TWINE 2839
        H1WS1E 2840             H1WS2E 2841             H1WS3E 2842
        H1WS4E 2843             H1WS5E 2844-2845        H1WS6E 2846
        H1WS7E 2847             H1WS8E 2848             H1WS9E 2849
        H1WS10E 2850            H1WS11E 2851            H1WS12E 2852
        STUDSIBF 2853           TWINF 2854              H1WS1F 2855
        H1WS2F 2856             H1WS3F 2857             H1WS4F 2858
        H1WS5F 2859             H1WS6F 2860             H1WS7F 2861
        H1WS8F 2862             H1WS9F 2863             H1WS10F 2864
        H1WS11F 2865            H1WS12F 2866            STUDSIBG 2867
        TWING 2868              H1WS1G 2869             H1WS2G 2870
        H1WS3G 2871             H1WS4G 2872             H1WS5G 2873-2874
        H1WS6G 2875             H1WS7G 2876             H1WS8G 2877
        H1WS9G 2878             H1WS10G 2879            H1WS11G 2880
        H1WS12G 2881            H1WS13 2882             H1IR1 2883
        H1IR2 2884              H1IR3 2885              H1IR4 2886
        H1IR5 2887              H1IR6 2888              H1IR7A 2889
        H1IR7B 2890             H1IR7C 2891             H1IR7D 2892
        H1IR7E 2893             H1IR7F 2894             H1IR7G 2895
        H1IR7H 2896             H1IR7I 2897             H1IR7J 2898
        H1IR7K 2899             H1IR7L 2900             H1IR7M 2901
        H1IR7N 2902             H1IR7O 2903             H1IR7P 2904
        H1IR7Q 2905             H1IR7R 2906             H1IR7S 2907
        H1IR7T 2908             H1IR7U 2909             H1IR7V 2910
        H1IR7W 2911             H1IR7X 2912             H1IR7Y 2913
        H1IR7Z 2914             H1IR7AA 2915            H1IR7BB 2916
        H1IR7CC 2917            H1IR7DD 2918            H1IR8A 2919
        H1IR8B 2920             H1IR8C 2921             H1IR8D 2922
        H1IR9 2923              H1IR10 2924             H1IR11 2925
        H1IR12 2926-2927        H1IR13 2928-2929        H1IR14 2930-2931
        H1IR15 2932             H1IR16 2933-2934        H1IR17A 2935
        H1IR17B 2936            H1IR17C 2937            H1IR17D 2938
        H1IR17E 2939            H1IR17F 2940            H1IR17G 2941
        H1IR17H 2942            H1IR17I 2943            H1IR17J 2944
        H1IR18 2945             H1IR19 2946             H1IR20 2947
        H1IR21 2948             H1IR22A 2949            H1IR22B 2950
        H1IR22C 2951            H1IR22D 2952            H1IR22E 2953
        H1IR22F 2954            H1IR22G 2955            H1IR22H 2956
        H1IR22I 2957            H1IR22J 2958            H1IR22K 2959
        H1IR22L 2960            H1IR22M 2961            H1IR22N 2962
        H1IR22O 2963            H1IR22P 2964            H1IR22Q 2965
        H1IR22R 2966            H1IR22S 2967            H1IR22T 2968
        H1IR22U 2969            H1IR22V 2970            H1IR22W 2971
        H1IR22X 2972            H1IR22Y 2973            H1IR22Z 2974
        H1IR22AA 2975           H1IR22BB 2976           H1IR22CC 2977
        H1IR22DD 2978           H1IR22EE 2979           H1IR22FF 2980
        H1IR22GG 2981           H1IR22HH 2982           H1IR22II 2983
        H1IR22JJ 2984           H1IR22KK 2985           H1IR22LL 2986
        H1IR22MM 2987           H1IR23 2988             H1IR24 2989
        H1IR25 2990             H1IR26 2991             H1IR27 2992
        H1IR28 2993             S1 2994-2995            S2 2996
        S3 2997-2998            S4 2999                 S5 3000-3001
        S6A 3002                S6B 3003                S6C 3004
        S6D 3005                S6E 3006                S7 3007-3008
        S8 3009                 S9 3010                 S10 3011
        S10A 3012               S10B 3013               S10C 3014
        S10D 3015               S11 3016                S12 3017-3018
        S13 3019                S14 3020-3021           S15 3022
        S16 3023                S17 3024                S18 3025-3026
        S19 3027                S20 3028-3029           S21 3030
        S22 3031                S23 3032                S24 3033
        S25 3034                S26 3035                S27 3036-3037
        S28 3038-3039           S29A 3040               S29B 3041
        S29C 3042               S29D 3043               S29E 3044
        S30A 3045               S30B 3046               S30C 3047
        S30D 3048               S30E 3049               S31A 3050
        S31B 3051               S31C 3052               S31D 3053
        S31E 3054               S32A 3055               S32B 3056
        S32C 3057               S32D 3058               S32E 3059
        S33A 3060               S33B 3061               S33C 3062
        S33D 3063               S33E 3064               S34A 3065
        S34B 3066               S34C 3067               S34D 3068
        S34E 3069               S35A 3070               S35B 3071
        S35C 3072               S35D 3073               S35E 3074
        S36A 3075               S36B 3076               S36C 3077
        S36D 3078               S36E 3079               S37A 3080
        S37B 3081               S37C 3082               S37D 3083
        S37E 3084               S38A 3085               S38B 3086
        S38C 3087               S38D 3088               S38E 3089
        S39A 3090               S39B 3091               S39C 3092
        S39D 3093               S39E 3094               S40A 3095
        S40B 3096               S40C 3097               S40D 3098
        S40E 3099               S41A 3100               S41B 3101
        S41C 3102               S41D 3103               S41E 3104
        S42A 3105               S42B 3106               S42C 3107
        S42D 3108               S42E 3109               S43A 3110
        S43B 3111               S43C 3112               S43D 3113
        S43E 3114               S44A1 3115              S44A2 3116
        S44A3 3117              S44A4 3118              S44A5 3119
        S44A6 3120              S44A7 3121              S44A8 3122
        S44A9 3123              S44A10 3124             S44A11 3125
        S44A12 3126             S44A13 3127             S44A14 3128
        S44A15 3129             S44A16 3130             S44A17 3131
        S44A18 3132             S44A19 3133             S44A20 3134
        S44A21 3135             S44A22 3136             S44A23 3137
        S44A24 3138             S44A25 3139             S44A26 3140
        S44A27 3141             S44A28 3142             S44A29 3143
        S44A30 3144             S44A31 3145             S44A32 3146
        S44A33 3147             S44 3148                S45A 3149-3150
        S45B 3151-3152          S45C 3153-3154          S45D 3155-3156
        S45E 3157-3158          S45F 3159-3160          S46A 3161
        S46B 3162               S46C 3163               S46D 3164
        S47 3165                S48 3166                S49 3167
        S50 3168                S51 3169                S52 3170
        S53 3171                S54 3172                S55A 3173
        S55B 3174               S55C 3175               S55D 3176
        S56 3177                S57 3178                S58 3179
        S59A 3180-3181          S59B 3182               S59C 3183-3184
        S59D 3185-3186          S59E 3187-3188          S59F 3189-3190
        S59G 3191-3192          S60A 3193               S60B 3194
        S60C 3195               S60D 3196               S60E 3197
        S60F 3198               S60G 3199               S60H 3200
        S60I 3201               S60J 3202               S60K 3203
        S60L 3204               S60M 3205               S60N 3206
        S60O 3207               S61A 3208               S61B 3209
        S61C 3210               S61D 3211               S61E 3212
        S61F 3213               S62A 3214               S62B 3215
        S62C 3216               S62D 3217               S62E 3218
        S62F 3219               S62G 3220               S62H 3221
        S62I 3222               S62J 3223               S62K 3224
        S62L 3225               S62M 3226               S62N 3227
        S62O 3228               S62P 3229               S62Q 3230
        S62R 3231               S63 3232                S64 3233
        S65 3234                S66 3235                S67 3236
        S68 3237                PA1 3238                PA2 3239-3241
        PA3 3242                PA4 3243                PA5_1 3244
        PA5_2 3245              PA5_3 3246              PA5_4 3247
        PA5_5 3248              PA5_6 3249              PA5_7 3250
        PA6_1 3251              PA6_2 3252              PA6_3 3253
        PA6_4 3254              PA6_5 3255              PA7_1 3256
        PA7_2 3257              PA7_3 3258              PA7_4 3259
        PA7_5 3260              PA7_6 3261              PA7_7 3262
        PA7_8 3263              PA8B 3264               PA9 3265
        PA10 3266               PA11 3267               PA12 3268-3269
        PA13 3270               PA14 3271               PA15 3272
        PA16 3273               PA17 3274               PA18 3275
        PA19 3276               PA20 3277               PA21 3278
        PA22 3279-3280          PA23 3281               PA24 3282
        PA25 3283               PA26 3284               PA27A 3285
        PA27B 3286              PA27C 3287              PA27D 3288
        PA27E 3289              PA28A 3290              PA28B 3291
        PA28C 3292              PA28D 3293              PA28E 3294
        PA28F 3295              PA28G 3296              PA28H 3297
        PA28I 3298              PA28J 3299              PA30 3300-3301
        PA31 3302               PA32 3303               PA33 3304
        PA34 3305               PA35 3306               PA36 3307
        PA37 3308               PA38 3309               PA39 3310-3312
        PA40 3313-3314          PA41_1 3315             PA41_2 3316
        PA41_3 3317             PA41_4 3318             PA41_5 3319
        PA41_6 3320             PA41_7 3321             PA41_8 3322
        PA41_9 3323             PA41_10 3324            PA41_11 3325
        PA41_12 3326            PA41_13 3327            PA41_14 3328
        PA41_15 3329            PA41_16 3330            PA41_17 3331
        PA41_18 3332            PA41_19 3333            PA42 3334
        PA43 3335               PA44 3336               PA46_1 3337
        PA46_2 3338             PA46_3 3339             PA46_4 3340
        PA46_5 3341             PA46_6 3342             PA46_7 3343
        PA46_8 3344             PA46_9 3345             PA46_10 3346
        PA46_11 3347            PA46_12 3348            PA46_13 3349
        PA46_14 3350            PA46_15 3351            PA46_16 3352
        PA46_17 3353            PA46_18 3354            PA46_19 3355
        PA47 3356               PA48 3357               PA49 3358
        PA51_1 3359             PA51_2 3360             PA51_3 3361
        PA51_4 3362             PA51_5 3363             PA51_6 3364
        PA51_7 3365             PA51_8 3366             PA51_9 3367
        PA51_10 3368            PA51_11 3369            PA51_12 3370
        PA51_13 3371            PA51_14 3372            PA51_15 3373
        PA51_16 3374            PA51_17 3375            PA51_18 3376
        PA51_19 3377            PA52 3378               PA53 3379
        PA54 3380               PA55 3381-3384          PA56 3385
        PA57A 3386              PA57B 3387              PA57C 3388
        PA57D 3389              PA57E 3390              PA57F 3391
        PA58 3392               PA59 3393               PA60 3394
        PA61 3395-3396          PA62 3397-3398          PA63 3399
        PA64 3400               PB2 3401                PB3 3402
        PB4_1 3403              PB4_2 3404              PB4_3 3405
        PB4_4 3406              PB4_5 3407              PB4_6 3408
        PB4_7 3409              PB5_1 3410              PB5_2 3411
        PB5_3 3412              PB5_4 3413              PB5_5 3414
        PB6_1 3415              PB6_2 3416              PB6_3 3417
        PB6_4 3418              PB6_5 3419              PB6_6 3420
        PB6_7 3421              PB6_8 3422              PB7 3423-3424
        PB8 3425-3426           PB9 3427                PB10 3428
        PB11 3429               PB12 3430               PB13 3431
        PB14 3432               PB15 3433               PB16 3434
        PB17 3435               PB18 3436-3437          PB19 3438
        PB20 3439               PB21 3440               PB22 3441-3442
        PC1 3443-3444           PC2 3445                PC3 3446
        PC4 3447-3449           PC5 3450                PC6B 3451
        PC7 3452                PC8 3453-3455           PC9 3456
        PC10 3457               PC11 3458               PC12 3459
        PC13 3460               PC14 3461               PC15 3462
        PC16 3463               PC17 3464-3465          PC18 3466
        PC19A_P 3467-3468       PC19B_O 3469-3470       PC20 3471-3472
        PC21_1 3473             PC21_2 3474             PC21_3 3475
        PC21_4 3476             PC21_5 3477             PC21_6 3478
        PC21_7 3479             PC22 3480               PC23 3481-3482
        PC24 3483               PC25 3484               PC26 3485
        PC27 3486               PC28 3487               PC29A 3488
        PC29B 3489              PC29C 3490              PC30 3491
        PC31 3492               PC32 3493               PC33 3494
        PC34A 3495              PC34B 3496              PC34C 3497
        PC34D 3498              PC34E 3499              PC35 3500
        PC36_0 3501             PC36_1 3502             PC36_2 3503
        PC36_3 3504             PC36_4 3505             PC36_5 3506
        PC36_6 3507             PC36_7 3508             PC36_8 3509
        PC36_9 3510             PC36_10 3511            PC36_11 3512
        PC36_12 3513            PC36_13 3514            PC36_14 3515
        PC36_15 3516            PC36_16 3517            PC36_17 3518
        PC36_18 3519            PC36_19 3520            PC37 3521
        PC38 3522               PC39 3523               PC40 3524
        PC41 3525               PC42A 3526              PC42B 3527
        PC42C 3528              PC42D 3529              PC42E 3530
        PC43AA 3531             PC43AB 3532             PC43AC 3533
        PC43AD 3534             PC43BA 3535             PC43BB 3536
        PC44A 3537              PC44B 3538              PC44C 3539
        PC44D 3540              PC45 3541               PC46 3542
        PC47 3543               PC48 3544-3545          PC49A_1 3546
        PC49A_2 3547            PC49A_3 3548            PC49B_1 3549
        PC49B_2 3550            PC49B_3 3551            PC49C_1 3552
        PC49C_2 3553            PC49C_3 3554            PC49D_1 3555
        PC49D_2 3556            PC49D_3 3557            PC49E_1 3558
        PC49E_2 3559            PC49E_3 3560            PC49F_1 3561
        PC49F_2 3562            PC49F_3 3563            PC50 3564
        PC51 3565               PC53 3566               PC54 3567
        PC55 3568               PC58 3569               PC59 3570-3571
        PC60_1 3572             PC60_2 3573             PC60_3 3574
        PC60_4 3575             PC60_5 3576             PC60_6 3577
        PC60_7 3578             PC60_8 3579             PC60_9 3580
        PC60_10 3581            PC60_11 3582            PC60_12 3583
        PC60_13 3584            PC60_14 3585            PC60_15 3586
        PC60_16 3587            PC60_17 3588            PC60_18 3589
        PC61A 3590              PC61B 3591              PC61C 3592
        PC61D 3593              PC62_1 3594             PC62_2 3595
        PC62_4 3596             PC62_5 3597             PC62_8 3598
        PC62_10 3599            PC62_11 3600            PC63 3601
        PC64 3602               PC65_M 3603-3604        PC65_Y 3605-3606
        PC66_M 3607-3608        PC66_Y 3609-3610        PC68_M 3611-3612
        PC68_Y 3613-3614        PC69 3615               PD2 3616
        PD3 3617                PD4A 3618               PD4B 3619
        PD4C 3620               PD4D 3621               PD4E 3622
        PD4F 3623               PD5 3624                PD5A 3625
        AH_PVT 3626-3628        AH_RAW 3629-3630        ;


* SAS LABEL STATEMENT;

LABEL 
   AID     = 'RESPONDENT IDENTIFIER' 
   IMONTH  = 'MONTH OF INTERVIEW-W1' 
   IDAY    = 'DAY OF INTERVIEW-W1' 
   IYEAR   = 'YEAR OF INTERVIEW-W1' 
   SCH_YR  = '94-95 SCHOOL YEAR IN SESSION-W1' 
   BIO_SEX = 'BIOLOGICAL SEX-W1' 
   VERSION = 'QUESTIONNAIRE VERSION-W1' 
   SMP01   = 'CORE SAMPLE-W1' 
   SMP03   = 'HIGH EDUCATION BLACK SAMPLE-W1' 
   H1GI1M  = 'S1Q1 BIRTH MONTH-W1' 
   H1GI1Y  = 'S1Q1 BIRTH YEAR-W1' 
   H1GI2   = 'S1Q2 LIVE IN SAME PLACE AS IN 1990-W1' 
   H1GI3   = 'S1Q3 AGE MOVED TO CURRENT RESIDENCE-W1' 
   H1GI4   = 'S1Q4 ARE YOU OF HISPANIC ORIGIN-W1' 
   H1GI5A  = 'S1Q5A HISPANIC-MEXICAN-W1' 
   H1GI5B  = 'S1Q5B HISPANIC-CHICANO-W1' 
   H1GI5C  = 'S1Q5C HISPANIC-CUBAN-W1' 
   H1GI5D  = 'S1Q5D HISPANIC-PUERTO RICAN-W1' 
   H1GI5E  = 'S1Q5E HISPANIC-CENTRAL/SO AMER-W1' 
   H1GI5F  = 'S1Q5F HISPANIC-OTHER-W1' 
   H1GI6A  = 'S1Q6A RACE-WHITE-W1' 
   H1GI6B  = 'S1Q6B RACE-AFRICAN AMERICAN-W1' 
   H1GI6C  = 'S1Q6C RACE-AMERICAN INDIAN-W1' 
   H1GI6D  = 'S1Q6D RACE-ASIAN-W1' 
   H1GI6E  = 'S1Q6E RACE-OTHER-W1' 
   H1GI7A  = 'S1Q7A ASIAN-CHINESE-W1' 
   H1GI7B  = 'S1Q7B ASIAN-FILIPINO-W1' 
   H1GI7C  = 'S1Q7C ASIAN-JAPANESE-W1' 
   H1GI7D  = 'S1Q7D ASIAN-ASIAN INDIAN-W1' 
   H1GI7E  = 'S1Q7E ASIAN-KOREAN-W1' 
   H1GI7F  = 'S1Q7F ASIAN-VIETNAMESE-W1' 
   H1GI7G  = 'S1Q7G ASIAN-OTHER-W1' 
   H1GI8   = 'S1Q8 RACE-SINGLE CATEGORY-W1' 
   H1GI9   = 'S1Q9 RACE-INTERVIEWER OBSERVATION-W1' 
   H1GI10  = 'S1Q10 LANGUAGE SPOKEN AT HOME-W1' 
   H1GI11  = 'S1Q11 BORN IN THE UNITED STATES-W1' 
   H1GI12  = 'S1Q12 COUNTRY OF BIRTH-W1' 
   H1GI13M = 'S1Q13 MONTH MOVED TO THE US-W1' 
   H1GI13Y = 'S1Q13 YEAR MOVED TO THE US-W1' 
   H1GI14  = 'S1Q14 BORN A US CITIZEN-W1' 
   H1GI15  = 'S1Q15 HAVE YOU EVER BEEN MARRIED-W1' 
   H1GI16M = 'S1Q16 MONTH MARRIED THE FIRST TIME-W1' 
   H1GI16Y = 'S1Q16 YEAR MARRIED THE FIRST TIME-W1' 
   H1GI18  = 'S1Q18 CURRENTLY IN SCHOOL-W1' 
   H1GI19  = 'S1Q19 ATTENDING [SAMPLE SCHOOL]-W1' 
   H1GI20  = 'S1Q20 GRADE-W1' 
   H1GI21  = 'S1Q21 WHY NOT IN SCHOOL-W1' 
   H1DA1   = 'S2Q1 WORK AROUND THE HOUSE-W1' 
   H1DA2   = 'S2Q2 HOBBIES-W1' 
   H1DA3   = 'S2Q3 WATCH TV/VIDEOS-W1' 
   H1DA4   = 'S2Q4 ROLLER-BLADING/CYCLING-W1' 
   H1DA5   = 'S2Q5 PLAY AN ACTIVE SPORT-W1' 
   H1DA6   = 'S2Q6 EXERCISE-W1' 
   H1DA7   = 'S2Q7 HANG OUT WITH FRIENDS-W1' 
   H1DA8   = 'S2Q8 HRS/WK WATCH TV-W1' 
   H1DA9   = 'S2Q9 HRS/WK WATCH VIDEOS-W1' 
   H1DA10  = 'S2Q10 HRS/WK PLAY COMPUTER GAMES-W1' 
   H1DA11  = 'S2Q11 HRS/WK LISTEN TO RADIO-W1' 
   H1GH1   = 'S3Q1 GENERAL HEALTH-W1' 
   H1GH1A  = 'S3Q1A DIFFICULTY USING LIMBS >12 MOS-W1' 
   H1GH2   = 'S3Q2 FREQ-HEADACHES-W1' 
   H1GH3   = 'S3Q3 FREQ-FEELING HOT-W1' 
   H1GH4   = 'S3Q4 FREQ-STOMACHACHE-W1' 
   H1GH5   = 'S3Q5 FREQ-COLD SWEATS-W1' 
   H1GH6   = 'S3Q6 FREQ-FEELING PHYSICALLY WEAK-W1' 
   H1GH7   = 'S3Q7 FREQ-SORE THROAT/COUGH-W1' 
   H1GH8   = 'S3Q8 FREQ-VERY TIRED FOR NO REASON-W1' 
   H1GH9   = 'S3Q9 FREQ-PAINFUL/OFTEN URINATION-W1' 
   H1GH10  = 'S3Q10 FREQ-FEELING VERY SICK-W1' 
   H1GH11  = 'S3Q11 FREQ-WAKE UP FEELING TIRED-W1' 
   H1GH12  = 'S3Q12 FREQ-SKIN PROBLEMS, ACNE-W1' 
   H1GH13  = 'S3Q13 FREQ-DIZZINESS-W1' 
   H1GH14  = 'S3Q14 FREQ-CHEST PAINS-W1' 
   H1GH15  = 'S3Q15 FREQ-MUSCLE/JOINT ACHES/PAINS-W1' 
   H1GH16  = 'S3Q16 FREQ-MENSTRUAL CRAMPS-W1' 
   H1GH17  = 'S3Q17 FREQ-POOR APPETITE-W1' 
   H1GH18  = 'S3Q18 FREQ-INSOMNIA-W1' 
   H1GH19  = 'S3Q19 FREQ-TROUBLE RELAXING-W1' 
   H1GH20  = 'S3Q20 FREQ-MOODINESS-W1' 
   H1GH21  = 'S3Q21 FREQ-FREQUENT CRYING-W1' 
   H1GH22  = 'S3Q22 FREQ-FEARFULNESS-W1' 
   H1GH23A = 'S3Q23A HAVE FOR BREAKFAST-MILK-W1' 
   H1GH23B = 'S3Q23B HAVE FOR BREAKFAST-COFFEE/TEA-W1' 
   H1GH23C = 'S3Q23C HAVE FOR BREAKFAST-CEREAL-W1' 
   H1GH23D = 'S3Q23D HAVE FOR BREAKFAST-FRUIT/JUICE-W1' 
   H1GH23E = 'S3Q23E HAVE FOR BREAKFAST-EGGS-W1' 
   H1GH23F = 'S3Q23F HAVE FOR BREAKFAST-MEAT-W1' 
   H1GH23G = 'S3Q23G HAVE FOR BREAKFAST-SNACK FOODS-W1' 
   H1GH23H = 'S3Q23H HAVE FOR BREAKFAST-BREAD/TOAST-W1' 
   H1GH23I = 'S3Q23I HAVE FOR BREAKFAST-OTHER-W1' 
   H1GH23J = 'S3Q23J HAVE FOR BREAKFAST-NOTHING-W1' 
   H1GH24  = 'S3Q24 LAST PHYSICAL EXAM-W1' 
   H1GH25  = 'S3Q25 LAST DENTAL EXAM-W1' 
   H1GH26  = 'S3Q26 NEEDED BUT NOT GET MEDICAL CARE-W1' 
   H1GH27A = 'S3Q27A WHY-DIDNOT KNOW WHO TO SEE-W1' 
   H1GH27B = 'S3Q27B WHY-NO TRANSPORTATION-W1' 
   H1GH27C = 'S3Q27C WHY-NO ONE TO GO ALONG-W1' 
   H1GH27D = 'S3Q27D WHY-PARENT WOULD NOT GO-W1' 
   H1GH27E = 'S3Q27E WHY-PARENTS NOT TO KNOW-W1' 
   H1GH27F = 'S3Q27F WHY-HARD TO MAKE APPOINTMENT-W1' 
   H1GH27G = 'S3Q27G WHY-AFRAID WHAT DR WILL DO-W1' 
   H1GH27H = 'S3Q27H WHY- PROB WILL GO AWAY-W1' 
   H1GH27I = 'S3Q27I WHY-COULD NOT PAY-W1' 
   H1GH27J = 'S3Q27J WHY-OTHER-W1' 
   H1GH28  = 'S3Q28 WEIGHT IMAGE-W1' 
   H1GH29  = 'S3Q29 TO GAIN/LOSE/MAINTAIN WEIGHT-W1' 
   H1GH30A = 'S3Q30A WEIGHT LOSS METHOD-DIET-W1' 
   H1GH30B = 'S3Q30B WEIGHT LOSS METHOD-EXERCISE-W1' 
   H1GH30C = 'S3Q30C WEIGHT LOSS METHOD-VOMIT-W1' 
   H1GH30D = 'S3Q30D WEIGHT LOSS METHOD-DIET PILLS-W1' 
   H1GH30E = 'S3Q30E WEIGHT LOSS METHOD-LAXATIVE-W1' 
   H1GH30F = 'S3Q30F WEIGHT LOSS METHOD-OTHER-W1' 
   H1GH30G = 'S3Q30G WEIGHT LOSS METHOD-NONE-W1' 
   H1GH31A = 'S3Q31A WEIGHT GAIN METHOD-DIET-W1' 
   H1GH31B = 'S3Q31B WEIGHT GAIN METHOD-EXERCISE-W1' 
   H1GH31C = 'S3Q31C WEIGHT GAIN METHOD-LIFT WEIGHT-W1' 
   H1GH31D = 'S3Q31D WEIGHT GAIN METHOD-FOOD SUPPLT-W1' 
   H1GH31F = 'S3Q31F WEIGHT GAIN METHOD-OTHER-W1' 
   H1GH31G = 'S3Q31G WEIGHT GAIN METHOD-NONE-W1' 
   H1GH32  = 'S3Q32 ATE YESTERDAY-DAIRY PRODUCTS-W1' 
   H1GH33  = 'S3Q33 ATE YESTERDAY-FRUIT/FRUIT JUICE-W1' 
   H1GH34  = 'S3Q34 ATE YESTERDAY-VEGETABLES-W1' 
   H1GH35  = 'S3Q35 ATE YESTERDAY-BREAD/PASTA/RICE-W1' 
   H1GH36  = 'S3Q36 ATE YESTERDAY-PASTERY PRODUCTS-W1' 
   H1GH37  = 'S3Q37 DAYS/WK OF PHYS ED CLASSES-W1' 
   H1GH38  = 'S3Q38 MINUTES OF ACTIVITY IN PHYS ED-W1' 
   H1GH39  = 'S3Q39 WEAR HELMET WHILE CYCLING-W1' 
   H1GH40  = 'S3Q40 FREQ-RIDE A MOTORCYCLE-W1' 
   H1GH41  = 'S3Q41 FREQ-WEAR MOTORCYCLE HELMET-W1' 
   H1GH42  = 'S3Q42 FREQ-WEAR SEAT BELT IN CAR-W1' 
   H1GH43  = 'S3Q43 FREQ-DRINK ALCOHOL AND DRIVE-W1' 
   H1GH44  = 'S3Q44 CHANCES OF GETTING AIDS-W1' 
   H1GH45  = 'S3Q45 NO OF ACQUAINTANCES WITH AIDS-W1' 
   H1GH46  = 'S3Q46 CHANGES OF GETTING OTHER STDS-W1' 
   H1GH47  = 'S3Q47 NO OF ACQUAINTANCES WITH STDS-W1' 
   H1GH48  = 'S3Q48 HEALTH CAUSE SCHOOL ABSENCE-W1' 
   H1GH49  = 'S3Q49 HEALTH CAUSE SOCIAL ABSENCE-W1' 
   H1GH50  = 'S3Q50 USUAL BEDTIME ON WEEKNIGHTS-W1' 
   H1GH51  = 'S3Q51 TYPICAL HOURS OF SLEEP-W1' 
   H1GH52  = 'S3Q52 DO YOU GET ENOUGH SLEEP-W1' 
   H1GH53  = 'S3Q53 NIGHT FROM HOME W/O PERMISS-W1' 
   H1GH54  = 'S3Q54 EXTENT OF WORST INJURY-W1' 
   H1GH55  = 'S3Q55 DO YOU HAVE A PERMANENT TATOO-W1' 
   H1GH56  = 'S3Q56 DO YOU HAVE PIERCED EAR(S)-W1' 
   H1GH57  = 'S3Q57 BRACES ON YOUR TEETH-W1' 
   H1GH58  = 'S3Q58 HAVE YOU EVER WORN BRACES-W1' 
   H1GH59A = 'S3Q59A HEIGHT-FEET-W1' 
   H1GH59B = 'S3Q59B HEIGHT-INCHES-W1' 
   H1GH60  = 'S3Q60 WEIGHT-W1' 
   H1TS1   = 'S4Q1 LEARNED-PROPER DIET-W1' 
   H1TS2   = 'S4Q2 LEARNED-IMPORTANCE OF EXERCISE-W1' 
   H1TS3   = 'S4Q3 LEARNED-SMOKING-W1' 
   H1TS4   = 'S4Q4 LEARNED-HEALTH PROBS OF OBESITY-W1' 
   H1TS5   = 'S4Q5 LEARNED-DRINKING-W1' 
   H1TS6   = 'S4Q6 LEARNED-DRUG ABUSE-W1' 
   H1TS7   = 'S4Q7 LEARNED-PREGNANCY-W1' 
   H1TS8   = 'S4Q8 LEARNED-AIDS-W1' 
   H1TS9   = 'S4Q9 LEARNED-STRANGER APPROACH-W1' 
   H1TS10  = 'S4Q10 LEARNED-DENTAL CARE-W1' 
   H1TS11  = 'S4Q11 LEARNED-HEIMLICH MANEUVER-W1' 
   H1TS12  = 'S4Q12 LEARNED-SAFETY AT HOME/PLAY-W1' 
   H1TS13  = 'S4Q13 LEARNED-STRESS-W1' 
   H1TS14  = 'S4Q14 LEARNED-HANDLE CONFLICT-W1' 
   H1TS15  = 'S4Q15 LEARNED-GET MEDICAL ATTENTION-W1' 
   H1TS16  = 'S4Q16 LEARNED-PROBLEMS OF UNDERWEIGHT-W1' 
   H1TS17  = 'S4Q17 LEARNED-SUICIDE-W1' 
   H1ED1   = 'S5Q1 FREQ-EXCUSED ABSENCE FROM SCHOOL-W1' 
   H1ED2   = 'S5Q2 FREQ-SKIPPED SCHOOL-W1' 
   H1ED3   = 'S5Q3 HAVE YOU EVER SKIPPED A GRADE-W1' 
   H1ED4A  = 'S5Q4A SKIPPED GRADE 1-W1' 
   H1ED4B  = 'S5Q4B SKIPPED GRADE 2-W1' 
   H1ED4C  = 'S5Q4C SKIPPED GRADE 3-W1' 
   H1ED4D  = 'S5Q4D SKIPPED GRADE 4-W1' 
   H1ED4E  = 'S5Q4E SKIPPED GRADE 5-W1' 
   H1ED4F  = 'S5Q4F SKIPPED GRADE 6-W1' 
   H1ED4G  = 'S5Q4G SKIPPED GRADE 7-W1' 
   H1ED4H  = 'S5Q4H SKIPPED GRADE 8-W1' 
   H1ED4I  = 'S5Q4I SKIPPED GRADE 9-W1' 
   H1ED4J  = 'S5Q4J SKIPPED GRADE 10-W1' 
   H1ED4K  = 'S5Q4K SKIPPED GRADE 11-W1' 
   H1ED4M  = 'S5Q4M SCHOOL NOT GRADED-W1' 
   H1ED5   = 'S5Q5 HAVE YOU EVER REPEATED A GRADE-W1' 
   H1ED6A  = 'S5Q6A REPEATED GRADE 1-W1' 
   H1ED6B  = 'S5Q6B REPEATED GRADE 2-W1' 
   H1ED6C  = 'S5Q6C REPEATED GRADE 3-W1' 
   H1ED6D  = 'S5Q6D REPEATED GRADE 4-W1' 
   H1ED6E  = 'S5Q6E REPEATED GRADE 5-W1' 
   H1ED6F  = 'S5Q6F REPEATED GRADE 6-W1' 
   H1ED6G  = 'S5Q6G REPEATED GRADE 7-W1' 
   H1ED6H  = 'S5Q6H REPEATED GRADE 8-W1' 
   H1ED6I  = 'S5Q6I REPEATED GRADE 9-W1' 
   H1ED6J  = 'S5Q6J REPEATED GRADE 10-W1' 
   H1ED6K  = 'S5Q6K REPEATED GRADE 11-W1' 
   H1ED6L  = 'S5Q6L REPEATED GRADE 12-W1' 
   H1ED6M  = 'S5Q6M SCHOOL NOT GRADED-W1' 
   H1ED7   = 'S5Q7 RECEIVED OUT-OF-SCHL SUSPENSION-W1' 
   H1ED8   = 'S5Q8 GRADE DURING SUSPENSION-W1' 
   H1ED9   = 'S5Q9 EXPELLED FROM SCHOOL-W1' 
   H1ED10  = 'S5Q10 GRADE DURING EXPULSION-W1' 
   H1ED11  = 'S5Q11 MOST RECENT GRADE-ENGLISH-W1' 
   H1ED12  = 'S5Q12 MOST RECENT GRADE-MATH-W1' 
   H1ED13  = 'S5Q13 MOST RECENT GRADE-HISTORY' 
   H1ED14  = 'S5Q14 MOST RECENT GRADE-SCIENCE-W1' 
   H1ED15  = 'S5Q15 TROUBLE-GETTING ALONG TEACHERS-W1' 
   H1ED16  = 'S5Q16 TROUBLE-PAYING ATTENTION-W1' 
   H1ED17  = 'S5Q17 TROUBLE-GETTING HOMEWORK DONE-W1' 
   H1ED18  = 'S5Q18 TROUBLE-WITH OTHER STUDENTS-W1' 
   H1ED19  = 'S5Q19 FEEL CLOSE TO PEOPLE AT SCHOOL-W1' 
   H1ED20  = 'S5Q20 FEEL PART OF YOUR SCHOOL-W1' 
   H1ED21  = 'S5Q21 STUDENTS AT SCHOOL PREJUDICED-W1' 
   H1ED22  = 'S5Q22 HAPPY AT YOUR SCHOOL-W1' 
   H1ED23  = 'S5Q23 TEACHERS TREAT STUDENTS FAIRLY-W1' 
   H1ED24  = 'S5Q24 FEEL SAFE IN YOUR SCHOOL-W1' 
   H1PL1   = 'S6Q1 DIFFICULTY USING HANDS/FT/LIMBS-W1' 
   H1PL2   = 'S6Q2 PHYS COND INVOLVES HEART PROB-W1' 
   H1PL3   = 'S6Q3 PHYS COND INVOLVES ASTHMA-W1' 
   H1PL4   = 'S6Q4 PHYS COND INVOLVES BREATHING-W1' 
   H1PL5   = 'S6Q5 USE WALKING AID DEVICE-W1' 
   H1PL6   = 'S6Q6 WEAR BRACE ON ARMS OR LEG-W1' 
   H1PL7   = 'S6Q7 USE ARTIFICIAL LIMB-W1' 
   H1PL8   = 'S6Q8 DIFFICULTY-WALKING UP 10 STEPS-W1' 
   H1PL9   = 'S6Q9 HOW DIFFICULT TO WALK UP STEPS-W1' 
   H1PL10  = 'S6Q10 DIFFICULTY-WALKING 1/4 MILE-W1' 
   H1PL11  = 'S6Q11 HOW DIFFICULT TO WALK 1/4 MILE-W1' 
   H1PL12  = 'S6Q12 DIFFICULTY-STANDING 20 MINUTES-W1' 
   H1PL13  = 'S6Q13 HOW DIFFICULT TO STAND 20 MIN-W1' 
   H1PL14  = 'S6Q14 DIFFICULTY-EXTENDING YOUR ARM-W1' 
   H1PL15  = 'S6Q15 HOW DIFFICULT IS EXTENDING ARM-W1' 
   H1PL16  = 'S6Q16 DIFFICULTY-GRASPING WITH HAND-W1' 
   H1PL17  = 'S6Q17 HOW DIFFICULT TO GRASP-W1' 
   H1PL18  = 'S6Q18 DIFFICULTY-HOLDING A PENCIL-W1' 
   H1PL19  = 'S6Q19 HOW DIFFICULT TO HOLD A PENCIL-W1' 
   H1PL20  = 'S6Q20 DIFFICULTY-EATING-W1' 
   H1PL21  = 'S6Q21 DIFFICULTY-BATHING-W1' 
   H1PL22  = 'S6Q22 DIFFICULTY-DRESSING-W1' 
   H1PL23  = 'S6Q23 DIFFICULTY-TOILET-W1' 
   H1PL24  = 'S6Q24 USE AID TO SHOP-W1' 
   H1PL25  = 'S6Q25 USE AID TO EAT,DRESS,TOILET-W1' 
   H1PL26  = 'S6Q26 USE AID TO BATH-W1' 
   H1PL29  = 'S6Q29 USE AID TO SHOP-W1' 
   H1PL30  = 'S6Q30 USE CANE-W1' 
   H1PL31  = 'S6Q31 USE CRUTCHES OR WALKER-W1' 
   H1PL33  = 'S6Q33 USE MEDICALLY PRESCRIBED SHOES-W1' 
   H1PL34  = 'S6Q34 USE WHEELCHAIR OR SCOOTER-W1' 
   H1PL37  = 'S6Q37 CONSIDER SELF WITH DISABILITY-W1' 
   H1PL38  = 'S6Q38 OTHERS CONSIDER WITH DISABILITY-W1' 
   H1HS1   = 'S7Q1 ROUTINE PHYSICAL EXAM-W1' 
   H1HS2A  = 'S7Q2A LOCATION - PRIVATE DR-W1' 
   H1HS2B  = 'S7Q2B LOCATION - HEALTH CLINIC-W1' 
   H1HS2C  = 'S7Q2C LOCATION - SCHOOL-W1' 
   H1HS2D  = 'S7Q2D LOCATION - HOSPITAL-W1' 
   H1HS2E  = 'S7Q2E LOCATION - OTHER-W1' 
   H1HS3   = 'S7Q3 PSYCHOLOGICAL COUNSELING-W1' 
   H1HS4A  = 'S7Q4A LOCATION - PRIVATE DR-W1' 
   H1HS4B  = 'S7Q4B LOCATION - HEALTH CLINIC-W1' 
   H1HS4C  = 'S7Q4C LOCATION - SCHOOL-W1' 
   H1HS4D  = 'S7Q4D LOCATION - HOSPITAL-W1' 
   H1HS4E  = 'S7Q4E LOCATION - OTHER-W1' 
   H1HS5   = 'S7Q5 SUBSTANCE ABUSE PROGRAM-W1' 
   H1HS6A  = 'S7Q6A LOCATION  - PRIVATE DR-W1' 
   H1HS6B  = 'S7Q6B LOCATION  - HEALTH CLINIC-W1' 
   H1HS6C  = 'S7Q6C LOCATION  - SCHOOL-W1' 
   H1HS6D  = 'S7Q6D LOCATION  - HOSPITAL-W1' 
   H1HS6E  = 'S7Q6E LOCATION  - OTHER-W1' 
   H1HS7   = 'S7Q7 FAMILY PLANNING SERVICES-W1' 
   H1HS8A  = 'S7Q8A LOCATION  - PRIVATE DR-W1' 
   H1HS8B  = 'S7Q8B LOCATION  - HEALTH CLINIC-W1' 
   H1HS8C  = 'S7Q8C LOCATION  - SCHOOL-W1' 
   H1HS8D  = 'S7Q8D LOCATION  - HOSPITAL-W1' 
   H1HS8E  = 'S7Q8E LOCATION  - OTHER-W1' 
   H1HS9   = 'S7Q9 TESTING/TREATMENT FOR STDS-W1' 
   H1HS10A = 'S7Q10A LOCATION  - PRIVATE DR-W1' 
   H1HS10B = 'S7Q10B LOCATION  - HEALTH CLINIC-W1' 
   H1HS10C = 'S7Q10C LOCATION  - SCHOOL-W1' 
   H1HS10D = 'S7Q10D LOCATION  - HOSPITAL-W1' 
   H1HS10E = 'S7Q10E LOCATION  - OTHER-W1' 
   H1HS11  = 'S7Q11 PRENATAL/POST PARTUM CARE-W1' 
   H1HS12A = 'S7Q12A LOCATION  - PRIVATE DR-W1' 
   H1HS12B = 'S7Q12B LOCATION  - HEALTH CLINIC-W1' 
   H1HS12C = 'S7Q12C LOCATION  - SCHOOL-W1' 
   H1HS12D = 'S7Q12D LOCATION  - HOSPITAL-W1' 
   H1HS12E = 'S7Q12E LOCATION  - OTHER-W1' 
   H1RP1   = 'S8Q1 PREGNANT NOW ONE OF THE WORST-W1' 
   H1RP2   = 'S8Q2 PREGNANT NOW NOT SO BAD-W1' 
   H1RP3   = 'S8Q3 WILL SUFFER IF HIV POSITIVE-W1' 
   H1RP4   = 'S8Q4 PROTECTION A BIG HASSLE-W1' 
   H1RP5   = 'S8Q5 RISK OF PREGNANCY W/O PROTECTION-W1' 
   H1RP6   = 'S8Q6 RISK OF AIDS W/O PROTECTION-W1' 
   H1SE1   = 'S9Q1 USE BIRTH CONTROL IF AROUSED-W1' 
   H1SE2   = 'S9Q2 BIRTHCONTROL-ADVANCED PLANNING-W1' 
   H1SE3   = 'S9Q3 RESIST SEX IF NO BIRTH CONTROL-W1' 
   H1SE4   = 'S9Q4 YOUR INTELLIGENCE-W1' 
   H1FS1   = 'S10Q1 BOTHERED BY THINGS-W1' 
   H1FS2   = 'S10Q2 POOR APPETITE-W1' 
   H1FS3   = 'S10Q3 HAD THE BLUES-W1' 
   H1FS4   = 'S10Q4 JUST AS GOOD AS OTHER PEOPLE-W1' 
   H1FS5   = 'S10Q5 TROUBLE KEEPING MIND FOCUSED-W1' 
   H1FS6   = 'S10Q6 FELT DEPRESSED-W1' 
   H1FS7   = 'S10Q7 TOO TIRED TO DO THINGS-W1' 
   H1FS8   = 'S10Q8 HOPEFUL ABOUT THE FUTURE-W1' 
   H1FS9   = 'S10Q9 LIFE HAD BEEN A FAILURE-W1' 
   H1FS10  = 'S10Q10 FEARFUL-W1' 
   H1FS11  = 'S10Q11 HAPPY-W1' 
   H1FS12  = 'S10Q12 TALKED LESS THAN USUAL-W1' 
   H1FS13  = 'S10Q13 FELT LONELY-W1' 
   H1FS14  = 'S10Q14 PEOPLE UNFRIENDLY TO YOU-W1' 
   H1FS15  = 'S10Q15 ENJOYED LIFE-W1' 
   H1FS16  = 'S10Q16 FELT SAD-W1' 
   H1FS17  = 'S10Q17 FELT PEOPLE DISLIKE YOU-W1' 
   H1FS18  = 'S10Q18 HARD TO START DOING THINGS-W1' 
   H1FS19  = 'S10Q19 LIFE NOT WORTH LIVING-W1' 
   H1HR2A  = 'S11Q2A HH MEMBER 1-GENDER-W1' 
   H1HR3A  = 'S11Q3A HH MEMBER 1-RELATION TO YOU-W1' 
   H1HR4A  = 'S11Q4A HH MEMBER 1-OFFSPRING-W1' 
   H1HR5A  = 'S11Q5A HH MEMBER 1-SIBLING-W1' 
   H1HR6A  = 'S11Q6A HH MEMBER 1-PARENT-W1' 
   H1HR7A  = 'S11Q7A HH MEMBER 1-AGE-W1' 
   H1HR8A  = 'S11Q8A HH MEMBER 1-APPROXIMATE AGE-W1' 
   H1HR9A  = 'S11Q9A HH MEMBER 1-SAME HH-W1' 
   H1HR10A = 'S11Q10A HH MEMBER 1-YRS IN SAME HH-W1' 
   H1HR11A = 'S11Q11A HH MEMBER 1-MOS IN SAME HH-W1' 
   H1HR2B  = 'S11Q2B HH MEMBER 2-GENDER-W1' 
   H1HR3B  = 'S11Q3B HH MEMBER 2-RELATION TO YOU-W1' 
   H1HR4B  = 'S11Q4B HH MEMBER 2-OFFSPRING-W1' 
   H1HR5B  = 'S11Q5B HH MEMBER 2-SIBLING-W1' 
   H1HR6B  = 'S11Q6B HH MEMBER 2-PARENT-W1' 
   H1HR7B  = 'S11Q7B HH MEMBER 2-AGE-W1' 
   H1HR8B  = 'S11Q8B HH MEMBER 2-APPROXIMATE AGE-W1' 
   H1HR9B  = 'S11Q9B HH MEMBER 2-SAME HH-W1' 
   H1HR10B = 'S11Q10B HH MEMBER 2-YRS IN SAME HH-W1' 
   H1HR11B = 'S11Q11B HH MEMBER 2-MOS IN SAME HH-W1' 
   H1HR2C  = 'S11Q2C HH MEMBER 3-GENDER-W1' 
   H1HR3C  = 'S11Q3C HH MEMBER 3-RELATION TO YOU-W1' 
   H1HR4C  = 'S11Q4C HH MEMBER 3-OFFSPRING-W1' 
   H1HR5C  = 'S11Q5C HH MEMBER 3-SIBLING-W1' 
   H1HR6C  = 'S11Q6C HH MEMBER 3-PARENT-W1' 
   H1HR7C  = 'S11Q7C HH MEMBER 3-AGE-W1' 
   H1HR8C  = 'S11Q8C HH MEMBER 3-APPROXIMATE AGE-W1' 
   H1HR9C  = 'S11Q9C HH MEMBER 3-SAME HH-W1' 
   H1HR10C = 'S11Q10C HH MEMBER 3-YRS IN SAME HH-W1' 
   H1HR11C = 'S11Q11C HH MEMBER 3-MOS IN SAME HH-W1' 
   H1HR2D  = 'S11Q2D HH MEMBER 4-GENDER-W1' 
   H1HR3D  = 'S11Q3D HH MEMBER 4-RELATION TO YOU-W1' 
   H1HR4D  = 'S11Q4D HH MEMBER 4-OFFSPRING-W1' 
   H1HR5D  = 'S11Q5D HH MEMBER 4-SIBLING-W1' 
   H1HR6D  = 'S11Q6D HH MEMBER 4-PARENT-W1' 
   H1HR7D  = 'S11Q7D HH MEMBER 4-AGE-W1' 
   H1HR8D  = 'S11Q8D HH MEMBER 4-APPROXIMATE AGE-W1' 
   H1HR9D  = 'S11Q9D HH MEMBER 4-SAME HH-W1' 
   H1HR10D = 'S11Q10D HH MEMBER 4-YRS IN SAME HH-W1' 
   H1HR11D = 'S11Q211D HH MEMBER 4-MOS IN SAME HH-W1' 
   H1HR2E  = 'S11Q2E HH MEMBER 5-GENDER-W1' 
   H1HR3E  = 'S11Q3E HH MEMBER 5-RELATION TO YOU-W1' 
   H1HR4E  = 'S11Q4E HH MEMBER 5-OFFSPRING-W1' 
   H1HR5E  = 'S11Q5E HH MEMBER 5-SIBLING-W1' 
   H1HR6E  = 'S11Q6E HH MEMBER 5-PARENT-W1' 
   H1HR7E  = 'S11Q7E HH MEMBER 5-AGE-W1' 
   H1HR8E  = 'S11Q8E HH MEMBER 5-APPROXIMATE AGE-W1' 
   H1HR9E  = 'S11Q9E HH MEMBER 5-SAME HH-W1' 
   H1HR10E = 'S11Q10E HH MEMBER 5-YRS IN SAME HH-W1' 
   H1HR11E = 'S11Q211E HH MEMBER 5-MOS IN SAME HH-W1' 
   H1HR2F  = 'S11Q2F HH MEMBER 6-GENDER-W1' 
   H1HR3F  = 'S11Q3F HH MEMBER 6-RELATION TO YOU-W1' 
   H1HR4F  = 'S11Q4F HH MEMBER 6-OFFSPRING-W1' 
   H1HR5F  = 'S11Q5F HH MEMBER 6-SIBLING-W1' 
   H1HR6F  = 'S11Q6F HH MEMBER 6-PARENT-W1' 
   H1HR7F  = 'S11Q7F HH MEMBER 6-AGE-W1' 
   H1HR8F  = 'S11Q8F HH MEMBER 6-APPROXIMATE AGE-W1' 
   H1HR9F  = 'S11Q9F HH MEMBER 6-SAME HH-W1' 
   H1HR10F = 'S11Q10F HH MEMBER 6-YRS IN SAME HH-W1' 
   H1HR11F = 'S11Q211F HH MEMBER 6-MOS IN SAME HH-W1' 
   H1HR2G  = 'S11Q2G HH MEMBER 7-GENDER-W1' 
   H1HR3G  = 'S11Q3G HH MEMBER 7-RELATION TO YOU-W1' 
   H1HR4G  = 'S11Q4G HH MEMBER 7-OFFSPRING-W1' 
   H1HR5G  = 'S11Q5G HH MEMBER 7-SIBLING-W1' 
   H1HR6G  = 'S11Q6G HH MEMBER 7-PARENT-W1' 
   H1HR7G  = 'S11Q7G HH MEMBER 7-AGE-W1' 
   H1HR8G  = 'S11Q8G HH MEMBER 7-APPROXIMATE AGE-W1' 
   H1HR9G  = 'S11Q9G HH MEMBER 7-SAME HH-W1' 
   H1HR10G = 'S11Q10G HH MEMBER 7-YRS IN SAME HH-W1' 
   H1HR11G = 'S11Q211G HH MEMBER 7-MOS IN SAME HH-W1' 
   H1HR2H  = 'S11Q2H HH MEMBER 8-GENDER-W1' 
   H1HR3H  = 'S11Q3H HH MEMBER 8-RELATION TO YOU-W1' 
   H1HR4H  = 'S11Q4H HH MEMBER 8-OFFSPRING-W1' 
   H1HR5H  = 'S11Q5H HH MEMBER 8-SIBLING-W1' 
   H1HR6H  = 'S11Q6H HH MEMBER 8-PARENT-W1' 
   H1HR7H  = 'S11Q7H HH MEMBER 8-AGE-W1' 
   H1HR8H  = 'S11Q8H HH MEMBER 8-APPROXIMATE AGE-W1' 
   H1HR9H  = 'S11Q9H HH MEMBER 8-SAME HH-W1' 
   H1HR10H = 'S11Q10H HH MEMBER 8-YRS IN SAME HH-W1' 
   H1HR11H = 'S11Q211H HH MEMBER 8-MOS IN SAME HH-W1' 
   H1HR2I  = 'S11Q2I HH MEMBER 9-GENDER-W1' 
   H1HR3I  = 'S11Q3I HH MEMBER 9-RELATION TO YOU-W1' 
   H1HR4I  = 'S11Q4I HH MEMBER 9-OFFSPRING-W1' 
   H1HR5I  = 'S11Q5I HH MEMBER 9-SIBLING-W1' 
   H1HR6I  = 'S11Q6I HH MEMBER 9-PARENT-W1' 
   H1HR7I  = 'S11Q7I HH MEMBER 9-AGE-W1' 
   H1HR8I  = 'S11Q8I HH MEMBER 9-APPROXIMATE AGE-W1' 
   H1HR9I  = 'S11Q9I HH MEMBER 9-SAME HH-W1' 
   H1HR10I = 'S11Q10I HH MEMBER 9-YRS IN SAME HH-W1' 
   H1HR11I = 'S11Q211I HH MEMBER 9-MOS IN SAME HH-W1' 
   H1HR2J  = 'S11Q2J HH MEMBER 10-GENDER-W1' 
   H1HR3J  = 'S11Q3J HH MEMBER 10-RELATION TO YOU-W1' 
   H1HR4J  = 'S11Q4J HH MEMBER 10-OFFSPRING-W1' 
   H1HR5J  = 'S11Q5J HH MEMBER 10-SIBLING-W1' 
   H1HR6J  = 'S11Q6J HH MEMBER 10-PARENT-W1' 
   H1HR7J  = 'S11Q7J HH MEMBER 10-AGE-W1' 
   H1HR8J  = 'S11Q8J HH MEMBER 10-APPROXIMATE AGE-W1' 
   H1HR9J  = 'S11Q9J HH MEMBER 10-SAME HH-W1' 
   H1HR10J = 'S11Q10J HH MEMBER 10-YRS IN SAME HH-W1' 
   H1HR11J = 'S11Q211J HH MEMBER 10-MOS IN SAME HH-W1' 
   H1HR2K  = 'S11Q2K HH MEMBER 11-GENDER-W1' 
   H1HR3K  = 'S11Q3K HH MEMBER 11-RELATION TO YOU-W1' 
   H1HR4K  = 'S11Q4K HH MEMBER 11-OFFSPRING-W1' 
   H1HR5K  = 'S11Q5K HH MEMBER 11-SIBLING-W1' 
   H1HR6K  = 'S11Q6K HH MEMBER 11-PARENT-W1' 
   H1HR7K  = 'S11Q7K HH MEMBER 11-AGE-W1' 
   H1HR8K  = 'S11Q8K HH MEMBER 11-APPROXIMATE AGE-W1' 
   H1HR9K  = 'S11Q9K HH MEMBER 11-SAME HH-W1' 
   H1HR10K = 'S11Q10K HH MEMBER 11-YRS IN SAME HH-W1' 
   H1HR11K = 'S11Q211K HH MEMBER 11-MOS IN SAME HH-W1' 
   H1HR2L  = 'S11Q2L HH MEMBER 12-GENDER-W1' 
   H1HR3L  = 'S11Q3L HH MEMBER 12-RELATION TO YOU-W1' 
   H1HR4L  = 'S11Q4L HH MEMBER 12-OFFSPRING-W1' 
   H1HR5L  = 'S11Q5L HH MEMBER 12-SIBLING-W1' 
   H1HR6L  = 'S11Q6L HH MEMBER 12-PARENT-W1' 
   H1HR7L  = 'S11Q7L HH MEMBER 12-AGE-W1' 
   H1HR8L  = 'S11Q8L HH MEMBER 12-APPROXIMATE AGE-W1' 
   H1HR9L  = 'S11Q9L HH MEMBER 12-SAME HH-W1' 
   H1HR10L = 'S11Q10L HH MEMBER 12-YRS IN SAME HH-W1' 
   H1HR11L = 'S11Q211L HH MEMBER 12-MOS IN SAME HH-W1' 
   H1HR2M  = 'S11Q2M HH MEMBER 13-GENDER-W1' 
   H1HR3M  = 'S11Q3M HH MEMBER 13-RELATION TO YOU-W1' 
   H1HR4M  = 'S11Q4M HH MEMBER 13-OFFSPRING-W1' 
   H1HR5M  = 'S11Q5M HH MEMBER 13-SIBLING-W1' 
   H1HR6M  = 'S11Q6M HH MEMBER 13-PARENT-W1' 
   H1HR7M  = 'S11Q7M HH MEMBER 13-AGE-W1' 
   H1HR8M  = 'S11Q8M HH MEMBER 13-APPROXIMATE AGE-W1' 
   H1HR9M  = 'S11Q9M HH MEMBER 13-SAME HH-W1' 
   H1HR10M = 'S11Q10M HH MEMBER 13-YRS IN SAME HH-W1' 
   H1HR11M = 'S11Q211M HH MEMBER 13-MOS IN SAME HH-W1' 
   H1HR2N  = 'S11Q2N HH MEMBER 14-GENDER-W1' 
   H1HR3N  = 'S11Q3N HH MEMBER 14-RELATION TO YOU-W1' 
   H1HR4N  = 'S11Q4N HH MEMBER 14-OFFSPRING-W1' 
   H1HR5N  = 'S11Q5N HH MEMBER 14-SIBLING-W1' 
   H1HR6N  = 'S11Q6N HH MEMBER 14-PARENT-W1' 
   H1HR7N  = 'S11Q7N HH MEMBER 14-AGE-W1' 
   H1HR8N  = 'S11Q8N HH MEMBER 14-APPROXIMATE AGE-W1' 
   H1HR9N  = 'S11Q9N HH MEMBER 14-SAME HH-W1' 
   H1HR10N = 'S11Q10N HH MEMBER 14-YRS IN SAME HH-W1' 
   H1HR11N = 'S11Q211N HH MEMBER 14-MOS IN SAME HH-W1' 
   H1HR2O  = 'S11Q2O HH MEMBER 15-GENDER-W1' 
   H1HR3O  = 'S11Q3O HH MEMBER 15-RELATION TO YOU-W1' 
   H1HR4O  = 'S11Q4O HH MEMBER 15-OFFSPRING-W1' 
   H1HR5O  = 'S11Q5O HH MEMBER 15-SIBLING-W1' 
   H1HR6O  = 'S11Q6O HH MEMBER 15-PARENT-W1' 
   H1HR7O  = 'S11Q7O HH MEMBER 15-AGE-W1' 
   H1HR8O  = 'S11Q8O HH MEMBER 15-APPROXIMATE AGE-W1' 
   H1HR9O  = 'S11Q9O HH MEMBER 15-SAME HH-W1' 
   H1HR10O = 'S11Q10O HH MEMBER 15-YRS IN SAME HH-W1' 
   H1HR11O = 'S11Q211O HH MEMBER 15-MOS IN SAME HH-W1' 
   H1HR2P  = 'S11Q2P HH MEMBER 16-GENDER-W1' 
   H1HR3P  = 'S11Q3P HH MEMBER 16-RELATION TO YOU-W1' 
   H1HR4P  = 'S11Q4P HH MEMBER 16-OFFSPRING-W1' 
   H1HR5P  = 'S11Q5P HH MEMBER 16-SIBLING-W1' 
   H1HR6P  = 'S11Q6P HH MEMBER 16-PARENT-W1' 
   H1HR7P  = 'S11Q7P HH MEMBER 16-AGE-W1' 
   H1HR8P  = 'S11Q8P HH MEMBER 16-APPROXIMATE AGE-W1' 
   H1HR9P  = 'S11Q9P HH MEMBER 16-SAME HH-W1' 
   H1HR10P = 'S11Q10P HH MEMBER 16-YRS IN SAME HH-W1' 
   H1HR11P = 'S11Q211P HH MEMBER 16-MOS IN SAME HH-W1' 
   H1HR2Q  = 'S11Q2Q HH MEMBER 17-GENDER-W1' 
   H1HR3Q  = 'S11Q3Q HH MEMBER 17-RELATION TO YOU-W1' 
   H1HR4Q  = 'S11Q4Q HH MEMBER 17-OFFSPRING-W1' 
   H1HR5Q  = 'S11Q5Q HH MEMBER 17-SIBLING-W1' 
   H1HR6Q  = 'S11Q6Q HH MEMBER 17-PARENT-W1' 
   H1HR7Q  = 'S11Q7Q HH MEMBER 17-AGE-W1' 
   H1HR8Q  = 'S11Q8Q HH MEMBER 17-APPROXIMATE AGE-W1' 
   H1HR9Q  = 'S11Q9Q HH MEMBER 17-SAME HH-W1' 
   H1HR10Q = 'S11Q10Q HH MEMBER 17-YRS IN SAME HH-W1' 
   H1HR11Q = 'S11Q211Q HH MEMBER 17-MOS IN SAME HH-W1' 
   H1HR2R  = 'S11Q2R HH MEMBER 18-GENDER-W1' 
   H1HR3R  = 'S11Q3R HH MEMBER 18-RELATION TO YOU-W1' 
   H1HR4R  = 'S11Q4R HH MEMBER 18-OFFSPRING-W1' 
   H1HR5R  = 'S11Q5R HH MEMBER 18-SIBLING-W1' 
   H1HR6R  = 'S11Q6R HH MEMBER 18-PARENT-W1' 
   H1HR7R  = 'S11Q7R HH MEMBER 18-AGE-W1' 
   H1HR8R  = 'S11Q8R HH MEMBER 18-APPROXIMATE AGE-W1' 
   H1HR9R  = 'S11Q9R HH MEMBER 18-SAME HH-W1' 
   H1HR10R = 'S11Q10R HH MEMBER 18-YRS IN SAME HH-W1' 
   H1HR11R = 'S11Q211R HH MEMBER 18-MOS IN SAME HH-W1' 
   H1HR2S  = 'S11Q2S HH MEMBER 19-GENDER-W1' 
   H1HR3S  = 'S11Q3S HH MEMBER 19-RELATION TO YOU-W1' 
   H1HR4S  = 'S11Q4S HH MEMBER 19-OFFSPRING-W1' 
   H1HR5S  = 'S11Q5S HH MEMBER 19-SIBLING-W1' 
   H1HR6S  = 'S11Q6S HH MEMBER 19-PARENT-W1' 
   H1HR7S  = 'S11Q7S HH MEMBER 19-AGE-W1' 
   H1HR8S  = 'S11Q8S HH MEMBER 19-APPROXIMATE AGE-W1' 
   H1HR9S  = 'S11Q9S HH MEMBER 19-SAME HH-W1' 
   H1HR10S = 'S11Q10S HH MEMBER 19-YRS IN SAME HH-W1' 
   H1HR11S = 'S11Q211S HH MEMBER 19-MOS IN SAME HH-W1' 
   H1HR2T  = 'S11Q2T HH MEMBER 20-GENDER-W1' 
   H1HR3T  = 'S11Q3T HH MEMBER 20-RELATION TO YOU-W1' 
   H1HR4T  = 'S11Q4T HH MEMBER 20-OFFSPRING-W1' 
   H1HR5T  = 'S11Q5T HH MEMBER 20-SIBLING-W1' 
   H1HR6T  = 'S11Q6T HH MEMBER 20-PARENT-W1' 
   H1HR7T  = 'S11Q7T HH MEMBER 20-AGE-W1' 
   H1HR8T  = 'S11Q8T HH MEMBER 20-APPROXIMATE AGE-W1' 
   H1HR9T  = 'S11Q9T HH MEMBER 20-SAME HH-W1' 
   H1HR10T = 'S11Q10T HH MEMBER 20-YRS IN SAME HH-W1' 
   H1HR11T = 'S11Q211T HH MEMBER 20-MOS IN SAME HH-W1' 
   H1HR12  = 'S11Q12 WHO ACTS AS THE MOTHER TO YOU-W1' 
   H1HR13  = 'S11Q13 WHO ACTS AS THE FATHER TO YOU-W1' 
   H1HR14  = 'S11Q14 NO OF CHILDREN FRM BIO PARENTS-W1' 
   H1HR15  = 'S11Q15 WHICH NUMBER ARE YOU-W1' 
   H1NM1   = 'S12Q1 KNOW ANYTHING ABOUT BIO MOM-W1' 
   H1NM2   = 'S12Q2 IS SHE STILL LIVING-W1' 
   H1NM3   = 'S12Q3 YOUR AGE WHEN SHE DIED-W1' 
   H1NM4   = 'S12Q4 EDUCATION LEVEL OF BIO MOM-W1' 
   H1NM5   = 'S12Q5 BIO MOM DISABLED-W1' 
   H1NM6   = 'S12Q6 BIO MOM BORN IN THE US-W1' 
   H1NM7   = 'S12Q7 EVER LIVE WITH BIO MOM-W1' 
   H1NM8   = 'S12Q8 YOUR AGE LAST LIVED WITH HER-W1' 
   H1NM9   = 'S12Q9 DURATION LIVED WITH HER-W1' 
   H1NM10  = 'S12Q10 FREQ-STAYED OVERNIGHT W/ HER-W1' 
   H1NM11  = 'S12Q11 FREQ-COMMUNICATED W/ HER-W1' 
   H1NM12A = 'S12Q12A BIO MOM-WENT SHOPPING-W1' 
   H1NM12B = 'S12Q12B BIO MOM-PLAYED A SPORT-W1' 
   H1NM12C = 'S12Q12C BIO MOM-RELIGIOUS SERVICE-W1' 
   H1NM12D = 'S12Q12D BIO MOM-DISCUSSED YOUR LIFE-W1' 
   H1NM12E = 'S12Q12E BIO MOM-WENT TO MOVIE/ETC-W1' 
   H1NM12F = 'S12Q12F BIO MOM-DISCUSS PERSONAL PROB-W1' 
   H1NM12G = 'S12Q12G BIO MOM-ARGUED ABOUT BEHAVIOR-W1' 
   H1NM12H = 'S12Q12H BIO MOM-TALKED SCH-GRADES-W1' 
   H1NM12I = 'S12Q12I BIO MOM-WORKED SCH-PROJECT-W1' 
   H1NM12J = 'S12Q12J BIO MOM-TALKED SCH-OTHER-W1' 
   H1NM13  = 'S12Q13 BIO MOM EVER SMOKED CIGARETTES-W1' 
   H1NM14  = 'S12Q14 HOW CLOSE TO BIO MOM-W1' 
   H1NF1   = 'S13Q1 KNOW ANYTHING ABOUT BIO DAD-W1' 
   H1NF2   = 'S13Q2 IS HE STILL LIVING-W1' 
   H1NF3   = 'S13Q3 YOUR AGE WHEN HE DIED-W1' 
   H1NF4   = 'S13Q4 EDUCATION LEVEL OF BIO DAD-W1' 
   H1NF5   = 'S13Q5 BIO DAD DISABLED-W1' 
   H1NF6   = 'S13Q6 BIO DAD BORN IN THE US-W1' 
   H1NF7   = 'S13Q7 EVER LIVE WITH BIO DAD-W1' 
   H1NF8   = 'S13Q8 YOUR AGE LAST LIVED WITH HIM-W1' 
   H1NF9   = 'S13Q9 DURATION LIVED WITH HIM-W1' 
   H1NF10  = 'S13Q10 FREQ-STAYED OVERNIGHT W/ HIM-W1' 
   H1NF11  = 'S13Q11 FREQ-COMMUNICATED W/ HIM-W1' 
   H1NF12A = 'S13Q12A BIO DAD-WENT SHOPPING-W1' 
   H1NF12B = 'S13Q12B BIO DAD-PLAYED A SPORT-W1' 
   H1NF12C = 'S13Q12C BIO DAD-RELIGIOUS SERVICE-W1' 
   H1NF12D = 'S13Q12D BIO DAD-DISCUSSED YOUR LIFE-W1' 
   H1NF12E = 'S13Q12E BIO DAD-WENT TO MOVIE/ETC-W1' 
   H1NF12F = 'S13Q12F BIO DAD-DISCUSS PERSONAL PROB-W1' 
   H1NF12G = 'S13Q12G BIO DAD-ARGUED ABOUT BEHAVIOR-W1' 
   H1NF12H = 'S13Q12H BIO DAD-TALKED SCH-GRADES-W1' 
   H1NF12I = 'S13Q12I BIO DAD-WORKED SCH-PROJECT-W1' 
   H1NF12J = 'S13Q12J BIO DAD-TALKED SCH-OTHIM-W1' 
   H1NF13  = 'S13Q13 BIO DAD EVER SMOKED CIGARETTES-W1' 
   H1NF14  = 'S13Q14 HOW CLOSE TO BIO DAD-W1' 
   H1RM1   = 'S14Q1 RES MOM-EDUCATION LEVEL-W1' 
   H1RM2   = 'S14Q2 RES MOM-BORN IN US-W1' 
   H1RM3   = 'S14Q3 RES MOM-COUNTRY BORN IN-W1' 
   H1RM4   = 'S14Q4 RES MOM-WORK-W1' 
   H1RM5   = 'S14Q5 RES MOM-WORK FOR PAY-W1' 
   H1RM6   = 'S14Q6 RES MOM-WORK LAST 12 MOS-W1' 
   H1RM7   = 'S14Q7 RES MOM-WORK HRS/WEEK-W1' 
   H1RM8   = 'S14Q8 RES MOM-WORK AT HOME/OUTSIDE-W1' 
   H1RM9   = 'S14Q9 RES MOM-RECEIVE PUBLIC ASSIST-W1' 
   H1RM10  = 'S14Q10 RES MOM-DISABLED-W1' 
   H1RM11  = 'S14Q11 RES MOM-AT HOME WHEN LEAVE-W1' 
   H1RM12  = 'S14Q12 RES MOM-AT HOME WHEN RETURN-W1' 
   H1RM13  = 'S14Q13 RES MOM-AT HOME WHEN BED-W1' 
   H1RM14  = 'S14Q14 RES MOM-EVER SMOKE-W1' 
   H1RF1   = 'S15Q1 RES DAD-EDUCATION LEVEL-W1' 
   H1RF2   = 'S15Q2 RES DAD-BORN IN US-W1' 
   H1RF3   = 'S15Q3 RES DAD-COUNTRY BORN IN-W1' 
   H1RF4   = 'S15Q4 RES DAD-WORK-W1' 
   H1RF5   = 'S15Q5 RES DAD-WORK FOR PAY-W1' 
   H1RF6   = 'S15Q6 RES DAD-WORK LAST 12 MOS-W1' 
   H1RF7   = 'S15Q7 RES DAD-WORK HRS/WEEK-W1' 
   H1RF8   = 'S15Q8 RES DAD-WORK AT HOME/OUTSIDE-W1' 
   H1RF9   = 'S15Q9 RES DAD-RECEIVE PUBLIC ASSIST-W1' 
   H1RF10  = 'S15Q10 RES DAD-DISABLED-W1' 
   H1RF11  = 'S15Q11 RES DAD-AT HOME WHEN LEAVE-W1' 
   H1RF12  = 'S15Q12 RES DAD-AT HOME WHEN RETURN-W1' 
   H1RF13  = 'S15Q13 RES DAD-AT HOME WHEN BED-W1' 
   H1RF14  = 'S15Q14 RES DAD-EVER SMOKE-W1' 
   H1WP1   = 'S16Q1 MAKE OWN DECISION-WKEND CURFEW-W1' 
   H1WP2   = 'S16Q2 MAKE OWN DECISION-FRIEND-W1' 
   H1WP3   = 'S16Q3 MAKE OWN DECISION-CLOTHING-W1' 
   H1WP4   = 'S16Q4 MAKE OWN DECISION-AMOUNT OF TV-W1' 
   H1WP5   = 'S16Q5 MAKE OWN DECISION-TV PROGRAMS-W1' 
   H1WP6   = 'S16Q6 MAKE OWN DECISION-WEEKDAY BED-W1' 
   H1WP7   = 'S16Q7 MAKE OWN DECISION-DIET-W1' 
   H1WP8   = 'S16Q8 FREQ-EAT DINNER W/ PARENT-W1' 
   H1WP9   = 'S16Q9 CLOSE TO MOM-W1' 
   H1WP10  = 'S16Q10 MOM-HOW MUCH DOES SHE CARE-W1' 
   H1WP11  = 'S16Q11 MOM-IF NOT COLLEGE GRADUATE-W1' 
   H1WP12  = 'S16Q12 MOM-IF NOT HS GRADUATE-W1' 
   H1WP13  = 'S16Q13 CLOSE TO DAD-W1' 
   H1WP14  = 'S16Q14 DAD-HOW MUCH DOES HE CARE-W1' 
   H1WP15  = 'S16Q15 DAD-IF NOT COLLEGE GRADUATE-W1' 
   H1WP16  = 'S16Q16 DAD-IF NOT HS GRADUATE-W1' 
   H1WP17A = 'S16Q17A RES MOM-WENT SHOPPING-W1' 
   H1WP17B = 'S16Q17B RES MOM-PLAYED A SPORT-W1' 
   H1WP17C = 'S16Q17C RES MOM-RELIGIOUS SERVICE-W1' 
   H1WP17D = 'S16Q17D RES MOM-TALKED ABOUT LIFE-W1' 
   H1WP17E = 'S16Q17E RES MOM-WENT TO MOVIE/ETC-W1' 
   H1WP17F = 'S16Q17F RES MOM-DISCUSS PERSONAL PROB-W1' 
   H1WP17G = 'S16Q17G RES MOM-ARGUED ABOUT BEHAVIOR-W1' 
   H1WP17H = 'S16Q17H RES MOM-TALKED SCH-GRADES-W1' 
   H1WP17I = 'S16Q17I RES MOM-WORKED SCH-PROJECT-W1' 
   H1WP17J = 'S16Q17J RES MOM-TALKED SCH-OTHER-W1' 
   H1WP17K = 'S16Q17K RES MOM-NONE-W1' 
   H1WP18A = 'S16Q18A RES DAD-WENT SHOPPING-W1' 
   H1WP18B = 'S16Q18B RES DAD-PLAYED A SPORT-W1' 
   H1WP18C = 'S16Q18C RES DAD-RELIGIOUS SERVICE-W1' 
   H1WP18D = 'S16Q18D RES DAD-TALKED ABOUT LIFE-W1' 
   H1WP18E = 'S16Q18E RES DAD-WENT TO MOVIE/ETC-W1' 
   H1WP18F = 'S16Q18F RES DAD-DISCUSS PERSONAL PROB-W1' 
   H1WP18G = 'S16Q18G RES DAD-ARGUED ABOUT BEHAVIOR-W1' 
   H1WP18H = 'S16Q18H RES DAD-TALKED SCH-GRADES-W1' 
   H1WP18I = 'S16Q18I RES DAD-WORKED SCH-PROJECT-W1' 
   H1WP18J = 'S16Q18J RES DAD-TALKED SCH-OTHER-W1' 
   H1WP18K = 'S16Q18K RES DAD-NONE-W1' 
   H1MO1   = 'S17Q1 IF SEX GAIN MORE RESPECT-W1' 
   H1MO2   = 'S17Q2 IF SEX LOSE PARTNER RESPECT-W1' 
   H1MO3   = 'S17Q3 IF SEX WOULD FEEL GUILTY-W1' 
   H1MO4   = 'S17Q4 IF SEX UPSET MOTHER-W1' 
   H1MO5   = 'S17Q5 IF SEX LOT OF PHYSICAL PLEASURE-W1' 
   H1MO6   = 'S17Q6 IF SEX WOULD BE RELAXING-W1' 
   H1MO7   = 'S17Q7 IF SEX WOULD BE MORE ATTRACTIVE-W1' 
   H1MO8   = 'S17Q8 IF SEX FEEL LESS LONELY-W1' 
   H1MO9   = 'S17Q9 IF PREGNANT EMBARRASS FAMILY-W1' 
   H1MO10  = 'S17Q10 IF PREGNANT EMBARRASS SELF-W1' 
   H1MO11  = 'S17Q11 IF PREGNANT HAVE TO QUIT SCH-W1' 
   H1MO12  = 'S17Q12 IF PREGNANT MARRY WRONG PERSON-W1' 
   H1MO13  = 'S17Q13 IF PREGNANT GROW UP TOO FAST-W1' 
   H1MO14  = 'S17Q14 IF PREGNANT MAKE HARD DECISION-W1' 
   H1PF1   = 'S18Q1 MOM-WARM AND LOVING-W1' 
   H1PF2   = 'S18Q2 MOM-ENCOURAGES INDEPENDENCE-W1' 
   H1PF3   = 'S18Q3 MOM-DISCUSSES ETHICS-W1' 
   H1PF4   = 'S18Q4 MOM-GOOD COMMUNICATION-W1' 
   H1PF5   = 'S18Q5 MOM-GOOD RELATIONSHIP-W1' 
   H1PF6   = 'S18Q6 KNOW HOW TO USE CONDOM-W1' 
   H1PF7   = 'S18Q7 NEVER ARGUE W/ ANYONE-W1' 
   H1PF8   = 'S18Q8 ACCOMPLISH THROUGH HARD WORK-W1' 
   H1PF9   = 'S18Q9 FRIENDS KNOW WITHDRAWAL METHOD-W1' 
   H1PF10  = 'S18Q10 NEVER GET SAD-W1' 
   H1PF11  = 'S18Q11 KNOW RHYTHM METHOD-W1' 
   H1PF12  = 'S18Q12 FRIENDS KNOW HOW TO USE CONDOM-W1' 
   H1PF13  = 'S18Q13 NEVER CRITICIZE OTHER PEOPLE-W1' 
   H1PF14  = 'S18Q14 AVOID CONFRONTING PROBLEMS-W1' 
   H1PF15  = 'S18Q15 UPSET BY DIFFICULT PROBLEMS-W1' 
   H1PF16  = 'S18Q16 RELY ON GUT FEELINGS-W1' 
   H1PF17  = 'S18Q17 FRIENDS KNOW RHYTHM METHOD-W1' 
   H1PF18  = 'S18Q18 RESEARCH SOLUTIONS TO PROB-W1' 
   H1PF19  = 'S18Q19 MANY APPROACHES TO PROB-W1' 
   H1PF20  = 'S18Q20 RATIONAL DECISION MAKING APPR-W1' 
   H1PF21  = 'S18Q21 EVALUATE OUTCOME OF DECISION-W1' 
   H1PF22  = 'S18Q22 KNOW WITHDRAWAL METHOD-W1' 
   H1PF23  = 'S18Q23 DAD-WARM AND LOVING-W1' 
   H1PF24  = 'S18Q24 DAD-GOOD COMMUNICATION-W1' 
   H1PF25  = 'S18Q25 DAD-GOOD RELATIONSHIP-W1' 
   H1PF26  = 'S18Q26 HAVE LOTS OF ENERGY-W1' 
   H1PF27  = 'S18Q27 SELDOM GET SICK-W1' 
   H1PF28  = 'S18Q28 WHEN SICK, RECOVER QUICKLY-W1' 
   H1PF29  = 'S18Q29 WELL COORDINATED-W1' 
   H1PF30  = 'S18Q30 HAVE LOTS OF GOOD QUALITIES-W1' 
   H1PF31  = 'S18Q31 PHYSICALLY FIT-W1' 
   H1PF32  = 'S18Q32 HAVE A LOT TO BE PROUD OF-W1' 
   H1PF33  = 'S18Q33 LIKE SELF AS ARE-W1' 
   H1PF34  = 'S18Q34 DO EVERYTHING JUST RIGHT-W1' 
   H1PF35  = 'S18Q35 FEEL SOCIALLY ACCEPTED-W1' 
   H1PF36  = 'S18Q36 FEEL LOVED AND WANTED-W1' 
   H1KQ1A  = 'S19Q1A SPERM DIES W/I 6 HOURS-W1' 
   H1KQ1B  = 'S19Q1B CONFIDENT 1A IS CORRECT-W1' 
   H1KQ2A  = 'S19Q2A CONDOM-MAN SHOULD W/D IMMED-W1' 
   H1KQ2B  = 'S19Q2B CONFIDENT 2A IS CORRECT-W1' 
   H1KQ3A  = 'S19Q3A WOMAN OVULATES 14 DAYS AFT PD-W1' 
   H1KQ3B  = 'S19Q3B CONFIDENT 3A IS CORRECT-W1' 
   H1KQ4A  = 'S19Q4A LAMBSKIN IS BETTER THAN LATEX-W1' 
   H1KQ4B  = 'S19Q4B CONFIDENT 4A IS CORRECT-W1' 
   H1KQ5A  = 'S19Q5A CONDOM SHOULD FIT TIGHTLY-W1' 
   H1KQ5B  = 'S19Q5B CONFIDENT 5A IS CORRECT-W1' 
   H1KQ6A  = 'S19Q6A VASELINE CANBE USED W/ CONDOMS-W1' 
   H1KQ6B  = 'S19Q6B CONFIDENT 6A IS CORRECT-W1' 
   H1KQ7A  = 'S19Q7A MOST FERTILE BEFORE PERIOD-W1' 
   H1KQ7B  = 'S19Q7B CONFIDENT 7A IS CORRECT-W1' 
   H1KQ8A  = 'S19Q8A PREGN POSSIBLE W/ OUTSIDE EJAC-W1' 
   H1KQ8B  = 'S19Q8B CONFIDENT 8A IS CORRECT-W1' 
   H1KQ9A  = 'S19Q9A ONLY PENIS TIP NEEDS COVERAGE-W1' 
   H1KQ9B  = 'S19Q9B CONFIDENT 9A IS CORRECT-W1' 
   H1KQ10A = 'S19Q10A MOST FERTILE DURING PERIOD-W1' 
   H1KQ10B = 'S19Q10B CONFIDENT 10A IS CORRECT-W1' 
   FR_FLAG = 'NUMBER OF FRIENDS ASKED TO NOMINATE-W1' 
   H1MF2A  = 'S20Q1A MALE FRIEND1- SCHOOL-W1' 
   H1MF3A  = 'S20Q2A MALE FRIEND1-GRADE-W1' 
   H1MF4A  = 'S20Q3A MALE FRIEND1-SAMPLE SCHOOL-W1' 
   H1MF5A  = 'S20Q4A MALE FRIEND1-SISTER SCHOOL-W1' 
   H1MF6A  = 'S20Q6A MALE FRIEND 1-FRIENDS HOUSE-W1' 
   H1MF7A  = 'S20Q7A MALE FRIEND1-MEET AFTER SCHOOL-W1' 
   H1MF8A  = 'S20Q8A MALE FRIEND1-TIME LAST WEEKEND-W1' 
   H1MF9A  = 'S20Q9A MALE FRIEND1-TALK ABOUT A PROB-W1' 
   H1MF10A = 'S20Q10A MALE FRIEND1-TALK ON PHONE-W1' 
   H1MF2B  = 'S20Q1B MALE FRIEND2- SCHOOL-W1' 
   H1MF3B  = 'S20Q2B MALE FRIEND2-GRADE-W1' 
   H1MF4B  = 'S20Q3B MALE FRIEND2- SAMPLE SCHOOL-W1' 
   H1MF5B  = 'S20Q4B MALE FRIEND2- SISTER SCHOOL-W1' 
   H1MF6B  = 'S20Q6B GO TO MALE FRIEND2 HOUSE-W1' 
   H1MF7B  = 'S20Q7B MALE FRIEND2-MEET AFTER SCHOOL-W1' 
   H1MF8B  = 'S20Q8B MALE FRIEND2-TIME LAST WEEKEND-W1' 
   H1MF9B  = 'S20Q9B MALE FRIEND2-TALK ABOUT A PROB-W1' 
   H1MF10B = 'S20Q10B MALE FRIEND2-TALK ON PHONE-W1' 
   H1MF2C  = 'S20Q1C MALE FRIEND3- SCHOOL-W1' 
   H1MF3C  = 'S20Q2C MALE FRIEND3-GRADE-W1' 
   H1MF4C  = 'S20Q3C MALE FRIEND3- SAMPLE SCHOOL-W1' 
   H1MF5C  = 'S20Q4C MALE FRIEND3- SISTER SCHOOL-W1' 
   H1MF6C  = 'S20Q6C MALE FRIEND3-FRIENDS HOUSE-W1' 
   H1MF7C  = 'S20Q7C MALE FRIEND3-MEET AFTER SCHOOL-W1' 
   H1MF8C  = 'S20Q8C MALE FRIEND3-TIME LAST WEEKEND-W1' 
   H1MF9C  = 'S20Q9C MALE FRIEND3-TALK ABOUT A PROB-W1' 
   H1MF10C = 'S20Q10C MALE FRIEND3-TALK ON PHONE-W1' 
   H1MF2D  = 'S20Q1D MALE FRIEND4- SCHOOL-W1' 
   H1MF3D  = 'S20Q2D MALE FRIEND4-GRADE-W1' 
   H1MF4D  = 'S20Q3D MALE FRIEND4- SAMPLE SCHOOL-W1' 
   H1MF5D  = 'S20Q4D MALE FRIEND4- SISTER SCHOOL-W1' 
   H1MF6D  = 'S20Q6D MALE FRIEND4-FRIENDS HOUSE-W1' 
   H1MF7D  = 'S20Q7D MALE FRIEND4-MEET AFTER SCHOOL-W1' 
   H1MF8D  = 'S20Q8D MALE FRIEND4-TIME LAST WEEKEND-W1' 
   H1MF9D  = 'S20Q9D MALE FRIEND4-TALK ABOUT A PROB-W1' 
   H1MF10D = 'S20Q10D MALE FRIEND4-TALK ON PHONE-W1' 
   H1MF2E  = 'S20Q1E MALE FRIEND5- SCHOOL-W1' 
   H1MF3E  = 'S20Q2E MALE FRIEND5-GRADE-W1' 
   H1MF4E  = 'S20Q3E MALE FRIEND5- SAMPLE SCHOOL-W1' 
   H1MF5E  = 'S20Q4E MALE FRIEND5- SISTER SCHOOL-W1' 
   H1MF6E  = 'S20Q6E MALE FRIEND5-FRIENDS HOUSE-W1' 
   H1MF7E  = 'S20Q7E MALE FRIEND5-MEET AFTER SCHOOL-W1' 
   H1MF8E  = 'S20Q8E MALE FRIEND5-TIME LAST WEEKEND-W1' 
   H1MF9E  = 'S20Q9E MALE FRIEND5-TALK ABOUT A PROB-W1' 
   H1MF10E = 'S20Q10E MALE FRIEND5-TALK ON PHONE-W1' 
   H1FF2A  = 'S20Q1A FEMALE FRIEND1- SCHOOL-W1' 
   H1FF3A  = 'S20Q2A FEMALE FRIEND1-GRADE-W1' 
   H1FF4A  = 'S20Q3A FEMALE FRIEND1-SAMPLE SCHOOL-W1' 
   H1FF5A  = 'S20Q4A FEMALE FRIEND1-SISTER SCHOOL-W1' 
   H1FF6A  = 'S20Q6A FEMALE FRIEND 1-FRIENDS HOUSE-W1' 
   H1FF7A  = 'S20Q7A FEMALE FRIEND1-MEET AFTER SCHL-W1' 
   H1FF8A  = 'S20Q8A FEMALE FRIEND1-TIME LAST WKEND-W1' 
   H1FF9A  = 'S20Q9A FEMALE FRIEND1-DISCUSS A PROB-W1' 
   H1FF10A = 'S20Q10A FEMALE FRIEND1-TALK ON PHONE-W1' 
   H1FF2B  = 'S20Q1B FEMALE FRIEND2- SCHOOL-W1' 
   H1FF3B  = 'S20Q2B FEMALE FRIEND2-GRADE-W1' 
   H1FF4B  = 'S20Q3B FEMALE FRIEND2- SAMPLE SCHOOL-W1' 
   H1FF5B  = 'S20Q4B FEMALE FRIEND2- SISTER SCHOOL-W1' 
   H1FF6B  = 'S20Q6B GO TO FEMALE FRIEND2 HOUSE-W1' 
   H1FF7B  = 'S20Q7B FEMALE FRIEND2-MEET AFTER SCHL-W1' 
   H1FF8B  = 'S20Q8B FEMALE FRIEND2-TIME LAST WKEND-W1' 
   H1FF9B  = 'S20Q9B FEMALE FRIEND2-DISCUSS A PROB-W1' 
   H1FF10B = 'S20Q10B FEMALE FRIEND2-TALK ON PHONE-W1' 
   H1FF2C  = 'S20Q1C FEMALE FRIEND3- SCHOOL-W1' 
   H1FF3C  = 'S20Q2C FEMALE FRIEND3-GRADE-W1' 
   H1FF4C  = 'S20Q3C FEMALE FRIEND3- SAMPLE SCHOOL-W1' 
   H1FF5C  = 'S20Q4C FEMALE FRIEND3- SISTER SCHOOL-W1' 
   H1FF6C  = 'S20Q6C FEMALE FRIEND3-FRIENDS HOUSE-W1' 
   H1FF7C  = 'S20Q7C FEMALE FRIEND3-MEET AFTER SCHL-W1' 
   H1FF8C  = 'S20Q8C FEMALE FRIEND3-TIME LAST WKEND-W1' 
   H1FF9C  = 'S20Q9C FEMALE FRIEND3-DISCUSS A PROB-W1' 
   H1FF10C = 'S20Q10C FEMALE FRIEND3-TALK ON PHONE-W1' 
   H1FF2D  = 'S20Q1D FEMALE FRIEND4- SCHOOL-W1' 
   H1FF3D  = 'S20Q2D FEMALE FRIEND4-GRADE-W1' 
   H1FF4D  = 'S20Q3D FEMALE FRIEND4- SAMPLE SCHOOL-W1' 
   H1FF5D  = 'S20Q4D FEMALE FRIEND4- SISTER SCHOOL-W1' 
   H1FF6D  = 'S20Q6D FEMALE FRIEND4-FRIENDS HOUSE-W1' 
   H1FF7D  = 'S20Q7D FEMALE FRIEND4-MEET AFTER SCHL-W1' 
   H1FF8D  = 'S20Q8D FEMALE FRIEND4-TIME LAST WKEND-W1' 
   H1FF9D  = 'S20Q9D FEMALE FRIEND4-DISCUSS A PROB-W1' 
   H1FF10D = 'S20Q10D FEMALE FRIEND4-TALK ON PHONE-W1' 
   H1FF2E  = 'S20Q1E FEMALE FRIEND5- SCHOOL-W1' 
   H1FF3E  = 'S20Q2E FEMALE FRIEND5-GRADE-W1' 
   H1FF4E  = 'S20Q3E FEMALE FRIEND5- SAMPLE SCHOOL-W1' 
   H1FF5E  = 'S20Q4E FEMALE FRIEND5- SISTER SCHOOL-W1' 
   H1FF6E  = 'S20Q6E FEMALE FRIEND5-FRIENDS HOUSE-W1' 
   H1FF7E  = 'S20Q7E FEMALE FRIEND5-MEET AFTER SCHL-W1' 
   H1FF8E  = 'S20Q8E FEMALE FRIEND5-TIME LAST WKEND-W1' 
   H1FF9E  = 'S20Q9E FEMALE FRIEND5-DISCUSS A PROB-W1' 
   H1FF10E = 'S20Q10E FEMALE FRIEND5-TALK ON PHONE-W1' 
   H1ID1A  = 'S21Q1A GO OUT TOGETHER IN A GROUP-W1' 
   H1ID1B  = 'S21Q1B MEET PARENTS OF PARTNER-W1' 
   H1ID1C  = 'S21Q1C SAY WE ARE A COUPLE-W1' 
   H1ID1D  = 'S21Q1D SEE LESS OF MY FRIENDS-W1' 
   H1ID1E  = 'S21Q1E GO OUT TOGETHER ALONE-W1' 
   H1ID1F  = 'S21Q1F WE WOULD HOLD HANDS-W1' 
   H1ID1G  = 'S21Q1G GIVE MY PARTNER A PRESENT-W1' 
   H1ID1H  = 'S21Q1H PARTNER  GIVE ME A PRESENT-W1' 
   H1ID1I  = 'S21Q1I TELL PARTNER I LOVE HIM/HER-W1' 
   H1ID1J  = 'S21Q1J WOULD TELL ME HE/SHE LOVES ME-W1' 
   H1ID1K  = 'S21Q1K THINK OF OURSELVES AS A COUPLE-W1' 
   H1ID1L  = 'S21Q1L TALK ABOUT CONTRACEPTION/STDS-W1' 
   H1ID1M  = 'S21Q1M KISS-W1' 
   H1ID1N  = 'S21Q1N TOUCH EACH OTHER-W1' 
   H1ID1O  = 'S21Q1O HAVE SEX-W1' 
   H1ID1P  = 'S21Q1P GET PREGNANT-W1' 
   H1ID1Q  = 'S21Q1Q GET MARRIED-W1' 
   H1ID1R  = 'S21Q1R NO CARDS TAKEN OUT-W1' 
   H1ID2_1 = 'S21Q2_1 FIRST EVENT-W1' 
   H1ID2_2 = 'S21Q2_2 SECOND EVENT-W1' 
   H1ID2_3 = 'S21Q2_3 THIRD EVENT-W1' 
   H1ID2_4 = 'S21Q2_4 FOURTH EVENT-W1' 
   H1ID2_5 = 'S21Q2_5 FIFTH EVENT-W1' 
   H1ID2_6 = 'S21Q2_6 SIXTH EVENT-W1' 
   H1ID2_7 = 'S21Q2_7 SEVENTH EVENT-W1' 
   H1ID2_8 = 'S21Q2_8 EIGHTH EVENT-W1' 
   H1ID2_9 = 'S21Q2_9 NINTH EVENT-W1' 
   H1ID2_10= 'S21Q2_10 TENTH EVENT-W1' 
   H1ID2_11= 'S21Q2_11 ELEVENTH EVENT-W1' 
   H1ID2_12= 'S21Q2_12 TWELFTH EVENT-W1' 
   H1ID2_13= 'S21Q2_13 THIRTEENTH EVENT-W1' 
   H1ID2_14= 'S21Q2_14 FOURTEENTH EVENT-W1' 
   H1ID2_15= 'S21Q2_15 FIFTEENTH EVENT-W1' 
   H1ID2_16= 'S21Q2_16 SIXTEENTH EVENT-W1' 
   H1ID2_17= 'S21Q2_17 SEVENTEENTH EVENT-W1' 
   H1ID5   = 'S21Q5 TAKEN PLEDGE TO REMAIN VIRGIN-W1' 
   H1ID6   = 'S21Q6 WOULD LIKE ROMANCE IN NEXT YEAR-W1' 
   H1RR1   = 'S22Q1 DID YOU HAVE A ROMANCE-W1' 
   RR_FLAG = 'FLAG-NO DATA FOR ROMANTIC RELATIONSHIPS' 
   H1LR1   = 'S23Q1 HOLD HAND W/ NONFAMILY MEMBER-W1' 
   H1LR2   = 'S23Q2 KISS NONFAMILY MEMBER-W1' 
   H1LR3   = 'S23Q3 TELL LOVE NONFAMILY MEMBER-W1' 
   H1LR4   = 'S23Q4 DO THESE THINGS W/ SAME PERSON-W1' 
   H1CO1   = 'S24Q1 EVER HAVE SEX-W1' 
   H1CO2M  = 'S24Q2M FIRST TIMEN SEX-MONTH-W1' 
   H1CO2Y  = 'S24Q2Y FIRST TIME SEX-YEAR-W1' 
   H1CO3   = 'S24Q3 FIRST TIME SEX-USE BIRTHCONTROL-W1' 
   H1CO4A  = 'S24Q4A FIRST TIME SEX-METHOD 1-W1' 
   H1CO4B  = 'S24Q4B FIRST TIME SEX-METHOD 2-W1' 
   H1CO4C  = 'S24Q4C FIRST TIME SEX-METHOD 3-W1' 
   H1CO5M  = 'S24Q5M MOST RECENT SEX-MONTH-W1' 
   H1CO5Y  = 'S24Q5Y MOST RECENT SEX-YEAR-W1' 
   H1CO6   = 'S24Q6 MOST RECENT SEX-BIRTHCONTROL-W1' 
   H1CO7A  = 'S24Q7A MOST RECENT SEX-METHOD 1-W1' 
   H1CO7B  = 'S24Q7B MOST RECENT SEX-METHOD 2-W1' 
   H1CO7C  = 'S24Q7C MOST RECENT SEX-METHOD 3-W1' 
   H1CO8   = 'S24Q8 EVER USE A CONDOM DURING SEX-W1' 
   H1CO9   = 'S24Q9 HOW OFTEN USE CONDOM-W1' 
   H1CO10  = 'S24Q10 FORCED SEX-W1' 
   H1CO11  = 'S24Q11 GET BIRTHCONTROL FR DR/CLINIC-W1' 
   H1CO12A = 'S24Q12A GET METHOD 1-W1' 
   H1CO12B = 'S24Q12B GET METHOD 2-W1' 
   H1CO12C = 'S24Q12C GET METHOD 3-W1' 
   H1CO13  = 'S24Q13 EVER USE BIRTHCONTROL PILLS-W1' 
   H1CO14M = 'S24Q14M FIRST BIRTHCONTROL PILL-MONTH-W1' 
   H1CO14Y = 'S24Q147 FIRST BIRTHCONTROL PILL-YEAR-W1' 
   H1CO15  = 'S24Q15 CURRENTLY ON BIRTHCONTROL PILL-W1' 
   H1CO16A = 'S24Q16A EVER DIAGNOSED-CHLAMYDIA-W1' 
   H1CO16B = 'S24Q16A EVER DIAGNOSED-SYPHILIS-W1' 
   H1CO16C = 'S24Q16A EVER DIAGNOSED-GONORRHEA-W1' 
   H1CO16D = 'S24Q16A EVER DIAGNOSED-HIV/AIDS-W1' 
   H1CO16E = 'S24Q16A EVER DIAGNOSED-GENITAL HERPES-W1' 
   H1CO16F = 'S24Q16A EVER DIAGNOSED-GENITAL WARTS-W1' 
   H1CO16G = 'S24Q16A EVER DIAGNOSED-TRICHOMONIASIS-W1' 
   H1CO16H = 'S24Q16A EVER DIAGNOSED-HEPATITIS B-W1' 
   H1CO16I = 'S24Q16A DIAGNOSED-BACTERL VAGINOSIS-W1' 
   H1CO16J = 'S24Q16A DIAGNOSED-NON-GONCL VAGINITIS-W1' 
   H1CO17A = 'S24Q17A WHEN TOLD-CHLAMYDIA-W1' 
   H1CO17B = 'S24Q17A WHEN TOLD-SYPHILIS-W1' 
   H1CO17C = 'S24Q17A WHEN TOLD-GONORRHEA-W1' 
   H1CO17D = 'S24Q17A WHEN TOLD-HIV/AIDS-W1' 
   H1CO17E = 'S24Q17A WHEN TOLD-GENITAL HERPES-W1' 
   H1CO17F = 'S24Q17A WHEN TOLD-GENITAL WARTS-W1' 
   H1CO17G = 'S24Q17A WHEN TOLD-TRICHOMONIASIS-W1' 
   H1CO17H = 'S24Q17A WHEN TOLD-HEPATITIS B-W1' 
   H1CO17I = 'S24Q17A WHEN TOLD-BACTERIAL VAGINOSIS-W1' 
   H1CO17J = 'S24Q17A WHEN TOLD-NON-GONCL VAGINITIS-W1' 
   H1RI1M_1= 'S25Q1M PARTNR1-DATE BEGAN-MONTH-W1' 
   H1RI1Y_1= 'S25Q1Y PARTNR1-DATE BEGAN-YEAR-W1' 
   H1RI2_1 = 'S25Q2 PARTNR1-YEAR RELATION BEGAN-W1' 
   H1RI3_1 = 'S25Q3 PARTNR1 HIS/HER AGE WHEN MET-W1' 
   H1RI4_1 = 'S25Q4 PARTNR1 APPROX PARTNERS AGE-W1' 
   H1RI5A_1= 'S25Q5 PARTNR1 HIS/HER GRADE WHEN MET-W1' 
   H1RI6_1 = 'S25Q6 PARTNR1 GO TO SAME SCHOOL-W1' 
   H1RI7_1 = 'S25Q7 PARTNR1 WHERE DID HE/SHE LIVE-W1' 
   H1RI8A_1= 'S25Q8A PARTNR1-SAME SCHOOL-W1' 
   H1RI8B_1= 'S25Q8B PARTNR1-SAME PL OF WORSHIP-W1' 
   H1RI8C_1= 'S25Q8C PARTNR1-NEIGHBORS-W1' 
   H1RI8D_1= 'S25Q8D PARTNR1-CASUAL ACQUAINTENCES-W1' 
   H1RI8E_1= 'S25Q8E PARTNR1-FRIENDS-W1' 
   H1RI8F_1= 'S25Q8F PARTNR1-SHARED MUTUAL FRIEND-W1' 
   H1RI8G_1= 'S25Q8G PARTNR1-SOME OTHER WAY-W1' 
   H1RI8H_1= 'S25Q8H PARTNR1-DID NOT KNOW BEFORE-W1' 
   H1RI9_1 = 'S25Q9 PARTNR1-HOW MANY FRIENDS KNEW-W1' 
   H1RI10_1= 'S25Q10 PARTNR1-STILL GOING ON-W1' 
   H1RI11M1= 'S25Q11M PARTNR1-WHEN DID IT END-MO-W1' 
   H1RI11Y1= 'S25Q11Y PARTNR1-WHEN DID IT END-YR-W1' 
   H1RI12_1= 'S25Q12 PARTNR1-WHAT YEAR DID IT END-W1' 
   H1RI13_1= 'S25Q13 PARTNR1-WHERE LIVE AT END-W1' 
   H1RI14_1= 'S25Q14 PARTNR1-SAMPLE/SISTER SCH NOW-W1' 
   H1RI15_1= 'S25Q15 PARTNR1-GRADE NOW-W1' 
   H1RI16_1= 'S25Q16 PARTNR1-HISPANIC/LATINO-W1' 
   H1RI17A1= 'S25Q17A PARTNR1-MEXICAN-W1' 
   H1RI17B1= 'S25Q17B PARTNR1-CHICANO-W1' 
   H1RI17C1= 'S25Q17C PARTNR1-CUBAN-W1' 
   H1RI17D1= 'S25Q17D PARTNR1-PUERTO RICAN-W1' 
   H1RI17E1= 'S25Q17E PARTNR1-CENTR/SOUTH AMERICAN-W1' 
   H1RI17F1= 'S25Q17F PARTNR1-OTHER HISPANIC-W1' 
   H1RI18A1= 'S25Q18A PARTNR1-WHITE-W1' 
   H1RI18B1= 'S25Q18B PARTNR1-AFRICAN AMERICAN-W1' 
   H1RI18C1= 'S25Q18C PARTNR1-AMERICAN INDIAN-W1' 
   H1RI18D1= 'S25Q18D PARTNR1-ASIAN-W1' 
   H1RI18E1= 'S25Q18E PARTNR1-OTHER RACE-W1' 
   H1RI19A1= 'S25Q19A PARTNR1-CHINESE-W1' 
   H1RI19B1= 'S25Q19B PARTNR1-FILIPINO-W1' 
   H1RI19C1= 'S25Q19C PARTNR1-JAPANESE-W1' 
   H1RI19D1= 'S25Q19D PARTNR1-ASIAN INDIAN-W1' 
   H1RI19E1= 'S25Q19E PARTNR1-KOREAN-W1' 
   H1RI19F1= 'S25Q19F PARTNR1-VIETNAMESE-W1' 
   H1RI19G1= 'S25Q19G PARTNR1-OTHER-W1' 
   H1RI20_1= 'S25Q20 PARTNR1-GENDER-W1' 
   H1RI21A1= 'S25Q21A PARTNR1-GROUP DATE-W1' 
   H1RI21B1= 'S25Q21B PARTNR1-MET PARENTS-W1' 
   H1RI21C1= 'S25Q21C PARTNR1-SAID WERE A COUPLE-W1' 
   H1RI21D1= 'S25Q21D PARTNR1-SAW LESS OF FRIENDS-W1' 
   H1RI21E1= 'S25Q21E PARTNR1-WENT OUT ALONE-W1' 
   H1RI21F1= 'S25Q21F PARTNR1-HELD HANDS-W1' 
   H1RI21G1= 'S25Q21G PARTNR1-GAVE A PRESENT-W1' 
   H1RI21H1= 'S25Q21H PARTNR1-RECEIVED A PRESENT-W1' 
   H1RI21I1= 'S25Q21I PARTNR1-SAID HE/SHE LOVED ME-W1' 
   H1RI21J1= 'S25Q21J PARTNR1-SAID I LOVED PARTNER-W1' 
   H1RI21K1= 'S25Q21K PARTNR1-CONSIDERED A COUPLE-W1' 
   H1RI21L1= 'S25Q21L PARTNR1-TALKED CONTRACEPT-W1' 
   H1RI21M1= 'S25Q21M PARTNR1-KISSED-W1' 
   H1RI21N1= 'S25Q21N PARTNR1-TOUCHED EACH OTHER-W1' 
   H1RI21O1= 'S25Q21O PARTNR1-HAD SEX-W1' 
   H1RI21P1= 'S25Q21P PARTNR1-TOUCHED GENITALS-W1' 
   H1RI21Q1= 'S25Q21Q PARTNR1-GOT PREGNANT-W1' 
   H1RI21R1= 'S25Q21R PARTNR1-GOT MARRIED-W1' 
   H1RI22A1= 'S25Q22A_1 PARTNR1-FIRST EVENT-W1' 
   H1RI22B1= 'S25Q22B_1 PARTNR1-SECOND EVENT-W1' 
   H1RI22C1= 'S25Q22C_1 PARTNR1-3RD EVENT-W1' 
   H1RI22D1= 'S25Q22D_1 PARTNR1-4TH EVENT-W1' 
   H1RI22E1= 'S25Q22E_1 PARTNR1-5TH EVENT-W1' 
   H1RI22F1= 'S25Q22F_1 PARTNR1-6TH EVENT-W1' 
   H1RI22G1= 'S25Q22G_1 PARTNR1-7TH EVENT-W1' 
   H1RI22H1= 'S25Q22H_1 PARTNR1-8TH EVENT-W1' 
   H1RI22I1= 'S25Q22I_1 PARTNR1-9TH EVENT-W1' 
   H1RI22J1= 'S25Q22J_1 PARTNR1-10TH EVENT-W1' 
   H1RI22K1= 'S25Q22K_1 PARTNR1-11TH EVENT-W1' 
   H1RI22L1= 'S25Q22L_1 PARTNR1-12TH EVENT-W1' 
   H1RI22M1= 'S25Q22M_1 PARTNR1-13TH EVENT-W1' 
   H1RI22N1= 'S25Q22N_1 PARTNR1-14TH EVENT-W1' 
   H1RI22O1= 'S25Q22O_1 PARTNR1-15TH EVENT-W1' 
   H1RI22P1= 'S25Q22P_1 PARTNR1-16TH EVENT-W1' 
   H1RI22Q1= 'S25Q22Q_1 PARTNR1-17TH EVENT-W1' 
   H1RI22R1= 'S25Q22R_1 PARTNR1-18TH EVENT-W1' 
   H1RI24A1= 'S25Q24A_1 PARTNR1-SEXUAL INTERCOURSE-W1' 
   H1RI25M1= 'S25Q25_1M PARTNR1-FIRST TIME SEX-MO-W1' 
   H1RI25Y1= 'S25Q25_1Y PARTNR1-FIRST TIME SEX-YR-W1' 
   H1RI26M1= 'S25Q26_1M PARTNR1-MOST RECENT SEX-MO-W1' 
   H1RI26Y1= 'S25Q26_1Y PARTNR1-MOST RECENT SEX-YR-W1' 
   H1RI27_1= 'S25Q27_1 PARTNR1-SEX MORE THEN ONCE-W1' 
   H1RI28_1= 'S25Q28_1 PARTNR1-USE BIRTHCONTROL-W1' 
   H1RI29A1= 'S25Q29A_1 PARTNR1-METHOD 1-W1' 
   H1RI29B1= 'S25Q29B_1 PARTNR1-METHOD 2-W1' 
   H1RI29C1= 'S25Q29C_1 PARTNR1-METHOD 3-W1' 
   H1RI30_1= 'S25Q30_1 PARTNR1-USE A CONDOM-W1' 
   H1RI31_1= 'S25Q31_1 PARTNR1-USE OTHER METHOD-W1' 
   H1RI32_1= 'S25Q32_1 PARTNR1-BIRTHCONTROL ALWAYS-W1' 
   H1RI33A1= 'S25Q33A_1 PARTNR1-METHOD 1-W1' 
   H1RI33B1= 'S25Q33B_1 PARTNR1-METHOD 2-W1' 
   H1RI33C1= 'S25Q33C_1 PARTNR1-METHOD 3-W1' 
   H1RI34_1= 'S25Q34_1 PARTNR1-EVER USE CONDOM-W1' 
   H1RI35_1= 'S25Q35_1 PARTNR1-USE >1 METHOD-W1' 
   H1RI36_1= 'S25Q35_1 PARTNR1-USE BIRTHCONTROL-W1' 
   H1RI37_1= 'S25Q37_1 PARTNR1-ALWAYS BIRTHCONTROL-W1' 
   H1RI38A1= 'S25Q38A_1 PARTNR1-METHOD 1-W1' 
   H1RI38B1= 'S25Q38B_1 PARTNR1-METHOD 2-W1' 
   H1RI38C1= 'S25Q38C_1 PARTNR1-METHOD 3-W1' 
   H1RI39_1= 'S25Q39_1 PARTNR1-EVER USE CONDOM-W1' 
   H1RI40_1= 'S25Q40_1 PARTNR1-USE >1 METHOD-W1' 
   H1RI41_1= 'S25Q41_1 PARTNR1-NO. TIMES HAD SEX-W1' 
   H1RI1M_2= 'S25Q1M PARTNR2-DATE BEGAN-MONTH-W1' 
   H1RI1Y_2= 'S25Q1Y PARTNR2-DATE BEGAN-YEAR-W1' 
   H1RI2_2 = 'S25Q2 PARTNR2-YEAR RELATION BEGAN-W1' 
   H1RI3_2 = 'S25Q3 PARTNR2 HIS/HER AGE WHEN MET-W1' 
   H1RI4_2 = 'S25Q4 PARTNR2 APPROX PARTNERS AGE-W1' 
   H1RI5A_2= 'S25Q5 PARTNR2 HIS/HER GRADE WHEN MET-W1' 
   H1RI6_2 = 'S25Q6 PARTNR2 GO TO SAME SCHOOL-W1' 
   H1RI7_2 = 'S25Q7 PARTNR2 WHERE DID HE/SHE LIVE-W1' 
   H1RI8A_2= 'S25Q8A PARTNR2-SAME SCHOOL-W1' 
   H1RI8B_2= 'S25Q8B PARTNR2-SAME PL OF WORSHIP-W1' 
   H1RI8C_2= 'S25Q8C PARTNR2-NEIGHBORS-W1' 
   H1RI8D_2= 'S25Q8D PARTNR2-CASUAL ACQUAINTENCES-W1' 
   H1RI8E_2= 'S25Q8E PARTNR2-FRIENDS-W1' 
   H1RI8F_2= 'S25Q8F PARTNR2-SHARED MUTUAL FRIEND-W1' 
   H1RI8G_2= 'S25Q8G PARTNR2-SOME OTHER WAY-W1' 
   H1RI8H_2= 'S25Q8H PARTNR2-DID NOT KNOW BEFORE-W1' 
   H1RI9_2 = 'S25Q9 PARTNR2-HOW MANY FRIENDS KNEW-W1' 
   H1RI10_2= 'S25Q10 PARTNR2-STILL GOING ON-W1' 
   H1RI11M2= 'S25Q11M PARTNR2-WHEN DID IT END-MO-W1' 
   H1RI11Y2= 'S25Q11Y PARTNR2-WHEN DID IT END-YR-W1' 
   H1RI12_2= 'S25Q12 PARTNR2-WHAT YEAR DID IT END-W1' 
   H1RI13_2= 'S25Q13 PARTNR2-WHERE LIVE AT END-W1' 
   H1RI14_2= 'S25Q14 PARTNR2-SAMPLE/SISTER SCH NOW-W1' 
   H1RI15_2= 'S25Q15 PARTNR2-GRADE NOW-W1' 
   H1RI16_2= 'S25Q16 PARTNR2-HISPANIC/LATINO-W1' 
   H1RI17A2= 'S25Q17A PARTNR2-MEXICAN-W1' 
   H1RI17B2= 'S25Q17B PARTNR2-CHICANO-W1' 
   H1RI17C2= 'S25Q17C PARTNR2-CUBAN-W1' 
   H1RI17D2= 'S25Q17D PARTNR2-PUERTO RICAN-W1' 
   H1RI17E2= 'S25Q17E PARTNR2-CENTR/SOUTH AMERICAN-W1' 
   H1RI17F2= 'S25Q17F PARTNR2-OTHER HISPANIC-W1' 
   H1RI18A2= 'S25Q18A PARTNR2-WHITE-W1' 
   H1RI18B2= 'S25Q18B PARTNR2-AFRICAN AMERICAN-W1' 
   H1RI18C2= 'S25Q18C PARTNR2-AMERICAN INDIAN-W1' 
   H1RI18D2= 'S25Q18D PARTNR2-ASIAN-W1' 
   H1RI18E2= 'S25Q18E PARTNR2-OTHER RACE-W1' 
   H1RI19A2= 'S25Q19A PARTNR2-CHINESE-W1' 
   H1RI19B2= 'S25Q19B PARTNR2-FILIPINO-W1' 
   H1RI19C2= 'S25Q19C PARTNR2-JAPANESE-W1' 
   H1RI19D2= 'S25Q19D PARTNR2-ASIAN INDIAN-W1' 
   H1RI19E2= 'S25Q19E PARTNR2-KOREAN-W1' 
   H1RI19F2= 'S25Q19F PARTNR2-VIETNAMESE-W1' 
   H1RI19G2= 'S25Q19G PARTNR2-OTHER-W1' 
   H1RI20_2= 'S25Q20 PARTNR2-GENDER-W1' 
   H1RI21A2= 'S25Q21A PARTNR2-GROUP DATE-W1' 
   H1RI21B2= 'S25Q21B PARTNR2-MET PARENTS-W1' 
   H1RI21C2= 'S25Q21C PARTNR2-SAID WERE A COUPLE-W1' 
   H1RI21D2= 'S25Q21D PARTNR2-SAW LESS OF FRIENDS-W1' 
   H1RI21E2= 'S25Q21E PARTNR2-WENT OUT ALONE-W1' 
   H1RI21F2= 'S25Q21F PARTNR2-HELD HANDS-W1' 
   H1RI21G2= 'S25Q21G PARTNR2-GAVE A PRESENT-W1' 
   H1RI21H2= 'S25Q21H PARTNR2-RECEIVED A PRESENT-W1' 
   H1RI21I2= 'S25Q21I PARTNR2-SAID HE/SHE LOVED ME-W1' 
   H1RI21J2= 'S25Q21J PARTNR2-SAID I LOVED PARTNER-W1' 
   H1RI21K2= 'S25Q21K PARTNR2-CONSIDERED A COUPLE-W1' 
   H1RI21L2= 'S25Q21L PARTNR2-TALKED CONTRACEPT-W1' 
   H1RI21M2= 'S25Q21M PARTNR2-KISSED-W1' 
   H1RI21N2= 'S25Q21N PARTNR2-TOUCHED EACH OTHER-W1' 
   H1RI21O2= 'S25Q21O PARTNR2-HAD SEX-W1' 
   H1RI21P2= 'S25Q21P PARTNR2-TOUCHED GENITALS-W1' 
   H1RI21Q2= 'S25Q21Q PARTNR2-GOT PREGNANT-W1' 
   H1RI21R2= 'S25Q21R PARTNR2-GOT MARRIED-W1' 
   H1RI22A2= 'S25Q22A_2 PARTNR2-FIRST EVENT-W1' 
   H1RI22B2= 'S25Q22B_2 PARTNR2-SECOND EVENT-W1' 
   H1RI22C2= 'S25Q22C_2 PARTNR2-3RD EVENT-W1' 
   H1RI22D2= 'S25Q22D_2 PARTNR2-4TH EVENT-W1' 
   H1RI22E2= 'S25Q22E_2 PARTNR2-5TH EVENT-W1' 
   H1RI22F2= 'S25Q22F_2 PARTNR2-6TH EVENT-W1' 
   H1RI22G2= 'S25Q22G_2 PARTNR2-7TH EVENT-W1' 
   H1RI22H2= 'S25Q22H_2 PARTNR2-8TH EVENT-W1' 
   H1RI22I2= 'S25Q22I_2 PARTNR2-9TH EVENT-W1' 
   H1RI22J2= 'S25Q22J_2 PARTNR2-10TH EVENT-W1' 
   H1RI22K2= 'S25Q22K_2 PARTNR2-11TH EVENT-W1' 
   H1RI22L2= 'S25Q22L_2 PARTNR2-12TH EVENT-W1' 
   H1RI22M2= 'S25Q22M_2 PARTNR2-13TH EVENT-W1' 
   H1RI22N2= 'S25Q22N_2 PARTNR2-14TH EVENT-W1' 
   H1RI22O2= 'S25Q22O_2 PARTNR2-15TH EVENT-W1' 
   H1RI22P2= 'S25Q22P_2 PARTNR2-16TH EVENT-W1' 
   H1RI22Q2= 'S25Q22Q_2 PARTNR2-17TH EVENT-W1' 
   H1RI22R2= 'S25Q22R_2 PARTNR2-18TH EVENT-W1' 
   H1RI24A2= 'S25Q24A_2 PARTNR2-SEXUAL INTERCOURSE-W1' 
   H1RI25M2= 'S25Q25_2M PARTNR2-FIRST TIME SEX-MO-W1' 
   H1RI25Y2= 'S25Q25_2Y PARTNR2-FIRST TIME SEX-YR-W1' 
   H1RI26M2= 'S25Q26_2M PARTNR2-MOST RECENT SEX-MO-W1' 
   H1RI26Y2= 'S25Q26_2Y PARTNR2-MOST RECENT SEX-YR-W1' 
   H1RI27_2= 'S25Q27_2 PARTNR2-SEX MORE THEN ONCE-W1' 
   H1RI28_2= 'S25Q28_2 PARTNR2-USE BIRTHCONTROL-W1' 
   H1RI29A2= 'S25Q29A_2 PARTNR2-METHOD 1-W1' 
   H1RI29B2= 'S25Q29B_2 PARTNR2-METHOD 2-W1' 
   H1RI29C2= 'S25Q29C_2 PARTNR2-METHOD 3-W1' 
   H1RI30_2= 'S25Q30_2 PARTNR2-USE A CONDOM-W1' 
   H1RI31_2= 'S25Q31_2 PARTNR2-USE OTHER METHOD-W1' 
   H1RI32_2= 'S25Q32_2 PARTNR2-BIRTHCONTROL ALWAYS-W1' 
   H1RI33A2= 'S25Q33A_2 PARTNR2-METHOD 1-W1' 
   H1RI33B2= 'S25Q33B_2 PARTNR2-METHOD 2-W1' 
   H1RI33C2= 'S25Q33C_2 PARTNR2-METHOD 3-W1' 
   H1RI34_2= 'S25Q34_2 PARTNR2-EVER USE CONDOM-W1' 
   H1RI35_2= 'S25Q35_2 PARTNR2-USE >1 METHOD-W1' 
   H1RI36_2= 'S25Q35_2 PARTNR2-USE BIRTHCONTROL-W1' 
   H1RI37_2= 'S25Q37_2 PARTNR2-ALWAYS BIRTHCONTROL-W1' 
   H1RI38A2= 'S25Q38A_2 PARTNR2-METHOD 1-W1' 
   H1RI38B2= 'S25Q38B_2 PARTNR2-METHOD 2-W1' 
   H1RI38C2= 'S25Q38C_2 PARTNR2-METHOD 3-W1' 
   H1RI39_2= 'S25Q39_2 PARTNR2-EVER USE CONDOM-W1' 
   H1RI40_2= 'S25Q40_2 PARTNR2-USE >1 METHOD-W1' 
   H1RI41_2= 'S25Q41_2 PARTNR2-NO. TIMES HAD SEX-W1' 
   H1RI1M_3= 'S25Q1M PARTNR3-DATE BEGAN-MONTH-W1' 
   H1RI1Y_3= 'S25Q1Y PARTNR3-DATE BEGAN-YEAR-W1' 
   H1RI2_3 = 'S25Q2 PARTNR3-YEAR RELATION BEGAN-W1' 
   H1RI3_3 = 'S25Q3 PARTNR3 HIS/HER AGE WHEN MET-W1' 
   H1RI4_3 = 'S25Q4 PARTNR3 APPROX PARTNERS AGE-W1' 
   H1RI5A_3= 'S25Q5 PARTNR3 HIS/HER GRADE WHEN MET-W1' 
   H1RI6_3 = 'S25Q6 PARTNR3 GO TO SAME SCHOOL-W1' 
   H1RI7_3 = 'S25Q7 PARTNR3 WHERE DID HE/SHE LIVE-W1' 
   H1RI8A_3= 'S25Q8A PARTNR3-SAME SCHOOL-W1' 
   H1RI8B_3= 'S25Q8B PARTNR3-SAME PL OF WORSHIP-W1' 
   H1RI8C_3= 'S25Q8C PARTNR3-NEIGHBORS-W1' 
   H1RI8D_3= 'S25Q8D PARTNR3-CASUAL ACQUAINTENCES-W1' 
   H1RI8E_3= 'S25Q8E PARTNR3-FRIENDS-W1' 
   H1RI8F_3= 'S25Q8F PARTNR3-SHARED MUTUAL FRIEND-W1' 
   H1RI8G_3= 'S25Q8G PARTNR3-SOME OTHER WAY-W1' 
   H1RI8H_3= 'S25Q8H PARTNR3-DID NOT KNOW BEFORE-W1' 
   H1RI9_3 = 'S25Q9 PARTNR3-HOW MANY FRIENDS KNEW-W1' 
   H1RI10_3= 'S25Q10 PARTNR3-STILL GOING ON-W1' 
   H1RI11M3= 'S25Q11M PARTNR3-WHEN DID IT END-MO-W1' 
   H1RI11Y3= 'S25Q11Y PARTNR3-WHEN DID IT END-YR-W1' 
   H1RI12_3= 'S25Q12 PARTNR3-WHAT YEAR DID IT END-W1' 
   H1RI13_3= 'S25Q13 PARTNR3-WHERE LIVE AT END-W1' 
   H1RI14_3= 'S25Q14 PARTNR3-SAMPLE/SISTER SCH NOW-W1' 
   H1RI15_3= 'S25Q15 PARTNR3-GRADE NOW-W1' 
   H1RI16_3= 'S25Q16 PARTNR3-HISPANIC/LATINO-W1' 
   H1RI17A3= 'S25Q17A PARTNR3-MEXICAN-W1' 
   H1RI17B3= 'S25Q17B PARTNR3-CHICANO-W1' 
   H1RI17C3= 'S25Q17C PARTNR3-CUBAN-W1' 
   H1RI17D3= 'S25Q17D PARTNR3-PUERTO RICAN-W1' 
   H1RI17E3= 'S25Q17E PARTNR3-CENTR/SOUTH AMERICAN-W1' 
   H1RI17F3= 'S25Q17F PARTNR3-OTHER HISPANIC-W1' 
   H1RI18A3= 'S25Q18A PARTNR3-WHITE-W1' 
   H1RI18B3= 'S25Q18B PARTNR3-AFRICAN AMERICAN-W1' 
   H1RI18C3= 'S25Q18C PARTNR3-AMERICAN INDIAN-W1' 
   H1RI18D3= 'S25Q18D PARTNR3-ASIAN-W1' 
   H1RI18E3= 'S25Q18E PARTNR3-OTHER RACE-W1' 
   H1RI19A3= 'S25Q19A PARTNR3-CHINESE-W1' 
   H1RI19B3= 'S25Q19B PARTNR3-FILIPINO-W1' 
   H1RI19C3= 'S25Q19C PARTNR3-JAPANESE-W1' 
   H1RI19D3= 'S25Q19D PARTNR3-ASIAN INDIAN-W1' 
   H1RI19E3= 'S25Q19E PARTNR3-KOREAN-W1' 
   H1RI19F3= 'S25Q19F PARTNR3-VIETNAMESE-W1' 
   H1RI19G3= 'S25Q19G PARTNR3-OTHER-W1' 
   H1RI20_3= 'S25Q20 PARTNR3-GENDER-W1' 
   H1RI21A3= 'S25Q21A PARTNR3-GROUP DATE-W1' 
   H1RI21B3= 'S25Q21B PARTNR3-MET PARENTS-W1' 
   H1RI21C3= 'S25Q21C PARTNR3-SAID WERE A COUPLE-W1' 
   H1RI21D3= 'S25Q21D PARTNR3-SAW LESS OF FRIENDS-W1' 
   H1RI21E3= 'S25Q21E PARTNR3-WENT OUT ALONE-W1' 
   H1RI21F3= 'S25Q21F PARTNR3-HELD HANDS-W1' 
   H1RI21G3= 'S25Q21G PARTNR3-GAVE A PRESENT-W1' 
   H1RI21H3= 'S25Q21H PARTNR3-RECEIVED A PRESENT-W1' 
   H1RI21I3= 'S25Q21I PARTNR3-SAID HE/SHE LOVED ME-W1' 
   H1RI21J3= 'S25Q21J PARTNR3-SAID I LOVED PARTNER-W1' 
   H1RI21K3= 'S25Q21K PARTNR3-CONSIDERED A COUPLE-W1' 
   H1RI21L3= 'S25Q21L PARTNR3-TALKED CONTRACEPT-W1' 
   H1RI21M3= 'S25Q21M PARTNR3-KISSED-W1' 
   H1RI21N3= 'S25Q21N PARTNR3-TOUCHED EACH OTHER-W1' 
   H1RI21O3= 'S25Q21O PARTNR3-HAD SEX-W1' 
   H1RI21P3= 'S25Q21P PARTNR3-TOUCHED GENITALS-W1' 
   H1RI21Q3= 'S25Q21Q PARTNR3-GOT PREGNANT-W1' 
   H1RI21R3= 'S25Q21R PARTNR3-GOT MARRIED-W1' 
   H1RI22A3= 'S25Q22A_3 PARTNR3-FIRST EVENT-W1' 
   H1RI22B3= 'S25Q22B_3 PARTNR3-SECOND EVENT-W1' 
   H1RI22C3= 'S25Q22C_3 PARTNR3-3RD EVENT-W1' 
   H1RI22D3= 'S25Q22D_3 PARTNR3-4TH EVENT-W1' 
   H1RI22E3= 'S25Q22E_3 PARTNR3-5TH EVENT-W1' 
   H1RI22F3= 'S25Q22F_3 PARTNR3-6TH EVENT-W1' 
   H1RI22G3= 'S25Q22G_3 PARTNR3-7TH EVENT-W1' 
   H1RI22H3= 'S25Q22H_3 PARTNR3-8TH EVENT-W1' 
   H1RI22I3= 'S25Q22I_3 PARTNR3-9TH EVENT-W1' 
   H1RI22J3= 'S25Q22J_3 PARTNR3-10TH EVENT-W1' 
   H1RI22K3= 'S25Q22K_3 PARTNR3-11TH EVENT-W1' 
   H1RI22L3= 'S25Q22L_3 PARTNR3-12TH EVENT-W1' 
   H1RI22M3= 'S25Q22M_3 PARTNR3-13TH EVENT-W1' 
   H1RI22N3= 'S25Q22N_3 PARTNR3-14TH EVENT-W1' 
   H1RI22O3= 'S25Q22O_3 PARTNR3-15TH EVENT-W1' 
   H1RI22P3= 'S25Q22P_3 PARTNR3-16TH EVENT-W1' 
   H1RI22Q3= 'S25Q22Q_3 PARTNR3-17TH EVENT-W1' 
   H1RI22R3= 'S25Q22R_3 PARTNR3-18TH EVENT-W1' 
   H1RI24A3= 'S25Q24A_3 PARTNR3-SEXUAL INTERCOURSE-W1' 
   H1RI25M3= 'S25Q25_3M PARTNR3-FIRST TIME SEX-MO-W1' 
   H1RI25Y3= 'S25Q25_3Y PARTNR3-FIRST TIME SEX-YR-W1' 
   H1RI26M3= 'S25Q26_3M PARTNR3-MOST RECENT SEX-MO-W1' 
   H1RI26Y3= 'S25Q26_3Y PARTNR3-MOST RECENT SEX-YR-W1' 
   H1RI27_3= 'S25Q27_3 PARTNR3-SEX MORE THEN ONCE-W1' 
   H1RI28_3= 'S25Q28_3 PARTNR3-USE BIRTHCONTROL-W1' 
   H1RI29A3= 'S25Q29A_3 PARTNR3-METHOD 1-W1' 
   H1RI29B3= 'S25Q29B_3 PARTNR3-METHOD 2-W1' 
   H1RI29C3= 'S25Q29C_3 PARTNR3-METHOD 3-W1' 
   H1RI30_3= 'S25Q30_3 PARTNR3-USE A CONDOM-W1' 
   H1RI31_3= 'S25Q31_3 PARTNR3-USE OTHER METHOD-W1' 
   H1RI32_3= 'S25Q32_3 PARTNR3-BIRTHCONTROL ALWAYS-W1' 
   H1RI33A3= 'S25Q33A_3 PARTNR3-METHOD 1-W1' 
   H1RI33B3= 'S25Q33B_3 PARTNR3-METHOD 2-W1' 
   H1RI33C3= 'S25Q33C_3 PARTNR3-METHOD 3-W1' 
   H1RI34_3= 'S25Q34_3 PARTNR3-EVER USE CONDOM-W1' 
   H1RI35_3= 'S25Q35_3 PARTNR3-USE >1 METHOD-W1' 
   H1RI36_3= 'S25Q35_3 PARTNR3-USE BIRTHCONTROL-W1' 
   H1RI37_3= 'S25Q37_3 PARTNR3-ALWAYS BIRTHCONTROL-W1' 
   H1RI38A3= 'S25Q38A_3 PARTNR3-METHOD 1-W1' 
   H1RI38B3= 'S25Q38B_3 PARTNR3-METHOD 2-W1' 
   H1RI38C3= 'S25Q38C_3 PARTNR3-METHOD 3-W1' 
   H1RI39_3= 'S25Q39_3 PARTNR3-EVER USE CONDOM-W1' 
   H1RI40_3= 'S25Q40_3 PARTNR3-USE >1 METHOD-W1' 
   H1RI41_3= 'S25Q41_3 PARTNR3-NO. TIMES HAD SEX-W1' 
   RICARD1 = 'Flag indicating recoding of relationship activity card sequence for first relationship' 
   RICARD2 = 'Flag indicating recoding of relationship activity card sequence for second relationship' 
   RICARD3 = 'Flag indicating recoding of relationship activity card sequence for third relationship' 
   H1NR1   = 'S26Q1 EVER ATTRACTED TO A FEMALE-W1' 
   H1NR2   = 'S26Q2 EVER ATTRACTED TO A MALE-W1' 
   H1NR3   = 'S26Q3 SEX FOR DRUGS OR MONEY-W1' 
   H1NR4   = 'S26Q4 FREQ-SEX FOR DRUGS OR MONEY-W1' 
   H1NR5   = 'S26Q5 NON-ROMANCE SEX W/ ANYONE-W1' 
   H1NR6   = 'S26Q6 TOTAL NO OF SEX PARTNERS-W1' 
   H1NR7   = 'SINCE 1/94,# OF SEX RELATIONSHIPS-W1' 
   H1NR8   = 'SINCE 1/94,# OF NR SEX RELATIONSHIPS-W1' 
   H1NR10_1= 'S26Q10_1 PARTNR1-EVER HOLD HANDS-W1' 
   H1NR11_1= 'S26Q11_1 PARTNR1-EVER KISS-W1' 
   H1NR12_1= 'S26Q12_1 PARTNR1-SAY LOVE HIM/HER-W1' 
   NRRXFLG1= 'PARTNER 1 NR DATA IN RX SECTION-W1' 
   H1RX1M_1= 'S26RX1M PARTNR1-DATE BEGAN-MONTH-W1' 
   H1RX1Y_1= 'S26RX1Y PARTNR1-DATE BEGAN-YEAR-W1' 
   H1RX2_1 = 'S26RX2 PARTNR1-YEAR RELATION BEGAN-W1' 
   H1RX3_1 = 'S26RX3 PARTNR1 HIS/HER AGE WHEN MET-W1' 
   H1RX4_1 = 'S26RX4 PARTNR1 APPROX PARTNERS AGE-W1' 
   H1RX5A_1= 'S26RX5 PARTNR1 HIS/HER GRADE WHEN MET-W1' 
   H1RX6_1 = 'S26RX6 PARTNR1 GO TO SAME SCHOOL-W1' 
   H1RX7_1 = 'S26RX7 PARTNR1 WHERE DID HE/SHE LIVE-W1' 
   H1RX8A_1= 'S26RX8A PARTNR1-SAME SCHOOL-W1' 
   H1RX8B_1= 'S26RX8B PARTNR1-SAME PL OF WORSHIP-W1' 
   H1RX8C_1= 'S26RX8C PARTNR1-NEIGHBORS-W1' 
   H1RX8D_1= 'S26RX8D PARTNR1-CASUAL ACQUAINTENCES-W1' 
   H1RX8E_1= 'S26RX8E PARTNR1-FRIENDS-W1' 
   H1RX8F_1= 'S26RX8F PARTNR1-SHARED MUTUAL FRIEND-W1' 
   H1RX8G_1= 'S26RX8G PARTNR1-SOME OTHER WAY-W1' 
   H1RX8H_1= 'S26RX8H PARTNR1-DID NOT KNOW BEFORE-W1' 
   H1RX9_1 = 'S26RX9 PARTNR1-HOW MANY FRIENDS KNEW-W1' 
   H1RX10_1= 'S26RX10 PARTNR1-STILL GOING ON-W1' 
   H1RX11M1= 'S26RX11M PARTNR1-WHEN DID IT END-MO-W1' 
   H1RX11Y1= 'S26RX11Y PARTNR1-WHEN DID IT END-YR-W1' 
   H1RX12_1= 'S26RX12 PARTNR1-WHAT YEAR DID IT END-W1' 
   H1RX13_1= 'S26RX13 PARTNR1-WHERE LIVE AT END-W1' 
   H1RX14_1= 'S26RX14 PARTNR1-SAMPLE/SISTER SCH NOW-W1' 
   H1RX15_1= 'S26RX15 PARTNR1-GRADE NOW-W1' 
   H1RX16_1= 'S26RX16 PARTNR1-HISPANIC/LATINO-W1' 
   H1RX17A1= 'S26RX17A PARTNR1-MEXICAN-W1' 
   H1RX17B1= 'S26RX17B PARTNR1-CHICANO-W1' 
   H1RX17C1= 'S26RX17C PARTNR1-CUBAN-W1' 
   H1RX17D1= 'S26RX17D PARTNR1-PUERTO RICAN-W1' 
   H1RX17E1= 'S26RX17E PARTNR1-CENTR/SOUTH AMERICAN-W1' 
   H1RX17F1= 'S26RX17F PARTNR1-OTHER HISPANIC-W1' 
   H1RX18A1= 'S26RX18A PARTNR1-WHITE-W1' 
   H1RX18B1= 'S26RX18B PARTNR1-AFRICAN AMERICAN-W1' 
   H1RX18C1= 'S26RX18C PARTNR1-AMERICAN INDIAN-W1' 
   H1RX18D1= 'S26RX18D PARTNR1-ASIAN-W1' 
   H1RX18E1= 'S26RX18E PARTNR1-OTHER RACE-W1' 
   H1RX19A1= 'S26RX19A PARTNR1-CHINESE-W1' 
   H1RX19B1= 'S26RX19B PARTNR1-FILIPINO-W1' 
   H1RX19C1= 'S26RX19C PARTNR1-JAPANESE-W1' 
   H1RX19D1= 'S26RX19D PARTNR1-ASIAN INDIAN-W1' 
   H1RX19E1= 'S26RX19E PARTNR1-KOREAN-W1' 
   H1RX19F1= 'S26RX19F PARTNR1-VIETNAMESE-W1' 
   H1RX19G1= 'S26RX19G PARTNR1-OTHER-W1' 
   H1RX20_1= 'S26RX20 PARTNR1-GENDER-W1' 
   H1RX21A1= 'S26RX21A PARTNR1-GROUP DATE-W1' 
   H1RX21B1= 'S26RX21B PARTNR1-MET PARENTS-W1' 
   H1RX21C1= 'S26RX21C PARTNR1-SAID WERE A COUPLE-W1' 
   H1RX21D1= 'S26RX21D PARTNR1-SAW LESS OF FRIENDS-W1' 
   H1RX21E1= 'S26RX21E PARTNR1-WENT OUT ALONE-W1' 
   H1RX21F1= 'S26RX21F PARTNR1-HELD HANDS-W1' 
   H1RX21G1= 'S26RX21G PARTNR1-GAVE A PRESENT-W1' 
   H1RX21H1= 'S26RX21H PARTNR1-RECEIVED A PRESENT-W1' 
   H1RX21I1= 'S26RX21I PARTNR1-SAID HE/SHE LOVED ME-W1' 
   H1RX21J1= 'S26RX21J PARTNR1-SAID I LOVED PARTNER-W1' 
   H1RX21K1= 'S26RX21K PARTNR1-CONSIDERED A COUPLE-W1' 
   H1RX21L1= 'S26RX21L PARTNR1-TALKED CONTRACEPT-W1' 
   H1RX21M1= 'S26RX21M PARTNR1-KISSED-W1' 
   H1RX21N1= 'S26RX21N PARTNR1-TOUCHED EACH OTHER-W1' 
   H1RX21O1= 'S26RX21O PARTNR1-HAD SEX-W1' 
   H1RX21P1= 'S26RX21P PARTNR1-TOUCHED GENITALS-W1' 
   H1RX21Q1= 'S26RX21Q PARTNR1-GOT PREGNANT-W1' 
   H1RX21R1= 'S26RX21R PARTNR1-GOT MARRIED-W1' 
   H1RX22A1= 'S26RX22A_1 PARTNR1-FIRST EVENT-W1' 
   H1RX22B1= 'S26RX22B_1 PARTNR1-SECOND EVENT-W1' 
   H1RX22C1= 'S26RX22C_1 PARTNR1-3RD EVENT-W1' 
   H1RX22D1= 'S26RX22D_1 PARTNR1-4TH EVENT-W1' 
   H1RX22E1= 'S26RX22E_1 PARTNR1-5TH EVENT-W1' 
   H1RX22F1= 'S26RX22F_1 PARTNR1-6TH EVENT-W1' 
   H1RX22G1= 'S26RX22G_1 PARTNR1-7TH EVENT-W1' 
   H1RX22H1= 'S26RX22H_1 PARTNR1-8TH EVENT-W1' 
   H1RX22I1= 'S26RX22I_1 PARTNR1-9TH EVENT-W1' 
   H1RX22J1= 'S26RX22J_1 PARTNR1-10TH EVENT-W1' 
   H1RX22K1= 'S26RX22K_1 PARTNR1-11TH EVENT-W1' 
   H1RX22L1= 'S26RX22L_1 PARTNR1-12TH EVENT-W1' 
   H1RX22M1= 'S26RX22M_1 PARTNR1-13TH EVENT-W1' 
   H1RX22N1= 'S26RX22N_1 PARTNR1-14TH EVENT-W1' 
   H1RX22O1= 'S26RX22O_1 PARTNR1-15TH EVENT-W1' 
   H1RX22P1= 'S26RX22P_1 PARTNR1-16TH EVENT-W1' 
   H1RX22Q1= 'S26RX22Q_1 PARTNR1-17TH EVENT-W1' 
   H1RX22R1= 'S26RX22R_1 PARTNR1-18TH EVENT-W1' 
   H1RX24A1= 'S26RX24A1-PARTNR1-SEXUAL INTERCOURSE-W1' 
   H1RX25M1= 'S26RX25_1M PARTNR1-FIRST TIME SEX-MO-W1' 
   H1RX25Y1= 'S26RX25_1Y PARTNR1-FIRST TIME SEX-YR-W1' 
   H1RX26M1= 'S26RX26_1M PARTNR1-MOST RECENT SEX-MO-W1' 
   H1RX26Y1= 'S26RX26_1Y PARTNR1-MOST RECENT SEX-YR-W1' 
   H1RX27_1= 'S26RX27_1 PARTNR1-SEX MORE THEN ONCE-W1' 
   H1RX28_1= 'S26RX28_1 PARTNR1-USE BIRTHCONTROL-W1' 
   H1RX29A1= 'S26RX29A_1 PARTNR1-METHOD 1-W1' 
   H1RX29B1= 'S26RX29B_1 PARTNR1-METHOD 2-W1' 
   H1RX29C1= 'S26RX29C_1 PARTNR1-METHOD 3-W1' 
   H1RX30_1= 'S26RX30_1 PARTNR1-USE A CONDOM-W1' 
   H1RX31_1= 'S26RX31_1 PARTNR1-USE OTHER METHOD-W1' 
   H1RX32_1= 'S26RX32_1 PARTNR1-BIRTHCONTROL ALWAYS-W1' 
   H1RX33A1= 'S26RX33A_1 PARTNR1-METHOD 1-W1' 
   H1RX33B1= 'S26RX33B_1 PARTNR1-METHOD 2-W1' 
   H1RX33C1= 'S26RX33C_1 PARTNR1-METHOD 3-W1' 
   H1RX34_1= 'S26RX34_1 PARTNR1-EVER USE CONDOM-W1' 
   H1RX35_1= 'S26RX35_1 PARTNR1-USE >1 METHOD-W1' 
   H1RX36_1= 'S26RX35_1 PARTNR1-USE BIRTHCONTROL-W1' 
   H1RX37_1= 'S26RX37_1 PARTNR1-ALWAYS BIRTHCONTROL-W1' 
   H1RX38A1= 'S26RX38A_1 PARTNR1-METHOD 1-W1' 
   H1RX38B1= 'S26RX38B_1 PARTNR1-METHOD 2-W1' 
   H1RX38C1= 'S26RX38C_1 PARTNR1-METHOD 3-W1' 
   H1RX39_1= 'S26RX39_1 PARTNR1-EVER USE CONDOM-W1' 
   H1RX40_1= 'S26RX40_1 PARTNR1-USE >1 METHOD-W1' 
   H1RX41_1= 'S26RX41_1 PARTNR1-NO. TIMES HAD SEX-W1' 
   H1NR13_1= 'S26Q13 PARTNR1-AGE-W1' 
   H1NR14_1= 'S26Q14 PARTNR1-SAMPLE/SISTER SCH-W1' 
   H1NR15_1= 'S26Q15 PARTNR1-GENDER-W1' 
   H1NR16_1= 'S26Q16 PARTNR1-HISPANIC/LATINO-W1' 
   H1NR17A1= 'S26Q17A PARTNR1-MEXICAN-W1' 
   H1NR17B1= 'S26Q17B PARTNR1-CHICANO-W1' 
   H1NR17C1= 'S26Q17C PARTNR1-CUBAN-W1' 
   H1NR17D1= 'S26Q17D PARTNR1-PUERTO RICAN-W1' 
   H1NR17E1= 'S26Q17E PARTNR1-CENTRAL/S AMERICAN-W1' 
   H1NR17F1= 'S26Q17F PARTNR1-OTHER HISPANIC-W1' 
   H1NR18A1= 'S26Q18A PARTNR1-WHITE-W1' 
   H1NR18B1= 'S26Q18B PARTNR1-AFRICAN AMERICAN-W1' 
   H1NR18C1= 'S26Q18C PARTNR1-AMERICAN INDIAN-W1' 
   H1NR18D1= 'S26Q18D PARTNR1-ASIAN-W1' 
   H1NR18E1= 'S26Q18E PARTNR1-OTHER-W1' 
   H1NR19A1= 'S26Q19A_1 PARTNR1-CHINESE-W1' 
   H1NR19B1= 'S26Q19B_1 PARTNR1-FILIPINO-W1' 
   H1NR19C1= 'S26Q19C_1 PARTNR1-JAPANESE-W1' 
   H1NR19D1= 'S26Q19D_1 PARTNR1-ASIAN INDIAN-W1' 
   H1NR19E1= 'S26Q19E_1 PARTNR1-KOREAN-W1' 
   H1NR19F1= 'S26Q19F_1 PARTNR1-VIETNAMESE-W1' 
   H1NR19G1= 'S26Q19G_1 PARTNR1-OTHER-W1' 
   H1NR20A1= 'S26Q20A_1 PARTNR1-SAME SCHOOL-W1' 
   H1NR20B1= 'S26Q20B_1 PARTNR1-SAME CHURCH/TEMPLE-W1' 
   H1NR20C1= 'S26Q20C_1 PARTNR1-NEIGHBOR-W1' 
   H1NR20D1= 'S26Q20D_1 PARTNR1-CASUAL ACQUAINT-W1' 
   H1NR20E1= 'S26Q20E_1 PARTNR1-FRIENDS-W1' 
   H1NR20F1= 'S26Q20F_1 PARTNR1-MUTUAL FRIEND-W1' 
   H1NR20G1= 'S26Q20G_1 PARTNR1-SOME OTHER WAY-W1' 
   H1NR20H1= 'S26Q20H_1 PARTNR1-STRANGER BEF SEX-W1' 
   H1NR21_1= 'S26Q21_1 PARTNR1-RESIDENCE LOCATION-W1' 
   H1NR22_1= 'S26Q22_1 PARTNR1-HAD SEX-W1' 
   H1NR23M1= 'S26Q23M_1 PARTNR1-MO FIRST HAD SEX-W1' 
   H1NR23Y1= 'S26Q23Y_1 PARTNR1-YR FIRST HAD SEX-W1' 
   H1NR24M1= 'S26Q24M_1 PARTNR1-MO MOST RECENT SEX-W1' 
   H1NR24Y1= 'S26Q24Y_1 PARTNR1-YR MOST RECENT SEX-W1' 
   H1NR25_1= 'S26Q25_1 PARTNR1-HAD SEX > 1 TIME-W1' 
   H1NR26_1= 'S26Q26_1 PARTNR1-USE ANY BIRTHCONTROL-W1' 
   H1NR27A1= 'S26Q27A_1 PARTNR1-METHOD 1-W1' 
   H1NR27B1= 'S26Q27B_1 PARTNR1-METHOD 2-W1' 
   H1NR27C1= 'S26Q27C_1 PARTNR1-METHOD 3-W1' 
   H1NR28_1= 'S26Q28_1 PARTNR1-USED CONDOM-W1' 
   H1NR29_1= 'S26Q29_1 PARTNR1-USE ANY BIRTHCONTROL-W1' 
   H1NR30_1= 'S26Q30_1 PARTNR1-BIRTHCONTROL ALWAYS-W1' 
   H1NR31A1= 'S26Q31A_1 PARTNR1-METHOD 1-W1' 
   H1NR31B1= 'S26Q31B_1 PARTNR1-METHOD 2-W1' 
   H1NR31C1= 'S26Q31C_1 PARTNR1-METHOD 3-W1' 
   H1NR32_1= 'S26Q32_1 PARTNR1-USED CONDOM-W1' 
   H1NR33_1= 'S26Q33_1 PARTNR1->1 BIRTHCONTROL-W1' 
   H1NR34_1= 'S26Q34_1 PARTNR1-EVER USE B.CONTROL-W1' 
   H1NR35_1= 'S26Q35_1 PARTNR1-EVER USE B.CONTROL-W1' 
   H1NR36A1= 'S26Q36A_1 PARTNR1-METHOD 1-W1' 
   H1NR36B1= 'S26Q36B_1 PARTNR1-METHOD 2-W1' 
   H1NR36C1= 'S26Q36C_1 PARTNR1-METHOD 3-W1' 
   H1NR37_1= 'S26Q37_1 PARTNR1-EVER USE A CONDOM-W1' 
   H1NR38_1= 'S26Q38_1 PARTNR1->1 BIRTHCONTROL-W1' 
   H1NR39_1= 'S26Q39_1 PARTNR1-FREQ SEX-W1' 
   H1NR40_1= 'S26Q40_1 PARTNR1-YOU USE A CONDOM-W1' 
   H1NR41_1= 'S26Q41_1 PARTNR1-HE USE A CONDOM-W1' 
   H1NR42_1= 'S26Q42_1 PARTNR1-SEX FOR DRUGS/MONEY-W1' 
   H1NR43_1= 'S26Q43_1 PARTNR1-FREQ-DRUGS/MONEY-W1' 
   H1NR10_2= 'S26Q10_2 PARTNR2-EVER HOLD HANDS-W1' 
   H1NR11_2= 'S26Q11_2 PARTNR2-EVER KISS-W1' 
   H1NR12_2= 'S26Q12_2 PARTNR2-SAY LOVE HIM/HER-W1' 
   NRRXFLG2= 'PARTNER 2 NR DATA IN RX SECTION-W1' 
   H1RX1M_2= 'S26RX1M PARTNR2-DATE BEGAN-MONTH-W1' 
   H1RX1Y_2= 'S26RX1Y PARTNR2-DATE BEGAN-YEAR-W1' 
   H1RX2_2 = 'S26RX2 PARTNR2-YEAR RELATION BEGAN-W1' 
   H1RX3_2 = 'S26RX3 PARTNR2 HIS/HER AGE WHEN MET-W1' 
   H1RX4_2 = 'S26RX4 PARTNR2 APPROX PARTNERS AGE-W1' 
   H1RX5A_2= 'S26RX5 PARTNR2 HIS/HER GRADE WHEN MET-W1' 
   H1RX6_2 = 'S26RX6 PARTNR2 GO TO SAME SCHOOL-W1' 
   H1RX7_2 = 'S26RX7 PARTNR2 WHERE DID HE/SHE LIVE-W1' 
   H1RX8A_2= 'S26RX8A PARTNR2-SAME SCHOOL-W1' 
   H1RX8B_2= 'S26RX8B PARTNR2-SAME PL OF WORSHIP-W1' 
   H1RX8C_2= 'S26RX8C PARTNR2-NEIGHBORS-W1' 
   H1RX8D_2= 'S26RX8D PARTNR2-CASUAL ACQUAINTENCES-W1' 
   H1RX8E_2= 'S26RX8E PARTNR2-FRIENDS-W1' 
   H1RX8F_2= 'S26RX8F PARTNR2-SHARED MUTUAL FRIEND-W1' 
   H1RX8G_2= 'S26RX8G PARTNR2-SOME OTHER WAY-W1' 
   H1RX8H_2= 'S26RX8H PARTNR2-DID NOT KNOW BEFORE-W1' 
   H1RX9_2 = 'S26RX9 PARTNR2-HOW MANY FRIENDS KNEW-W1' 
   H1RX10_2= 'S26RX10 PARTNR2-STILL GOING ON-W1' 
   H1RX11M2= 'S26RX11M PARTNR2-WHEN DID IT END-MO-W1' 
   H1RX11Y2= 'S26RX11Y PARTNR2-WHEN DID IT END-YR-W1' 
   H1RX12_2= 'S26RX12 PARTNR2-WHAT YEAR DID IT END-W1' 
   H1RX13_2= 'S26RX13 PARTNR2-WHERE LIVE AT END-W1' 
   H1RX14_2= 'S26RX14 PARTNR2-SAMPLE/SISTER SCH NOW-W1' 
   H1RX15_2= 'S26RX15 PARTNR2-GRADE NOW-W1' 
   H1RX16_2= 'S26RX16 PARTNR2-HISPANIC/LATINO-W1' 
   H1RX17A2= 'S26RX17A PARTNR2-MEXICAN-W1' 
   H1RX17B2= 'S26RX17B PARTNR2-CHICANO-W1' 
   H1RX17C2= 'S26RX17C PARTNR2-CUBAN-W1' 
   H1RX17D2= 'S26RX17D PARTNR2-PUERTO RICAN-W1' 
   H1RX17E2= 'S26RX17E PARTNR2-CENTR/SOUTH AMERICAN-W1' 
   H1RX17F2= 'S26RX17F PARTNR2-OTHER HISPANIC-W1' 
   H1RX18A2= 'S26RX18A PARTNR2-WHITE-W1' 
   H1RX18B2= 'S26RX18B PARTNR2-AFRICAN AMERICAN-W1' 
   H1RX18C2= 'S26RX18C PARTNR2-AMERICAN INDIAN-W1' 
   H1RX18D2= 'S26RX18D PARTNR2-ASIAN-W1' 
   H1RX18E2= 'S26RX18E PARTNR2-OTHER RACE-W1' 
   H1RX19A2= 'S26RX19A PARTNR2-CHINESE-W1' 
   H1RX19B2= 'S26RX19B PARTNR2-FILIPINO-W1' 
   H1RX19C2= 'S26RX19C PARTNR2-JAPANESE-W1' 
   H1RX19D2= 'S26RX19D PARTNR2-ASIAN INDIAN-W1' 
   H1RX19E2= 'S26RX19E PARTNR2-KOREAN-W1' 
   H1RX19F2= 'S26RX19F PARTNR2-VIETNAMESE-W1' 
   H1RX19G2= 'S26RX19G PARTNR2-OTHER-W1' 
   H1RX20_2= 'S26RX20 PARTNR2-GENDER-W1' 
   H1RX21A2= 'S26RX21A PARTNR2-GROUP DATE-W1' 
   H1RX21B2= 'S26RX21B PARTNR2-MET PARENTS-W1' 
   H1RX21C2= 'S26RX21C PARTNR2-SAID WERE A COUPLE-W1' 
   H1RX21D2= 'S26RX21D PARTNR2-SAW LESS OF FRIENDS-W1' 
   H1RX21E2= 'S26RX21E PARTNR2-WENT OUT ALONE-W1' 
   H1RX21F2= 'S26RX21F PARTNR2-HELD HANDS-W1' 
   H1RX21G2= 'S26RX21G PARTNR2-GAVE A PRESENT-W1' 
   H1RX21H2= 'S26RX21H PARTNR2-RECEIVED A PRESENT-W1' 
   H1RX21I2= 'S26RX21I PARTNR2-SAID HE/SHE LOVED ME-W1' 
   H1RX21J2= 'S26RX21J PARTNR2-SAID I LOVED PARTNER-W1' 
   H1RX21K2= 'S26RX21K PARTNR2-CONSIDERED A COUPLE-W1' 
   H1RX21L2= 'S26RX21L PARTNR2-TALKED CONTRACEPT-W1' 
   H1RX21M2= 'S26RX21M PARTNR2-KISSED-W1' 
   H1RX21N2= 'S26RX21N PARTNR2-TOUCHED EACH OTHER-W1' 
   H1RX21O2= 'S26RX21O PARTNR2-HAD SEX-W1' 
   H1RX21P2= 'S26RX21P PARTNR2-TOUCHED GENITALS-W1' 
   H1RX21Q2= 'S26RX21Q PARTNR2-GOT PREGNANT-W1' 
   H1RX21R2= 'S26RX21R PARTNR2-GOT MARRIED-W1' 
   H1RX22A2= 'S26RX22A_2 PARTNR2-FIRST EVENT-W1' 
   H1RX22B2= 'S26RX22B_2 PARTNR2-SECOND EVENT-W1' 
   H1RX22C2= 'S26RX22C_2 PARTNR2-3RD EVENT-W1' 
   H1RX22D2= 'S26RX22D_2 PARTNR2-4TH EVENT-W1' 
   H1RX22E2= 'S26RX22E_2 PARTNR2-5TH EVENT-W1' 
   H1RX22F2= 'S26RX22F_2 PARTNR2-6TH EVENT-W1' 
   H1RX22G2= 'S26RX22G_2 PARTNR2-7TH EVENT-W1' 
   H1RX22H2= 'S26RX22H_2 PARTNR2-8TH EVENT-W1' 
   H1RX22I2= 'S26RX22I_2 PARTNR2-9TH EVENT-W1' 
   H1RX22J2= 'S26RX22J_2 PARTNR2-10TH EVENT-W1' 
   H1RX22K2= 'S26RX22K_2 PARTNR2-11TH EVENT-W1' 
   H1RX22L2= 'S26RX22L_2 PARTNR2-12TH EVENT-W1' 
   H1RX22M2= 'S26RX22M_2 PARTNR2-13TH EVENT-W1' 
   H1RX22N2= 'S26RX22N_2 PARTNR2-14TH EVENT-W1' 
   H1RX22O2= 'S26RX22O_2 PARTNR2-15TH EVENT-W1' 
   H1RX22P2= 'S26RX22P_2 PARTNR2-16TH EVENT-W1' 
   H1RX22Q2= 'S26RX22Q_2 PARTNR2-17TH EVENT-W1' 
   H1RX22R2= 'S26RX22R_2 PARTNR2-18TH EVENT-W1' 
   H1RX24A2= 'S26RX24A2-PARTNR2-SEXUAL INTERCOURSE-W1' 
   H1RX25M2= 'S26RX25_2M PARTNR2-FIRST TIME SEX-MO-W1' 
   H1RX25Y2= 'S26RX25_2Y PARTNR2-FIRST TIME SEX-YR-W1' 
   H1RX26M2= 'S26RX26_2M PARTNR2-MOST RECENT SEX-MO-W1' 
   H1RX26Y2= 'S26RX26_2Y PARTNR2-MOST RECENT SEX-YR-W1' 
   H1RX27_2= 'S26RX27_2 PARTNR2-SEX MORE THEN ONCE-W1' 
   H1RX28_2= 'S26RX28_2 PARTNR2-USE BIRTHCONTROL-W1' 
   H1RX29A2= 'S26RX29A_2 PARTNR2-METHOD 1-W1' 
   H1RX29B2= 'S26RX29B_2 PARTNR2-METHOD 2-W1' 
   H1RX29C2= 'S26RX29C_2 PARTNR2-METHOD 3-W1' 
   H1RX30_2= 'S26RX30_2 PARTNR2-USE A CONDOM-W1' 
   H1RX31_2= 'S26RX31_2 PARTNR2-USE OTHER METHOD-W1' 
   H1RX32_2= 'S26RX32_2 PARTNR2-BIRTHCONTROL ALWAYS-W1' 
   H1RX33A2= 'S26RX33A_2 PARTNR2-METHOD 1-W1' 
   H1RX33B2= 'S26RX33B_2 PARTNR2-METHOD 2-W1' 
   H1RX33C2= 'S26RX33C_2 PARTNR2-METHOD 3-W1' 
   H1RX34_2= 'S26RX34_2 PARTNR2-EVER USE CONDOM-W1' 
   H1RX35_2= 'S26RX35_2 PARTNR2-USE >1 METHOD-W1' 
   H1RX36_2= 'S26RX35_2 PARTNR2-USE BIRTHCONTROL-W1' 
   H1RX37_2= 'S26RX37_2 PARTNR2-ALWAYS BIRTHCONTROL-W1' 
   H1RX38A2= 'S26RX38A_2 PARTNR2-METHOD 1-W1' 
   H1RX38B2= 'S26RX38B_2 PARTNR2-METHOD 2-W1' 
   H1RX38C2= 'S26RX38C_2 PARTNR2-METHOD 3-W1' 
   H1RX39_2= 'S26RX39_2 PARTNR2-EVER USE CONDOM-W1' 
   H1RX40_2= 'S26RX40_2 PARTNR2-USE >1 METHOD-W1' 
   H1RX41_2= 'S26RX41_2 PARTNR2-NO. TIMES HAD SEX-W1' 
   H1NR13_2= 'S26Q13 PARTNR2-AGE-W1' 
   H1NR14_2= 'S26Q14 PARTNR2-SAMPLE/SISTER SCH-W1' 
   H1NR15_2= 'S26Q15 PARTNR2-GENDER-W1' 
   H1NR16_2= 'S26Q16 PARTNR2-HISPANIC/LATINO-W1' 
   H1NR17A2= 'S26Q17A PARTNR2-MEXICAN-W1' 
   H1NR17B2= 'S26Q17B PARTNR2-CHICANO-W1' 
   H1NR17C2= 'S26Q17C PARTNR2-CUBAN-W1' 
   H1NR17D2= 'S26Q17D PARTNR2-PUERTO RICAN-W1' 
   H1NR17E2= 'S26Q17E PARTNR2-CENTRAL/S AMERICAN-W1' 
   H1NR17F2= 'S26Q17F PARTNR2-OTHER HISPANIC-W1' 
   H1NR18A2= 'S26Q18A PARTNR2-WHITE-W1' 
   H1NR18B2= 'S26Q18B PARTNR2-AFRICAN AMERICAN-W1' 
   H1NR18C2= 'S26Q18C PARTNR2-AMERICAN INDIAN-W1' 
   H1NR18D2= 'S26Q18D PARTNR2-ASIAN-W1' 
   H1NR18E2= 'S26Q18E PARTNR2-OTHER-W1' 
   H1NR19A2= 'S26Q19A_2 PARTNR2-CHINESE-W1' 
   H1NR19B2= 'S26Q19B_2 PARTNR2-FILIPINO-W1' 
   H1NR19C2= 'S26Q19C_2 PARTNR2-JAPANESE-W1' 
   H1NR19D2= 'S26Q19D_2 PARTNR2-ASIAN INDIAN-W1' 
   H1NR19E2= 'S26Q19E_2 PARTNR2-KOREAN-W1' 
   H1NR19F2= 'S26Q19F_2 PARTNR2-VIETNAMESE-W1' 
   H1NR19G2= 'S26Q19G_2 PARTNR2-OTHER-W1' 
   H1NR20A2= 'S26Q20A_2 PARTNR2-SAME SCHOOL-W1' 
   H1NR20B2= 'S26Q20B_2 PARTNR2-SAME CHURCH/TEMPLE-W1' 
   H1NR20C2= 'S26Q20C_2 PARTNR2-NEIGHBOR-W1' 
   H1NR20D2= 'S26Q20D_2 PARTNR2-CASUAL ACQUAINT-W1' 
   H1NR20E2= 'S26Q20E_2 PARTNR2-FRIENDS-W1' 
   H1NR20F2= 'S26Q20F_2 PARTNR2-MUTUAL FRIEND-W1' 
   H1NR20G2= 'S26Q20G_2 PARTNR2-SOME OTHER WAY-W1' 
   H1NR20H2= 'S26Q20H_2 PARTNR2-STRANGER BEF SEX-W1' 
   H1NR21_2= 'S26Q21_2 PARTNR2-RESIDENCE LOCATION-W1' 
   H1NR22_2= 'S26Q22_2 PARTNR2-HAD SEX-W1' 
   H1NR23M2= 'S26Q23M_2 PARTNR2-MO FIRST HAD SEX-W1' 
   H1NR23Y2= 'S26Q23Y_2 PARTNR2-YR FIRST HAD SEX-W1' 
   H1NR24M2= 'S26Q24M_2 PARTNR2-MO MOST RECENT SEX-W1' 
   H1NR24Y2= 'S26Q24Y_2 PARTNR2-YR MOST RECENT SEX-W1' 
   H1NR25_2= 'S26Q25_2 PARTNR2-HAD SEX > 1 TIME-W1' 
   H1NR26_2= 'S26Q26_2 PARTNR2-USE ANY BIRTHCONTROL-W1' 
   H1NR27A2= 'S26Q27A_2 PARTNR2-METHOD 1-W1' 
   H1NR27B2= 'S26Q27B_2 PARTNR2-METHOD 2-W1' 
   H1NR27C2= 'S26Q27C_2 PARTNR2-METHOD 3-W1' 
   H1NR28_2= 'S26Q28_2 PARTNR2-USED CONDOM-W1' 
   H1NR29_2= 'S26Q29_2 PARTNR2-USE ANY BIRTHCONTROL-W1' 
   H1NR30_2= 'S26Q30_2 PARTNR2-BIRTHCONTROL ALWAYS-W1' 
   H1NR31A2= 'S26Q31A_2 PARTNR2-METHOD 1-W1' 
   H1NR31B2= 'S26Q31B_2 PARTNR2-METHOD 2-W1' 
   H1NR31C2= 'S26Q31C_2 PARTNR2-METHOD 3-W1' 
   H1NR32_2= 'S26Q32_2 PARTNR2-USED CONDOM-W1' 
   H1NR33_2= 'S26Q33_2 PARTNR2->1 BIRTHCONTROL-W1' 
   H1NR34_2= 'S26Q34_2 PARTNR2-EVER USE B.CONTROL-W1' 
   H1NR35_2= 'S26Q35_2 PARTNR2-EVER USE B.CONTROL-W1' 
   H1NR36A2= 'S26Q36A_2 PARTNR2-METHOD 1-W1' 
   H1NR36B2= 'S26Q36B_2 PARTNR2-METHOD 2-W1' 
   H1NR36C2= 'S26Q36C_2 PARTNR2-METHOD 3-W1' 
   H1NR37_2= 'S26Q37_2 PARTNR2-EVER USE A CONDOM-W1' 
   H1NR38_2= 'S26Q38_2 PARTNR2->1 BIRTHCONTROL-W1' 
   H1NR39_2= 'S26Q39_2 PARTNR2-FREQ SEX-W1' 
   H1NR40_2= 'S26Q40_2 PARTNR2-YOU USE A CONDOM-W1' 
   H1NR41_2= 'S26Q41_2 PARTNR2-HE USE A CONDOM-W1' 
   H1NR42_2= 'S26Q42_2 PARTNR2-SEX FOR DRUGS/MONEY-W1' 
   H1NR43_2= 'S26Q43_2 PARTNR2-FREQ-DRUGS/MONEY-W1' 
   H1NR10_3= 'S26Q10_3 PARTNR3-EVER HOLD HANDS-W1' 
   H1NR11_3= 'S26Q11_3 PARTNR3-EVER KISS-W1' 
   H1NR12_3= 'S26Q12_3 PARTNR3-SAY LOVE HIM/HER-W1' 
   NRRXFLG3= 'PARTNER 3 NR DATA IN RX SECTION-W1' 
   H1RX1M_3= 'S26RX1M PARTNR3-DATE BEGAN-MONTH-W1' 
   H1RX1Y_3= 'S26RX1Y PARTNR3-DATE BEGAN-YEAR-W1' 
   H1RX2_3 = 'S26RX2 PARTNR3-YEAR RELATION BEGAN-W1' 
   H1RX3_3 = 'S26RX3 PARTNR3 HIS/HER AGE WHEN MET-W1' 
   H1RX4_3 = 'S26RX4 PARTNR3 APPROX PARTNERS AGE-W1' 
   H1RX5A_3= 'S26RX5 PARTNR3 HIS/HER GRADE WHEN MET-W1' 
   H1RX6_3 = 'S26RX6 PARTNR3 GO TO SAME SCHOOL-W1' 
   H1RX7_3 = 'S26RX7 PARTNR3 WHERE DID HE/SHE LIVE-W1' 
   H1RX8A_3= 'S26RX8A PARTNR3-SAME SCHOOL-W1' 
   H1RX8B_3= 'S26RX8B PARTNR3-SAME PL OF WORSHIP-W1' 
   H1RX8C_3= 'S26RX8C PARTNR3-NEIGHBORS-W1' 
   H1RX8D_3= 'S26RX8D PARTNR3-CASUAL ACQUAINTENCES-W1' 
   H1RX8E_3= 'S26RX8E PARTNR3-FRIENDS-W1' 
   H1RX8F_3= 'S26RX8F PARTNR3-SHARED MUTUAL FRIEND-W1' 
   H1RX8G_3= 'S26RX8G PARTNR3-SOME OTHER WAY-W1' 
   H1RX8H_3= 'S26RX8H PARTNR3-DID NOT KNOW BEFORE-W1' 
   H1RX9_3 = 'S26RX9 PARTNR3-HOW MANY FRIENDS KNEW-W1' 
   H1RX10_3= 'S26RX10 PARTNR3-STILL GOING ON-W1' 
   H1RX11M3= 'S26RX11M PARTNR3-WHEN DID IT END-MO-W1' 
   H1RX11Y3= 'S26RX11Y PARTNR3-WHEN DID IT END-YR-W1' 
   H1RX12_3= 'S26RX12 PARTNR3-WHAT YEAR DID IT END-W1' 
   H1RX13_3= 'S26RX13 PARTNR3-WHERE LIVE AT END-W1' 
   H1RX14_3= 'S26RX14 PARTNR3-SAMPLE/SISTER SCH NOW-W1' 
   H1RX15_3= 'S26RX15 PARTNR3-GRADE NOW-W1' 
   H1RX16_3= 'S26RX16 PARTNR3-HISPANIC/LATINO-W1' 
   H1RX17A3= 'S26RX17A PARTNR3-MEXICAN-W1' 
   H1RX17B3= 'S26RX17B PARTNR3-CHICANO-W1' 
   H1RX17C3= 'S26RX17C PARTNR3-CUBAN-W1' 
   H1RX17D3= 'S26RX17D PARTNR3-PUERTO RICAN-W1' 
   H1RX17E3= 'S26RX17E PARTNR3-CENTR/SOUTH AMERICAN-W1' 
   H1RX17F3= 'S26RX17F PARTNR3-OTHER HISPANIC-W1' 
   H1RX18A3= 'S26RX18A PARTNR3-WHITE-W1' 
   H1RX18B3= 'S26RX18B PARTNR3-AFRICAN AMERICAN-W1' 
   H1RX18C3= 'S26RX18C PARTNR3-AMERICAN INDIAN-W1' 
   H1RX18D3= 'S26RX18D PARTNR3-ASIAN-W1' 
   H1RX18E3= 'S26RX18E PARTNR3-OTHER RACE-W1' 
   H1RX19A3= 'S26RX19A PARTNR3-CHINESE-W1' 
   H1RX19B3= 'S26RX19B PARTNR3-FILIPINO-W1' 
   H1RX19C3= 'S26RX19C PARTNR3-JAPANESE-W1' 
   H1RX19D3= 'S26RX19D PARTNR3-ASIAN INDIAN-W1' 
   H1RX19E3= 'S26RX19E PARTNR3-KOREAN-W1' 
   H1RX19F3= 'S26RX19F PARTNR3-VIETNAMESE-W1' 
   H1RX19G3= 'S26RX19G PARTNR3-OTHER-W1' 
   H1RX20_3= 'S26RX20  PARTNR3-GENDER-W1' 
   H1RX21A3= 'S26RX21A PARTNR3-GROUP DATE-W1' 
   H1RX21B3= 'S26RX21B PARTNR3-MET PARENTS-W1' 
   H1RX21C3= 'S26RX21C PARTNR3-SAID WERE A COUPLE-W1' 
   H1RX21D3= 'S26RX21D PARTNR3-SAW LESS OF FRIENDS-W1' 
   H1RX21E3= 'S26RX21E PARTNR3-WENT OUT ALONE-W1' 
   H1RX21F3= 'S26RX21F PARTNR3-HELD HANDS-W1' 
   H1RX21G3= 'S26RX21G PARTNR3-GAVE A PRESENT-W1' 
   H1RX21H3= 'S26RX21H PARTNR3-RECEIVED A PRESENT-W1' 
   H1RX21I3= 'S26RX21I PARTNR3-SAID HE/SHE LOVED ME-W1' 
   H1RX21J3= 'S26RX21J PARTNR3-SAID I LOVED PARTNER-W1' 
   H1RX21K3= 'S26RX21K PARTNR3-CONSIDERED A COUPLE-W1' 
   H1RX21L3= 'S26RX21L PARTNR3-TALKED CONTRACEPT-W1' 
   H1RX21M3= 'S26RX21M PARTNR3-KISSED-W1' 
   H1RX21N3= 'S26RX21N PARTNR3-TOUCHED EACH OTHER-W1' 
   H1RX21O3= 'S26RX21O PARTNR3-HAD SEX-W1' 
   H1RX21P3= 'S26RX21P PARTNR3-TOUCHED GENITALS-W1' 
   H1RX21Q3= 'S26RX21Q PARTNR3-GOT PREGNANT-W1' 
   H1RX21R3= 'S26RX21R PARTNR3-GOT MARRIED-W1' 
   H1RX22A3= 'S26RX22A_3 PARTNR3-FIRST EVENT-W1' 
   H1RX22B3= 'S26RX22B_3 PARTNR3-SECOND EVENT-W1' 
   H1RX22C3= 'S26RX22C_3 PARTNR3-3RD EVENT-W1' 
   H1RX22D3= 'S26RX22D_3 PARTNR3-4TH EVENT-W1' 
   H1RX22E3= 'S26RX22E_3 PARTNR3-5TH EVENT-W1' 
   H1RX22F3= 'S26RX22F_3 PARTNR3-6TH EVENT-W1' 
   H1RX22G3= 'S26RX22G_3 PARTNR3-7TH EVENT-W1' 
   H1RX22H3= 'S26RX22H_3 PARTNR3-8TH EVENT-W1' 
   H1RX22I3= 'S26RX22I_3 PARTNR3-9TH EVENT-W1' 
   H1RX22J3= 'S26RX22J_3 PARTNR3-10TH EVENT-W1' 
   H1RX22K3= 'S26RX22K_3 PARTNR3-11TH EVENT-W1' 
   H1RX22L3= 'S26RX22L_3 PARTNR3-12TH EVENT-W1' 
   H1RX22M3= 'S26RX22M_3 PARTNR3-13TH EVENT-W1' 
   H1RX22N3= 'S26RX22N_3 PARTNR3-14TH EVENT-W1' 
   H1RX22O3= 'S26RX22O_3 PARTNR3-15TH EVENT-W1' 
   H1RX22P3= 'S26RX22P_3 PARTNR3-16TH EVENT-W1' 
   H1RX22Q3= 'S26RX22Q_3 PARTNR3-17TH EVENT-W1' 
   H1RX22R3= 'S26RX22R_3 PARTNR3-18TH EVENT-W1' 
   H1RX24A3= 'S26RX24A3-PARTNR3-SEXUAL INTERCOURSE-W1' 
   H1RX25M3= 'S26RX25_3M PARTNR3-FIRST TIME SEX-MO-W1' 
   H1RX25Y3= 'S26RX25_3Y PARTNR3-FIRST TIME SEX-YR-W1' 
   H1RX26M3= 'S26RX26_3M PARTNR3-MOST RECENT SEX-MO-W1' 
   H1RX26Y3= 'S26RX26_3Y PARTNR3-MOST RECENT SEX-YR-W1' 
   H1RX27_3= 'S26RX27_3 PARTNR3-SEX MORE THEN ONCE-W1' 
   H1RX28_3= 'S26RX28_3 PARTNR3-USE BIRTHCONTROL-W1' 
   H1RX29A3= 'S26RX29A_3 PARTNR3-METHOD 1-W1' 
   H1RX29B3= 'S26RX29B_3 PARTNR3-METHOD 2-W1' 
   H1RX29C3= 'S26RX29C_3 PARTNR3-METHOD 3-W1' 
   H1RX30_3= 'S26RX30_3 PARTNR3-USE A CONDOM-W1' 
   H1RX31_3= 'S26RX31_3 PARTNR3-USE OTHER METHOD-W1' 
   H1RX32_3= 'S26RX32_3 PARTNR3-BIRTHCONTROL ALWAYS-W1' 
   H1RX33A3= 'S26RX33A_3 PARTNR3-METHOD 1-W1' 
   H1RX33B3= 'S26RX33B_3 PARTNR3-METHOD 2-W1' 
   H1RX33C3= 'S26RX33C_3 PARTNR3-METHOD 3-W1' 
   H1RX34_3= 'S26RX34_3 PARTNR3-EVER USE CONDOM-W1' 
   H1RX35_3= 'S26RX35_3 PARTNR3-USE >1 METHOD-W1' 
   H1RX36_3= 'S26RX35_3 PARTNR3-USE BIRTHCONTROL-W1' 
   H1RX37_3= 'S26RX37_3 PARTNR3-ALWAYS BIRTHCONTROL-W1' 
   H1RX38A3= 'S26RX38A_3 PARTNR3-METHOD 1-W1' 
   H1RX38B3= 'S26RX38B_3 PARTNR3-METHOD 2-W1' 
   H1RX38C3= 'S26RX38C_3 PARTNR3-METHOD 3-W1' 
   H1RX39_3= 'S26RX39_3 PARTNR3-EVER USE CONDOM-W1' 
   H1RX40_3= 'S26RX40_3 PARTNR3-USE >1 METHOD-W1' 
   H1RX41_3= 'S26RX41_3 PARTNR3-NO. TIMES HAD SEX-W1' 
   H1NR13_3= 'S26Q13 PARTNR3-AGE-W1' 
   H1NR14_3= 'S26Q14 PARTNR3-SAMPLE/SISTER SCH-W1' 
   H1NR15_3= 'S26Q15 PARTNR3-GENDER-W1' 
   H1NR16_3= 'S26Q16 PARTNR3-HISPANIC/LATINO-W1' 
   H1NR17A3= 'S26Q17A PARTNR3-MEXICAN-W1' 
   H1NR17B3= 'S26Q17B PARTNR3-CHICANO-W1' 
   H1NR17C3= 'S26Q17C PARTNR3-CUBAN-W1' 
   H1NR17D3= 'S26Q17D PARTNR3-PUERTO RICAN-W1' 
   H1NR17E3= 'S26Q17E PARTNR3-CENTRAL/S AMERICAN-W1' 
   H1NR17F3= 'S26Q17F PARTNR3-OTHER HISPANIC-W1' 
   H1NR18A3= 'S26Q18A PARTNR3-WHITE-W1' 
   H1NR18B3= 'S26Q18B PARTNR3-AFRICAN AMERICAN-W1' 
   H1NR18C3= 'S26Q18C PARTNR3-AMERICAN INDIAN-W1' 
   H1NR18D3= 'S26Q18D PARTNR3-ASIAN-W1' 
   H1NR18E3= 'S26Q18E PARTNR3-OTHER-W1' 
   H1NR19A3= 'S26Q19A_3 PARTNR3-CHINESE-W1' 
   H1NR19B3= 'S26Q19B_3 PARTNR3-FILIPINO-W1' 
   H1NR19C3= 'S26Q19C_3 PARTNR3-JAPANESE-W1' 
   H1NR19D3= 'S26Q19D_3 PARTNR3-ASIAN INDIAN-W1' 
   H1NR19E3= 'S26Q19E_3 PARTNR3-KOREAN-W1' 
   H1NR19F3= 'S26Q19F_3 PARTNR3-VIETNAMESE-W1' 
   H1NR19G3= 'S26Q19G_3 PARTNR3-OTHER-W1' 
   H1NR20A3= 'S26Q20A_3 PARTNR3-SAME SCHOOL-W1' 
   H1NR20B3= 'S26Q20B_3 PARTNR3-SAME CHURCH/TEMPLE-W1' 
   H1NR20C3= 'S26Q20C_3 PARTNR3-NEIGHBOR-W1' 
   H1NR20D3= 'S26Q20D_3 PARTNR3-CASUAL ACQUAINT-W1' 
   H1NR20E3= 'S26Q20E_3 PARTNR3-FRIENDS-W1' 
   H1NR20F3= 'S26Q20F_3 PARTNR3-MUTUAL FRIEND-W1' 
   H1NR20G3= 'S26Q20G_3 PARTNR3-SOME OTHER WAY-W1' 
   H1NR20H3= 'S26Q20H_3 PARTNR3-STRANGER BEF SEX-W1' 
   H1NR21_3= 'S26Q21_3 PARTNR3-RESIDENCE LOCATION-W1' 
   H1NR22_3= 'S26Q22_3 PARTNR3-HAD SEX-W1' 
   H1NR23M3= 'S26Q23M_3 PARTNR3-MO FIRST HAD SEX-W1' 
   H1NR23Y3= 'S26Q23Y_3 PARTNR3-YR FIRST HAD SEX-W1' 
   H1NR24M3= 'S26Q24M_3 PARTNR3-MO MOST RECENT SEX-W1' 
   H1NR24Y3= 'S26Q24Y_3 PARTNR3-YR MOST RECENT SEX-W1' 
   H1NR25_3= 'S26Q25_3 PARTNR3-HAD SEX > 1 TIME-W1' 
   H1NR26_3= 'S26Q26_3 PARTNR3-USE ANY BIRTHCONTROL-W1' 
   H1NR27A3= 'S26Q27A_3 PARTNR3-METHOD 1-W1' 
   H1NR27B3= 'S26Q27B_3 PARTNR3-METHOD 2-W1' 
   H1NR27C3= 'S26Q27C_3 PARTNR3-METHOD 3-W1' 
   H1NR28_3= 'S26Q28_3 PARTNR3-USED CONDOM-W1' 
   H1NR29_3= 'S26Q29_3 PARTNR3-USE ANY BIRTHCONTROL-W1' 
   H1NR30_3= 'S26Q30_3 PARTNR3-BIRTHCONTROL ALWAYS-W1' 
   H1NR31A3= 'S26Q31A_3 PARTNR3-METHOD 1-W1' 
   H1NR31B3= 'S26Q31B_3 PARTNR3-METHOD 2-W1' 
   H1NR31C3= 'S26Q31C_3 PARTNR3-METHOD 3-W1' 
   H1NR32_3= 'S26Q32_3 PARTNR3-USED CONDOM-W1' 
   H1NR33_3= 'S26Q33_3 PARTNR3->1 BIRTHCONTROL-W1' 
   H1NR34_3= 'S26Q34_3 PARTNR3-EVER USE B.CONTROL-W1' 
   H1NR35_3= 'S26Q35_3 PARTNR3-EVER USE B.CONTROL-W1' 
   H1NR36A3= 'S26Q36A_3 PARTNR3-METHOD 1-W1' 
   H1NR36B3= 'S26Q36B_3 PARTNR3-METHOD 2-W1' 
   H1NR36C3= 'S26Q36C_3 PARTNR3-METHOD 3-W1' 
   H1NR37_3= 'S26Q37_3 PARTNR3-EVER USE A CONDOM-W1' 
   H1NR38_3= 'S26Q38_3 PARTNR3->1 BIRTHCONTROL-W1' 
   H1NR39_3= 'S26Q39_3 PARTNR3-FREQ SEX-W1' 
   H1NR40_3= 'S26Q40_3 PARTNR3-YOU USE A CONDOM-W1' 
   H1NR41_3= 'S26Q41_3 PARTNR3-HE USE A CONDOM-W1' 
   H1NR42_3= 'S26Q42_3 PARTNR3-SEX FOR DRUGS/MONEY-W1' 
   H1NR43_3= 'S26Q43_3 PARTNR3-FREQ-DRUGS/MONEY-W1' 
   H1NR44  = 'S26Q44 OTHER SEX PARTNERS-W1' 
   H1NR45  = 'S26Q45 NO. OF OTHER SEX PARTNERS-W1' 
   H1NR46  = 'S26Q46 OTHER SEX PARTNER-AGE-W1' 
   H1NR47  = 'S26Q47 OTHER SEX PARTNER-GENDER-W1' 
   H1NR48  = 'S26Q48 OTHER SEX PARTNER-CONDOM USE-W1' 
   H1NR49  = 'S26Q49 OTHER SEX PARTNER-DRUGS/MONEY-W1' 
   H1NR50  = 'S26Q50 OTHERS-YOUNGEST AGE-W1' 
   H1NR51  = 'S26Q51 OTHERS-OLDEST AGE-W1' 
   H1NR52  = 'S26Q52 OTHERS-CONDOM USE-W1' 
   H1NR53  = 'S26Q53 OTHERS-GENDER-W1' 
   RXCARD1 = 'Flag indicating recoding of cards for first relationship' 
   RXCARD2 = 'Flag indicating recoding of cards for second relationship' 
   RXCARD3 = 'Flag indicating recoding of cards for third relationship' 
   H1BC1   = 'S27Q1 BIRTHCONTROL TOO BOTHERSOME-W1' 
   H1BC2   = 'S27Q2 BIRTHCONTROL TOO EXPENSIVE-W1' 
   H1BC3   = 'S27Q3 TOO MUCH PLANNING-W1' 
   H1BC4   = 'S27Q4 HARD TO GET PARTNER TO USE-W1' 
   H1BC5   = 'S27Q5 INTERFERES WITH PLEASURE-W1' 
   H1BC6   = 'S27Q6 EASY TO GET BIRTHCONTROL-W1' 
   H1BC7   = 'S27Q7 BIRTHCONTROL USE MORALLY WRONG-W1' 
   H1BC8   = 'S27Q8 BIRTHCONTROL=LOOKING FOR SEX-W1' 
   H1TO1   = 'S28Q1 EVER SMOKED A CIGARETTE-W1' 
   H1TO2   = 'S28Q2 AGE-SMOKED AN ENTIRE CIGARETTE-W1' 
   H1TO3   = 'S28Q3 SMOKED CIGARETTES REGULARLY-W1' 
   H1TO4   = 'S28Q4 AGE-BEGAN SMOKING REGULARLY-W1' 
   H1TO5   = 'S28Q5 30 DAYS-DAYS SMOKED-W1' 
   H1TO6M  = 'S28Q6M MONTH QUIT SMOKING-W1' 
   H1TO6Y  = 'S28Q6Y YEAR QUIT SMOKING-W1' 
   H1TO7   = 'S28Q7 NO. OF CIGARETTES A DAY-W1' 
   H1TO8   = 'S28Q8 TRIED TO QUIT SMOKING-W1' 
   H1TO9   = 'S28Q9 HOW MANY FRIENDS SMOKE-W1' 
   H1TO10  = 'S28Q10 30 DAYS-CHEWED TOBACCO-W1' 
   H1TO11  = 'S28Q11 AGE-FIRST CHEWED TOBACCO-W1' 
   H1TO12  = 'S280Q12 DRINK ALCOHOL > 2-3 TIMES-W1' 
   H1TO13  = 'S28Q13 DRINK ALCOHOL OUTSIDE FAMILY-W1' 
   H1TO14  = 'S28Q14 AGE FIRST DRINK ALCOHOL-W1' 
   H1TO15  = 'S28Q15 PAST 12 MOS-FREQ DRINK ALCOHOL-W1' 
   H1TO16  = 'S28Q16 NO. OF DRINKS EACH TIME-W1' 
   H1TO17  = 'S28Q17 PAST 12 MOS-GE 5 DRINKS-W1' 
   H1TO18  = 'S28Q18 PAST 12 MOS-GOTTEN DRUNK-W1' 
   H1TO19  = 'S28Q19 MOST COMMON ALCOHOLIC BEVERAGE-W1' 
   H1TO20  = 'S28Q20 PARENT PROB BEC OF ALCOHOL-W1' 
   H1TO21  = 'S28Q21 SCHOOL PROB BEC OF ALCOHOL-W1' 
   H1TO22  = 'S28Q22 FRIEND PROB BEC OF ALCOHOL-W1' 
   H1TO23  = 'S28Q23 DATE PROB BEC OF ALCOHOL-W1' 
   H1TO24  = 'S28Q24 REGRET ACTION BEC OF ALCOHOL-W1' 
   H1TO25  = 'S28Q25 HUNG OVER-W1' 
   H1TO26  = 'S28Q26 THREW UP AFTER DRINKING-W1' 
   H1TO27  = 'S28Q27 REGRET SEX BEC OF ALCOHOL-W1' 
   H1TO28  = 'S28Q28 PHYSICAL FIGHT BEC OF ALCOHOL-W1' 
   H1TO29  = 'S28Q29 3 FRIENDS-DRINK >1 A MONTH-W1' 
   H1TO30  = 'S28Q30 AGE FIRST TRIED MARIJUANA-W1' 
   H1TO31  = 'S28Q31 TIMES SMOKED POT-W1' 
   H1TO32  = 'S28Q32 PAST 30 DAYS-TIMES SMOKED POT-W1' 
   H1TO33  = 'S28Q33 3 FRIENDS-SMOKE POT >1 A MONTH-W1' 
   H1TO34  = 'S28Q34 AGE FIRST TRIED COCAINE-W1' 
   H1TO35  = 'S28Q35 TIMES USED COCAINE-W1' 
   H1TO36  = 'S28Q36 PAST 30 DAYS-TIMES USED COKE-W1' 
   H1TO37  = 'S28Q37 AGE FIRST TRIED INHALANTS-W1' 
   H1TO38  = 'S28Q38 TIMES USED INHALANTS-W1' 
   H1TO39  = 'S28Q39 PAST 30 DAYS-USED INHALANTS-W1' 
   H1TO40  = 'S28Q40 AGE FIRST OTHER ILLEGAL DRUGS-W1' 
   H1TO41  = 'S28Q41 TIMES USE OTHER ILLEGAL DRUGS-W1' 
   H1TO42  = 'S28Q42 PAST 30 DAYS-USE OTH ILL DRUGS-W1' 
   H1TO43  = 'S28Q43 EVERY INJECTED DRUGS-W1' 
   H1TO44  = 'S28Q44 HOW OFTEN INJECTED DRUGS-W1' 
   H1TO45  = 'S28Q45 AGE FIRST INJECTED DRUGS-W1' 
   H1TO46  = 'S28Q46 PAST 30 DAYS-TIMES INJECTED-W1' 
   H1TO47  = 'S28Q47 DO YOU OWN NEEDLE/SYRINGE-W1' 
   H1TO48  = 'S28Q48 EVER SHARED NEEDLE/SYRINGE-W1' 
   H1TO49  = 'S28Q49 BLEACH NEEDLE/SYRINGE BEF USE-W1' 
   H1TO50  = 'S28Q50 CIGARETTES IN YOUR HOME-W1' 
   H1TO51  = 'S28Q51 EASY ACCESS TO ALCOHOL IN HOME-W1' 
   H1TO52  = 'S28Q52 EASY ACCESS TO DRUGS IN HOME-W1' 
   H1TO53  = 'S28Q53 EASY ACCESS TO GUN IN HOME-W1' 
   H1TO54A = 'S28Q54A GUN IN HOME-HANDGUN-W1' 
   H1TO54B = 'S28Q54B GUN IN HOME-SHOTGUN-W1' 
   H1TO54C = 'S28Q54C GUN IN HOME-RIFLE-W1' 
   H1TO54D = 'S28Q54D GUN IN HOME-OTHER FIREARM-W1' 
   H1DS1   = 'S29Q1 PAST 12 MOS-PAINT GRAFFITI-W1' 
   H1DS2   = 'S29Q2 PAST 12 MOS-DAMAGE PROPERTY-W1' 
   H1DS3   = 'S29Q3 LIE TO PARENTS ABOUT WHEREABOUT-W1' 
   H1DS4   = 'S29Q4 SHOPLIFT-W1' 
   H1DS5   = 'S29Q5 SERIOUS PHYS FIGHT-W1' 
   H1DS6   = 'S29Q6 SERIOUSLY INJURE SOMEONE-W1' 
   H1DS7   = 'S29Q7 RUN AWAY FROM HOME-W1' 
   H1DS8   = 'S29Q8 STEAL A CAR-W1' 
   H1DS9   = 'S29Q9 PAST 12 MOS-STEAL WORTH >$50-W1' 
   H1DS10  = 'S29Q10 BURGLARIZE A BUILDING-W1' 
   H1DS11  = 'S29Q11 USE OR THREATEN WITH A WEAPON-W1' 
   H1DS12  = 'S29Q12 SELL DRUGS-W1' 
   H1DS13  = 'S29Q13 STEAL WORTH < $50-W1' 
   H1DS14  = 'S29Q14 TAKE PART IN A GROUP FIGHT-W1' 
   H1DS15  = 'S29Q15 LOUD/ROWDY IN A PUBLIC PLACE-W1' 
   H1JO1   = 'S30Q1 FIRST SEX-WERE YOU DRINKING-W1' 
   H1JO2   = 'S30Q2 FIRST SEX-WERE YOU DRUNK-W1' 
   H1JO3   = 'S30Q3 MOST RECENT SEX-DRINK ALCOHOL-W1' 
   H1JO4   = 'S30Q4 MOST RECENT SEX-DRUNK-W1' 
   H1JO5   = 'S30Q5 FIRST SEX-USING DRUGS-W1' 
   H1JO6A  = 'S30Q6A FIRST SEX-DRUG-POT-W1' 
   H1JO6B  = 'S30Q6B FIRST SEX-DRUG-CRACK-W1' 
   H1JO6C  = 'S30Q6C FIRST SEX-DRUG-OTHER COKE-W1' 
   H1JO6D  = 'S30Q6D FIRST SEX-DRUGE-INHALANTS-W1' 
   H1JO6E  = 'S30Q6E FIRST SEX-DRUG-OTHER ILLEGAL-W1' 
   H1JO7   = 'S30Q7 MOST RECENT SEX-DRUG USE-W1' 
   H1JO8A  = 'S30Q8A LATEST SEX/DRUG-POT-W1' 
   H1JO8B  = 'S30Q8B LATEST SEX/DRUG-CRACK-W1' 
   H1JO8C  = 'S30Q8C LATEST SEX/DRUG-OTHER COKE-W1' 
   H1JO8D  = 'S30Q8D LATEST SEX/DRUGS-INHALANTS-W1' 
   H1JO8E  = 'S30Q8E LATEST SEX/DRUG-OTHER ILLEGAL-W1' 
   H1JO9   = 'S30Q9 DRIVE WHILE DRUNK-W1' 
   H1JO10  = 'S30Q10 DRUNK AT SCHOOL-W1' 
   H1JO11  = 'S30Q11 PAST 12 MOS-PHYSICAL FIGHT-W1' 
   H1JO12  = 'S30Q12 LATEST FIGHT-DRINKING-W1' 
   H1JO13  = 'S30Q13 LASTEST FIGHT-DRUNK-W1' 
   H1JO14  = 'S30Q14 CARRY WEAPON WHILE DRINKING-W1' 
   H1JO15  = 'S30Q15 DRINK ALCOHOL WHEN ALONE-W1' 
   H1JO16  = 'S30Q16 LAST DRINK ALCOHOL-ALONE?-W1' 
   H1JO17  = 'S30Q17 DRINK ALCOHOL WHEN USING DRUGS-W1' 
   H1JO18A = 'S30Q18A DRINK/DRUGS-POT-W1' 
   H1JO18B = 'S30Q18B DRINK/DRUGS-CRACK-W1' 
   H1JO18C = 'S30Q18C DRINK/DRUGS-OTHER COKE-W1' 
   H1JO18D = 'S30Q18D DRINK/DRUGS-INHALANTS-W1' 
   H1JO18E = 'S30Q18E DRINK/DRUGS-OTHER ILLEGAL-W1' 
   H1JO19  = 'S30Q19 DRIVE WHILE HIGH ON DRUGS-W1' 
   H1JO20  = 'S30Q20 HIGH AT SCHOOL-W1' 
   H1JO21  = 'S30Q21 FIGHT WHILE HIGHT-W1' 
   H1JO22A = 'S30Q22A LATEST FIGHT/DRUGS-POT-W1' 
   H1JO22B = 'S30Q22B LATEST FIGHT/DRUGS-CRACK-W1' 
   H1JO22C = 'S30Q22C LATEST FIGHT/DRUGS-OTHER COKE-W1' 
   H1JO22D = 'S30Q22D LATEST FIGHT/DRUGS-INHALANTS-W1' 
   H1JO22E = 'S30Q22E LATEST FIGHT/DRUGS-OTH ILLEG-W1' 
   H1JO23  = 'S30Q23 USE DRUGS WHILE CARRY WEAPONS-W1' 
   H1JO24  = 'S30Q24 ALONE FIRST DRUG USE-W1' 
   H1JO25  = 'S30Q25 CARRY WEAPON AT SCHOOL-W1' 
   H1JO26  = 'S30Q26 USE A WEAPON IN A FIGHT-W1' 
   H1FV1   = 'S31Q1 SAW SHOOTING/STABBING OF PERSON-W1' 
   H1FV2   = 'S31Q2 HAD KNIFE/GUN PULLED ON YOU-W1' 
   H1FV3   = 'S31Q3 SOMEONE SHOT YOU-W1' 
   H1FV4   = 'S31Q4 SOMEONE STABBED YOU-W1' 
   H1FV5   = 'S31Q5 GOT INTO A PHYSICAL FIGHT-W1' 
   H1FV6   = 'S31Q6 WERE JUMPED-W1' 
   H1FV7   = 'S31Q7 PULLED A KNIFE/GUN ON SOMEONE-W1' 
   H1FV8   = 'S31Q8 SHOT/STABBED SOMEONE-W1' 
   H1FV9   = 'S31Q9 CARRY WEAPON TO SCHOOL-W1' 
   H1FV10  = 'S31Q10 FAVORITE SCHOOL WEAPON-W1' 
   H1FV11  = 'S31Q11 LAST FIGHT-WHO-W1' 
   H1FV12  = 'S31Q12 LAST FIGHT-WHERE-W1' 
   H1FV13  = 'S31Q13 FREQ-SERIOUS INJURY FROM FIGHT-W1' 
   H1FV14M = 'S31Q14M MO-LAST SERIOUS FIGHT INJURY-W1' 
   H1FV14Y = 'S31Q14Y YR-LAST SERIOUS FIGHT INJURY-W1' 
   H1MP1   = 'S32AQ1 HAIR UNDER ARMS-W1' 
   H1MP2   = 'S32AQ2 THICKNESS OF FACIAL HAIR-W1' 
   H1MP3   = 'S32AQ3 VOICE LOWER THAN IN GRADE SCH-W1' 
   H1MP4   = 'S32AQ4 RELATIVE PHYSICAL DEVELOPMENT-W1' 
   H1FP1   = 'S32BQ1 BREAST SIZE-W1' 
   H1FP2   = 'S32BQ2 CURVACEOUS BODY-W1' 
   H1FP3   = 'S32BQ3 EVER MENSTRUATED-W1' 
   H1FP4   = 'S32BQ4 MENSTR-AGE FIRST PERIOD-W1' 
   H1FP5M  = 'S32BQ5M MENSTR-MO-LAST PERIOD-W1' 
   H1FP5D  = 'S32BQ5D MENSTR-DAY-LAST PERIOD-W1' 
   H1FP6   = 'S32BQ6 RELATIVE PHYSICAL DEVELOPMENT-W1' 
   H1FP7   = 'S32BQ7 EVER BEEN PREGNANT-W1' 
   H1FP8   = 'S32BQ8 NUMBER OF PREGNANCIES-W1' 
   H1FP9M  = 'S32BQ9M MOST RECENT PREG-MONTH-W1' 
   H1FP9Y  = 'S32BQ9Y MOST RECENT PREG-YEAR-W1' 
   H1FP10  = 'S32BQ10 BETW 1/1/94 & NOW-NO. PREGS-W1' 
   H1FP11M1= 'S32BQ11M_1 PREG1-MONTH-W1' 
   H1FP11Y1= 'S32BQ11M_1 PREG1-YEAR-W1' 
   H1FP12_1= 'S32BQ12_1 PREG1-USE BIRTHCONTROL-W1' 
   H1FP13A1= 'S32BQ13A_1 PREG1 METHOD 1-W1' 
   H1FP13B1= 'S32BQ13B_1 PREG1 METHOD 2-W1' 
   H1FP13C1= 'S32BQ13C_1 PREG1 METHOD 3-W1' 
   H1FP14_1= 'S32BQ14_1 PREG1 BIRTHCONTROL ALWAYS-W1' 
   H1FP15_1= 'S32BQ15_1 PREG1 WANTED BABY-W1' 
   H1FP17_1= 'S32BQ17_1 PREG1 WANT TO MARRY PARTNER-W1' 
   H1FP20M1= 'S32BQ20M_1 PREG1 MO PREGNANCY ENDED-W1' 
   H1FP20Y1= 'S32BQ20Y_1 PREG1 YR PREGNANCY ENDED-W1' 
   H1FP21_1= 'S32BQ21_1 PREG1 PREGNANCY OUTCOME-W1' 
   H1FP22_1= 'S32BQ22_1 PREG1 DID YOU HAVE TWINS-W1' 
   H1FP23A1= 'S32BQ23A_1 PREG1A PLACED FOR ADOPT-W1' 
   H1FP24A1= 'S32BQ24A_1 PREG1A CHILD STILL ALIVE-W1' 
   H1FP11M2= 'S32BQ11M_2 PREG2-MONTH-W1' 
   H1FP11Y2= 'S32BQ11M_2 PREG2-YEAR-W1' 
   H1FP12_2= 'S32BQ12_2 PREG2-USE BIRTHCONTROL-W1' 
   H1FP13A2= 'S32BQ13A_2 PREG2 METHOD 1-W1' 
   H1FP13B2= 'S32BQ13B_2 PREG2 METHOD 2-W1' 
   H1FP13C2= 'S32BQ13C_2 PREG2 METHOD 3-W1' 
   H1FP14_2= 'S32BQ14_2 PREG2 BIRTHCONTROL ALWAYS-W1' 
   H1FP15_2= 'S32BQ15_2 PREG2 WANTED BABY-W1' 
   H1FP17_2= 'S32BQ17_2 PREG2 WANT TO MARRY PARTNER-W1' 
   H1FP20M2= 'S32BQ20M_2 PREG2 MO PREGNANCY ENDED-W1' 
   H1FP20Y2= 'S32BQ20Y_2 PREG2 YR PREGNANCY ENDED-W1' 
   H1FP21_2= 'S32BQ21_2 PREG2 PREGNANCY OUTCOME-W1' 
   H1FP22_2= 'S32BQ22_2 PREG2 DID YOU HAVE TWINS-W1' 
   H1FP23A2= 'S32BQ23A_2 PREG2A PLACED FOR ADOPT-W1' 
   H1FP24A2= 'S32BQ24A_2 PREG2A CHILD STILL ALIVE-W1' 
   H1FP11M3= 'S32BQ11M_3 PREG3-MONTH-W1' 
   H1FP11Y3= 'S32BQ11M_3 PREG3-YEAR-W1' 
   H1FP12_3= 'S32BQ12_3 PREG3-USE BIRTHCONTROL-W1' 
   H1FP13A3= 'S32BQ13A_3 PREG3 METHOD 1-W1' 
   H1FP13B3= 'S32BQ13B_3 PREG3 METHOD 2-W1' 
   H1FP13C3= 'S32BQ13C_3 PREG3 METHOD 3-W1' 
   H1FP14_3= 'S32BQ14_3 PREG3 BIRTHCONTROL ALWAYS-W1' 
   H1FP15_3= 'S32BQ15_3 PREG3 WANTED BABY-W1' 
   H1FP17_3= 'S32BQ17_3 PREG3 WANT TO MARRY PARTNER-W1' 
   H1FP20M3= 'S32BQ20M_3 PREG3 MO PREGNANCY ENDED-W1' 
   H1FP20Y3= 'S32BQ20Y_3 PREG3 YR PREGNANCY ENDED-W1' 
   H1FP21_3= 'S32BQ21_3 PREG3 PREGNANCY OUTCOME-W1' 
   H1FP22_3= 'S32BQ22_3 PREG3 DID YOU HAVE TWINS-W1' 
   H1FP23A3= 'S32BQ23A_3 PREG3A PLACED FOR ADOPT-W1' 
   H1FP24A3= 'S32BQ24A_3 PREG3A CHILD STILL ALIVE-W1' 
   H1FP11M4= 'S32BQ11M_4 PREG4-MONTH-W1' 
   H1FP11Y4= 'S32BQ11M_4 PREG4-YEAR-W1' 
   H1FP12_4= 'S32BQ12_4 PREG4-USE BIRTHCONTROL-W1' 
   H1FP13A4= 'S32BQ13A_4 PREG4 METHOD 1-W1' 
   H1FP13B4= 'S32BQ13B_4 PREG4 METHOD 2-W1' 
   H1FP13C4= 'S32BQ13C_4 PREG4 METHOD 3-W1' 
   H1FP14_4= 'S32BQ14_4 PREG4 BIRTHCONTROL ALWAYS-W1' 
   H1FP15_4= 'S32BQ15_4 PREG4 WANTED BABY-W1' 
   H1FP17_4= 'S32BQ17_4 PREG4 WANT TO MARRY PARTNER-W1' 
   H1FP20M4= 'S32BQ20M_4 PREG4 MO PREGNANCY ENDED-W1' 
   H1FP20Y4= 'S32BQ20Y_4 PREG4 YR PREGNANCY ENDED-W1' 
   H1FP21_4= 'S32BQ21_4 PREG4 PREGNANCY OUTCOME-W1' 
   H1FP22_4= 'S32BQ22_4 PREG4 DID YOU HAVE TWINS-W1' 
   H1FP23A4= 'S32BQ23A_4 PREG4A PLACED FOR ADOPT-W1' 
   H1FP24A4= 'S32BQ24A_4 PREG4A CHILD STILL ALIVE-W1' 
   H1FP11M5= 'S32BQ11M_5 PREG5-MONTH-W1' 
   H1FP11Y5= 'S32BQ11M_5 PREG5-YEAR-W1' 
   H1FP12_5= 'S32BQ12_5 PREG5-USE BIRTHCONTROL-W1' 
   H1FP13A5= 'S32BQ13A_5 PREG5 METHOD 1-W1' 
   H1FP13B5= 'S32BQ13B_5 PREG5 METHOD 2-W1' 
   H1FP13C5= 'S32BQ13C_5 PREG5 METHOD 3-W1' 
   H1FP14_5= 'S32BQ14_5 PREG5 BIRTHCONTROL ALWAYS-W1' 
   H1FP15_5= 'S32BQ15_5 PREG5 WANTED BABY-W1' 
   H1FP17_5= 'S32BQ17_5 PREG5 WANT TO MARRY PARTNER-W1' 
   H1FP20M5= 'S32BQ20M_5 PREG5 MO PREGNANCY ENDED-W1' 
   H1FP20Y5= 'S32BQ20Y_5 PREG5 YR PREGNANCY ENDED-W1' 
   H1FP21_5= 'S32BQ21_5 PREG5 PREGNANCY OUTCOME-W1' 
   H1FP22_5= 'S32BQ22_5 PREG5 DID YOU HAVE TWINS-W1' 
   H1FP23A5= 'S32BQ23A_5 PREG5A PLACED FOR ADOPT-W1' 
   H1FP24A5= 'S32BQ24A_5 PREG5A CHILD STILL ALIVE-W1' 
   H1SU1   = 'S33Q1 PAST YR-THINK ABOUT SUICIDE-W1' 
   H1SU2   = 'S33Q2 PAST YR-ATTEMPT SUICIDE-W1' 
   H1SU3   = 'S33Q3 ATTEMPT RESULT IN MED TREATMT-W1' 
   H1SU4   = 'S33Q4 PAST YR-FRIENDS ATTEMPT SUICIDE-W1' 
   H1SU5   = 'S33Q5 PAST YR-FRIENDS SUCCEED-W1' 
   H1SU6   = 'S33Q6 PAST YR-FAMILY ATTEMPT SUICIDE-W1' 
   H1SU7   = 'S33Q7 PAST YR-FAMILY SUCCEED-W1' 
   H1SU8   = 'S33Q8 HOW HONESTLY ANSWERED QS-W1' 
   H1PA1   = 'S34Q1 MOM-FEEL ABOUT YOUR SEXLIFE-W1' 
   H1PA2   = 'S34Q2 MOM-YOU HAVING SEX WITH STEADY-W1' 
   H1PA3   = 'S34Q3 MOM-USE OF BIRTHCONTROL-W1' 
   H1PA4   = 'S34Q4 DAD-FEEL ABOUT YOUR SEXLIFE-W1' 
   H1PA5   = 'S34Q5 DAD-YOU HAVING SEX WITH STEADY-W1' 
   H1PA6   = 'S34Q6 DAD-USE OF BIRTHCONTROL-W1' 
   H1PA7   = 'S34Q7 CONSIDER HAVING CHILD UNMARRIED-W1' 
   H1PR1   = 'S35Q1 ADULTS CARE ABOUT YOU-W1' 
   H1PR2   = 'S35Q2 TEACHERS CARE ABOUT YOU-W1' 
   H1PR3   = 'S35Q3 PARENTS CARE ABOUT YOU-W1' 
   H1PR4   = 'S35Q4 FRIENDS CARE ABOUT YOU-W1' 
   H1PR5   = 'S35Q5 FAMILY UNDERSTAND YOU-W1' 
   H1PR6   = 'S35Q6 WANT TO LEAVE HOME-W1' 
   H1PR7   = 'S35Q7 FAMIYL HAS FUN TOGETHER-W1' 
   H1PR8   = 'S35Q8 FAMILY PAYS ATTENTION TO YOU-W1' 
   H1NB1   = 'S36Q1 KNOW MOST PEOPLE IN NBORHOOD-W1' 
   H1NB2   = 'S36Q2 PAST MO-STOP & TALK TO NEIGHBOR-W1' 
   H1NB3   = 'S36Q3 NEIGHBORS LOOK OUT FOR EA OTHER-W1' 
   H1NB4   = 'S36Q4 USE REC CTR IN NBORHOOD-W1' 
   H1NB5   = 'S36Q5 FEEL SAFE IN NBORHOOD-W1' 
   H1NB6   = 'S36Q6 HOW HAPPY LIVING IN NBORHOOD-W1' 
   H1NB7   = 'S36Q7 HAPPY/UNHAPPY TO MOVE-W1' 
   H1RE1   = 'S37Q1 RELIGION-W1' 
   H1RE2   = 'S37Q2 SCRIPTURES ARE THE WORD OF GOD-W1' 
   H1RE3   = 'S37Q3 PAST YR-ATTEND SERVICES-W1' 
   H1RE4   = 'S37Q4 HOW IMPORTANT IS RELIGION-W1' 
   H1RE5   = 'S37Q5 BORN-AGAIN CHRISTIAN-W1' 
   H1RE6   = 'S37Q6 HOW OFTEN DO YOU PRAY-W1' 
   H1RE7   = 'S37Q7 PAST YR-ATTEND YOUTH GROUPS-W1' 
   H1EE1   = 'S38Q1 WANT TO ATTEND COLLEGE-W1' 
   H1EE2   = 'S38Q2 LIKELY WILL ATTEND COLLEGE-W1' 
   H1EE3   = 'S38Q3 DID YOU WORK FOR PAY-W1' 
   H1EE4   = 'S38Q4 HRS/WEEK WORK-NONSUMMER-W1' 
   H1EE5   = 'S38Q5 MONEY EARNED/WEEK-NONSUMMER-W1' 
   H1EE6   = 'S38Q6 HRS/WEEK WORK-SUMMER-W1' 
   H1EE7   = 'S38Q7 MONEY EARNED/WEEK-SUMMER-W1' 
   H1EE8   = 'S38Q8 WEEKLY ALLOWANCE-W1' 
   H1EE9   = 'S38Q9 EVER DRIVEN A CAR-W1' 
   H1EE10  = 'S38Q10 HAVE A VALID DRIVERS LICENSE-W1' 
   H1EE11  = 'S38Q11 DRIVE MILES/WEEK-W1' 
   H1EE12  = 'S38Q12 CHANCES-LIVE TO AGE 35-W1' 
   H1EE13  = 'S38Q13 CHANCES-MARRIED BY AGE 25-W1' 
   H1EE14  = 'S38Q14 CHANCES-KILLED BY AGE 21-W1' 
   H1EE15  = 'S38Q15 CHANCES-GET HIV/AIDS-W1' 
   STUDSIBA= 'S39 SIB A IS A STUDY SIB-W1' 
   TWINA   = 'S39 SIB A-RESPONDENTS TWIN-W1' 
   H1WS1A  = 'S39Q1 SIB A-SPEND TIME TOGETHER-W1' 
   H1WS2A  = 'S39Q2 SIB A-SAME FRIENDS-W1' 
   H1WS3A  = 'S39Q3 SIB A-FIGHT/QUARREL-W1' 
   H1WS4A  = 'S39Q4 SIB A-FEEL LOVE FOR SIB A-W1' 
   H1WS5A  = 'S39Q5 SIB A-RIVAL FOR PARENTS ATTN-W1' 
   H1WS6A  = 'S39Q6 SIB A-LOOK ALIKE-W1' 
   H1WS7A  = 'S39Q7 SIB A-IDENTICAL OR FRATERNAL-W1' 
   H1WS8A  = 'S39Q8 SIB A-SIMILARITY IN LOOKS-W1' 
   H1WS9A  = 'S39Q9 SIB A-CONFUSE STRANGERS-W1' 
   H1WS10A = 'S39Q10 SIB A-CONFUSE TEACHERS-W1' 
   H1WS11A = 'S39Q11 SIB A-CONFUSE FAMILY-W1' 
   H1WS12A = 'S39Q12 SIB A-SIMILAR PERSONALITY-W1' 
   STUDSIBB= 'S39 SIB B-A STUDY SIB-W1' 
   TWINB   = 'S39 SIB B-RESPONDENTS TWIN-W1' 
   H1WS1B  = 'S39Q1 SIB B-SPEND TIME TOGETHER-W1' 
   H1WS2B  = 'S39Q2 SIB B-SAME FRIENDS-W1' 
   H1WS3B  = 'S39Q3 SIB B-FIGHT/QUARREL-W1' 
   H1WS4B  = 'S39Q4 SIB B-FEEL LOVE FOR SIB B-W1' 
   H1WS5B  = 'S39Q5 SIB B-RIVAL FOR PARENTS ATTN-W1' 
   H1WS6B  = 'S39Q6 SIB B-LOOK ALIKE-W1' 
   H1WS7B  = 'S39Q7 SIB B-IDENTICAL OR FRATERNAL-W1' 
   H1WS8B  = 'S39Q8 SIB B-SIMILARITY IN LOOKS-W1' 
   H1WS9B  = 'S39Q9 SIB B-CONFUSE STRANGERS-W1' 
   H1WS10B = 'S39Q10 SIB B-CONFUSE TEACHERS-W1' 
   H1WS11B = 'S39Q11 SIB B-CONFUSE FAMILY-W1' 
   H1WS12B = 'S39Q12 SIB B-SIMILAR PERSONALITY-W1' 
   STUDSIBC= 'S39 SIB C-STUDY SIB-W1' 
   TWINC   = 'S39 SIB C-RESPONDENTS TWIN-W1' 
   H1WS1C  = 'S39Q1 SIB C-SPEND TIME TOGETHER-W1' 
   H1WS2C  = 'S39Q2 SIB C-SAME FRIENDS-W1' 
   H1WS3C  = 'S39Q3 SIB C-FIGHT/QUARREL-W1' 
   H1WS4C  = 'S39Q4 SIB C-FEEL LOVE FOR SIB C-W1' 
   H1WS5C  = 'S39Q5 SIB C-RIVAL FOR PARENTS ATTN-W1' 
   H1WS6C  = 'S39Q6 SIB C-LOOK ALIKE-W1' 
   H1WS7C  = 'S39Q7 SIB C-IDENTICAL OR FRATERNAL-W1' 
   H1WS8C  = 'S39Q8 SIB C-SIMILARITY IN LOOKS-W1' 
   H1WS9C  = 'S39Q9 SIB C-CONFUSE STRANGERS-W1' 
   H1WS10C = 'S39Q10 SIB C-CONFUSE TEACHERS-W1' 
   H1WS11C = 'S39Q11 SIB C-CONFUSE FAMILY-W1' 
   H1WS12C = 'S39Q12 SIB C-SIMILAR PERSONALITY-W1' 
   STUDSIBD= 'S39 SIB D-STUDY SIB-W1' 
   TWIND   = 'S39 SIB D-RESPONDENTS TWIN-W1' 
   H1WS1D  = 'S39Q1 SIB D-SPEND TIME TOGETHER-W1' 
   H1WS2D  = 'S39Q2 SIB D-SAME FRIENDS-W1' 
   H1WS3D  = 'S39Q3 SIB D-FIGHT/QUARREL-W1' 
   H1WS4D  = 'S39Q4 SIB D-FEEL LOVE FOR SIB D-W1' 
   H1WS5D  = 'S39Q5 SIB D-RIVAL FOR PARENTS ATTN-W1' 
   H1WS6D  = 'S39Q6 SIB D-LOOK ALIKE-W1' 
   H1WS7D  = 'S39Q7 SIB D-IDENTICAL OR FRATERNAL-W1' 
   H1WS8D  = 'S39Q8 SIB D-SIMILARITY IN LOOKS-W1' 
   H1WS9D  = 'S39Q9 SIB D-CONFUSE STRANGERS-W1' 
   H1WS10D = 'S39Q10 SIB D-CONFUSE TEACHERS-W1' 
   H1WS11D = 'S39Q11 SIB D-CONFUSE FAMILY-W1' 
   H1WS12D = 'S39Q12 SIB D-SIMILAR PERSONALITY-W1' 
   STUDSIBE= 'S39 SIB E-STUDY SIB-W1' 
   TWINE   = 'S39 SIB E-RESPONDENTS TWIN-W1' 
   H1WS1E  = 'S39Q1 SIB E-SPEND TIME TOGETHER-W1' 
   H1WS2E  = 'S39Q2 SIB E-SAME FRIENDS-W1' 
   H1WS3E  = 'S39Q3 SIB E-FIGHT/QUARREL-W1' 
   H1WS4E  = 'S39Q4 SIB E-FEEL LOVE FOR SIB E-W1' 
   H1WS5E  = 'S39Q5 SIB E-RIVAL FOR PARENTS ATTN-W1' 
   H1WS6E  = 'S39Q6 SIB E-LOOK ALIKE-W1' 
   H1WS7E  = 'S39Q7 SIB E-IDENTICAL OR FRATERNAL-W1' 
   H1WS8E  = 'S39Q8 SIB E-SIMILARITY IN LOOKS-W1' 
   H1WS9E  = 'S39Q9 SIB E-CONFUSE STRANGERS-W1' 
   H1WS10E = 'S39Q10 SIB E-CONFUSE TEACHERS-W1' 
   H1WS11E = 'S39Q11 SIB E-CONFUSE FAMILY-W1' 
   H1WS12E = 'S39Q12 SIB E-SIMILAR PERSONALITY-W1' 
   STUDSIBF= 'S39 SIB F-STUDY SIB-W1' 
   TWINF   = 'S39 SIB F-RESPONDENTS TWIN-W1' 
   H1WS1F  = 'S39Q1 SIB F-SPEND TIME TOGETHER-W1' 
   H1WS2F  = 'S39Q2 SIB F-SAME FRIENDS-W1' 
   H1WS3F  = 'S39Q3 SIB F-FIGHT/QUARREL-W1' 
   H1WS4F  = 'S39Q4 SIB F-FEEL LOVE FOR SIB F-W1' 
   H1WS5F  = 'S39Q5 SIB F-RIVAL FOR PARENTS ATTN-W1' 
   H1WS6F  = 'S39Q6 SIB F-LOOK ALIKE-W1' 
   H1WS7F  = 'S39Q7 SIB F-IDENTICAL OR FRATERNAL-W1' 
   H1WS8F  = 'S39Q8 SIB F-SIMILARITY IN LOOKS-W1' 
   H1WS9F  = 'S39Q9 SIB F-CONFUSE STRANGERS-W1' 
   H1WS10F = 'S39Q10 SIB F-CONFUSE TEACHERS-W1' 
   H1WS11F = 'S39Q11 SIB F-CONFUSE FAMILY-W1' 
   H1WS12F = 'S39Q12 SIB F-SIMILAR PERSONALITY-W1' 
   STUDSIBG= 'S39 SIB G-STUDY SIB-W1' 
   TWING   = 'S39 SIB G-RESPONDENTS TWIN-W1' 
   H1WS1G  = 'S39Q1 SIB G-SPEND TIME TOGETHER-W1' 
   H1WS2G  = 'S39Q2 SIB G-SAME FRIENDS-W1' 
   H1WS3G  = 'S39Q3 SIB G-FIGHT/QUARREL-W1' 
   H1WS4G  = 'S39Q4 SIB G-FEEL LOVE FOR SIB G-W1' 
   H1WS5G  = 'S39Q5 SIB G-RIVAL FOR PARENTS ATTN-W1' 
   H1WS6G  = 'S39Q6 SIB G-LOOK ALIKE-W1' 
   H1WS7G  = 'S39Q7 SIB G-IDENTICAL OR FRATERNAL-W1' 
   H1WS8G  = 'S39Q8 SIB G-SIMILARITY IN LOOKS-W1' 
   H1WS9G  = 'S39Q9 SIB G-CONFUSE STRANGERS-W1' 
   H1WS10G = 'S39Q10 SIB G-CONFUSE TEACHERS-W1' 
   H1WS11G = 'S39Q11 SIB G-CONFUSE FAMILY-W1' 
   H1WS12G = 'S39Q12 SIB G-SIMILAR PERSONALITY-W1' 
   H1WS13  = 'S39Q13 IS THIS RESEARCH WORTHWHILE?' 
   H1IR1   = 'S40Q1 PHYSICAL ATTRACTIVENESS OF R-W1' 
   H1IR2   = 'S40Q2 PERSONALITY ATTRACTNESS OF R-W1' 
   H1IR3   = 'S40Q3 GROOMING-W1' 
   H1IR4   = 'S40Q4 CANDIDNESS OF R-W1' 
   H1IR5   = 'S40Q5 PHYSICAL MATURITY OF R-W1' 
   H1IR6   = 'S40Q6 THIRD PERSON PRESENT AT INTRVW-W1' 
   H1IR7A  = 'S40Q7A PRESENT AT INTERVIEW-W1' 
   H1IR7B  = 'S40Q7B PRESENT AT INTERVIEW-W1' 
   H1IR7C  = 'S40Q7C PRESENT AT INTERVIEW-W1' 
   H1IR7D  = 'S40Q7D PRESENT AT INTERVIEW-W1' 
   H1IR7E  = 'S40Q7E PRESENT AT INTERVIEW-W1' 
   H1IR7F  = 'S40Q7F PRESENT AT INTERVIEW-W1' 
   H1IR7G  = 'S40Q7G PRESENT AT INTERVIEW-W1' 
   H1IR7H  = 'S40Q7H PRESENT AT INTERVIEW-W1' 
   H1IR7I  = 'S40Q7I PRESENT AT INTERVIEW-W1' 
   H1IR7J  = 'S40Q7J PRESENT AT INTERVIEW-W1' 
   H1IR7K  = 'S40Q7K PRESENT AT INTERVIEW-W1' 
   H1IR7L  = 'S40Q7L PRESENT AT INTERVIEW-W1' 
   H1IR7M  = 'S40Q7M PRESENT AT INTERVIEW-W1' 
   H1IR7N  = 'S40Q7N PRESENT AT INTERVIEW-W1' 
   H1IR7O  = 'S40Q7O PRESENT AT INTERVIEW-W1' 
   H1IR7P  = 'S40Q7P PRESENT AT INTERVIEW-W1' 
   H1IR7Q  = 'S40Q7Q PRESENT AT INTERVIEW-W1' 
   H1IR7R  = 'S40Q7R PRESENT AT INTERVIEW-W1' 
   H1IR7S  = 'S40Q7S PRESENT AT INTERVIEW-W1' 
   H1IR7T  = 'S40Q7T PRESENT AT INTERVIEW-W1' 
   H1IR7U  = 'S40Q7U PRESENT AT INTERVIEW-W1' 
   H1IR7V  = 'S40Q7V PRESENT AT INTERVIEW-W1' 
   H1IR7W  = 'S40Q7W PRESENT AT INTERVIEW-W1' 
   H1IR7X  = 'S40Q7X PRESENT AT INTERVIEW-W1' 
   H1IR7Y  = 'S40Q7Y PRESENT AT INTERVIEW-W1' 
   H1IR7Z  = 'S40Q7Z PRESENT AT INTERVIEW-W1' 
   H1IR7AA = 'S40Q7AA PRESENT AT INTERVIEW-W1' 
   H1IR7BB = 'S40Q7BB PRESENT AT INTERVIEW-W1' 
   H1IR7CC = 'S40Q7CC PRESENT AT INTERVIEW-W1' 
   H1IR7DD = 'S40Q7DD PRESENT AT INTERVIEW-W1' 
   H1IR8A  = 'S40Q8A NO. PERSONS UNDER AGE 6-W1' 
   H1IR8B  = 'S40Q8B NO. PERSONS AGE 6-11-W1' 
   H1IR8C  = 'S40Q8C NO. PERSONS AGE 12-18-W1' 
   H1IR8D  = 'S40Q8D NO. PERSONS AGE 19 AND OLDER-W1' 
   H1IR9   = 'S40Q9 LOCATION OF INTERVIEW-W1' 
   H1IR10  = 'S40Q10 DESCRIPTION OF DWELLING UNIT-W1' 
   H1IR11  = 'S40Q11 CONDITION OF DWELLING UNIT-W1' 
   H1IR12  = 'S40Q12 DOMINT LAND USE OF IMMED AREA-W1' 
   H1IR13  = 'S40Q13 DOMINANT RESIDENTIAL TYPE-W1' 
   H1IR14  = 'S40Q14 CONDITION OF NBORHOOD BLDGS-W1' 
   H1IR15  = 'S40Q15 CONCERN FOR SAFETY-W1' 
   H1IR16  = 'S40Q16 NUMBER OF INTERRUPTIONS-W1' 
   H1IR17A = 'S40Q17A ANSWERED TELEPHONE CALL-W1' 
   H1IR17B = 'S40Q17B PLACED TELEPHONE CALL-W1' 
   H1IR17C = 'S40Q17C DEALT WITH VISITORS-W1' 
   H1IR17D = 'S40Q17D HH MEMBERS PASSED THRU ROOM-W1' 
   H1IR17E = 'S40Q17E RESPONDED TO CHILDS NEEDS-W1' 
   H1IR17F = 'S40Q17F ATTENDED TO HH RESPONSIBILS-W1' 
   H1IR17G = 'S40Q17G R/INTERVIEWER NEEDS-W1' 
   H1IR17H = 'S40Q17H ENVIRONMENTAL DISTRACTIONS-W1' 
   H1IR17I = 'S40Q17I R OBTAINED INFORMATION-W1' 
   H1IR17J = 'S40Q17J OTHER-W1' 
   H1IR18  = 'S40Q18 R APPEARED TO BE DRUNK/HIGH-W1' 
   H1IR19  = 'S40Q19 R APPEARED BORED/IMPATIENT-W1' 
   H1IR20  = 'S40Q20 BOREDOM NEG AFFECT ON INVIEW-W1' 
   H1IR21  = 'S40Q21 R APPEARED EMBARRASSED-W1' 
   H1IR22A = 'S40Q22A 1 GENERAL INTRO-W1' 
   H1IR22B = 'S40Q22B 2 DAILY ACTIVITIES-W1' 
   H1IR22C = 'S40Q22C 3 GENERAL HEALTH-W1' 
   H1IR22D = 'S40Q22D 4 TAUGHT IN SCHOOL-W1' 
   H1IR22E = 'S40Q22E 5 ACADEMICS-W1' 
   H1IR22F = 'S40Q22F 6 PHYSICAL/FUNCTIONAL LIMITS-W1' 
   H1IR22G = 'S40Q22G 7 ACCESS TO HEALTH SERVICES-W1' 
   H1IR22H = 'S40Q22H 8 RISK PERCEPTIONS-W1' 
   H1IR22I = 'S40Q22I 9 SELF EFFICACY-W1' 
   H1IR22J = 'S40Q22J 10 FEELINGS SCALE-W1' 
   H1IR22K = 'S40Q22K 11 HOUSEHOLD ROSTER-W1' 
   H1IR22L = 'S40Q22L 12 NON-RESIDENT BIO MOM-W1' 
   H1IR22M = 'S40Q22M 13 NON-RESIDENT BIO DAD-W1' 
   H1IR22N = 'S40Q22N 14 RESIDENT MOM-W1' 
   H1IR22O = 'S40Q22O 15 RESIDENT DAD-W1' 
   H1IR22P = 'S40Q22P 16 RELATIONS WITH PARENTS-W1' 
   H1IR22Q = 'S40Q22Q 17 MOTIVE FOR RISKY BEHAVIOR-W1' 
   H1IR22R = 'S40Q22R 18 PERSONALITY AND FAMILY-W1' 
   H1IR22S = 'S40Q22S 19 KNOWLEDGE QUIZ-W1' 
   H1IR22T = 'S40Q22T 20 FRIENDS-W1' 
   H1IR22U = 'S40Q22U 21 IDEAL ROMANCE-W1' 
   H1IR22V = 'S40Q22V 22 ROMANCE ROSTER-W1' 
   H1IR22W = 'S40Q22W 23 LIKED ROSTER-W1' 
   H1IR22X = 'S40Q22X 24 CONTRACEPTION-W1' 
   H1IR22Y = 'S40Q22Y 25 RELATIONSHIP INFO-W1' 
   H1IR22Z = 'S40Q22Z 26 NONRELATIONSHIP INFO-W1' 
   H1IR22AA= 'S40Q22AA 27 MOTIVE FOR BIRTHCONTROL-W1' 
   H1IR22BB= 'S40Q22BB 28 TOBACCO, ALCOHOL, DRUGS-W1' 
   H1IR22CC= 'S40Q22CC 29 DELINQUENCY SCALE-W1' 
   H1IR22DD= 'S40Q22DD 30 JOINT OCCURRENCES-W1' 
   H1IR22EE= 'S40Q22EE 31 FIGHTING AND VIOLENCE-W1' 
   H1IR22FF= 'S40Q22FF 32 PHYSICAL DEVELOPMENT-W1' 
   H1IR22GG= 'S40Q22GG 33 SUICIDE-W1' 
   H1IR22HH= 'S40Q22HH 34 PARENTS ATTITUDE-W1' 
   H1IR22II= 'S40Q22II 35 PROTECTIVE FACTORS-W1' 
   H1IR22JJ= 'S40Q22JJ 36 NEIGHBORHOOD-W1' 
   H1IR22KK= 'S40Q22KK 37 RELIGION-W1' 
   H1IR22LL= 'S40Q22LL 28 EXPECTATIONS, EMPLOYMT-W1' 
   H1IR22MM= 'S40Q22MM 29 RELATION W/ SIBLINGS-W1' 
   H1IR23  = 'S40Q23 EVIDENCE OF SMOKING IN HH-W1' 
   H1IR24  = 'S40Q24 EVIDENCE OF DRINKING IN HH-W1' 
   H1IR25  = 'S40Q25 LANGUAGE OF INTERVIEW-W1' 
   H1IR26  = 'S40Q26 IS RESPONDENT BLIND-W1' 
   H1IR27  = 'S40Q27 IS RESPONDENT DEAF-W1' 
   H1IR28  = 'S40Q28 ANYTHING ESSENTIAL-W1' 
   S1      = '1. HOW OLD ARE YOU?' 
   S2      = '2. WHAT SEX ARE YOU?' 
   S3      = '3. WHAT GRADE ARE YOU IN?' 
   S4      = '4. ARE YOU OF HISPANIC/SPANISH ORIGIN?' 
   S5      = '5. WHAT IS YOUR BACKGROUND (HISPANIC)' 
   S6A     = '6.1 WHAT IS YOUR RACE (WHITE)' 
   S6B     = '6.2 WHAT IS YOUR RACE? (BLACK)' 
   S6C     = '6.3 WHAT IS YOUR RACE? (ASIAN)' 
   S6D     = '6.4 WHAT IS YOUR RACE? (AMERICAN INDIAN)' 
   S6E     = '6.5 WHAT IS YOUR RACE? (OTHER)' 
   S7      = '7. WHAT IS YOUR BACKGROUND (ASIAN)' 
   S8      = '8. BORN IN THE UNITED STATES?' 
   S9      = '9. YEARS AT THIS SCHOOL' 
   S10     = '10. SCHOOL GIVES NO LETTER GRADES' 
   S10A    = '10.1 GRADE IN ENGLISH' 
   S10B    = '10.2 GRADE IN MATHEMATICS' 
   S10C    = '10.3 GRADE IN HISTORY/SOCIAL STUDIES' 
   S10D    = '10.4 GRADE IN SCIENCE' 
   S11     = '11. LIVES WITH MOTHER' 
   S12     = '12. HOW FAR DID MOTHER GO IN SCHOOL?' 
   S13     = '13. MOTHER BORN IN U.S.?' 
   S14     = '14. JOB DESCRIPTION - MOTHER' 
   S15     = '15. DOES MOTHER WORK FOR PAY?' 
   S16     = '16. DOES MOTHER CARE ABOUT YOU?' 
   S17     = '17. LIVES WITH FATHER' 
   S18     = '18. HOW FAR DID FATHER GO IN SCHOOL?' 
   S19     = '19. FATHER BORN IN U.S.?' 
   S20     = '20. JOB DESCRIPTION - FATHER' 
   S21     = '21. DOES FATHER WORK FOR PAY?' 
   S22     = '22. DOES FATHER CARE ABOUT YOU?' 
   S23     = '23. ARE YOU A TWIN?' 
   S24     = '24. LIVE IN SAME HOUSEHOLD WITH TWIN?' 
   S25     = '25. ARE YOU ADOPTED?' 
   S26     = '26. LIVE WITH BIOLOGICAL PARENTS?' 
   S27     = '27. HOW MANY PEOPLE LIVE IN HOUSEHOLD?' 
   S28     = '28. PEOPLE IN GRADES 7-12 IN HOUSEHOLD' 
   S29A    = '29.1 HOUSEHOLD MEMBER IS MALE-1' 
   S29B    = '29.2 HOUSEHOLD MEMBER IS MALE-2' 
   S29C    = '29.3 HOUSEHOLD MEMBER IS MALE-3' 
   S29D    = '29.4 HOUSEHOLD MEMBER IS MALE-4' 
   S29E    = '29.5 HOUSEHOLD MEMBER IS MALE-5' 
   S30A    = '30.1 HOUSEHOLD MEMBER IS FEMALE-1' 
   S30B    = '30.2 HOUSEHOLD MEMBER IS FEMALE-2' 
   S30C    = '30.3 HOUSEHOLD MEMBER IS FEMALE-3' 
   S30D    = '30.4 HOUSEHOLD MEMBER IS FEMALE-4' 
   S30E    = '30.5 HOUSEHOLD MEMBER IS FEMALE-5' 
   S31A    = '31.1 HOUSEHOLD MEMBER SAME MOTHER-1' 
   S31B    = '31.2 HOUSEHOLD MEMBER SAME MOTHER-2' 
   S31C    = '31.3 HOUSEHOLD MEMBER SAME MOTHER-3' 
   S31D    = '31.4 HOUSEHOLD MEMBER SAME MOTHER-4' 
   S31E    = '31.5 HOUSEHOLD MEMBER SAME MOTHER-5' 
   S32A    = '32.1 HOUSEHOLD MEMBER SAME FATHER-1' 
   S32B    = '32.2 HOUSEHOLD MEMBER SAME FATHER-2' 
   S32C    = '32.3 HOUSEHOLD MEMBER SAME FATHER-3' 
   S32D    = '32.4 HOUSEHOLD MEMBER SAME FATHER-4' 
   S32E    = '32.5 HOUSEHOLD MEMBER SAME FATHER-5' 
   S33A    = '33.1 HOUSEHOLD MEMBER SAME SCHOOL-1' 
   S33B    = '33.2 HOUSEHOLD MEMBER SAME SCHOOL-2' 
   S33C    = '33.3 HOUSEHOLD MEMBER SAME SCHOOL-3' 
   S33D    = '33.4 HOUSEHOLD MEMBER SAME SCHOOL-4' 
   S33E    = '33.5 HOUSEHOLD MEMBER SAME SCHOOL-5' 
   S34A    = '34.1 WENT TO HOUSE OF MALE FRIEND-1' 
   S34B    = '34.2 WENT TO HOUSE OF MALE FRIEND-2' 
   S34C    = '34.3 WENT TO HOUSE OF MALE FRIEND-3' 
   S34D    = '34.4 WENT TO HOUSE OF MALE FRIEND-4' 
   S34E    = '34.5 WENT TO HOUSE OF MALE FRIEND-5' 
   S35A    = '35.1 MET MALE FRIEND TO HANG OUT-1' 
   S35B    = '35.2 MET MALE FRIEND TO HANG OUT-2' 
   S35C    = '35.3 MET MALE FRIEND TO HANG OUT-3' 
   S35D    = '35.4 MET MALE FRIEND TO HANG OUT-4' 
   S35E    = '35.5 MET MALE FRIEND TO HANG OUT-5' 
   S36A    = '36.1 SPENT WKEND TIME W/MALE FRIEND-1' 
   S36B    = '36.2 SPENT WKEND TIME W/MALE FRIEND-2' 
   S36C    = '36.3 SPENT WKEND TIME W/MALE FRIEND-3' 
   S36D    = '36.4 SPENT WKEND TIME W/MALE FRIEND-4' 
   S36E    = '36.5 SPENT WKEND TIME W/MALE FRIEND-5' 
   S37A    = '37.1 DISCUSSED PROBLEM W/MALE FRIEND-1' 
   S37B    = '37.2 DISCUSSED PROBLEM W/MALE FRIEND-2' 
   S37C    = '37.3 DISCUSSED PROBLEM W/MALE FRIEND-3' 
   S37D    = '37.4 DISCUSSED PROBLEM W/MALE FRIEND-4' 
   S37E    = '37.5 DISCUSSED PROBLEM W/MALE FRIEND-5' 
   S38A    = '38.1 TALKED ON PHONE W/MALE FRIEND-1' 
   S38B    = '38.2 TALKED ON PHONE W/MALE FRIEND-2' 
   S38C    = '38.3 TALKED ON PHONE W/MALE FRIEND-3' 
   S38D    = '38.4 TALKED ON PHONE W/MALE FRIEND-4' 
   S38E    = '38.5 TALKED ON PHONE W/MALE FRIEND-5' 
   S39A    = '39.1 WENT TO HOUSE OF FEMALE FRIEND-1' 
   S39B    = '39.2 WENT TO HOUSE OF FEMALE FRIEND-2' 
   S39C    = '39.3 WENT TO HOUSE OF FEMALE FRIEND-3' 
   S39D    = '39.4 WENT TO HOUSE OF FEMALE FRIEND-4' 
   S39E    = '39.5 WENT TO HOUSE OF FEMALE FRIEND-5' 
   S40A    = '40.1 MET FEMALE FRIEND TO HANG OUT-1' 
   S40B    = '40.2 MET FEMALE FRIEND TO HANG OUT-2' 
   S40C    = '40.3 MET FEMALE FRIEND TO HANG OUT-3' 
   S40D    = '40.4 MET FEMALE FRIEND TO HANG OUT-4' 
   S40E    = '40.5 MET FEMALE FRIEND TO HANG OUT-5' 
   S41A    = '41.1 SPENT WKEND TIME W/FEMALE FRIEND-1' 
   S41B    = '41.2 SPENT WKEND TIME W/FEMALE FRIEND-2' 
   S41C    = '41.3 SPENT WKEND TIME W/FEMALE FRIEND-3' 
   S41D    = '41.4 SPENT WKEND TIME W/FEMALE FRIEND-4' 
   S41E    = '41.5 SPENT WKEND TIME W/FEMALE FRIEND-5' 
   S42A    = '42.1 DISCUSSED PROBLEM W/FEMALE FRIEND-1' 
   S42B    = '42.2 DISCUSSED PROBLEM W/FEMALE FRIEND-2' 
   S42C    = '42.3 DISCUSSED PROBLEM W/FEMALE FRIEND-3' 
   S42D    = '42.4 DISCUSSED PROBLEM W/FEMALE FRIEND-4' 
   S42E    = '42.5 DISCUSSED PROBLEM W/FEMALE FRIEND-5' 
   S43A    = '43.1 TALKED ON PHONE W/FEMALE FRIEND-1' 
   S43B    = '43.2 TALKED ON PHONE W/FEMALE FRIEND-2' 
   S43C    = '43.3 TALKED ON PHONE W/FEMALE FRIEND-3' 
   S43D    = '43.4 TALKED ON PHONE W/FEMALE FRIEND-4' 
   S43E    = '43.5 TALKED ON PHONE W/FEMALE FRIEND-5' 
   S44A1   = '44.1 FRENCH CLUB' 
   S44A2   = '44.2 GERMAN CLUB' 
   S44A3   = '44.3 LATIN CLUB' 
   S44A4   = '44.4 SPANISH CLUB' 
   S44A5   = '44.5 BOOK CLUB' 
   S44A6   = '44.6 COMPUTER CLUB' 
   S44A7   = '44.7 DEBATE TEAM' 
   S44A8   = '44.8 DRAMA CLUB' 
   S44A9   = '44.9 FUTURE FARMERS' 
   S44A10  = '44.10 HISTORY CLUB' 
   S44A11  = '44.11 MATH CLUB' 
   S44A12  = '44.12 SCIENCE CLUB' 
   S44A13  = '44.13 BAND' 
   S44A14  = '44.14 CHEERLEADER/DANCE' 
   S44A15  = '44.15 CHORUS OR CHOIR' 
   S44A16  = '44.16 ORCHESTRA' 
   S44A17  = '44.17 OTHER CLUB OR ORG' 
   S44A18  = '44.18 BASEBALL/SOFTBALL' 
   S44A19  = '44.19 BASKETBALL' 
   S44A20  = '44.20 FIELD HOCKEY' 
   S44A21  = '44.21 FOOTBALL' 
   S44A22  = '44.22 ICE HOCKEY' 
   S44A23  = '44.23 SOCCER' 
   S44A24  = '44.24 SWIMMING' 
   S44A25  = '44.25 TENNIS' 
   S44A26  = '44.26 TRACK' 
   S44A27  = '44.27 VOLLEYBALL' 
   S44A28  = '44.28 WRESTLING' 
   S44A29  = '44.29 OTHER SPORT' 
   S44A30  = '44.30 NEWSPAPER' 
   S44A31  = '44.31 HONOR SOCIETY' 
   S44A32  = '44.32 STUDENT COUNCIL' 
   S44A33  = '44.33 YEARBOOK' 
   S44     = '44. DOES NOT PART. ANY CLUBS,ORGS,TEAMS' 
   S45A    = '45.a WILL LIVE TO AGE 35' 
   S45B    = '45.b WILL MARRY BY AGE 25' 
   S45C    = '45.c WILL BE KILLED BY AGE 21' 
   S45D    = '45.d WILL GET HIV OR AIDS' 
   S45E    = '45.e WILL GRADUATE FROM COLLEGE' 
   S45F    = '45.f WILL HAVE MIDDLE CLASS INCOME' 
   S46A    = '46.a TROUBLE GETTING ALONG WITH TEACHER' 
   S46B    = '46.b TROUBLE PAYING ATTENTION IN SCHOOL' 
   S46C    = '46.c TROUBLE GETTING HOMEWORK DONE' 
   S46D    = '46.d TROUBLE WITH OTHER STUDENTS' 
   S47     = '47. TIME SPENT WATCHING TV ON SCHOOL DAY' 
   S48     = '48. TRIES TO DO SCHOOL WORK WELL' 
   S49     = '49. DRANK ALCOHOL MORE THAN 2/3 TIMES?' 
   S50     = '50. HOW IS YOUR HEALTH?' 
   S51     = '51. LAST PHYSICAL EXAM' 
   S52     = '52. LAST DENTAL EXAM' 
   S53     = '53. LAST COUNSELING OR THERAPY SESSION' 
   S54     = '54. DIFFICULTY USING HANDS, ARMS, LEGS' 
   S55A    = '55.1 DOES CONDITION INVOLVE HEART' 
   S55B    = '55.2 DOES CONDITION INVOLVE ASTHMA' 
   S55C    = '55.3 DOES CONDITION INVOLVE BREATHING' 
   S55D    = '55.4 DOES CONDITION INVOLVE OTHER' 
   S56     = '56. USES CANE, CRUTCHES, WALKER SHOES' 
   S57     = '57. USES BRACE FOR ARMS, LEGS, HANDS' 
   S58     = '58. USES ARTIFICAL ARM, LEG, HAND, FOOT' 
   S59A    = '59.a SMOKED CIGARETTES-LAST 12 MTHS' 
   S59B    = '59.b DRANK BEER WINE LIQUOR-LAST 12 MTHS' 
   S59C    = '59.c GOT DRUNK-LAST 12 MTHS' 
   S59D    = '59.d RACED ON BIKE OR CAR-LAST 12 MTHS' 
   S59E    = '59.e IN DANGER DUE TO DARE-LAST 12 MTHS' 
   S59F    = '59.f LIED TO PARENTS-LAST 12 MTHS' 
   S59G    = '59.g SKIPPED SCHOOL-LAST 12 MTHS' 
   S60A    = '60.a FELT SICK-LAST MONTH' 
   S60B    = '60.b WOKE UP TIRED-LAST MONTH' 
   S60C    = '60.c SKIN PROBLEMS-LAST MONTH' 
   S60D    = '60.d DIZZY-LAST MONTH' 
   S60E    = '60.e CHEST PAIN-LAST MONTH' 
   S60F    = '60.f HEADACHES-LAST MONTH' 
   S60G    = '60.g SORE MUSCLES-LAST MONTH' 
   S60H    = '60.h STOMACHACHE-LAST MONTH' 
   S60I    = '60.i POOR APPETITE-LAST MONTH' 
   S60J    = '60.j TROUBLE SLEEPING-LAST MONTH' 
   S60K    = '60.k DEPRESSED-LAST MONTH' 
   S60L    = '60.l TROUBLE RELAXING-LAST MONTH' 
   S60M    = '60.m MOODY-LAST MONTH' 
   S60N    = '60.n CRIED A LOT-LAST MONTH' 
   S60O    = '60.o AFRAID OF THINGS-LAST MONTH' 
   S61A    = '61.a MISSED SCHOOL-HEALTH PROBLEM' 
   S61B    = '61.b MISSED SOCIAL ACTIVITY-HEALTH PROB.' 
   S61C    = '61.c TROUBLE WALKING-HEALTH PROBLEM' 
   S61D    = '61.d TROUBLE RUNNING-HEALTH PROBLEM' 
   S61E    = '61.e TROUBLE LIFTING-HEALTH PROBLEM' 
   S61F    = '61.f TROUBLE WITH HANDS-HEALTH PROBLEM' 
   S62A    = '62.a HAS LOTS OF ENERGY' 
   S62B    = '62.b FEELS CLOSE TO PEOPLE AT SCHOOL' 
   S62C    = '62.c SELDOM GETS SICK' 
   S62D    = '62.d GETS BETTER QUICKLY' 
   S62E    = '62.e FEELS PART OF SCHOOL' 
   S62F    = '62.f IS WELL COORDINATED' 
   S62G    = '62.g STUDENTS AT SCHOOL ARE PREJUDICED' 
   S62H    = '62.h HAS GOOD QUALITIES' 
   S62I    = '62.i HAPPY TO BE AT THIS SCHOOL' 
   S62J    = '62.j PHYSICALLY FIT' 
   S62K    = '62.k HAS A LOT TO BE PROUD OF' 
   S62L    = '62.l TEACHERS TREAT STUDENTS FAIRLY' 
   S62M    = '62.m LIKES SELF' 
   S62N    = '62.n DOING EVERYTHNG RIGHT' 
   S62O    = '62.o FEELS SOCIALLY ACCEPTED' 
   S62P    = '62.p FEELS LOVED AND WANTED' 
   S62Q    = '62.q FEELS SAFE IN NEIGHBORHOOD' 
   S62R    = '62.r FEELS SAFE AT SCHOOL' 
   S63     = '63. SWEAT FROM WORK, PLAY, EXERCISE' 
   S64     = '64. BEEN IN FIGHTS LAST YEAR' 
   S65     = '65. NEEDED TO GO TO DOCTOR BUT DID NOT' 
   S66     = '66. MOST IMPORTANT FACTS ABOUT SCHOOL' 
   S67     = '67. WHAT MAKES THIS SCHOOL DIFFERENT' 
   S68     = '68. ANYTHING UNUSUAL IN LAST 12 MONTHS' 
   PA1     = 'A1 SEX OF RESPONDENT-PQ' 
   PA2     = 'A2 AGE OF RESPONDENT-PQ' 
   PA3     = 'A3 BORN IN U.S.-PQ' 
   PA4     = 'A4 HISPANIC ORIGIN?-PQ' 
   PA5_1   = 'A5_1 HISPANIC, MEX./MEX. AM.-PQ' 
   PA5_2   = 'A5_2 HISPANIC, CHICANO-PQ' 
   PA5_3   = 'A5_3 HISPANIC, CUBAN/CUBAN AM.-PQ' 
   PA5_4   = 'A5_4 HISPANIC, PUERTO RICAN-PQ' 
   PA5_5   = 'A5_5 HISPANIC, CENTRAL/SOUTH AM.-PQ' 
   PA5_6   = 'A5_6 HISPANIC, OTHER-PQ' 
   PA5_7   = 'A5_7 HISPANIC, UNKNOWN-PQ' 
   PA6_1   = 'A6_1 RACE, WHITE-PQ' 
   PA6_2   = 'A6_2 RACE, BLACK/AFRICAN AM.-PQ' 
   PA6_3   = 'A6_3 RACE, AMER. INDIAN/NATIVE AM.-PQ' 
   PA6_4   = 'A6_4 RACE, ASIAN OR PAC. ISLANDER-PQ' 
   PA6_5   = 'A6_5 RACE, OTHER-PQ' 
   PA7_1   = 'A7_1 ASIAN, CHINESE-PQ' 
   PA7_2   = 'A7_2 ASIAN, FILIPINO-PQ' 
   PA7_3   = 'A7_3 ASIAN, JAPANESE-PQ' 
   PA7_4   = 'A7_4 ASIAN, ASIAN INDIAN-PQ' 
   PA7_5   = 'A7_5 ASIAN, KOREAN-PQ' 
   PA7_6   = 'A7_6 ASIAN, VIETNAMESE-PQ' 
   PA7_7   = 'A7_7 ASIAN, OTHER-PQ' 
   PA7_8   = 'A7_8 ASIAN, UNKNOWN-PQ' 
   PA8B    = 'A8B RACE, CHOOSE ONE ANSWER-PQ' 
   PA9     = 'A9 RACE, OBSERVATION OF INTERVIEWER-PQ' 
   PA10    = 'A10 MARITAL STATUS-PQ' 
   PA11    = 'A11 CURRENTLY DATING-PQ' 
   PA12    = 'A12 LEVEL OF EDUCATION-PQ' 
   PA13    = 'A13 WORK OUTSIDE HOME-PQ' 
   PA14    = 'A14 WORK OUTSIDE HOME, LAST 12 MOS.-PQ' 
   PA15    = 'A15 EMPLOYED FULL TIME AT LAST JOB-PQ' 
   PA16    = 'A16 UNEMPLOYED NOW, BUT LOOKING-PQ' 
   PA17    = 'A17 EMPLOYED FULL TIME NOW-PQ' 
   PA18    = 'A18 DISABLED-PQ' 
   PA19    = 'A19 RETIRED-PQ' 
   PA20    = 'A20 HAPPY-PQ' 
   PA21    = 'A21 RECEIVING PUBLIC ASSISTANCE-PQ' 
   PA22    = 'A22 RELIGION OF RESPONDENT-PQ' 
   PA23    = 'A23 HOW OFTEN ATTEND REL. SERVICE-PQ' 
   PA24    = 'A24 IMPORTANCE OF RELIGION-PQ' 
   PA25    = 'A25 HOW OFTEN PRAY-PQ' 
   PA26    = 'A26 AGREEMENT W/SACRED SCRIPTURES-PQ' 
   PA27A   = 'A27A MEMBER, PTO-PQ' 
   PA27B   = 'A27B MEMBER, MILITARY VETERANS ORG.-PQ' 
   PA27C   = 'A27C MEMBER, LABOR UNION-PQ' 
   PA27D   = 'A27D MEMBER, HOBBY/SPORTS GROUP-PQ' 
   PA27E   = 'A27E MEMBER, CIVIC/SOCIAL ORG.-PQ' 
   PA28A   = 'A28A NEIGHBORHOOD, NEAR PAST JOB-PQ' 
   PA28B   = 'A28B NEIGHBORHOOD, NEAR CURRENT JOB-PQ' 
   PA28C   = 'A28C NEIGHBORHOOD, OUTGROWN OLD HOME-PQ' 
   PA28D   = 'A28D NEIGHBORHOOD, AFFORDABLE -PQ' 
   PA28E   = 'A28E NEIGHBORHOOD, LESS CRIME-PQ' 
   PA28F   = 'A28F NEIGHBORHOOD, LESS DRUG USE-PQ' 
   PA28G   = 'A28G NEIGHBORHOOD, NEAR FRIENDS-PQ' 
   PA28H   = 'A28H NEIGHBORHOOD, BETTER SCHOOLS-PQ' 
   PA28I   = 'A28I NEIGHBORHOOD, CHILDREN SAME AGE-PQ' 
   PA28J   = 'A28J NEIGHBORHOOD, BORN HERE-PQ' 
   PA30    = 'A30 NEIGHBORHOOD, CHOOSE ONE ANSWER-PQ' 
   PA31    = 'A31 TELL IF NEIGHBOR CHILD IN TROUBLE-PQ' 
   PA32    = 'A32 NEIGHBOR TELL IF YOUR CHILD-PQ' 
   PA33    = 'A33 NEIGHBORHOOD PROBLEM, TRASH-PQ' 
   PA34    = 'A34 NEIGHBORHOOD PROBLEM, DRUGS-PQ' 
   PA35    = 'A35 MOVE AWAY FROM NEIGHBORHOOD-PQ' 
   PA36    = 'A36 MOST IMPORTANT FOR BOY TO LEARN-PQ' 
   PA37    = 'A37 MOST IMPORTANT FOR GIRL TO LEARN-PQ' 
   PA38    = 'A38 EVER BEEN MARRIED-PQ' 
   PA39    = 'A39 AGE WHEN FIRST MARRIED-PQ' 
   PA40    = 'A40 NUMBER OF RELATIONSHIPS-PQ' 
   PA41_1  = 'A41_1 IN PRESENT REL. 1995-PQ' 
   PA41_2  = 'A41_2 IN PRESENT REL. 1994-PQ' 
   PA41_3  = 'A41_3 IN PRESENT REL. 1993-PQ' 
   PA41_4  = 'A41_4 IN PRESENT REL. 1992-PQ' 
   PA41_5  = 'A41_5 IN PRESENT REL. 1991-PQ' 
   PA41_6  = 'A41_6 IN PRESENT REL. 1990-PQ' 
   PA41_7  = 'A41_7 IN PRESENT REL. 1989-PQ' 
   PA41_8  = 'A41_8 IN PRESENT REL. 1988-PQ' 
   PA41_9  = 'A41_9 IN PRESENT REL. 1987-PQ' 
   PA41_10 = 'A41_10 IN PRESENT REL. 1986-PQ' 
   PA41_11 = 'A41_11 IN PRESENT REL. 1985-PQ' 
   PA41_12 = 'A41_12 IN PRESENT REL. 1984-PQ' 
   PA41_13 = 'A41_13 IN PRESENT REL. 1983-PQ' 
   PA41_14 = 'A41_14 IN PRESENT REL. 1982-PQ' 
   PA41_15 = 'A41_15 IN PRESENT REL. 1981-PQ' 
   PA41_16 = 'A41_16 IN PRESENT REL. 1980-PQ' 
   PA41_17 = 'A41_17 IN PRESENT REL. 1979-PQ' 
   PA41_18 = 'A41_18 IN PRESENT REL. 1978-PQ' 
   PA41_19 = 'A41_19 IN PRESENT REL. 1977-PQ' 
   PA42    = 'A42 PRESENT REL. MARRIAGE OR M/LIKE-PQ' 
   PA43    = 'A43 IN PRESENT REL. STILL-PQ' 
   PA44    = 'A44 HOW PRESENT REL. ENDED-PQ' 
   PA46_1  = 'A46_1 IN PREVIOUS REL. 1995-PQ' 
   PA46_2  = 'A46_2 IN PREVIOUS REL. 1994-PQ' 
   PA46_3  = 'A46_3 IN PREVIOUS REL. 1993-PQ' 
   PA46_4  = 'A46_4 IN PREVIOUS REL. 1992-PQ' 
   PA46_5  = 'A46_5 IN PREVIOUS REL. 1991-PQ' 
   PA46_6  = 'A46_6 IN PREVIOUS REL. 1990-PQ' 
   PA46_7  = 'A46_7 IN PREVIOUS REL. 1989-PQ' 
   PA46_8  = 'A46_8 IN PREVIOUS REL. 1988-PQ' 
   PA46_9  = 'A46_9 IN PREVIOUS REL. 1987-PQ' 
   PA46_10 = 'A46_1O IN PREVIOUS REL. 1986-PQ' 
   PA46_11 = 'A46_11 IN PREVIOUS REL. 1985-PQ' 
   PA46_12 = 'A46_12 IN PREVIOUS REL. 1984-PQ' 
   PA46_13 = 'A46_13 IN PREVIOUS REL. 1983-PQ' 
   PA46_14 = 'A46_14 IN PREVIOUS REL. 1982-PQ' 
   PA46_15 = 'A46_15 IN PREVIOUS REL. 1981-PQ' 
   PA46_16 = 'A46_16 IN PREVIOUS REL. 1980-PQ' 
   PA46_17 = 'A46_17 IN PREVIOUS REL. 1979-PQ' 
   PA46_18 = 'A46_18 IN PREVIOUS REL. 1978-PQ' 
   PA46_19 = 'A46_19 IN PREVIOUS REL. 1977-PQ' 
   PA47    = 'A47 PREVIOUS REL. MARRIAGE OR M/LIKE-PQ' 
   PA48    = 'A48 IN PREVIOUS REL. STILL-PQ' 
   PA49    = 'A49 HOW PREVIOUS REL. ENDED-PQ' 
   PA51_1  = 'A51_1 IN NEXT PREV. REL. 1995-PQ' 
   PA51_2  = 'A51_2 IN NEXT PREV. REL. 1994-PQ' 
   PA51_3  = 'A51_3 IN NEXT PREV. REL. 1993-PQ' 
   PA51_4  = 'A51_4 IN NEXT PREV. REL. 1992-PQ' 
   PA51_5  = 'A51_5 IN NEXT PREV. REL. 1991-PQ' 
   PA51_6  = 'A51_6 IN NEXT PREV. REL. 1990-PQ' 
   PA51_7  = 'A51_7 IN NEXT PREV. REL. 1989-PQ' 
   PA51_8  = 'A51_8 IN NEXT PREV. REL. 1988-PQ' 
   PA51_9  = 'A51_9 IN NEXT PREV. REL. 1987-PQ' 
   PA51_10 = 'A51_10 IN NEXT PREV. REL. 1986-PQ' 
   PA51_11 = 'A51_11 IN NEXT PREV. REL. 1985-PQ' 
   PA51_12 = 'A51_12 IN NEXT PREV. REL. 1984-PQ' 
   PA51_13 = 'A51_13 IN NEXT PREV. REL. 1983-PQ' 
   PA51_14 = 'A51_14 IN NEXT PREV. REL. 1982-PQ' 
   PA51_15 = 'A51_15 IN NEXT PREV. REL. 1981-PQ' 
   PA51_16 = 'A51_16 IN NEXT PREV. REL. 1980-PQ' 
   PA51_17 = 'A51_17 IN NEXT PREV. REL. 1979-PQ' 
   PA51_18 = 'A51_18 IN NEXT PREV. REL. 1978-PQ' 
   PA51_19 = 'A51_19 IN NEXT PREV. REL. 1977-PQ' 
   PA52    = 'A52 NEXT PREV REL MARRIAGE OR M/LIKE-PQ' 
   PA53    = 'A53 IN NEXT PREV. REL. STILL-PQ' 
   PA54    = 'A54 HOW NEXT PREV. REL. ENDED-PQ' 
   PA55    = 'A55 TOTAL HOUSEHOLD INCOME-PQ' 
   PA56    = 'A56 ENOUGH MONEY FOR BILLS-PQ' 
   PA57A   = 'A57A RECEIVE SS OR RR-PQ' 
   PA57B   = 'A57B RECEIVE SSI-PQ' 
   PA57C   = 'A57C RECEIVE AFDC-PQ' 
   PA57D   = 'A57D RECEIVE FOOD STAMPS-PQ' 
   PA57E   = 'A57E RECEIVE UNEMPLOYMENT-PQ' 
   PA57F   = 'A57F RECEIVE HOUSING SUBSIDY-PQ' 
   PA58    = 'A58 GENERAL PHYSICAL HEALTH-PQ' 
   PA59    = 'A59 MEDICAL CARE FOR FAMILY-PQ' 
   PA60    = 'A60 WEAR A SEATBELT-PQ' 
   PA61    = 'A61 HOW OFTEN DRINK ALCOHOL-PQ' 
   PA62    = 'A62 IN LAST MONTH > 5 DRINKS-PQ' 
   PA63    = 'A63 CIGARETTE SMOKERS IN HOUSEHOLD-PQ' 
   PA64    = 'A64 DOES RESPONDENT SMOKE-PQ' 
   PB2     = 'B2 SEX OF CURRENT PARTNER-PQ' 
   PB3     = 'B3 PARTNER OF HISPANIC ORIGIN-PQ' 
   PB4_1   = 'B4_1 PART. HISPANIC, MEX./MEX. AM-PQ' 
   PB4_2   = 'B4_2 PART. HISPANIC, CHICANO-PQ' 
   PB4_3   = 'B4_3 PART. HISPANIC, CUBAN/CUB. AM-PQ' 
   PB4_4   = 'B4_4 PART. HISPANIC, PUERTO RICAN-PQ' 
   PB4_5   = 'B4_5 PART. HISPANIC, CENT/SOUTH AM.-PQ' 
   PB4_6   = 'B4_6 PART. HISPANIC, OTHER-PQ' 
   PB4_7   = 'B4_7 PART. HISPANIC, UNKNOWN-PQ' 
   PB5_1   = 'B5_1 PART. RACE, WHITE-PQ' 
   PB5_2   = 'B5_2 PART. RACE, BLACK/AF-AM.-PQ' 
   PB5_3   = 'B5_3 PART. RACE, AMER IND./NATIVE-PQ' 
   PB5_4   = 'B5_4 PART. RACE, ASIAN OR PAC.IS.-PQ' 
   PB5_5   = 'B5_5 PART. RACE, OTHER-PQ' 
   PB6_1   = 'B6_1 PART. ASIAN, CHINESE-PQ' 
   PB6_2   = 'B6_2 PART. ASIAN, FILIPINO-PQ' 
   PB6_3   = 'B6_3 PART. ASIAN, JAPANESE-PQ' 
   PB6_4   = 'B6_4 PART. ASIAN, ASIAN INDIAN-PQ' 
   PB6_5   = 'B6_5 PART. ASIAN, KOREAN-PQ' 
   PB6_6   = 'B6_6 PART. ASIAN, VIETNAMESE-PQ' 
   PB6_7   = 'B6_7 PART. ASIAN, OTHER-PQ' 
   PB6_8   = 'B6_8 PART. ASIAN, UNKNOWN-PQ' 
   PB7     = 'B7 RELIGION OF PARTNER-PQ' 
   PB8     = 'B8 EDUCATION LEVEL OF PARTNER-PQ' 
   PB9     = 'B9 PART. WORK OUTSIDE HOME-PQ' 
   PB10    = 'B10 PART. WK OUTSIDE HOME LAST 12 MOS-PQ' 
   PB11    = 'B11 PART. EMP. FULL TIME AT LAST JOB-PQ' 
   PB12    = 'B12 PART. UNEMP. NOW, BUT LOOKING-PQ' 
   PB13    = 'B13 PART. EMP. FULL TIME NOW-PQ' 
   PB14    = 'B14 PART. DISABLED-PQ' 
   PB15    = 'B15 PART. RETIRED-PQ' 
   PB16    = 'B16 PART. HAPPY-PQ' 
   PB17    = 'B17 PART. RECEIVING PUB. ASSISTANCE-PQ' 
   PB18    = 'B18 RATE RELATIONSHIP W/PARTNER-PQ' 
   PB19    = 'B19 TALK ABOUT SEPARATING-PQ' 
   PB20    = 'B20 FIGHT WITH PARTNER-PQ' 
   PB21    = 'B21 GENERAL HEALTH OF PARTNER-PQ' 
   PB22    = 'B22 PARTNER DRINK ALCOHOL-PQ' 
   PC1     = 'C1 RELATIONSHIP TO ADOLESCENT-PQ' 
   PC2     = 'C2 BIO MOTHER IN HOUSEHOLD-PQ' 
   PC3     = 'C3 EVER LIVE W/BIO MOTHER-PQ' 
   PC4     = 'C4 MOST RECENT YR LIVED W/BIO MOM-PQ' 
   PC5     = 'C5 MONTHLY SUPPORT FROM BIO MOM-PQ' 
   PC6B    = 'C6B BIO FATHER IN HOUSEHOLD-PQ' 
   PC7     = 'C7 EVER LIVE W/BIO FATHER-PQ' 
   PC8     = 'C8 MOST RECENT YR LIVED W/BIO DAD-PQ' 
   PC9     = 'C9 MONTHLY SUPPORT FROM BIO DAD-PQ' 
   PC10    = 'C10 BEST FRIEND IN SCHOOL-PQ' 
   PC11    = 'C11 MET BEST FRIEND IN PERSON-PQ' 
   PC12    = 'C12 MET PARENTS OF BEST FRIEND-PQ' 
   PC13    = 'C13 INFLUENCE OF BEST FRIEND-PQ' 
   PC14    = 'C14 SPECIAL GIRLFRIEND/BOYFRIEND-PQ' 
   PC15    = 'C15 MET SPECIAL FRIEND IN PERSON-PQ' 
   PC16    = 'C16 MET PARENTS OF SPECIAL FRIEND-PQ' 
   PC17    = 'C17 TALK TO PARENTS OF FRIENDS-PQ' 
   PC18    = 'C18 PHYSICAL HEALTH-PQ' 
   PC19A_P = 'C19A_P BIRTHWEIGHT, POUNDS-PQ' 
   PC19B_O = 'C19B_O BIRTHWEIGHT, OUNCES-PQ' 
   PC20    = 'C20 LENGTH OF TIME BREASTFEEDING-PQ' 
   PC21_1  = 'C21_1 HEALTH INSURANCE, MEDICARE-PQ' 
   PC21_2  = 'C21_2 HEALTH INSURANCE, MEDICAID-PQ' 
   PC21_3  = 'C21_3 HEALTH INSURANCE, IND/GROUP-PQ' 
   PC21_4  = 'C21_4 HEALTH INSURANCE, PREPAID-PQ' 
   PC21_5  = 'C21_5 HEALTH INSURANCE, OTHER-PQ' 
   PC21_6  = 'C21_6 HEALTH INSURANCE, NONE-PQ' 
   PC21_7  = 'C21_7 HEALTH INSURANCE, UNKNOWN-PQ' 
   PC22    = 'C22 TIME W/OUT HEALTH INSURANCE-PQ' 
   PC23    = 'C23 WEEK NIGHT BEDTIME-PQ' 
   PC24    = 'C24 RESPONDENT IN SCHOOL NOW-PQ' 
   PC25    = 'C25 TALK ABOUT GRADES-PQ' 
   PC26    = 'C26 TALK ABOUT OTHER SCHOOL ACTIVITY-PQ' 
   PC27    = 'C27 TALK WITH TEACHERS-PQ' 
   PC28    = 'C28 PARTICIPATE IN SCHOOL FUNDRAISING-PQ' 
   PC29A   = 'C29A SCHOOL, HIGH PRIORITY-LEARNING-PQ' 
   PC29B   = 'C29B SCHOOL, SAFE PLACE-PQ' 
   PC29C   = 'C29C SCHOOL, GOOD SCHOOL-PQ' 
   PC30    = 'C30 MOST IMPORTANT QUALITY IN SCHOOL-PQ' 
   PC31    = 'C31 DISAPPOINTMENT IF NO COLLEGE-PQ' 
   PC32    = 'C32 BAD TEMPER-PQ' 
   PC33    = 'C33 LIFE IS GOING-PQ' 
   PC34A   = 'C34A GET ALONG WELL WITH ADOL.-PQ' 
   PC34B   = 'C34B MAKE DECISIONS TOGETHER-PQ' 
   PC34C   = 'C34C DOES NOT UNDERSTAND ADOL.-PQ' 
   PC34D   = 'C34D FEEL YOU CAN TRUST ADOL.-PQ' 
   PC34E   = 'C34E INTERFERES W/ACTIVITIES-PQ' 
   PC35    = 'C35 DID NOT LIVE WITH-PQ' 
   PC36_0  = 'C36_0 YEAR OF LIFE AWAY, 0-PQ' 
   PC36_1  = 'C36_1 YEAR OF LIFE AWAY, 1-PQ' 
   PC36_2  = 'C36_2 YEAR OF LIFE AWAY, 2-PQ' 
   PC36_3  = 'C36_3 YEAR OF LIFE AWAY, 3-PQ' 
   PC36_4  = 'C36_4 YEAR OF LIFE AWAY, 4-PQ' 
   PC36_5  = 'C36_5 YEAR OF LIFE AWAY, 5-PQ' 
   PC36_6  = 'C36_6 YEAR OF LIFE AWAY, 6-PQ' 
   PC36_7  = 'C36_7 YEAR OF LIFE AWAY, 7-PQ' 
   PC36_8  = 'C36_8 YEAR OF LIFE AWAY, 8-PQ' 
   PC36_9  = 'C36_9 YEAR OF LIFE AWAY, 9-PQ' 
   PC36_10 = 'C36_10 YEAR OF LIFE AWAY, 10-PQ' 
   PC36_11 = 'C36_11 YEAR OF LIFE AWAY, 11-PQ' 
   PC36_12 = 'C36_12 YEAR OF LIFE AWAY, 12-PQ' 
   PC36_13 = 'C36_13 YEAR OF LIFE AWAY, 13-PQ' 
   PC36_14 = 'C36_14 YEAR OF LIFE AWAY, 14-PQ' 
   PC36_15 = 'C36_15 YEAR OF LIFE AWAY, 15-PQ' 
   PC36_16 = 'C36_16 YEAR OF LIFE AWAY, 16-PQ' 
   PC36_17 = 'C36_17 YEAR OF LIFE AWAY, 17-PQ' 
   PC36_18 = 'C36_18 YEAR OF LIFE AWAY, 18-PQ' 
   PC36_19 = 'C36_19 YEAR OF LIFE AWAY, UNKNOWN-PQ' 
   PC37    = 'C37 MENTALLY RETATRDED-PQ' 
   PC38    = 'C38 LEARNING DISABILITY-PQ' 
   PC39    = 'C39 SPECIAL EDUCATION-PQ' 
   PC40    = 'C40 USE TOBACCO REGULARLY-PQ' 
   PC41    = 'C41 DRINK ALCOHOL-PQ' 
   PC42A   = 'C42A DISCUSS SEX, DO NOT KNOW ENOUGH-PQ' 
   PC42B   = 'C42B DISCUSS SEX, EMBARRASS-PQ' 
   PC42C   = 'C42C DISCUSS SEX, DIFFICULT-PQ' 
   PC42D   = 'C42D DISCUSS SEX, GET INFO ELSEWHERE-PQ' 
   PC42E   = 'C42E DISCUSS SEX, ENCOURAGE SEX-PQ' 
   PC43AA  = 'C43AA TALK ABOUT, PREGNANCY-PQ' 
   PC43AB  = 'C43AB TALK ABOUT, DANGERS OF STD-PQ' 
   PC43AC  = 'C43AC TALK ABOUT, IMPACT ON SOCIAL-PQ' 
   PC43AD  = 'C43AD TALK ABOUT, MORAL ISSUES-PQ' 
   PC43BA  = 'C43BA HOW MUCH TALKED, BIRTH CONTROL-PQ' 
   PC43BB  = 'C43BB HOW MUCH TALKED, SEX-PQ' 
   PC44A   = 'C44A AGREE, SATISFIED W/RELATIONSHIP-PQ' 
   PC44B   = 'C44B AGREE, DISAPPROVE OF SEX NOW-PQ' 
   PC44C   = 'C44C AGREE, SEX OK W/SPECIAL FRIEND-PQ' 
   PC44D   = 'C44D AGREE, RECOMMEND BIRTH CONTROL-PQ' 
   PC45    = 'C45 THINK HAS BEEN ON DATE-PQ' 
   PC46    = 'C46 THINK HAS KISSED/NECKED-PQ' 
   PC47    = 'C47 THINK HAS HAD INTERCOURSE-PQ' 
   PC48    = 'C48 THINK AGE FIRST INTERCOURSE-PQ' 
   PC49A_1 = 'C49A_1 HEALTH PROB/OBESITY/ADOL.-PQ' 
   PC49A_2 = 'C49A_2 HEALTH PROB/OBESITY/BIO MOM-PQ' 
   PC49A_3 = 'C49A_3 HEALTH PROB/OBESITY/BIO DAD-PQ' 
   PC49B_1 = 'C49B_1 HEALTH PROB/MIGRAINE/ADOL.-PQ' 
   PC49B_2 = 'C49B_2 HEALTH PROB/MIGRAINE/BIO MOM-PQ' 
   PC49B_3 = 'C49B_3 HEALTH PROB/MIGRAINE/BIO DAD-PQ' 
   PC49C_1 = 'C49C_1 HEALTH PROB/ALLERGIES/ADOL.-PQ' 
   PC49C_2 = 'C49C_2 HEALTH PROB/ALLERGIES/BIO MOM-PQ' 
   PC49C_3 = 'C49C_3 HEALTH PROB/ALLERGIES/BIO DAD-PQ' 
   PC49D_1 = 'C49D_1 HEALTH PROB/ASTHMA/ADOL.-PQ' 
   PC49D_2 = 'C49D_2 HEALTH PROB/ASTHMA/BIO MOM-PQ' 
   PC49D_3 = 'C49D_3 HEALTH PROB/ASTHMA/BIO DAD-PQ' 
   PC49E_1 = 'C49E_1 HEALTH PROB/ALCOHOLISM/ADOL.-PQ' 
   PC49E_2 = 'C49E_2 HEALTH PROB/ALCOHOLISM/BIO MOM-PQ' 
   PC49E_3 = 'C49E_3 HEALTH PROB/ALCOHOLISM/BIO DAD-PQ' 
   PC49F_1 = 'C49F_1 HEALTH PROB/DIABETES/ADOL.-PQ' 
   PC49F_2 = 'C49F_2 HEALTH PROB/DIABETES/BIO MOM-PQ' 
   PC49F_3 = 'C49F_3 HEALTH PROB/DIABETES/BIO DAD-PQ' 
   PC50    = 'C50 DIFFICULTY USING HANDS/ARMS-PQ' 
   PC51    = 'C51 DIFFICULTY USING FEET/LEGS-PQ' 
   PC53    = 'C53 CONSIDER A DISABILITY-PQ' 
   PC54    = 'C54 OTHERS CONSIDER DISABILITY-PQ' 
   PC55    = 'C55 CAUSED BY PHYSICAL CONDITION-PQ' 
   PC58    = 'C58 ACCIDENT OR DISEASE-PQ' 
   PC59    = 'C59 AGE WHEN OCCURRED-PQ' 
   PC60_1  = 'C60_1 AFFECTED, RIGHT HAND-PQ' 
   PC60_2  = 'C60_2 AFFECTED, RIGHT FINGERS-PQ' 
   PC60_3  = 'C60_3 AFFECTED, LEFT HAND-PQ' 
   PC60_4  = 'C60_4 AFFECTED, LEFT FINGERS-PQ' 
   PC60_5  = 'C60_5 AFFECTED, UPPER RIGHT ARM-PQ' 
   PC60_6  = 'C60_6 AFFECTED, LOWER RIGHT ARM-PQ' 
   PC60_7  = 'C60_7 AFFECTED, UPPER LEFT ARM-PQ' 
   PC60_8  = 'C60_8 AFFECTED, LOWER LEFT ARM-PQ' 
   PC60_9  = 'C60_9 AFFECTED, RIGHT FOOT-PQ' 
   PC60_10 = 'C60_10 AFFECTED, RIGHT TOES-PQ' 
   PC60_11 = 'C60_11 AFFECTED, LEFT FOOT-PQ' 
   PC60_12 = 'C60_12 AFFECTED, LEFT TOES-PQ' 
   PC60_13 = 'C60_13 AFFECTED, UPPER RIGHT LEG-PQ' 
   PC60_14 = 'C60_14 AFFECTED, LOWER RIGHT LEG-PQ' 
   PC60_15 = 'C60_15 AFFECTED, UPPER LEFT LEG-PQ' 
   PC60_16 = 'C60_16 AFFECTED, LOWER LEFT LEG-PQ' 
   PC60_17 = 'C60_17 AFFECTED, BACK-PQ' 
   PC60_18 = 'C60_18 AFFECTED, OTHER-PQ' 
   PC61A   = 'C61A NEED HELP WITH EATING-PQ' 
   PC61B   = 'C61B NEED HELP WITH BATHING-PQ' 
   PC61C   = 'C61C NEED HELP WITH DRESSING-PQ' 
   PC61D   = 'C61D NEED HELP WITH TOILET-PQ' 
   PC62_1  = 'C62_1 EQUIPMENT, CANE-PQ' 
   PC62_2  = 'C62_2 EQUIPMENT, CRUTCHES-PQ' 
   PC62_4  = 'C62_4 EQUIPMENT, MEDICAL SHOES-PQ' 
   PC62_5  = 'C62_5 EQUIPMENT, MANUAL WHEELCHAIR-PQ' 
   PC62_8  = 'C62_8 EQUIPMENT, BRACE-PQ' 
   PC62_10 = 'C62_10 EQUIPMENT, OTHER-PQ' 
   PC62_11 = 'C62_11 EQUIPMENT, NONE-PQ' 
   PC63    = 'C63 ALWAYS LIVED IN PRESENT HOME-PQ' 
   PC64    = 'C64 BORN IN U.S.-PQ' 
   PC65_M  = 'C65_M MOVED TO U.S., MONTH-PQ' 
   PC65_Y  = 'C65_Y MOVED TO U.S., YEAR-PQ' 
   PC66_M  = 'C66_M MOVED TO CURRENT HOME, MONTH-PQ' 
   PC66_Y  = 'C66_Y MOVED TO CURRENT HOME, YEAR-PQ' 
   PC68_M  = 'C68_M MOVED TO PREVIOUS HOME, MONTH-PQ' 
   PC68_Y  = 'C68_Y MOVED TO PREVIOUS HOME, YEAR-PQ' 
   PC69    = 'C69 TWIN-PQ' 
   PD2     = 'D2 IDENTICAL OR FRATERNAL-PQ' 
   PD3     = 'D3 ALIKE THROUGH AGE EIGHT-PQ' 
   PD4A    = 'D4A CONFUSED, RESPONDENT-PQ' 
   PD4B    = 'D4B CONFUSED, FATHER-PQ' 
   PD4C    = 'D4C CONFUSED, SIBLINGS-PQ' 
   PD4D    = 'D4D CONFUSED, GRANDPARENTS-PQ' 
   PD4E    = 'D4E CONFUSED, TEACHERS-PQ' 
   PD4F    = 'D4F CONFUSED, STRANGERS-PQ' 
   PD5     = 'D5 SAME RESPONDENT AS CORE SECTION-PQ' 
   PD5A    = 'D5A ANOTHER SAMPLED ADOLESCENT-PQ' 
   AH_PVT  = 'ADD HEALTH PICTURE VOCABULARY TEST SCORE' 
   AH_RAW  = 'RAW PICTURE VOCABULARY TEST SCORE' 
        ; 


* USER-DEFINED MISSING VALUES RECODE TO SAS SYSMIS;

/*
   IF (SCH_YR = 6) THEN SCH_YR = .;
   IF (BIO_SEX = 6) THEN BIO_SEX = .;
   IF (H1GI1M = 96) THEN H1GI1M = .;
   IF (H1GI1Y = 96) THEN H1GI1Y = .;
   IF (H1GI2 = 6 OR H1GI2 = 8) THEN H1GI2 = .;
   IF (H1GI3 = 96 OR H1GI3 = 98) THEN H1GI3 = .;
   IF (H1GI4 = 6 OR H1GI4 = 8) THEN H1GI4 = .;
   IF (H1GI5A = 7 OR H1GI5A = 8) THEN H1GI5A = .;
   IF (H1GI5B = 7 OR H1GI5B = 8) THEN H1GI5B = .;
   IF (H1GI5C = 7 OR H1GI5C = 8) THEN H1GI5C = .;
   IF (H1GI5D = 7 OR H1GI5D = 8) THEN H1GI5D = .;
   IF (H1GI5E = 7 OR H1GI5E = 8) THEN H1GI5E = .;
   IF (H1GI5F = 7 OR H1GI5F = 8) THEN H1GI5F = .;
   IF (H1GI6A = 6 OR H1GI6A = 8) THEN H1GI6A = .;
   IF (H1GI6B = 6 OR H1GI6B = 8) THEN H1GI6B = .;
   IF (H1GI6C = 6 OR H1GI6C = 8) THEN H1GI6C = .;
   IF (H1GI6D = 6 OR H1GI6D = 8) THEN H1GI6D = .;
   IF (H1GI6E = 6 OR H1GI6E = 8) THEN H1GI6E = .;
   IF (H1GI7A = 7 OR H1GI7A = 8) THEN H1GI7A = .;
   IF (H1GI7B = 7 OR H1GI7B = 8) THEN H1GI7B = .;
   IF (H1GI7C = 7 OR H1GI7C = 8) THEN H1GI7C = .;
   IF (H1GI7D = 7 OR H1GI7D = 8) THEN H1GI7D = .;
   IF (H1GI7E = 7 OR H1GI7E = 8) THEN H1GI7E = .;
   IF (H1GI7F = 7 OR H1GI7F = 8) THEN H1GI7F = .;
   IF (H1GI7G = 7 OR H1GI7G = 8) THEN H1GI7G = .;
   IF (H1GI8 >= 6 AND H1GI8 <= 9) THEN H1GI8 = .;
   IF (H1GI9 = 6 OR H1GI9 = 8) THEN H1GI9 = .;
   IF (H1GI10 = 6 OR H1GI10 = 8) THEN H1GI10 = .;
   IF (H1GI11 >= 6 AND H1GI11 <= 8) THEN H1GI11 = .;
   IF (H1GI12 >= 996 AND H1GI12 <= 999) THEN H1GI12 = .;
   IF (H1GI13M >= 96 AND H1GI13M <= 99) THEN H1GI13M = .;
   IF (H1GI13Y >= 96 AND H1GI13Y <= 99) THEN H1GI13Y = .;
   IF (H1GI14 = 7 OR H1GI14 = 8) THEN H1GI14 = .;
   IF (H1GI15 >= 6 AND H1GI15 <= 8) THEN H1GI15 = .;
   IF (H1GI16M = 97) THEN H1GI16M = .;
   IF (H1GI16Y = 97) THEN H1GI16Y = .;
   IF (H1GI18 = 6 OR H1GI18 = 8) THEN H1GI18 = .;
   IF (H1GI19 = 7) THEN H1GI19 = .;
   IF (H1GI20 >= 96 AND H1GI20 <= 99) THEN H1GI20 = .;
   IF (H1GI21 >= 96 AND H1GI21 <= 98) THEN H1GI21 = .;
   IF (H1DA1 = 6 OR H1DA1 = 8) THEN H1DA1 = .;
   IF (H1DA2 = 6 OR H1DA2 = 8) THEN H1DA2 = .;
   IF (H1DA3 = 6 OR H1DA3 = 8) THEN H1DA3 = .;
   IF (H1DA4 = 6 OR H1DA4 = 8) THEN H1DA4 = .;
   IF (H1DA5 = 6 OR H1DA5 = 8) THEN H1DA5 = .;
   IF (H1DA6 = 6 OR H1DA6 = 8) THEN H1DA6 = .;
   IF (H1DA7 = 6 OR H1DA7 = 8) THEN H1DA7 = .;
   IF (H1DA8 = 996 OR H1DA8 = 998) THEN H1DA8 = .;
   IF (H1DA9 = 996 OR H1DA9 = 998) THEN H1DA9 = .;
   IF (H1DA10 = 996 OR H1DA10 = 998) THEN H1DA10 = .;
   IF (H1DA11 = 996 OR H1DA11 = 998) THEN H1DA11 = .;
   IF (H1GH1 = 6 OR H1GH1 = 8) THEN H1GH1 = .;
   IF (H1GH1A >= 6 AND H1GH1A <= 8) THEN H1GH1A = .;
   IF (H1GH2 = 6 OR H1GH2 = 8) THEN H1GH2 = .;
   IF (H1GH3 = 6 OR H1GH3 = 8) THEN H1GH3 = .;
   IF (H1GH4 = 6 OR H1GH4 = 8) THEN H1GH4 = .;
   IF (H1GH5 = 6 OR H1GH5 = 8) THEN H1GH5 = .;
   IF (H1GH6 = 6 OR H1GH6 = 8) THEN H1GH6 = .;
   IF (H1GH7 = 6 OR H1GH7 = 8) THEN H1GH7 = .;
   IF (H1GH8 = 6 OR H1GH8 = 8) THEN H1GH8 = .;
   IF (H1GH9 = 6 OR H1GH9 = 8) THEN H1GH9 = .;
   IF (H1GH10 = 6 OR H1GH10 = 8) THEN H1GH10 = .;
   IF (H1GH11 = 6 OR H1GH11 = 8) THEN H1GH11 = .;
   IF (H1GH12 = 6 OR H1GH12 = 8) THEN H1GH12 = .;
   IF (H1GH13 = 6 OR H1GH13 = 8) THEN H1GH13 = .;
   IF (H1GH14 = 6 OR H1GH14 = 8) THEN H1GH14 = .;
   IF (H1GH15 = 6 OR H1GH15 = 8) THEN H1GH15 = .;
   IF (H1GH16 >= 6 AND H1GH16 <= 8) THEN H1GH16 = .;
   IF (H1GH17 = 6 OR H1GH17 = 8) THEN H1GH17 = .;
   IF (H1GH18 = 6 OR H1GH18 = 8) THEN H1GH18 = .;
   IF (H1GH19 = 6 OR H1GH19 = 8) THEN H1GH19 = .;
   IF (H1GH20 = 6 OR H1GH20 = 8) THEN H1GH20 = .;
   IF (H1GH21 = 6 OR H1GH21 = 8) THEN H1GH21 = .;
   IF (H1GH22 = 6 OR H1GH22 = 8) THEN H1GH22 = .;
   IF (H1GH23A = 6 OR H1GH23A = 8) THEN H1GH23A = .;
   IF (H1GH23B = 6 OR H1GH23B = 8) THEN H1GH23B = .;
   IF (H1GH23C = 6 OR H1GH23C = 8) THEN H1GH23C = .;
   IF (H1GH23D = 6 OR H1GH23D = 8) THEN H1GH23D = .;
   IF (H1GH23E = 6 OR H1GH23E = 8) THEN H1GH23E = .;
   IF (H1GH23F = 6 OR H1GH23F = 8) THEN H1GH23F = .;
   IF (H1GH23G = 6 OR H1GH23G = 8) THEN H1GH23G = .;
   IF (H1GH23H = 6 OR H1GH23H = 8) THEN H1GH23H = .;
   IF (H1GH23I = 6 OR H1GH23I = 8) THEN H1GH23I = .;
   IF (H1GH23J = 6 OR H1GH23J = 8) THEN H1GH23J = .;
   IF (H1GH24 = 6 OR H1GH24 = 8 OR H1GH24 = 9) THEN H1GH24 = .;
   IF (H1GH25 = 6 OR H1GH25 = 8 OR H1GH25 = 9) THEN H1GH25 = .;
   IF (H1GH26 = 6 OR H1GH26 = 8) THEN H1GH26 = .;
   IF (H1GH27A >= 6 AND H1GH27A <= 8) THEN H1GH27A = .;
   IF (H1GH27B >= 6 AND H1GH27B <= 8) THEN H1GH27B = .;
   IF (H1GH27C >= 6 AND H1GH27C <= 8) THEN H1GH27C = .;
   IF (H1GH27D >= 6 AND H1GH27D <= 8) THEN H1GH27D = .;
   IF (H1GH27E >= 6 AND H1GH27E <= 8) THEN H1GH27E = .;
   IF (H1GH27F >= 6 AND H1GH27F <= 8) THEN H1GH27F = .;
   IF (H1GH27G >= 6 AND H1GH27G <= 8) THEN H1GH27G = .;
   IF (H1GH27H >= 6 AND H1GH27H <= 8) THEN H1GH27H = .;
   IF (H1GH27I >= 6 AND H1GH27I <= 8) THEN H1GH27I = .;
   IF (H1GH27J >= 6 AND H1GH27J <= 8) THEN H1GH27J = .;
   IF (H1GH28 = 6 OR H1GH28 = 8) THEN H1GH28 = .;
   IF (H1GH29 = 6 OR H1GH29 = 8) THEN H1GH29 = .;
   IF (H1GH30A >= 6 AND H1GH30A <= 8) THEN H1GH30A = .;
   IF (H1GH30B >= 6 AND H1GH30B <= 8) THEN H1GH30B = .;
   IF (H1GH30C >= 6 AND H1GH30C <= 8) THEN H1GH30C = .;
   IF (H1GH30D >= 6 AND H1GH30D <= 8) THEN H1GH30D = .;
   IF (H1GH30E >= 6 AND H1GH30E <= 8) THEN H1GH30E = .;
   IF (H1GH30F >= 6 AND H1GH30F <= 8) THEN H1GH30F = .;
   IF (H1GH30G >= 6 AND H1GH30G <= 8) THEN H1GH30G = .;
   IF (H1GH31A = 7) THEN H1GH31A = .;
   IF (H1GH31B = 7) THEN H1GH31B = .;
   IF (H1GH31C = 7) THEN H1GH31C = .;
   IF (H1GH31D = 7) THEN H1GH31D = .;
   IF (H1GH31F = 7) THEN H1GH31F = .;
   IF (H1GH31G = 7) THEN H1GH31G = .;
   IF (H1GH32 = 6 OR H1GH32 = 8) THEN H1GH32 = .;
   IF (H1GH33 = 6 OR H1GH33 = 8) THEN H1GH33 = .;
   IF (H1GH34 = 6 OR H1GH34 = 8) THEN H1GH34 = .;
   IF (H1GH35 = 6 OR H1GH35 = 8) THEN H1GH35 = .;
   IF (H1GH36 = 6 OR H1GH36 = 8) THEN H1GH36 = .;
   IF (H1GH37 >= 6 AND H1GH37 <= 8) THEN H1GH37 = .;
   IF (H1GH38 = 7 OR H1GH38 = 8) THEN H1GH38 = .;
   IF (H1GH39 = 6 OR H1GH39 = 8) THEN H1GH39 = .;
   IF (H1GH40 = 6 OR H1GH40 = 8) THEN H1GH40 = .;
   IF (H1GH41 >= 6 AND H1GH41 <= 8) THEN H1GH41 = .;
   IF (H1GH42 = 6 OR H1GH42 = 8) THEN H1GH42 = .;
   IF (H1GH43 = 6 OR H1GH43 = 8 OR H1GH43 = 9) THEN H1GH43 = .;
   IF (H1GH44 = 6 OR H1GH44 = 8) THEN H1GH44 = .;
   IF (H1GH46 = 6 OR H1GH46 = 8 OR H1GH46 = 9) THEN H1GH46 = .;
   IF (H1GH48 = 6 OR H1GH48 = 8 OR H1GH48 = 9) THEN H1GH48 = .;
   IF (H1GH49 = 6 OR H1GH49 = 8) THEN H1GH49 = .;
   IF (H1GH50 = '999996' OR H1GH50 = '999998' OR H1GH50 = '999999') THEN H1GH50 = '';
   IF (H1GH51 = 96 OR H1GH51 = 98) THEN H1GH51 = .;
   IF (H1GH52 = 6 OR H1GH52 = 8) THEN H1GH52 = .;
   IF (H1GH53 = 6 OR H1GH53 = 8 OR H1GH53 = 9) THEN H1GH53 = .;
   IF (H1GH54 = 6 OR H1GH54 = 8 OR H1GH54 = 9) THEN H1GH54 = .;
   IF (H1GH55 = 6 OR H1GH55 = 8) THEN H1GH55 = .;
   IF (H1GH56 = 6 OR H1GH56 = 8) THEN H1GH56 = .;
   IF (H1GH57 = 6 OR H1GH57 = 8) THEN H1GH57 = .;
   IF (H1GH58 >= 6 AND H1GH58 <= 8) THEN H1GH58 = .;
   IF (H1GH59A = 96 OR H1GH59A = 98) THEN H1GH59A = .;
   IF (H1GH59B = 96 OR H1GH59B = 98 OR H1GH59B = 99) THEN H1GH59B = .;
   IF (H1GH60 = 996 OR H1GH60 = 998 OR H1GH60 = 999) THEN H1GH60 = .;
   IF (H1TS1 = 6 OR H1TS1 = 8) THEN H1TS1 = .;
   IF (H1TS2 = 6 OR H1TS2 = 8) THEN H1TS2 = .;
   IF (H1TS3 = 6 OR H1TS3 = 8) THEN H1TS3 = .;
   IF (H1TS4 = 6 OR H1TS4 = 8) THEN H1TS4 = .;
   IF (H1TS5 = 6 OR H1TS5 = 8) THEN H1TS5 = .;
   IF (H1TS6 = 6 OR H1TS6 = 8) THEN H1TS6 = .;
   IF (H1TS7 = 6 OR H1TS7 = 8) THEN H1TS7 = .;
   IF (H1TS8 = 6 OR H1TS8 = 8) THEN H1TS8 = .;
   IF (H1TS9 = 6 OR H1TS9 = 8) THEN H1TS9 = .;
   IF (H1TS10 = 6 OR H1TS10 = 8) THEN H1TS10 = .;
   IF (H1TS11 = 6 OR H1TS11 = 8) THEN H1TS11 = .;
   IF (H1TS12 = 6 OR H1TS12 = 8) THEN H1TS12 = .;
   IF (H1TS13 = 6 OR H1TS13 = 8) THEN H1TS13 = .;
   IF (H1TS14 = 6 OR H1TS14 = 8) THEN H1TS14 = .;
   IF (H1TS15 = 6 OR H1TS15 = 8) THEN H1TS15 = .;
   IF (H1TS16 = 6 OR H1TS16 = 8) THEN H1TS16 = .;
   IF (H1TS17 = 6 OR H1TS17 = 8) THEN H1TS17 = .;
   IF (H1ED1 >= 6 AND H1ED1 <= 9) THEN H1ED1 = .;
   IF (H1ED2 >= 996 AND H1ED2 <= 998) THEN H1ED2 = .;
   IF (H1ED3 = 6 OR H1ED3 = 8) THEN H1ED3 = .;
   IF (H1ED4A >= 6 AND H1ED4A <= 8) THEN H1ED4A = .;
   IF (H1ED4B >= 6 AND H1ED4B <= 8) THEN H1ED4B = .;
   IF (H1ED4C >= 6 AND H1ED4C <= 8) THEN H1ED4C = .;
   IF (H1ED4D >= 6 AND H1ED4D <= 8) THEN H1ED4D = .;
   IF (H1ED4E >= 6 AND H1ED4E <= 8) THEN H1ED4E = .;
   IF (H1ED4F >= 6 AND H1ED4F <= 8) THEN H1ED4F = .;
   IF (H1ED4G >= 6 AND H1ED4G <= 8) THEN H1ED4G = .;
   IF (H1ED4H >= 6 AND H1ED4H <= 8) THEN H1ED4H = .;
   IF (H1ED4I >= 6 AND H1ED4I <= 8) THEN H1ED4I = .;
   IF (H1ED4J >= 6 AND H1ED4J <= 8) THEN H1ED4J = .;
   IF (H1ED4K >= 6 AND H1ED4K <= 8) THEN H1ED4K = .;
   IF (H1ED4M >= 6 AND H1ED4M <= 8) THEN H1ED4M = .;
   IF (H1ED5 = 6 OR H1ED5 = 8) THEN H1ED5 = .;
   IF (H1ED6A = 7 OR H1ED6A = 8) THEN H1ED6A = .;
   IF (H1ED6B = 7 OR H1ED6B = 8) THEN H1ED6B = .;
   IF (H1ED6C = 7 OR H1ED6C = 8) THEN H1ED6C = .;
   IF (H1ED6D = 7 OR H1ED6D = 8) THEN H1ED6D = .;
   IF (H1ED6E = 7 OR H1ED6E = 8) THEN H1ED6E = .;
   IF (H1ED6F = 7 OR H1ED6F = 8) THEN H1ED6F = .;
   IF (H1ED6G = 7 OR H1ED6G = 8) THEN H1ED6G = .;
   IF (H1ED6H = 7 OR H1ED6H = 8) THEN H1ED6H = .;
   IF (H1ED6I = 7 OR H1ED6I = 8) THEN H1ED6I = .;
   IF (H1ED6J = 7 OR H1ED6J = 8) THEN H1ED6J = .;
   IF (H1ED6K = 7 OR H1ED6K = 8) THEN H1ED6K = .;
   IF (H1ED6L = 7 OR H1ED6L = 8) THEN H1ED6L = .;
   IF (H1ED6M = 7 OR H1ED6M = 8) THEN H1ED6M = .;
   IF (H1ED7 = 6 OR H1ED7 = 8) THEN H1ED7 = .;
   IF (H1ED8 >= 96 AND H1ED8 <= 99) THEN H1ED8 = .;
   IF (H1ED9 = 6 OR H1ED9 = 8) THEN H1ED9 = .;
   IF (H1ED10 = 96 OR H1ED10 = 97 OR H1ED10 = 99) THEN H1ED10 = .;
   IF (H1ED11 >= 96 AND H1ED11 <= 98) THEN H1ED11 = .;
   IF (H1ED12 >= 96 AND H1ED12 <= 98) THEN H1ED12 = .;
   IF (H1ED13 >= 96 AND H1ED13 <= 98) THEN H1ED13 = .;
   IF (H1ED14 >= 96 AND H1ED14 <= 98) THEN H1ED14 = .;
   IF (H1ED15 >= 6 AND H1ED15 <= 8) THEN H1ED15 = .;
   IF (H1ED16 >= 6 AND H1ED16 <= 8) THEN H1ED16 = .;
   IF (H1ED17 >= 6 AND H1ED17 <= 8) THEN H1ED17 = .;
   IF (H1ED18 >= 6 AND H1ED18 <= 8) THEN H1ED18 = .;
   IF (H1ED19 >= 6 AND H1ED19 <= 8) THEN H1ED19 = .;
   IF (H1ED20 >= 6 AND H1ED20 <= 8) THEN H1ED20 = .;
   IF (H1ED21 >= 6 AND H1ED21 <= 8) THEN H1ED21 = .;
   IF (H1ED22 >= 6 AND H1ED22 <= 8) THEN H1ED22 = .;
   IF (H1ED23 >= 6 AND H1ED23 <= 8) THEN H1ED23 = .;
   IF (H1ED24 >= 6 AND H1ED24 <= 8) THEN H1ED24 = .;
   IF (H1PL1 = 6 OR H1PL1 = 8) THEN H1PL1 = .;
   IF (H1PL2 = 7) THEN H1PL2 = .;
   IF (H1PL3 = 7 OR H1PL3 = 8) THEN H1PL3 = .;
   IF (H1PL4 = 7) THEN H1PL4 = .;
   IF (H1PL5 = 6 OR H1PL5 = 8) THEN H1PL5 = .;
   IF (H1PL6 = 6 OR H1PL6 = 8) THEN H1PL6 = .;
   IF (H1PL7 = 6 OR H1PL7 = 8) THEN H1PL7 = .;
   IF (H1PL8 >= 6 AND H1PL8 <= 8) THEN H1PL8 = .;
   IF (H1PL9 = 7 OR H1PL9 = 8) THEN H1PL9 = .;
   IF (H1PL10 >= 6 AND H1PL10 <= 8) THEN H1PL10 = .;
   IF (H1PL11 = 7) THEN H1PL11 = .;
   IF (H1PL12 >= 6 AND H1PL12 <= 8) THEN H1PL12 = .;
   IF (H1PL13 = 7) THEN H1PL13 = .;
   IF (H1PL14 >= 6 AND H1PL14 <= 8) THEN H1PL14 = .;
   IF (H1PL15 = 7) THEN H1PL15 = .;
   IF (H1PL16 >= 6 AND H1PL16 <= 8) THEN H1PL16 = .;
   IF (H1PL17 = 7) THEN H1PL17 = .;
   IF (H1PL18 >= 6 AND H1PL18 <= 8) THEN H1PL18 = .;
   IF (H1PL19 = 7) THEN H1PL19 = .;
   IF (H1PL20 >= 6 AND H1PL20 <= 8) THEN H1PL20 = .;
   IF (H1PL21 >= 6 AND H1PL21 <= 8) THEN H1PL21 = .;
   IF (H1PL22 >= 6 AND H1PL22 <= 8) THEN H1PL22 = .;
   IF (H1PL23 >= 6 AND H1PL23 <= 8) THEN H1PL23 = .;
   IF (H1PL24 >= 6 AND H1PL24 <= 8) THEN H1PL24 = .;
   IF (H1PL25 >= 6 AND H1PL25 <= 8) THEN H1PL25 = .;
   IF (H1PL26 >= 6 AND H1PL26 <= 8) THEN H1PL26 = .;
   IF (H1PL29 >= 6 AND H1PL29 <= 8) THEN H1PL29 = .;
   IF (H1PL30 >= 6 AND H1PL30 <= 8) THEN H1PL30 = .;
   IF (H1PL31 >= 6 AND H1PL31 <= 8) THEN H1PL31 = .;
   IF (H1PL33 >= 6 AND H1PL33 <= 8) THEN H1PL33 = .;
   IF (H1PL34 >= 6 AND H1PL34 <= 8) THEN H1PL34 = .;
   IF (H1PL37 >= 6 AND H1PL37 <= 8) THEN H1PL37 = .;
   IF (H1PL38 >= 6 AND H1PL38 <= 8) THEN H1PL38 = .;
   IF (H1HS1 = 6 OR H1HS1 = 8) THEN H1HS1 = .;
   IF (H1HS2A = 7 OR H1HS2A = 8) THEN H1HS2A = .;
   IF (H1HS2B = 7 OR H1HS2B = 8) THEN H1HS2B = .;
   IF (H1HS2C = 7 OR H1HS2C = 8) THEN H1HS2C = .;
   IF (H1HS2D = 7 OR H1HS2D = 8) THEN H1HS2D = .;
   IF (H1HS2E = 7 OR H1HS2E = 8) THEN H1HS2E = .;
   IF (H1HS3 = 6 OR H1HS3 = 8) THEN H1HS3 = .;
   IF (H1HS4A = 7) THEN H1HS4A = .;
   IF (H1HS4B = 7) THEN H1HS4B = .;
   IF (H1HS4C = 7) THEN H1HS4C = .;
   IF (H1HS4D = 7) THEN H1HS4D = .;
   IF (H1HS4E = 7) THEN H1HS4E = .;
   IF (H1HS5 = 6 OR H1HS5 = 8) THEN H1HS5 = .;
   IF (H1HS6A = 7) THEN H1HS6A = .;
   IF (H1HS6B = 7) THEN H1HS6B = .;
   IF (H1HS6C = 7) THEN H1HS6C = .;
   IF (H1HS6D = 7) THEN H1HS6D = .;
   IF (H1HS6E = 7) THEN H1HS6E = .;
   IF (H1HS7 = 6 OR H1HS7 = 8) THEN H1HS7 = .;
   IF (H1HS8A = 7 OR H1HS8A = 8) THEN H1HS8A = .;
   IF (H1HS8B = 7 OR H1HS8B = 8) THEN H1HS8B = .;
   IF (H1HS8C = 7 OR H1HS8C = 8) THEN H1HS8C = .;
   IF (H1HS8D = 7 OR H1HS8D = 8) THEN H1HS8D = .;
   IF (H1HS8E = 7 OR H1HS8E = 8) THEN H1HS8E = .;
   IF (H1HS9 = 6 OR H1HS9 = 8) THEN H1HS9 = .;
   IF (H1HS10A = 7) THEN H1HS10A = .;
   IF (H1HS10B = 7) THEN H1HS10B = .;
   IF (H1HS10C = 7) THEN H1HS10C = .;
   IF (H1HS10D = 7) THEN H1HS10D = .;
   IF (H1HS10E = 7) THEN H1HS10E = .;
   IF (H1HS11 >= 6 AND H1HS11 <= 8) THEN H1HS11 = .;
   IF (H1HS12A = 7) THEN H1HS12A = .;
   IF (H1HS12B = 7) THEN H1HS12B = .;
   IF (H1HS12C = 7) THEN H1HS12C = .;
   IF (H1HS12D = 7) THEN H1HS12D = .;
   IF (H1HS12E = 7) THEN H1HS12E = .;
   IF (H1RP1 >= 6 AND H1RP1 <= 9) THEN H1RP1 = .;
   IF (H1RP2 >= 6 AND H1RP2 <= 9) THEN H1RP2 = .;
   IF (H1RP3 >= 6 AND H1RP3 <= 9) THEN H1RP3 = .;
   IF (H1RP4 >= 6 AND H1RP4 <= 9) THEN H1RP4 = .;
   IF (H1RP5 >= 6 AND H1RP5 <= 9) THEN H1RP5 = .;
   IF (H1RP6 >= 6 AND H1RP6 <= 9) THEN H1RP6 = .;
   IF (H1SE1 >= 96 AND H1SE1 <= 99) THEN H1SE1 = .;
   IF (H1SE2 >= 96 AND H1SE2 <= 99) THEN H1SE2 = .;
   IF (H1SE3 >= 96 AND H1SE3 <= 99) THEN H1SE3 = .;
   IF (H1SE4 = 96 OR H1SE4 = 98) THEN H1SE4 = .;
   IF (H1FS1 = 6 OR H1FS1 = 8) THEN H1FS1 = .;
   IF (H1FS2 = 6 OR H1FS2 = 8) THEN H1FS2 = .;
   IF (H1FS3 = 6 OR H1FS3 = 8) THEN H1FS3 = .;
   IF (H1FS4 = 6 OR H1FS4 = 8) THEN H1FS4 = .;
   IF (H1FS5 = 6 OR H1FS5 = 8) THEN H1FS5 = .;
   IF (H1FS6 = 6 OR H1FS6 = 8) THEN H1FS6 = .;
   IF (H1FS7 = 6 OR H1FS7 = 8) THEN H1FS7 = .;
   IF (H1FS8 = 6 OR H1FS8 = 8) THEN H1FS8 = .;
   IF (H1FS9 = 6 OR H1FS9 = 8) THEN H1FS9 = .;
   IF (H1FS10 = 6 OR H1FS10 = 8) THEN H1FS10 = .;
   IF (H1FS11 = 6 OR H1FS11 = 8) THEN H1FS11 = .;
   IF (H1FS12 = 6 OR H1FS12 = 8) THEN H1FS12 = .;
   IF (H1FS13 = 6 OR H1FS13 = 8) THEN H1FS13 = .;
   IF (H1FS14 = 6 OR H1FS14 = 8) THEN H1FS14 = .;
   IF (H1FS15 = 6 OR H1FS15 = 8) THEN H1FS15 = .;
   IF (H1FS16 = 6 OR H1FS16 = 8) THEN H1FS16 = .;
   IF (H1FS17 = 6 OR H1FS17 = 8) THEN H1FS17 = .;
   IF (H1FS18 = 6 OR H1FS18 = 8) THEN H1FS18 = .;
   IF (H1FS19 = 6 OR H1FS19 = 8) THEN H1FS19 = .;
   IF (H1HR2A >= 6 AND H1HR2A <= 8) THEN H1HR2A = .;
   IF (H1HR3A >= 96 AND H1HR3A <= 98) THEN H1HR3A = .;
   IF (H1HR4A = 97) THEN H1HR4A = .;
   IF (H1HR5A = 97) THEN H1HR5A = .;
   IF (H1HR6A = 97) THEN H1HR6A = .;
   IF (H1HR7A >= 996.0 AND H1HR7A <= 998.0) THEN H1HR7A = .;
   IF (H1HR8A = 997 OR H1HR8A = 998) THEN H1HR8A = .;
   IF (H1HR9A >= 6 AND H1HR9A <= 8) THEN H1HR9A = .;
   IF (H1HR10A >= 96 AND H1HR10A <= 98) THEN H1HR10A = .;
   IF (H1HR11A = 97) THEN H1HR11A = .;
   IF (H1HR2B >= 6 AND H1HR2B <= 8) THEN H1HR2B = .;
   IF (H1HR3B >= 96 AND H1HR3B <= 98) THEN H1HR3B = .;
   IF (H1HR4B = 97) THEN H1HR4B = .;
   IF (H1HR5B = 97 OR H1HR5B = 98) THEN H1HR5B = .;
   IF (H1HR6B = 97) THEN H1HR6B = .;
   IF (H1HR7B >= 996.0 AND H1HR7B <= 998.0) THEN H1HR7B = .;
   IF (H1HR8B = 997 OR H1HR8B = 998) THEN H1HR8B = .;
   IF (H1HR9B >= 6 AND H1HR9B <= 9) THEN H1HR9B = .;
   IF (H1HR10B >= 96 AND H1HR10B <= 98) THEN H1HR10B = .;
   IF (H1HR11B = 97 OR H1HR11B = 98) THEN H1HR11B = .;
   IF (H1HR2C >= 6 AND H1HR2C <= 8) THEN H1HR2C = .;
   IF (H1HR3C >= 96 AND H1HR3C <= 98) THEN H1HR3C = .;
   IF (H1HR4C = 97) THEN H1HR4C = .;
   IF (H1HR5C = 97) THEN H1HR5C = .;
   IF (H1HR6C = 97) THEN H1HR6C = .;
   IF (H1HR7C >= 996 AND H1HR7C <= 999) THEN H1HR7C = .;
   IF (H1HR8C = 997 OR H1HR8C = 998) THEN H1HR8C = .;
   IF (H1HR9C >= 6 AND H1HR9C <= 8) THEN H1HR9C = .;
   IF (H1HR10C >= 96 AND H1HR10C <= 98) THEN H1HR10C = .;
   IF (H1HR11C = 97) THEN H1HR11C = .;
   IF (H1HR2D >= 6 AND H1HR2D <= 8) THEN H1HR2D = .;
   IF (H1HR3D >= 96 AND H1HR3D <= 98) THEN H1HR3D = .;
   IF (H1HR4D = 97) THEN H1HR4D = .;
   IF (H1HR5D = 97) THEN H1HR5D = .;
   IF (H1HR6D = 97) THEN H1HR6D = .;
   IF (H1HR7D >= 996 AND H1HR7D <= 999) THEN H1HR7D = .;
   IF (H1HR8D = 997 OR H1HR8D = 998) THEN H1HR8D = .;
   IF (H1HR9D >= 6 AND H1HR9D <= 8) THEN H1HR9D = .;
   IF (H1HR10D >= 96 AND H1HR10D <= 99) THEN H1HR10D = .;
   IF (H1HR11D = 97 OR H1HR11D = 98) THEN H1HR11D = .;
   IF (H1HR2E >= 6 AND H1HR2E <= 8) THEN H1HR2E = .;
   IF (H1HR3E >= 96 AND H1HR3E <= 98) THEN H1HR3E = .;
   IF (H1HR4E = 97) THEN H1HR4E = .;
   IF (H1HR5E = 97) THEN H1HR5E = .;
   IF (H1HR6E = 97) THEN H1HR6E = .;
   IF (H1HR7E >= 996 AND H1HR7E <= 998) THEN H1HR7E = .;
   IF (H1HR8E = 997 OR H1HR8E = 998) THEN H1HR8E = .;
   IF (H1HR9E >= 6 AND H1HR9E <= 8) THEN H1HR9E = .;
   IF (H1HR10E >= 96 AND H1HR10E <= 98) THEN H1HR10E = .;
   IF (H1HR11E = 97 OR H1HR11E = 98) THEN H1HR11E = .;
   IF (H1HR2F >= 6 AND H1HR2F <= 8) THEN H1HR2F = .;
   IF (H1HR3F >= 96 AND H1HR3F <= 98) THEN H1HR3F = .;
   IF (H1HR4F = 97) THEN H1HR4F = .;
   IF (H1HR5F = 97) THEN H1HR5F = .;
   IF (H1HR6F = 97) THEN H1HR6F = .;
   IF (H1HR7F >= 996 AND H1HR7F <= 999) THEN H1HR7F = .;
   IF (H1HR8F = 997 OR H1HR8F = 998) THEN H1HR8F = .;
   IF (H1HR9F >= 6 AND H1HR9F <= 8) THEN H1HR9F = .;
   IF (H1HR10F >= 96 AND H1HR10F <= 98) THEN H1HR10F = .;
   IF (H1HR11F = 97) THEN H1HR11F = .;
   IF (H1HR2G >= 6 AND H1HR2G <= 8) THEN H1HR2G = .;
   IF (H1HR3G >= 96 AND H1HR3G <= 98) THEN H1HR3G = .;
   IF (H1HR4G = 97) THEN H1HR4G = .;
   IF (H1HR5G = 97) THEN H1HR5G = .;
   IF (H1HR6G = 97) THEN H1HR6G = .;
   IF (H1HR7G >= 996 AND H1HR7G <= 998) THEN H1HR7G = .;
   IF (H1HR8G = 997 OR H1HR8G = 998) THEN H1HR8G = .;
   IF (H1HR9G >= 6 AND H1HR9G <= 8) THEN H1HR9G = .;
   IF (H1HR10G >= 96 AND H1HR10G <= 98) THEN H1HR10G = .;
   IF (H1HR11G = 97) THEN H1HR11G = .;
   IF (H1HR2H >= 6 AND H1HR2H <= 8) THEN H1HR2H = .;
   IF (H1HR3H >= 96 AND H1HR3H <= 98) THEN H1HR3H = .;
   IF (H1HR4H = 97) THEN H1HR4H = .;
   IF (H1HR5H = 97) THEN H1HR5H = .;
   IF (H1HR6H = 97) THEN H1HR6H = .;
   IF (H1HR7H >= 996 AND H1HR7H <= 998) THEN H1HR7H = .;
   IF (H1HR8H = 997 OR H1HR8H = 998) THEN H1HR8H = .;
   IF (H1HR9H >= 6 AND H1HR9H <= 8) THEN H1HR9H = .;
   IF (H1HR10H >= 96 AND H1HR10H <= 98) THEN H1HR10H = .;
   IF (H1HR11H = 97) THEN H1HR11H = .;
   IF (H1HR2I >= 6 AND H1HR2I <= 8) THEN H1HR2I = .;
   IF (H1HR3I >= 96 AND H1HR3I <= 98) THEN H1HR3I = .;
   IF (H1HR4I = 97) THEN H1HR4I = .;
   IF (H1HR5I = 97) THEN H1HR5I = .;
   IF (H1HR6I = 97) THEN H1HR6I = .;
   IF (H1HR7I >= 996 AND H1HR7I <= 998) THEN H1HR7I = .;
   IF (H1HR8I = 997 OR H1HR8I = 998) THEN H1HR8I = .;
   IF (H1HR9I >= 6 AND H1HR9I <= 8) THEN H1HR9I = .;
   IF (H1HR10I >= 96 AND H1HR10I <= 98) THEN H1HR10I = .;
   IF (H1HR11I = 97) THEN H1HR11I = .;
   IF (H1HR2J >= 6 AND H1HR2J <= 8) THEN H1HR2J = .;
   IF (H1HR3J >= 96 AND H1HR3J <= 98) THEN H1HR3J = .;
   IF (H1HR4J = 97) THEN H1HR4J = .;
   IF (H1HR5J = 97) THEN H1HR5J = .;
   IF (H1HR6J = 97) THEN H1HR6J = .;
   IF (H1HR7J >= 996 AND H1HR7J <= 998) THEN H1HR7J = .;
   IF (H1HR8J = 997 OR H1HR8J = 998) THEN H1HR8J = .;
   IF (H1HR9J >= 6 AND H1HR9J <= 8) THEN H1HR9J = .;
   IF (H1HR10J >= 96 AND H1HR10J <= 98) THEN H1HR10J = .;
   IF (H1HR11J = 97) THEN H1HR11J = .;
   IF (H1HR2K >= 6 AND H1HR2K <= 8) THEN H1HR2K = .;
   IF (H1HR3K >= 96 AND H1HR3K <= 98) THEN H1HR3K = .;
   IF (H1HR4K = 97) THEN H1HR4K = .;
   IF (H1HR5K = 97) THEN H1HR5K = .;
   IF (H1HR6K = 97) THEN H1HR6K = .;
   IF (H1HR7K >= 996 AND H1HR7K <= 998) THEN H1HR7K = .;
   IF (H1HR8K = 997 OR H1HR8K = 998) THEN H1HR8K = .;
   IF (H1HR9K >= 6 AND H1HR9K <= 8) THEN H1HR9K = .;
   IF (H1HR10K >= 96 AND H1HR10K <= 98) THEN H1HR10K = .;
   IF (H1HR11K = 97) THEN H1HR11K = .;
   IF (H1HR2L >= 6 AND H1HR2L <= 8) THEN H1HR2L = .;
   IF (H1HR3L >= 96 AND H1HR3L <= 98) THEN H1HR3L = .;
   IF (H1HR4L = 97) THEN H1HR4L = .;
   IF (H1HR5L = 97) THEN H1HR5L = .;
   IF (H1HR6L = 97) THEN H1HR6L = .;
   IF (H1HR7L >= 996 AND H1HR7L <= 998) THEN H1HR7L = .;
   IF (H1HR8L = 997 OR H1HR8L = 998) THEN H1HR8L = .;
   IF (H1HR9L >= 6 AND H1HR9L <= 8) THEN H1HR9L = .;
   IF (H1HR10L >= 96 AND H1HR10L <= 98) THEN H1HR10L = .;
   IF (H1HR11L = 97) THEN H1HR11L = .;
   IF (H1HR2M >= 6 AND H1HR2M <= 8) THEN H1HR2M = .;
   IF (H1HR3M >= 96 AND H1HR3M <= 98) THEN H1HR3M = .;
   IF (H1HR4M = 97) THEN H1HR4M = .;
   IF (H1HR5M = 97) THEN H1HR5M = .;
   IF (H1HR6M = 97) THEN H1HR6M = .;
   IF (H1HR7M >= 996 AND H1HR7M <= 998) THEN H1HR7M = .;
   IF (H1HR8M = 997 OR H1HR8M = 998) THEN H1HR8M = .;
   IF (H1HR9M >= 6 AND H1HR9M <= 8) THEN H1HR9M = .;
   IF (H1HR10M >= 96 AND H1HR10M <= 98) THEN H1HR10M = .;
   IF (H1HR11M = 97) THEN H1HR11M = .;
   IF (H1HR2N >= 6 AND H1HR2N <= 8) THEN H1HR2N = .;
   IF (H1HR3N >= 96 AND H1HR3N <= 98) THEN H1HR3N = .;
   IF (H1HR4N = 97) THEN H1HR4N = .;
   IF (H1HR5N = 97) THEN H1HR5N = .;
   IF (H1HR6N = 97) THEN H1HR6N = .;
   IF (H1HR7N >= 996 AND H1HR7N <= 998) THEN H1HR7N = .;
   IF (H1HR8N = 997 OR H1HR8N = 998) THEN H1HR8N = .;
   IF (H1HR9N >= 6 AND H1HR9N <= 8) THEN H1HR9N = .;
   IF (H1HR10N >= 96 AND H1HR10N <= 98) THEN H1HR10N = .;
   IF (H1HR11N = 97) THEN H1HR11N = .;
   IF (H1HR2O >= 6 AND H1HR2O <= 8) THEN H1HR2O = .;
   IF (H1HR3O >= 96 AND H1HR3O <= 98) THEN H1HR3O = .;
   IF (H1HR4O = 97) THEN H1HR4O = .;
   IF (H1HR5O = 97) THEN H1HR5O = .;
   IF (H1HR6O = 97) THEN H1HR6O = .;
   IF (H1HR7O >= 996 AND H1HR7O <= 998) THEN H1HR7O = .;
   IF (H1HR8O = 997 OR H1HR8O = 998) THEN H1HR8O = .;
   IF (H1HR9O >= 6 AND H1HR9O <= 8) THEN H1HR9O = .;
   IF (H1HR10O >= 96 AND H1HR10O <= 98) THEN H1HR10O = .;
   IF (H1HR11O = 97) THEN H1HR11O = .;
   IF (H1HR2P >= 6 AND H1HR2P <= 8) THEN H1HR2P = .;
   IF (H1HR3P >= 96 AND H1HR3P <= 98) THEN H1HR3P = .;
   IF (H1HR4P = 97) THEN H1HR4P = .;
   IF (H1HR5P = 97) THEN H1HR5P = .;
   IF (H1HR6P = 97) THEN H1HR6P = .;
   IF (H1HR7P >= 996 AND H1HR7P <= 998) THEN H1HR7P = .;
   IF (H1HR8P = 997 OR H1HR8P = 998) THEN H1HR8P = .;
   IF (H1HR9P >= 6 AND H1HR9P <= 8) THEN H1HR9P = .;
   IF (H1HR10P >= 96 AND H1HR10P <= 98) THEN H1HR10P = .;
   IF (H1HR11P = 97) THEN H1HR11P = .;
   IF (H1HR2Q >= 6 AND H1HR2Q <= 8) THEN H1HR2Q = .;
   IF (H1HR3Q >= 96 AND H1HR3Q <= 98) THEN H1HR3Q = .;
   IF (H1HR4Q = 97) THEN H1HR4Q = .;
   IF (H1HR5Q = 97) THEN H1HR5Q = .;
   IF (H1HR6Q = 97) THEN H1HR6Q = .;
   IF (H1HR7Q >= 996 AND H1HR7Q <= 998) THEN H1HR7Q = .;
   IF (H1HR8Q = 997 OR H1HR8Q = 998) THEN H1HR8Q = .;
   IF (H1HR9Q >= 6 AND H1HR9Q <= 8) THEN H1HR9Q = .;
   IF (H1HR10Q >= 96 AND H1HR10Q <= 98) THEN H1HR10Q = .;
   IF (H1HR11Q = 97) THEN H1HR11Q = .;
   IF (H1HR2R >= 6 AND H1HR2R <= 8) THEN H1HR2R = .;
   IF (H1HR3R >= 96 AND H1HR3R <= 98) THEN H1HR3R = .;
   IF (H1HR4R = 97) THEN H1HR4R = .;
   IF (H1HR5R = 97) THEN H1HR5R = .;
   IF (H1HR6R = 97) THEN H1HR6R = .;
   IF (H1HR7R >= 996 AND H1HR7R <= 998) THEN H1HR7R = .;
   IF (H1HR8R = 997 OR H1HR8R = 998) THEN H1HR8R = .;
   IF (H1HR9R >= 6 AND H1HR9R <= 8) THEN H1HR9R = .;
   IF (H1HR10R >= 96 AND H1HR10R <= 98) THEN H1HR10R = .;
   IF (H1HR11R = 97) THEN H1HR11R = .;
   IF (H1HR2S >= 6 AND H1HR2S <= 8) THEN H1HR2S = .;
   IF (H1HR3S >= 96 AND H1HR3S <= 98) THEN H1HR3S = .;
   IF (H1HR4S = 97) THEN H1HR4S = .;
   IF (H1HR5S = 97) THEN H1HR5S = .;
   IF (H1HR6S = 97) THEN H1HR6S = .;
   IF (H1HR7S >= 996 AND H1HR7S <= 998) THEN H1HR7S = .;
   IF (H1HR8S = 997 OR H1HR8S = 998) THEN H1HR8S = .;
   IF (H1HR9S >= 6 AND H1HR9S <= 8) THEN H1HR9S = .;
   IF (H1HR10S >= 96 AND H1HR10S <= 98) THEN H1HR10S = .;
   IF (H1HR11S = 97) THEN H1HR11S = .;
   IF (H1HR2T >= 6 AND H1HR2T <= 8) THEN H1HR2T = .;
   IF (H1HR3T >= 96 AND H1HR3T <= 98) THEN H1HR3T = .;
   IF (H1HR4T = 97) THEN H1HR4T = .;
   IF (H1HR5T = 97) THEN H1HR5T = .;
   IF (H1HR6T = 97) THEN H1HR6T = .;
   IF (H1HR7T >= 996 AND H1HR7T <= 998) THEN H1HR7T = .;
   IF (H1HR8T = 997 OR H1HR8T = 998) THEN H1HR8T = .;
   IF (H1HR9T >= 6 AND H1HR9T <= 8) THEN H1HR9T = .;
   IF (H1HR10T >= 96 AND H1HR10T <= 98) THEN H1HR10T = .;
   IF (H1HR11T = 97) THEN H1HR11T = .;
   IF (H1HR12 >= 96 AND H1HR12 <= 98) THEN H1HR12 = .;
   IF (H1HR13 >= 96 AND H1HR13 <= 98) THEN H1HR13 = .;
   IF (H1HR14 = 96 OR H1HR14 = 98) THEN H1HR14 = .;
   IF (H1HR15 >= 96 AND H1HR15 <= 98) THEN H1HR15 = .;
   IF (H1NM1 >= 6 AND H1NM1 <= 8) THEN H1NM1 = .;
   IF (H1NM2 = 7 OR H1NM2 = 8) THEN H1NM2 = .;
   IF (H1NM3 = 97 OR H1NM3 = 98) THEN H1NM3 = .;
   IF (H1NM4 >= 96 AND H1NM4 <= 98) THEN H1NM4 = .;
   IF (H1NM5 >= 6 AND H1NM5 <= 8) THEN H1NM5 = .;
   IF (H1NM6 >= 6 AND H1NM6 <= 8) THEN H1NM6 = .;
   IF (H1NM7 >= 6 AND H1NM7 <= 8) THEN H1NM7 = .;
   IF (H1NM8 = 97 OR H1NM8 = 98) THEN H1NM8 = .;
   IF (H1NM9 >= 97 AND H1NM9 <= 99) THEN H1NM9 = .;
   IF (H1NM10 >= 6 AND H1NM10 <= 8) THEN H1NM10 = .;
   IF (H1NM11 >= 6 AND H1NM11 <= 8) THEN H1NM11 = .;
   IF (H1NM12A >= 6 AND H1NM12A <= 8) THEN H1NM12A = .;
   IF (H1NM12B >= 6 AND H1NM12B <= 8) THEN H1NM12B = .;
   IF (H1NM12C >= 6 AND H1NM12C <= 8) THEN H1NM12C = .;
   IF (H1NM12D >= 6 AND H1NM12D <= 8) THEN H1NM12D = .;
   IF (H1NM12E >= 6 AND H1NM12E <= 8) THEN H1NM12E = .;
   IF (H1NM12F >= 6 AND H1NM12F <= 8) THEN H1NM12F = .;
   IF (H1NM12G >= 6 AND H1NM12G <= 8) THEN H1NM12G = .;
   IF (H1NM12H >= 6 AND H1NM12H <= 8) THEN H1NM12H = .;
   IF (H1NM12I >= 6 AND H1NM12I <= 8) THEN H1NM12I = .;
   IF (H1NM12J >= 6 AND H1NM12J <= 8) THEN H1NM12J = .;
   IF (H1NM13 >= 6 AND H1NM13 <= 8) THEN H1NM13 = .;
   IF (H1NM14 >= 6 AND H1NM14 <= 8) THEN H1NM14 = .;
   IF (H1NF1 >= 6 AND H1NF1 <= 8) THEN H1NF1 = .;
   IF (H1NF2 >= 6 AND H1NF2 <= 8) THEN H1NF2 = .;
   IF (H1NF3 = 97 OR H1NF3 = 98) THEN H1NF3 = .;
   IF (H1NF4 >= 96 AND H1NF4 <= 98) THEN H1NF4 = .;
   IF (H1NF5 >= 6 AND H1NF5 <= 8) THEN H1NF5 = .;
   IF (H1NF6 >= 6 AND H1NF6 <= 8) THEN H1NF6 = .;
   IF (H1NF7 >= 6 AND H1NF7 <= 8) THEN H1NF7 = .;
   IF (H1NF8 >= 96 AND H1NF8 <= 98) THEN H1NF8 = .;
   IF (H1NF9 >= 97 AND H1NF9 <= 99) THEN H1NF9 = .;
   IF (H1NF10 >= 6 AND H1NF10 <= 8) THEN H1NF10 = .;
   IF (H1NF11 >= 6 AND H1NF11 <= 8) THEN H1NF11 = .;
   IF (H1NF12A >= 6 AND H1NF12A <= 8) THEN H1NF12A = .;
   IF (H1NF12B >= 6 AND H1NF12B <= 8) THEN H1NF12B = .;
   IF (H1NF12C >= 6 AND H1NF12C <= 8) THEN H1NF12C = .;
   IF (H1NF12D >= 6 AND H1NF12D <= 8) THEN H1NF12D = .;
   IF (H1NF12E >= 6 AND H1NF12E <= 8) THEN H1NF12E = .;
   IF (H1NF12F >= 6 AND H1NF12F <= 8) THEN H1NF12F = .;
   IF (H1NF12G >= 6 AND H1NF12G <= 8) THEN H1NF12G = .;
   IF (H1NF12H >= 6 AND H1NF12H <= 8) THEN H1NF12H = .;
   IF (H1NF12I >= 6 AND H1NF12I <= 8) THEN H1NF12I = .;
   IF (H1NF12J >= 6 AND H1NF12J <= 8) THEN H1NF12J = .;
   IF (H1NF13 >= 6 AND H1NF13 <= 8) THEN H1NF13 = .;
   IF (H1NF14 >= 6 AND H1NF14 <= 8) THEN H1NF14 = .;
   IF (H1RM1 >= 96 AND H1RM1 <= 98) THEN H1RM1 = .;
   IF (H1RM2 >= 6 AND H1RM2 <= 8) THEN H1RM2 = .;
   IF (H1RM3 >= 996 AND H1RM3 <= 999) THEN H1RM3 = .;
   IF (H1RM4 >= 96 AND H1RM4 <= 98) THEN H1RM4 = .;
   IF (H1RM5 >= 6 AND H1RM5 <= 8) THEN H1RM5 = .;
   IF (H1RM6 >= 6 AND H1RM6 <= 8) THEN H1RM6 = .;
   IF (H1RM7 >= 996 AND H1RM7 <= 998) THEN H1RM7 = .;
   IF (H1RM8 = 7) THEN H1RM8 = .;
   IF (H1RM9 >= 6 AND H1RM9 <= 9) THEN H1RM9 = .;
   IF (H1RM10 >= 6 AND H1RM10 <= 8) THEN H1RM10 = .;
   IF (H1RM11 >= 96 AND H1RM11 <= 99) THEN H1RM11 = .;
   IF (H1RM12 >= 96 AND H1RM12 <= 99) THEN H1RM12 = .;
   IF (H1RM13 >= 96 AND H1RM13 <= 99) THEN H1RM13 = .;
   IF (H1RM14 >= 6 AND H1RM14 <= 8) THEN H1RM14 = .;
   IF (H1RF1 >= 96 AND H1RF1 <= 99) THEN H1RF1 = .;
   IF (H1RF2 >= 6 AND H1RF2 <= 9) THEN H1RF2 = .;
   IF (H1RF3 >= 996 AND H1RF3 <= 999) THEN H1RF3 = .;
   IF (H1RF4 >= 96 AND H1RF4 <= 99) THEN H1RF4 = .;
   IF (H1RF5 >= 6 AND H1RF5 <= 9) THEN H1RF5 = .;
   IF (H1RF6 >= 6 AND H1RF6 <= 9) THEN H1RF6 = .;
   IF (H1RF7 >= 996 AND H1RF7 <= 998) THEN H1RF7 = .;
   IF (H1RF8 = 7) THEN H1RF8 = .;
   IF (H1RF9 >= 6 AND H1RF9 <= 9) THEN H1RF9 = .;
   IF (H1RF10 >= 6 AND H1RF10 <= 9) THEN H1RF10 = .;
   IF (H1RF11 >= 96 AND H1RF11 <= 99) THEN H1RF11 = .;
   IF (H1RF12 >= 96 AND H1RF12 <= 99) THEN H1RF12 = .;
   IF (H1RF13 >= 96 AND H1RF13 <= 99) THEN H1RF13 = .;
   IF (H1RF14 >= 6 AND H1RF14 <= 9) THEN H1RF14 = .;
   IF (H1WP1 >= 6 AND H1WP1 <= 9) THEN H1WP1 = .;
   IF (H1WP2 >= 6 AND H1WP2 <= 9) THEN H1WP2 = .;
   IF (H1WP3 >= 6 AND H1WP3 <= 9) THEN H1WP3 = .;
   IF (H1WP4 >= 6 AND H1WP4 <= 9) THEN H1WP4 = .;
   IF (H1WP5 >= 6 AND H1WP5 <= 9) THEN H1WP5 = .;
   IF (H1WP6 >= 6 AND H1WP6 <= 9) THEN H1WP6 = .;
   IF (H1WP7 >= 6 AND H1WP7 <= 9) THEN H1WP7 = .;
   IF (H1WP8 >= 96 AND H1WP8 <= 98) THEN H1WP8 = .;
   IF (H1WP9 >= 6 AND H1WP9 <= 8) THEN H1WP9 = .;
   IF (H1WP10 >= 6 AND H1WP10 <= 8) THEN H1WP10 = .;
   IF (H1WP11 >= 6 AND H1WP11 <= 9) THEN H1WP11 = .;
   IF (H1WP12 >= 6 AND H1WP12 <= 9) THEN H1WP12 = .;
   IF (H1WP13 >= 6 AND H1WP13 <= 9) THEN H1WP13 = .;
   IF (H1WP14 >= 6 AND H1WP14 <= 9) THEN H1WP14 = .;
   IF (H1WP15 >= 6 AND H1WP15 <= 9) THEN H1WP15 = .;
   IF (H1WP16 >= 6 AND H1WP16 <= 9) THEN H1WP16 = .;
   IF (H1WP17A >= 6 AND H1WP17A <= 8) THEN H1WP17A = .;
   IF (H1WP17B >= 6 AND H1WP17B <= 8) THEN H1WP17B = .;
   IF (H1WP17C >= 6 AND H1WP17C <= 8) THEN H1WP17C = .;
   IF (H1WP17D >= 6 AND H1WP17D <= 8) THEN H1WP17D = .;
   IF (H1WP17E >= 6 AND H1WP17E <= 8) THEN H1WP17E = .;
   IF (H1WP17F >= 6 AND H1WP17F <= 8) THEN H1WP17F = .;
   IF (H1WP17G >= 6 AND H1WP17G <= 8) THEN H1WP17G = .;
   IF (H1WP17H >= 6 AND H1WP17H <= 8) THEN H1WP17H = .;
   IF (H1WP17I >= 6 AND H1WP17I <= 8) THEN H1WP17I = .;
   IF (H1WP17J >= 6 AND H1WP17J <= 8) THEN H1WP17J = .;
   IF (H1WP17K >= 6 AND H1WP17K <= 8) THEN H1WP17K = .;
   IF (H1WP18A >= 6 AND H1WP18A <= 9) THEN H1WP18A = .;
   IF (H1WP18B >= 6 AND H1WP18B <= 9) THEN H1WP18B = .;
   IF (H1WP18C >= 6 AND H1WP18C <= 9) THEN H1WP18C = .;
   IF (H1WP18D >= 6 AND H1WP18D <= 9) THEN H1WP18D = .;
   IF (H1WP18E >= 6 AND H1WP18E <= 9) THEN H1WP18E = .;
   IF (H1WP18F >= 6 AND H1WP18F <= 9) THEN H1WP18F = .;
   IF (H1WP18G >= 6 AND H1WP18G <= 9) THEN H1WP18G = .;
   IF (H1WP18H >= 6 AND H1WP18H <= 9) THEN H1WP18H = .;
   IF (H1WP18I >= 6 AND H1WP18I <= 9) THEN H1WP18I = .;
   IF (H1WP18J >= 6 AND H1WP18J <= 9) THEN H1WP18J = .;
   IF (H1WP18K >= 6 AND H1WP18K <= 9) THEN H1WP18K = .;
   IF (H1MO1 >= 6 AND H1MO1 <= 9) THEN H1MO1 = .;
   IF (H1MO2 >= 6 AND H1MO2 <= 9) THEN H1MO2 = .;
   IF (H1MO3 >= 6 AND H1MO3 <= 9) THEN H1MO3 = .;
   IF (H1MO4 >= 6 AND H1MO4 <= 9) THEN H1MO4 = .;
   IF (H1MO5 >= 6 AND H1MO5 <= 9) THEN H1MO5 = .;
   IF (H1MO6 >= 6 AND H1MO6 <= 9) THEN H1MO6 = .;
   IF (H1MO7 >= 6 AND H1MO7 <= 9) THEN H1MO7 = .;
   IF (H1MO8 >= 6 AND H1MO8 <= 9) THEN H1MO8 = .;
   IF (H1MO9 >= 6 AND H1MO9 <= 9) THEN H1MO9 = .;
   IF (H1MO10 >= 6 AND H1MO10 <= 9) THEN H1MO10 = .;
   IF (H1MO11 >= 6 AND H1MO11 <= 9) THEN H1MO11 = .;
   IF (H1MO12 >= 6 AND H1MO12 <= 9) THEN H1MO12 = .;
   IF (H1MO13 >= 6 AND H1MO13 <= 9) THEN H1MO13 = .;
   IF (H1MO14 >= 6 AND H1MO14 <= 9) THEN H1MO14 = .;
   IF (H1PF1 >= 6 AND H1PF1 <= 9) THEN H1PF1 = .;
   IF (H1PF2 >= 6 AND H1PF2 <= 9) THEN H1PF2 = .;
   IF (H1PF3 >= 6 AND H1PF3 <= 9) THEN H1PF3 = .;
   IF (H1PF4 >= 6 AND H1PF4 <= 9) THEN H1PF4 = .;
   IF (H1PF5 >= 6 AND H1PF5 <= 9) THEN H1PF5 = .;
   IF (H1PF6 = 6 OR H1PF6 = 8 OR H1PF6 = 9) THEN H1PF6 = .;
   IF (H1PF7 = 6 OR H1PF7 = 8) THEN H1PF7 = .;
   IF (H1PF8 = 6 OR H1PF8 = 8) THEN H1PF8 = .;
   IF (H1PF9 = 6 OR H1PF9 = 8 OR H1PF9 = 9) THEN H1PF9 = .;
   IF (H1PF10 = 6 OR H1PF10 = 8) THEN H1PF10 = .;
   IF (H1PF11 = 6 OR H1PF11 = 8 OR H1PF11 = 9) THEN H1PF11 = .;
   IF (H1PF12 = 6 OR H1PF12 = 8 OR H1PF12 = 9) THEN H1PF12 = .;
   IF (H1PF13 = 6 OR H1PF13 = 8) THEN H1PF13 = .;
   IF (H1PF14 = 6 OR H1PF14 = 8) THEN H1PF14 = .;
   IF (H1PF15 = 6 OR H1PF15 = 8) THEN H1PF15 = .;
   IF (H1PF16 = 6 OR H1PF16 = 8) THEN H1PF16 = .;
   IF (H1PF17 = 6 OR H1PF17 = 8 OR H1PF17 = 9) THEN H1PF17 = .;
   IF (H1PF18 = 6 OR H1PF18 = 8 OR H1PF18 = 9) THEN H1PF18 = .;
   IF (H1PF19 = 6 OR H1PF19 = 8) THEN H1PF19 = .;
   IF (H1PF20 = 6 OR H1PF20 = 8 OR H1PF20 = 9) THEN H1PF20 = .;
   IF (H1PF21 = 6 OR H1PF21 = 8 OR H1PF21 = 9) THEN H1PF21 = .;
   IF (H1PF22 = 6 OR H1PF22 = 8 OR H1PF22 = 9) THEN H1PF22 = .;
   IF (H1PF23 >= 6 AND H1PF23 <= 9) THEN H1PF23 = .;
   IF (H1PF24 >= 6 AND H1PF24 <= 9) THEN H1PF24 = .;
   IF (H1PF25 >= 6 AND H1PF25 <= 9) THEN H1PF25 = .;
   IF (H1PF26 = 6 OR H1PF26 = 8 OR H1PF26 = 9) THEN H1PF26 = .;
   IF (H1PF27 = 6 OR H1PF27 = 8) THEN H1PF27 = .;
   IF (H1PF28 = 6 OR H1PF28 = 8) THEN H1PF28 = .;
   IF (H1PF29 = 6 OR H1PF29 = 8) THEN H1PF29 = .;
   IF (H1PF30 = 6 OR H1PF30 = 8) THEN H1PF30 = .;
   IF (H1PF31 = 6 OR H1PF31 = 8) THEN H1PF31 = .;
   IF (H1PF32 = 6 OR H1PF32 = 8) THEN H1PF32 = .;
   IF (H1PF33 = 6 OR H1PF33 = 8) THEN H1PF33 = .;
   IF (H1PF34 = 6 OR H1PF34 = 8) THEN H1PF34 = .;
   IF (H1PF35 = 6 OR H1PF35 = 8) THEN H1PF35 = .;
   IF (H1PF36 = 6 OR H1PF36 = 8) THEN H1PF36 = .;
   IF (H1KQ1A >= 6 AND H1KQ1A <= 9) THEN H1KQ1A = .;
   IF (H1KQ1B >= 6 AND H1KQ1B <= 9) THEN H1KQ1B = .;
   IF (H1KQ2A >= 6 AND H1KQ2A <= 9) THEN H1KQ2A = .;
   IF (H1KQ2B >= 6 AND H1KQ2B <= 9) THEN H1KQ2B = .;
   IF (H1KQ3A >= 6 AND H1KQ3A <= 9) THEN H1KQ3A = .;
   IF (H1KQ3B >= 6 AND H1KQ3B <= 9) THEN H1KQ3B = .;
   IF (H1KQ4A >= 6 AND H1KQ4A <= 9) THEN H1KQ4A = .;
   IF (H1KQ4B >= 6 AND H1KQ4B <= 9) THEN H1KQ4B = .;
   IF (H1KQ5A >= 6 AND H1KQ5A <= 9) THEN H1KQ5A = .;
   IF (H1KQ5B >= 6 AND H1KQ5B <= 9) THEN H1KQ5B = .;
   IF (H1KQ6A >= 6 AND H1KQ6A <= 9) THEN H1KQ6A = .;
   IF (H1KQ6B >= 6 AND H1KQ6B <= 9) THEN H1KQ6B = .;
   IF (H1KQ7A >= 6 AND H1KQ7A <= 9) THEN H1KQ7A = .;
   IF (H1KQ7B >= 6 AND H1KQ7B <= 9) THEN H1KQ7B = .;
   IF (H1KQ8A >= 6 AND H1KQ8A <= 9) THEN H1KQ8A = .;
   IF (H1KQ8B >= 6 AND H1KQ8B <= 9) THEN H1KQ8B = .;
   IF (H1KQ9A >= 6 AND H1KQ9A <= 9) THEN H1KQ9A = .;
   IF (H1KQ9B >= 6 AND H1KQ9B <= 9) THEN H1KQ9B = .;
   IF (H1KQ10A >= 6 AND H1KQ10A <= 9) THEN H1KQ10A = .;
   IF (H1KQ10B >= 6 AND H1KQ10B <= 9) THEN H1KQ10B = .;
   IF (H1MF2A >= 6 AND H1MF2A <= 8) THEN H1MF2A = .;
   IF (H1MF3A = 97 OR H1MF3A = 98) THEN H1MF3A = .;
   IF (H1MF4A = 7) THEN H1MF4A = .;
   IF (H1MF5A = 7) THEN H1MF5A = .;
   IF (H1MF6A = 6 OR H1MF6A = 7) THEN H1MF6A = .;
   IF (H1MF7A >= 6 AND H1MF7A <= 9) THEN H1MF7A = .;
   IF (H1MF8A >= 6 AND H1MF8A <= 8) THEN H1MF8A = .;
   IF (H1MF9A >= 6 AND H1MF9A <= 8) THEN H1MF9A = .;
   IF (H1MF10A >= 6 AND H1MF10A <= 8) THEN H1MF10A = .;
   IF (H1MF2B = 6 OR H1MF2B = 7) THEN H1MF2B = .;
   IF (H1MF3B = 97 OR H1MF3B = 98) THEN H1MF3B = .;
   IF (H1MF4B = 7) THEN H1MF4B = .;
   IF (H1MF5B = 7) THEN H1MF5B = .;
   IF (H1MF6B = 6 OR H1MF6B = 7) THEN H1MF6B = .;
   IF (H1MF7B = 6 OR H1MF7B = 7) THEN H1MF7B = .;
   IF (H1MF8B = 6 OR H1MF8B = 7) THEN H1MF8B = .;
   IF (H1MF9B = 6 OR H1MF9B = 7) THEN H1MF9B = .;
   IF (H1MF10B = 6 OR H1MF10B = 7) THEN H1MF10B = .;
   IF (H1MF2C = 7 OR H1MF2C = 8) THEN H1MF2C = .;
   IF (H1MF3C = 97 OR H1MF3C = 98) THEN H1MF3C = .;
   IF (H1MF4C = 7) THEN H1MF4C = .;
   IF (H1MF5C = 7) THEN H1MF5C = .;
   IF (H1MF6C = 6 OR H1MF6C = 7) THEN H1MF6C = .;
   IF (H1MF7C = 6 OR H1MF7C = 7) THEN H1MF7C = .;
   IF (H1MF8C >= 6 AND H1MF8C <= 8) THEN H1MF8C = .;
   IF (H1MF9C = 6 OR H1MF9C = 7) THEN H1MF9C = .;
   IF (H1MF10C = 6 OR H1MF10C = 7) THEN H1MF10C = .;
   IF (H1MF2D = 6 OR H1MF2D = 7 OR H1MF2D = 8) THEN H1MF2D = .;
   IF (H1MF3D = 97 OR H1MF3D = 98) THEN H1MF3D = .;
   IF (H1MF4D = 7) THEN H1MF4D = .;
   IF (H1MF5D = 7) THEN H1MF5D = .;
   IF (H1MF6D = 6 OR H1MF6D = 7) THEN H1MF6D = .;
   IF (H1MF7D = 6 OR H1MF7D = 7) THEN H1MF7D = .;
   IF (H1MF8D = 6 OR H1MF8D = 7) THEN H1MF8D = .;
   IF (H1MF9D = 6 OR H1MF9D = 7) THEN H1MF9D = .;
   IF (H1MF10D = 6 OR H1MF10D = 7) THEN H1MF10D = .;
   IF (H1MF2E = 7 OR H1MF2E = 8) THEN H1MF2E = .;
   IF (H1MF3E = 97 OR H1MF3E = 98) THEN H1MF3E = .;
   IF (H1MF4E = 7) THEN H1MF4E = .;
   IF (H1MF5E = 7) THEN H1MF5E = .;
   IF (H1MF6E = 7) THEN H1MF6E = .;
   IF (H1MF7E = 7) THEN H1MF7E = .;
   IF (H1MF8E = 7) THEN H1MF8E = .;
   IF (H1MF9E = 7) THEN H1MF9E = .;
   IF (H1MF10E = 7) THEN H1MF10E = .;
   IF (H1FF2A >= 6 AND H1FF2A <= 8) THEN H1FF2A = .;
   IF (H1FF3A >= 96 AND H1FF3A <= 98) THEN H1FF3A = .;
   IF (H1FF4A = 6 OR H1FF4A = 7) THEN H1FF4A = .;
   IF (H1FF5A = 7 OR H1FF5A = 8) THEN H1FF5A = .;
   IF (H1FF6A >= 6 AND H1FF6A <= 8) THEN H1FF6A = .;
   IF (H1FF7A = 6 OR H1FF7A = 7 OR H1FF7A = 9) THEN H1FF7A = .;
   IF (H1FF8A = 6 OR H1FF8A = 7) THEN H1FF8A = .;
   IF (H1FF9A = 6 OR H1FF9A = 7) THEN H1FF9A = .;
   IF (H1FF10A = 6 OR H1FF10A = 7) THEN H1FF10A = .;
   IF (H1FF2B >= 6 AND H1FF2B <= 8) THEN H1FF2B = .;
   IF (H1FF3B >= 96 AND H1FF3B <= 98) THEN H1FF3B = .;
   IF (H1FF4B = 7) THEN H1FF4B = .;
   IF (H1FF5B = 7) THEN H1FF5B = .;
   IF (H1FF6B = 6 OR H1FF6B = 7) THEN H1FF6B = .;
   IF (H1FF7B = 6 OR H1FF7B = 7) THEN H1FF7B = .;
   IF (H1FF8B = 6 OR H1FF8B = 7) THEN H1FF8B = .;
   IF (H1FF9B = 6 OR H1FF9B = 7) THEN H1FF9B = .;
   IF (H1FF10B = 6 OR H1FF10B = 7) THEN H1FF10B = .;
   IF (H1FF2C = 7 OR H1FF2C = 8) THEN H1FF2C = .;
   IF (H1FF3C = 97 OR H1FF3C = 98) THEN H1FF3C = .;
   IF (H1FF4C = 7) THEN H1FF4C = .;
   IF (H1FF5C = 7 OR H1FF5C = 8) THEN H1FF5C = .;
   IF (H1FF6C = 7) THEN H1FF6C = .;
   IF (H1FF7C = 7) THEN H1FF7C = .;
   IF (H1FF8C = 7) THEN H1FF8C = .;
   IF (H1FF9C = 7) THEN H1FF9C = .;
   IF (H1FF10C = 7) THEN H1FF10C = .;
   IF (H1FF2D = 7) THEN H1FF2D = .;
   IF (H1FF3D >= 97 AND H1FF3D <= 99) THEN H1FF3D = .;
   IF (H1FF4D = 7) THEN H1FF4D = .;
   IF (H1FF5D = 7) THEN H1FF5D = .;
   IF (H1FF6D = 7 OR H1FF6D = 9) THEN H1FF6D = .;
   IF (H1FF7D = 7 OR H1FF7D = 9) THEN H1FF7D = .;
   IF (H1FF8D = 7 OR H1FF8D = 9) THEN H1FF8D = .;
   IF (H1FF9D = 7 OR H1FF9D = 9) THEN H1FF9D = .;
   IF (H1FF10D = 7 OR H1FF10D = 9) THEN H1FF10D = .;
   IF (H1FF2E = 7) THEN H1FF2E = .;
   IF (H1FF3E = 97) THEN H1FF3E = .;
   IF (H1FF4E = 7) THEN H1FF4E = .;
   IF (H1FF5E = 7 OR H1FF5E = 8) THEN H1FF5E = .;
   IF (H1FF6E = 7) THEN H1FF6E = .;
   IF (H1FF7E = 7) THEN H1FF7E = .;
   IF (H1FF8E = 7) THEN H1FF8E = .;
   IF (H1FF9E = 7) THEN H1FF9E = .;
   IF (H1FF10E = 7) THEN H1FF10E = .;
   IF (H1ID1A = 6 OR H1ID1A = 8 OR H1ID1A = 9) THEN H1ID1A = .;
   IF (H1ID1B = 6 OR H1ID1B = 8 OR H1ID1B = 9) THEN H1ID1B = .;
   IF (H1ID1C = 6 OR H1ID1C = 8 OR H1ID1C = 9) THEN H1ID1C = .;
   IF (H1ID1D = 6 OR H1ID1D = 8 OR H1ID1D = 9) THEN H1ID1D = .;
   IF (H1ID1E = 6 OR H1ID1E = 8 OR H1ID1E = 9) THEN H1ID1E = .;
   IF (H1ID1F = 6 OR H1ID1F = 8 OR H1ID1F = 9) THEN H1ID1F = .;
   IF (H1ID1G = 6 OR H1ID1G = 8 OR H1ID1G = 9) THEN H1ID1G = .;
   IF (H1ID1H = 6 OR H1ID1H = 8 OR H1ID1H = 9) THEN H1ID1H = .;
   IF (H1ID1I = 6 OR H1ID1I = 8 OR H1ID1I = 9) THEN H1ID1I = .;
   IF (H1ID1J = 6 OR H1ID1J = 8 OR H1ID1J = 9) THEN H1ID1J = .;
   IF (H1ID1K = 6 OR H1ID1K = 8 OR H1ID1K = 9) THEN H1ID1K = .;
   IF (H1ID1L = 6 OR H1ID1L = 8 OR H1ID1L = 9) THEN H1ID1L = .;
   IF (H1ID1M = 6 OR H1ID1M = 8 OR H1ID1M = 9) THEN H1ID1M = .;
   IF (H1ID1N = 6 OR H1ID1N = 8 OR H1ID1N = 9) THEN H1ID1N = .;
   IF (H1ID1O = 6 OR H1ID1O = 8 OR H1ID1O = 9) THEN H1ID1O = .;
   IF (H1ID1P = 6 OR H1ID1P = 8 OR H1ID1P = 9) THEN H1ID1P = .;
   IF (H1ID1Q = 6 OR H1ID1Q = 8 OR H1ID1Q = 9) THEN H1ID1Q = .;
   IF (H1ID1R = 6 OR H1ID1R = 8 OR H1ID1R = 9) THEN H1ID1R = .;
   IF (H1ID2_1 >= 96 AND H1ID2_1 <= 99) THEN H1ID2_1 = .;
   IF (H1ID2_2 >= 96 AND H1ID2_2 <= 99) THEN H1ID2_2 = .;
   IF (H1ID2_3 >= 96 AND H1ID2_3 <= 99) THEN H1ID2_3 = .;
   IF (H1ID2_4 >= 96 AND H1ID2_4 <= 99) THEN H1ID2_4 = .;
   IF (H1ID2_5 >= 96 AND H1ID2_5 <= 99) THEN H1ID2_5 = .;
   IF (H1ID2_6 >= 96 AND H1ID2_6 <= 99) THEN H1ID2_6 = .;
   IF (H1ID2_7 >= 96 AND H1ID2_7 <= 99) THEN H1ID2_7 = .;
   IF (H1ID2_8 >= 96 AND H1ID2_8 <= 99) THEN H1ID2_8 = .;
   IF (H1ID2_9 >= 96 AND H1ID2_9 <= 99) THEN H1ID2_9 = .;
   IF (H1ID2_10 >= 96 AND H1ID2_10 <= 99) THEN H1ID2_10 = .;
   IF (H1ID2_11 >= 96 AND H1ID2_11 <= 99) THEN H1ID2_11 = .;
   IF (H1ID2_12 >= 96 AND H1ID2_12 <= 99) THEN H1ID2_12 = .;
   IF (H1ID2_13 >= 96 AND H1ID2_13 <= 99) THEN H1ID2_13 = .;
   IF (H1ID2_14 >= 96 AND H1ID2_14 <= 99) THEN H1ID2_14 = .;
   IF (H1ID2_15 >= 96 AND H1ID2_15 <= 99) THEN H1ID2_15 = .;
   IF (H1ID2_16 >= 96 AND H1ID2_16 <= 99) THEN H1ID2_16 = .;
   IF (H1ID2_17 >= 96 AND H1ID2_17 <= 99) THEN H1ID2_17 = .;
   IF (H1ID5 >= 6 AND H1ID5 <= 9) THEN H1ID5 = .;
   IF (H1ID6 >= 6 AND H1ID6 <= 9) THEN H1ID6 = .;
   IF (H1RR1 = 6 OR H1RR1 = 8 OR H1RR1 = 9) THEN H1RR1 = .;
   IF (H1LR1 >= 6 AND H1LR1 <= 9) THEN H1LR1 = .;
   IF (H1LR2 >= 6 AND H1LR2 <= 9) THEN H1LR2 = .;
   IF (H1LR3 >= 6 AND H1LR3 <= 9) THEN H1LR3 = .;
   IF (H1LR4 >= 6 AND H1LR4 <= 9) THEN H1LR4 = .;
   IF (H1CO1 = 6 OR H1CO1 = 8 OR H1CO1 = 9) THEN H1CO1 = .;
   IF (H1CO2M >= 96 AND H1CO2M <= 99) THEN H1CO2M = .;
   IF (H1CO2Y >= 96 AND H1CO2Y <= 99) THEN H1CO2Y = .;
   IF (H1CO3 >= 6 AND H1CO3 <= 8) THEN H1CO3 = .;
   IF (H1CO4A >= 96 AND H1CO4A <= 98) THEN H1CO4A = .;
   IF (H1CO4B >= 96 AND H1CO4B <= 99) THEN H1CO4B = .;
   IF (H1CO4C >= 96 AND H1CO4C <= 99) THEN H1CO4C = .;
   IF (H1CO5M >= 96 AND H1CO5M <= 99) THEN H1CO5M = .;
   IF (H1CO5Y >= 96 AND H1CO5Y <= 99) THEN H1CO5Y = .;
   IF (H1CO6 >= 6 AND H1CO6 <= 8) THEN H1CO6 = .;
   IF (H1CO7A >= 96 AND H1CO7A <= 99) THEN H1CO7A = .;
   IF (H1CO7B >= 96 AND H1CO7B <= 99) THEN H1CO7B = .;
   IF (H1CO7C >= 96 AND H1CO7C <= 99) THEN H1CO7C = .;
   IF (H1CO8 >= 6 AND H1CO8 <= 8) THEN H1CO8 = .;
   IF (H1CO9 = 6 OR H1CO9 = 7) THEN H1CO9 = .;
   IF (H1CO10 >= 6 AND H1CO10 <= 8) THEN H1CO10 = .;
   IF (H1CO11 = 6 OR H1CO11 = 7) THEN H1CO11 = .;
   IF (H1CO12A >= 96 AND H1CO12A <= 98) THEN H1CO12A = .;
   IF (H1CO12B >= 96 AND H1CO12B <= 98) THEN H1CO12B = .;
   IF (H1CO12C >= 96 AND H1CO12C <= 98) THEN H1CO12C = .;
   IF (H1CO13 >= 6 AND H1CO13 <= 8) THEN H1CO13 = .;
   IF (H1CO14M >= 96 AND H1CO14M <= 98) THEN H1CO14M = .;
   IF (H1CO14Y >= 96 AND H1CO14Y <= 98) THEN H1CO14Y = .;
   IF (H1CO15 = 7) THEN H1CO15 = .;
   IF (H1CO16A >= 6 AND H1CO16A <= 8) THEN H1CO16A = .;
   IF (H1CO16B >= 6 AND H1CO16B <= 8) THEN H1CO16B = .;
   IF (H1CO16C >= 6 AND H1CO16C <= 8) THEN H1CO16C = .;
   IF (H1CO16D >= 6 AND H1CO16D <= 8) THEN H1CO16D = .;
   IF (H1CO16E >= 6 AND H1CO16E <= 8) THEN H1CO16E = .;
   IF (H1CO16F >= 6 AND H1CO16F <= 8) THEN H1CO16F = .;
   IF (H1CO16G >= 6 AND H1CO16G <= 8) THEN H1CO16G = .;
   IF (H1CO16H >= 6 AND H1CO16H <= 8) THEN H1CO16H = .;
   IF (H1CO16I = 7 OR H1CO16I = 8) THEN H1CO16I = .;
   IF (H1CO16J = 7 OR H1CO16J = 8) THEN H1CO16J = .;
   IF (H1CO17A = 6 OR H1CO17A = 7) THEN H1CO17A = .;
   IF (H1CO17B = 6 OR H1CO17B = 7) THEN H1CO17B = .;
   IF (H1CO17C = 6 OR H1CO17C = 7) THEN H1CO17C = .;
   IF (H1CO17D = 6 OR H1CO17D = 7) THEN H1CO17D = .;
   IF (H1CO17E = 7) THEN H1CO17E = .;
   IF (H1CO17F = 6 OR H1CO17F = 7) THEN H1CO17F = .;
   IF (H1CO17G = 7) THEN H1CO17G = .;
   IF (H1CO17H = 6 OR H1CO17H = 7) THEN H1CO17H = .;
   IF (H1CO17I = 7) THEN H1CO17I = .;
   IF (H1CO17J = 7) THEN H1CO17J = .;
   IF (H1RI1M_1 >= 96 AND H1RI1M_1 <= 99) THEN H1RI1M_1 = .;
   IF (H1RI1Y_1 >= 96 AND H1RI1Y_1 <= 99) THEN H1RI1Y_1 = .;
   IF (H1RI2_1 >= 96 AND H1RI2_1 <= 98) THEN H1RI2_1 = .;
   IF (H1RI3_1 >= 96 AND H1RI3_1 <= 98) THEN H1RI3_1 = .;
   IF (H1RI4_1 >= 96 AND H1RI4_1 <= 98) THEN H1RI4_1 = .;
   IF (H1RI5A_1 >= 96 AND H1RI5A_1 <= 98) THEN H1RI5A_1 = .;
   IF (H1RI6_1 >= 6 AND H1RI6_1 <= 8) THEN H1RI6_1 = .;
   IF (H1RI7_1 >= 6 AND H1RI7_1 <= 8) THEN H1RI7_1 = .;
   IF (H1RI8A_1 >= 6 AND H1RI8A_1 <= 8) THEN H1RI8A_1 = .;
   IF (H1RI8B_1 >= 6 AND H1RI8B_1 <= 8) THEN H1RI8B_1 = .;
   IF (H1RI8C_1 >= 6 AND H1RI8C_1 <= 8) THEN H1RI8C_1 = .;
   IF (H1RI8D_1 >= 6 AND H1RI8D_1 <= 8) THEN H1RI8D_1 = .;
   IF (H1RI8E_1 >= 6 AND H1RI8E_1 <= 8) THEN H1RI8E_1 = .;
   IF (H1RI8F_1 >= 6 AND H1RI8F_1 <= 8) THEN H1RI8F_1 = .;
   IF (H1RI8G_1 >= 6 AND H1RI8G_1 <= 8) THEN H1RI8G_1 = .;
   IF (H1RI8H_1 >= 6 AND H1RI8H_1 <= 8) THEN H1RI8H_1 = .;
   IF (H1RI9_1 >= 96 AND H1RI9_1 <= 98) THEN H1RI9_1 = .;
   IF (H1RI10_1 >= 6 AND H1RI10_1 <= 8) THEN H1RI10_1 = .;
   IF (H1RI11M1 >= 96 AND H1RI11M1 <= 98) THEN H1RI11M1 = .;
   IF (H1RI11Y1 >= 96 AND H1RI11Y1 <= 99) THEN H1RI11Y1 = .;
   IF (H1RI12_1 >= 96 AND H1RI12_1 <= 99) THEN H1RI12_1 = .;
   IF (H1RI13_1 >= 6 AND H1RI13_1 <= 8) THEN H1RI13_1 = .;
   IF (H1RI14_1 >= 6 AND H1RI14_1 <= 8) THEN H1RI14_1 = .;
   IF (H1RI15_1 >= 96 AND H1RI15_1 <= 98) THEN H1RI15_1 = .;
   IF (H1RI16_1 >= 6 AND H1RI16_1 <= 9) THEN H1RI16_1 = .;
   IF (H1RI17A1 >= 6 AND H1RI17A1 <= 8) THEN H1RI17A1 = .;
   IF (H1RI17B1 >= 6 AND H1RI17B1 <= 8) THEN H1RI17B1 = .;
   IF (H1RI17C1 >= 6 AND H1RI17C1 <= 8) THEN H1RI17C1 = .;
   IF (H1RI17D1 >= 6 AND H1RI17D1 <= 8) THEN H1RI17D1 = .;
   IF (H1RI17E1 >= 6 AND H1RI17E1 <= 8) THEN H1RI17E1 = .;
   IF (H1RI17F1 >= 6 AND H1RI17F1 <= 8) THEN H1RI17F1 = .;
   IF (H1RI18A1 >= 6 AND H1RI18A1 <= 9) THEN H1RI18A1 = .;
   IF (H1RI18B1 >= 6 AND H1RI18B1 <= 9) THEN H1RI18B1 = .;
   IF (H1RI18C1 >= 6 AND H1RI18C1 <= 9) THEN H1RI18C1 = .;
   IF (H1RI18D1 >= 6 AND H1RI18D1 <= 9) THEN H1RI18D1 = .;
   IF (H1RI18E1 >= 6 AND H1RI18E1 <= 9) THEN H1RI18E1 = .;
   IF (H1RI19A1 = 7 OR H1RI19A1 = 8) THEN H1RI19A1 = .;
   IF (H1RI19B1 = 7 OR H1RI19B1 = 8) THEN H1RI19B1 = .;
   IF (H1RI19C1 = 7 OR H1RI19C1 = 8) THEN H1RI19C1 = .;
   IF (H1RI19D1 = 7 OR H1RI19D1 = 8) THEN H1RI19D1 = .;
   IF (H1RI19E1 = 7 OR H1RI19E1 = 8) THEN H1RI19E1 = .;
   IF (H1RI19F1 = 7 OR H1RI19F1 = 8) THEN H1RI19F1 = .;
   IF (H1RI19G1 = 7 OR H1RI19G1 = 8) THEN H1RI19G1 = .;
   IF (H1RI20_1 >= 6 AND H1RI20_1 <= 8) THEN H1RI20_1 = .;
   IF (H1RI21A1 >= 6 AND H1RI21A1 <= 9) THEN H1RI21A1 = .;
   IF (H1RI21B1 >= 6 AND H1RI21B1 <= 9) THEN H1RI21B1 = .;
   IF (H1RI21C1 >= 6 AND H1RI21C1 <= 9) THEN H1RI21C1 = .;
   IF (H1RI21D1 >= 6 AND H1RI21D1 <= 9) THEN H1RI21D1 = .;
   IF (H1RI21E1 >= 6 AND H1RI21E1 <= 9) THEN H1RI21E1 = .;
   IF (H1RI21F1 >= 6 AND H1RI21F1 <= 9) THEN H1RI21F1 = .;
   IF (H1RI21G1 >= 6 AND H1RI21G1 <= 9) THEN H1RI21G1 = .;
   IF (H1RI21H1 >= 6 AND H1RI21H1 <= 9) THEN H1RI21H1 = .;
   IF (H1RI21I1 >= 6 AND H1RI21I1 <= 9) THEN H1RI21I1 = .;
   IF (H1RI21J1 >= 6 AND H1RI21J1 <= 9) THEN H1RI21J1 = .;
   IF (H1RI21K1 >= 6 AND H1RI21K1 <= 9) THEN H1RI21K1 = .;
   IF (H1RI21L1 >= 6 AND H1RI21L1 <= 9) THEN H1RI21L1 = .;
   IF (H1RI21M1 >= 6 AND H1RI21M1 <= 9) THEN H1RI21M1 = .;
   IF (H1RI21N1 >= 6 AND H1RI21N1 <= 9) THEN H1RI21N1 = .;
   IF (H1RI21O1 >= 6 AND H1RI21O1 <= 9) THEN H1RI21O1 = .;
   IF (H1RI21P1 >= 6 AND H1RI21P1 <= 9) THEN H1RI21P1 = .;
   IF (H1RI21Q1 >= 6 AND H1RI21Q1 <= 9) THEN H1RI21Q1 = .;
   IF (H1RI21R1 >= 6 AND H1RI21R1 <= 9) THEN H1RI21R1 = .;
   IF (H1RI22A1 = 97) THEN H1RI22A1 = .;
   IF (H1RI22B1 = 97) THEN H1RI22B1 = .;
   IF (H1RI22C1 = 97) THEN H1RI22C1 = .;
   IF (H1RI22D1 = 97) THEN H1RI22D1 = .;
   IF (H1RI22E1 = 97) THEN H1RI22E1 = .;
   IF (H1RI22F1 = 97) THEN H1RI22F1 = .;
   IF (H1RI22G1 = 97) THEN H1RI22G1 = .;
   IF (H1RI22H1 = 97) THEN H1RI22H1 = .;
   IF (H1RI22I1 = 97) THEN H1RI22I1 = .;
   IF (H1RI22J1 = 97) THEN H1RI22J1 = .;
   IF (H1RI22K1 = 97) THEN H1RI22K1 = .;
   IF (H1RI22L1 = 97) THEN H1RI22L1 = .;
   IF (H1RI22M1 = 97) THEN H1RI22M1 = .;
   IF (H1RI22N1 = 97) THEN H1RI22N1 = .;
   IF (H1RI22O1 = 97) THEN H1RI22O1 = .;
   IF (H1RI22P1 = 97) THEN H1RI22P1 = .;
   IF (H1RI22Q1 = 97) THEN H1RI22Q1 = .;
   IF (H1RI22R1 = 97) THEN H1RI22R1 = .;
   IF (H1RI24A1 = 6 OR H1RI24A1 = 7) THEN H1RI24A1 = .;
   IF (H1RI25M1 >= 96 AND H1RI25M1 <= 99) THEN H1RI25M1 = .;
   IF (H1RI25Y1 >= 96 AND H1RI25Y1 <= 99) THEN H1RI25Y1 = .;
   IF (H1RI26M1 >= 96 AND H1RI26M1 <= 99) THEN H1RI26M1 = .;
   IF (H1RI26Y1 >= 96 AND H1RI26Y1 <= 99) THEN H1RI26Y1 = .;
   IF (H1RI27_1 >= 6 AND H1RI27_1 <= 8) THEN H1RI27_1 = .;
   IF (H1RI28_1 = 7) THEN H1RI28_1 = .;
   IF (H1RI29A1 = 97) THEN H1RI29A1 = .;
   IF (H1RI29B1 >= 96 AND H1RI29B1 <= 98) THEN H1RI29B1 = .;
   IF (H1RI29C1 >= 96 AND H1RI29C1 <= 98) THEN H1RI29C1 = .;
   IF (H1RI30_1 = 7) THEN H1RI30_1 = .;
   IF (H1RI31_1 >= 6 AND H1RI31_1 <= 8) THEN H1RI31_1 = .;
   IF (H1RI32_1 = 7) THEN H1RI32_1 = .;
   IF (H1RI33A1 >= 96 AND H1RI33A1 <= 98) THEN H1RI33A1 = .;
   IF (H1RI33B1 = 97 OR H1RI33B1 = 98) THEN H1RI33B1 = .;
   IF (H1RI33C1 = 96 OR H1RI33C1 = 97) THEN H1RI33C1 = .;
   IF (H1RI34_1 = 7) THEN H1RI34_1 = .;
   IF (H1RI35_1 = 6 OR H1RI35_1 = 7) THEN H1RI35_1 = .;
   IF (H1RI36_1 >= 6 AND H1RI36_1 <= 8) THEN H1RI36_1 = .;
   IF (H1RI37_1 = 6 OR H1RI37_1 = 7) THEN H1RI37_1 = .;
   IF (H1RI38A1 >= 96 AND H1RI38A1 <= 98) THEN H1RI38A1 = .;
   IF (H1RI38B1 >= 96 AND H1RI38B1 <= 98) THEN H1RI38B1 = .;
   IF (H1RI38C1 >= 96 AND H1RI38C1 <= 98) THEN H1RI38C1 = .;
   IF (H1RI39_1 = 7) THEN H1RI39_1 = .;
   IF (H1RI40_1 = 7 OR H1RI40_1 = 8) THEN H1RI40_1 = .;
   IF (H1RI41_1 >= 9996 AND H1RI41_1 <= 9998) THEN H1RI41_1 = .;
   IF (H1RI1M_2 >= 96 AND H1RI1M_2 <= 99) THEN H1RI1M_2 = .;
   IF (H1RI1Y_2 >= 96 AND H1RI1Y_2 <= 99) THEN H1RI1Y_2 = .;
   IF (H1RI2_2 >= 96 AND H1RI2_2 <= 99) THEN H1RI2_2 = .;
   IF (H1RI3_2 >= 96 AND H1RI3_2 <= 99) THEN H1RI3_2 = .;
   IF (H1RI4_2 >= 96 AND H1RI4_2 <= 99) THEN H1RI4_2 = .;
   IF (H1RI5A_2 >= 96 AND H1RI5A_2 <= 99) THEN H1RI5A_2 = .;
   IF (H1RI6_2 >= 6 AND H1RI6_2 <= 9) THEN H1RI6_2 = .;
   IF (H1RI7_2 >= 6 AND H1RI7_2 <= 9) THEN H1RI7_2 = .;
   IF (H1RI8A_2 >= 6 AND H1RI8A_2 <= 9) THEN H1RI8A_2 = .;
   IF (H1RI8B_2 >= 6 AND H1RI8B_2 <= 9) THEN H1RI8B_2 = .;
   IF (H1RI8C_2 >= 6 AND H1RI8C_2 <= 9) THEN H1RI8C_2 = .;
   IF (H1RI8D_2 >= 6 AND H1RI8D_2 <= 9) THEN H1RI8D_2 = .;
   IF (H1RI8E_2 >= 6 AND H1RI8E_2 <= 9) THEN H1RI8E_2 = .;
   IF (H1RI8F_2 >= 6 AND H1RI8F_2 <= 9) THEN H1RI8F_2 = .;
   IF (H1RI8G_2 >= 6 AND H1RI8G_2 <= 9) THEN H1RI8G_2 = .;
   IF (H1RI8H_2 >= 6 AND H1RI8H_2 <= 9) THEN H1RI8H_2 = .;
   IF (H1RI9_2 >= 96 AND H1RI9_2 <= 99) THEN H1RI9_2 = .;
   IF (H1RI10_2 >= 6 AND H1RI10_2 <= 9) THEN H1RI10_2 = .;
   IF (H1RI11M2 >= 96 AND H1RI11M2 <= 99) THEN H1RI11M2 = .;
   IF (H1RI11Y2 >= 96 AND H1RI11Y2 <= 99) THEN H1RI11Y2 = .;
   IF (H1RI12_2 >= 96 AND H1RI12_2 <= 99) THEN H1RI12_2 = .;
   IF (H1RI13_2 = 7 OR H1RI13_2 = 8) THEN H1RI13_2 = .;
   IF (H1RI14_2 >= 6 AND H1RI14_2 <= 9) THEN H1RI14_2 = .;
   IF (H1RI15_2 >= 96 AND H1RI15_2 <= 99) THEN H1RI15_2 = .;
   IF (H1RI16_2 >= 6 AND H1RI16_2 <= 9) THEN H1RI16_2 = .;
   IF (H1RI17A2 = 7 OR H1RI17A2 = 8) THEN H1RI17A2 = .;
   IF (H1RI17B2 = 7 OR H1RI17B2 = 8) THEN H1RI17B2 = .;
   IF (H1RI17C2 = 7 OR H1RI17C2 = 8) THEN H1RI17C2 = .;
   IF (H1RI17D2 = 7 OR H1RI17D2 = 8) THEN H1RI17D2 = .;
   IF (H1RI17E2 = 7 OR H1RI17E2 = 8) THEN H1RI17E2 = .;
   IF (H1RI17F2 = 7 OR H1RI17F2 = 8) THEN H1RI17F2 = .;
   IF (H1RI18A2 >= 6 AND H1RI18A2 <= 9) THEN H1RI18A2 = .;
   IF (H1RI18B2 >= 6 AND H1RI18B2 <= 9) THEN H1RI18B2 = .;
   IF (H1RI18C2 >= 6 AND H1RI18C2 <= 9) THEN H1RI18C2 = .;
   IF (H1RI18D2 >= 6 AND H1RI18D2 <= 9) THEN H1RI18D2 = .;
   IF (H1RI18E2 >= 6 AND H1RI18E2 <= 9) THEN H1RI18E2 = .;
   IF (H1RI19A2 = 7 OR H1RI19A2 = 8) THEN H1RI19A2 = .;
   IF (H1RI19B2 = 7 OR H1RI19B2 = 8) THEN H1RI19B2 = .;
   IF (H1RI19C2 = 7 OR H1RI19C2 = 8) THEN H1RI19C2 = .;
   IF (H1RI19D2 = 7 OR H1RI19D2 = 8) THEN H1RI19D2 = .;
   IF (H1RI19E2 = 7 OR H1RI19E2 = 8) THEN H1RI19E2 = .;
   IF (H1RI19F2 = 7 OR H1RI19F2 = 8) THEN H1RI19F2 = .;
   IF (H1RI19G2 = 7 OR H1RI19G2 = 8) THEN H1RI19G2 = .;
   IF (H1RI20_2 >= 6 AND H1RI20_2 <= 8) THEN H1RI20_2 = .;
   IF (H1RI21A2 >= 6 AND H1RI21A2 <= 9) THEN H1RI21A2 = .;
   IF (H1RI21B2 >= 6 AND H1RI21B2 <= 9) THEN H1RI21B2 = .;
   IF (H1RI21C2 >= 6 AND H1RI21C2 <= 9) THEN H1RI21C2 = .;
   IF (H1RI21D2 >= 6 AND H1RI21D2 <= 9) THEN H1RI21D2 = .;
   IF (H1RI21E2 >= 6 AND H1RI21E2 <= 9) THEN H1RI21E2 = .;
   IF (H1RI21F2 >= 6 AND H1RI21F2 <= 9) THEN H1RI21F2 = .;
   IF (H1RI21G2 >= 6 AND H1RI21G2 <= 9) THEN H1RI21G2 = .;
   IF (H1RI21H2 >= 6 AND H1RI21H2 <= 9) THEN H1RI21H2 = .;
   IF (H1RI21I2 >= 6 AND H1RI21I2 <= 9) THEN H1RI21I2 = .;
   IF (H1RI21J2 >= 6 AND H1RI21J2 <= 9) THEN H1RI21J2 = .;
   IF (H1RI21K2 >= 6 AND H1RI21K2 <= 9) THEN H1RI21K2 = .;
   IF (H1RI21L2 >= 6 AND H1RI21L2 <= 9) THEN H1RI21L2 = .;
   IF (H1RI21M2 >= 6 AND H1RI21M2 <= 9) THEN H1RI21M2 = .;
   IF (H1RI21N2 >= 6 AND H1RI21N2 <= 9) THEN H1RI21N2 = .;
   IF (H1RI21O2 >= 6 AND H1RI21O2 <= 9) THEN H1RI21O2 = .;
   IF (H1RI21P2 >= 6 AND H1RI21P2 <= 9) THEN H1RI21P2 = .;
   IF (H1RI21Q2 >= 6 AND H1RI21Q2 <= 9) THEN H1RI21Q2 = .;
   IF (H1RI21R2 >= 6 AND H1RI21R2 <= 9) THEN H1RI21R2 = .;
   IF (H1RI22A2 = 97) THEN H1RI22A2 = .;
   IF (H1RI22B2 = 97) THEN H1RI22B2 = .;
   IF (H1RI22C2 = 97) THEN H1RI22C2 = .;
   IF (H1RI22D2 = 97) THEN H1RI22D2 = .;
   IF (H1RI22E2 = 97) THEN H1RI22E2 = .;
   IF (H1RI22F2 = 97) THEN H1RI22F2 = .;
   IF (H1RI22G2 = 97) THEN H1RI22G2 = .;
   IF (H1RI22H2 = 97) THEN H1RI22H2 = .;
   IF (H1RI22I2 = 97) THEN H1RI22I2 = .;
   IF (H1RI22J2 = 97) THEN H1RI22J2 = .;
   IF (H1RI22K2 = 97) THEN H1RI22K2 = .;
   IF (H1RI22L2 = 97) THEN H1RI22L2 = .;
   IF (H1RI22M2 = 97) THEN H1RI22M2 = .;
   IF (H1RI22N2 = 97) THEN H1RI22N2 = .;
   IF (H1RI22O2 = 97) THEN H1RI22O2 = .;
   IF (H1RI22P2 = 97) THEN H1RI22P2 = .;
   IF (H1RI22Q2 = 97) THEN H1RI22Q2 = .;
   IF (H1RI22R2 = 97) THEN H1RI22R2 = .;
   IF (H1RI24A2 >= 6 AND H1RI24A2 <= 8) THEN H1RI24A2 = .;
   IF (H1RI25M2 >= 96 AND H1RI25M2 <= 98) THEN H1RI25M2 = .;
   IF (H1RI25Y2 >= 96 AND H1RI25Y2 <= 98) THEN H1RI25Y2 = .;
   IF (H1RI26M2 >= 96 AND H1RI26M2 <= 98) THEN H1RI26M2 = .;
   IF (H1RI26Y2 >= 96 AND H1RI26Y2 <= 98) THEN H1RI26Y2 = .;
   IF (H1RI27_2 = 7 OR H1RI27_2 = 8) THEN H1RI27_2 = .;
   IF (H1RI28_2 = 6 OR H1RI28_2 = 7) THEN H1RI28_2 = .;
   IF (H1RI29A2 = 97) THEN H1RI29A2 = .;
   IF (H1RI29B2 = 97) THEN H1RI29B2 = .;
   IF (H1RI29C2 = 97) THEN H1RI29C2 = .;
   IF (H1RI30_2 = 7) THEN H1RI30_2 = .;
   IF (H1RI31_2 = 7 OR H1RI31_2 = 8) THEN H1RI31_2 = .;
   IF (H1RI32_2 = 7) THEN H1RI32_2 = .;
   IF (H1RI33A2 = 97) THEN H1RI33A2 = .;
   IF (H1RI33B2 = 97 OR H1RI33B2 = 98) THEN H1RI33B2 = .;
   IF (H1RI33C2 >= 96 AND H1RI33C2 <= 98) THEN H1RI33C2 = .;
   IF (H1RI34_2 = 7) THEN H1RI34_2 = .;
   IF (H1RI35_2 = 7) THEN H1RI35_2 = .;
   IF (H1RI36_2 = 7) THEN H1RI36_2 = .;
   IF (H1RI37_2 = 7) THEN H1RI37_2 = .;
   IF (H1RI38A2 = 97) THEN H1RI38A2 = .;
   IF (H1RI38B2 = 96 OR H1RI38B2 = 97) THEN H1RI38B2 = .;
   IF (H1RI38C2 = 97 OR H1RI38C2 = 98) THEN H1RI38C2 = .;
   IF (H1RI39_2 = 7) THEN H1RI39_2 = .;
   IF (H1RI40_2 = 7) THEN H1RI40_2 = .;
   IF (H1RI41_2 >= 9996 AND H1RI41_2 <= 9998) THEN H1RI41_2 = .;
   IF (H1RI1M_3 >= 96 AND H1RI1M_3 <= 98) THEN H1RI1M_3 = .;
   IF (H1RI1Y_3 >= 96 AND H1RI1Y_3 <= 98) THEN H1RI1Y_3 = .;
   IF (H1RI2_3 >= 96 AND H1RI2_3 <= 98) THEN H1RI2_3 = .;
   IF (H1RI3_3 >= 96 AND H1RI3_3 <= 98) THEN H1RI3_3 = .;
   IF (H1RI4_3 >= 96 AND H1RI4_3 <= 98) THEN H1RI4_3 = .;
   IF (H1RI5A_3 >= 96 AND H1RI5A_3 <= 98) THEN H1RI5A_3 = .;
   IF (H1RI6_3 >= 6 AND H1RI6_3 <= 8) THEN H1RI6_3 = .;
   IF (H1RI7_3 >= 6 AND H1RI7_3 <= 8) THEN H1RI7_3 = .;
   IF (H1RI8A_3 >= 6 AND H1RI8A_3 <= 8) THEN H1RI8A_3 = .;
   IF (H1RI8B_3 >= 6 AND H1RI8B_3 <= 8) THEN H1RI8B_3 = .;
   IF (H1RI8C_3 >= 6 AND H1RI8C_3 <= 8) THEN H1RI8C_3 = .;
   IF (H1RI8D_3 >= 6 AND H1RI8D_3 <= 8) THEN H1RI8D_3 = .;
   IF (H1RI8E_3 >= 6 AND H1RI8E_3 <= 8) THEN H1RI8E_3 = .;
   IF (H1RI8F_3 >= 6 AND H1RI8F_3 <= 8) THEN H1RI8F_3 = .;
   IF (H1RI8G_3 >= 6 AND H1RI8G_3 <= 8) THEN H1RI8G_3 = .;
   IF (H1RI8H_3 >= 6 AND H1RI8H_3 <= 8) THEN H1RI8H_3 = .;
   IF (H1RI9_3 >= 96 AND H1RI9_3 <= 98) THEN H1RI9_3 = .;
   IF (H1RI10_3 >= 6 AND H1RI10_3 <= 8) THEN H1RI10_3 = .;
   IF (H1RI11M3 >= 96 AND H1RI11M3 <= 98) THEN H1RI11M3 = .;
   IF (H1RI11Y3 >= 96 AND H1RI11Y3 <= 98) THEN H1RI11Y3 = .;
   IF (H1RI12_3 >= 96 AND H1RI12_3 <= 98) THEN H1RI12_3 = .;
   IF (H1RI13_3 = 7 OR H1RI13_3 = 8) THEN H1RI13_3 = .;
   IF (H1RI14_3 >= 6 AND H1RI14_3 <= 8) THEN H1RI14_3 = .;
   IF (H1RI15_3 >= 96 AND H1RI15_3 <= 98) THEN H1RI15_3 = .;
   IF (H1RI16_3 >= 6 AND H1RI16_3 <= 8) THEN H1RI16_3 = .;
   IF (H1RI17A3 = 7 OR H1RI17A3 = 8) THEN H1RI17A3 = .;
   IF (H1RI17B3 = 7 OR H1RI17B3 = 8) THEN H1RI17B3 = .;
   IF (H1RI17C3 = 7 OR H1RI17C3 = 8) THEN H1RI17C3 = .;
   IF (H1RI17D3 = 7 OR H1RI17D3 = 8) THEN H1RI17D3 = .;
   IF (H1RI17E3 = 7 OR H1RI17E3 = 8) THEN H1RI17E3 = .;
   IF (H1RI17F3 = 7 OR H1RI17F3 = 8) THEN H1RI17F3 = .;
   IF (H1RI18A3 >= 6 AND H1RI18A3 <= 8) THEN H1RI18A3 = .;
   IF (H1RI18B3 >= 6 AND H1RI18B3 <= 8) THEN H1RI18B3 = .;
   IF (H1RI18C3 >= 6 AND H1RI18C3 <= 8) THEN H1RI18C3 = .;
   IF (H1RI18D3 >= 6 AND H1RI18D3 <= 8) THEN H1RI18D3 = .;
   IF (H1RI18E3 >= 6 AND H1RI18E3 <= 8) THEN H1RI18E3 = .;
   IF (H1RI19A3 = 7 OR H1RI19A3 = 8) THEN H1RI19A3 = .;
   IF (H1RI19B3 = 7 OR H1RI19B3 = 8) THEN H1RI19B3 = .;
   IF (H1RI19C3 = 7 OR H1RI19C3 = 8) THEN H1RI19C3 = .;
   IF (H1RI19D3 = 7 OR H1RI19D3 = 8) THEN H1RI19D3 = .;
   IF (H1RI19E3 = 7 OR H1RI19E3 = 8) THEN H1RI19E3 = .;
   IF (H1RI19F3 = 7 OR H1RI19F3 = 8) THEN H1RI19F3 = .;
   IF (H1RI19G3 = 7 OR H1RI19G3 = 8) THEN H1RI19G3 = .;
   IF (H1RI20_3 >= 6 AND H1RI20_3 <= 8) THEN H1RI20_3 = .;
   IF (H1RI21A3 >= 6 AND H1RI21A3 <= 8) THEN H1RI21A3 = .;
   IF (H1RI21B3 >= 6 AND H1RI21B3 <= 8) THEN H1RI21B3 = .;
   IF (H1RI21C3 >= 6 AND H1RI21C3 <= 8) THEN H1RI21C3 = .;
   IF (H1RI21D3 >= 6 AND H1RI21D3 <= 8) THEN H1RI21D3 = .;
   IF (H1RI21E3 >= 6 AND H1RI21E3 <= 8) THEN H1RI21E3 = .;
   IF (H1RI21F3 >= 6 AND H1RI21F3 <= 8) THEN H1RI21F3 = .;
   IF (H1RI21G3 >= 6 AND H1RI21G3 <= 8) THEN H1RI21G3 = .;
   IF (H1RI21H3 >= 6 AND H1RI21H3 <= 8) THEN H1RI21H3 = .;
   IF (H1RI21I3 >= 6 AND H1RI21I3 <= 8) THEN H1RI21I3 = .;
   IF (H1RI21J3 >= 6 AND H1RI21J3 <= 8) THEN H1RI21J3 = .;
   IF (H1RI21K3 >= 6 AND H1RI21K3 <= 8) THEN H1RI21K3 = .;
   IF (H1RI21L3 >= 6 AND H1RI21L3 <= 8) THEN H1RI21L3 = .;
   IF (H1RI21M3 >= 6 AND H1RI21M3 <= 8) THEN H1RI21M3 = .;
   IF (H1RI21N3 >= 6 AND H1RI21N3 <= 8) THEN H1RI21N3 = .;
   IF (H1RI21O3 >= 6 AND H1RI21O3 <= 8) THEN H1RI21O3 = .;
   IF (H1RI21P3 >= 6 AND H1RI21P3 <= 8) THEN H1RI21P3 = .;
   IF (H1RI21Q3 >= 6 AND H1RI21Q3 <= 8) THEN H1RI21Q3 = .;
   IF (H1RI21R3 >= 6 AND H1RI21R3 <= 8) THEN H1RI21R3 = .;
   IF (H1RI22A3 = 97) THEN H1RI22A3 = .;
   IF (H1RI22B3 = 97) THEN H1RI22B3 = .;
   IF (H1RI22C3 = 97) THEN H1RI22C3 = .;
   IF (H1RI22D3 = 97) THEN H1RI22D3 = .;
   IF (H1RI22E3 = 97) THEN H1RI22E3 = .;
   IF (H1RI22F3 = 97) THEN H1RI22F3 = .;
   IF (H1RI22G3 = 97) THEN H1RI22G3 = .;
   IF (H1RI22H3 = 97) THEN H1RI22H3 = .;
   IF (H1RI22I3 = 97) THEN H1RI22I3 = .;
   IF (H1RI22J3 = 97) THEN H1RI22J3 = .;
   IF (H1RI22K3 = 97) THEN H1RI22K3 = .;
   IF (H1RI22L3 = 97) THEN H1RI22L3 = .;
   IF (H1RI22M3 = 97) THEN H1RI22M3 = .;
   IF (H1RI22N3 = 97) THEN H1RI22N3 = .;
   IF (H1RI22O3 = 97) THEN H1RI22O3 = .;
   IF (H1RI22P3 = 97) THEN H1RI22P3 = .;
   IF (H1RI22Q3 = 97) THEN H1RI22Q3 = .;
   IF (H1RI22R3 = 97) THEN H1RI22R3 = .;
   IF (H1RI24A3 = 6 OR H1RI24A3 = 7) THEN H1RI24A3 = .;
   IF (H1RI25M3 >= 96 AND H1RI25M3 <= 98) THEN H1RI25M3 = .;
   IF (H1RI25Y3 = 97 OR H1RI25Y3 = 98) THEN H1RI25Y3 = .;
   IF (H1RI26M3 >= 96 AND H1RI26M3 <= 98) THEN H1RI26M3 = .;
   IF (H1RI26Y3 >= 96 AND H1RI26Y3 <= 98) THEN H1RI26Y3 = .;
   IF (H1RI27_3 = 7 OR H1RI27_3 = 8) THEN H1RI27_3 = .;
   IF (H1RI28_3 = 7) THEN H1RI28_3 = .;
   IF (H1RI29A3 = 97) THEN H1RI29A3 = .;
   IF (H1RI29B3 = 97) THEN H1RI29B3 = .;
   IF (H1RI29C3 = 97) THEN H1RI29C3 = .;
   IF (H1RI30_3 = 7) THEN H1RI30_3 = .;
   IF (H1RI31_3 = 7) THEN H1RI31_3 = .;
   IF (H1RI32_3 = 7) THEN H1RI32_3 = .;
   IF (H1RI33A3 = 97) THEN H1RI33A3 = .;
   IF (H1RI33B3 = 97 OR H1RI33B3 = 98) THEN H1RI33B3 = .;
   IF (H1RI33C3 = 97) THEN H1RI33C3 = .;
   IF (H1RI34_3 = 7) THEN H1RI34_3 = .;
   IF (H1RI35_3 = 7) THEN H1RI35_3 = .;
   IF (H1RI36_3 = 7 OR H1RI36_3 = 8) THEN H1RI36_3 = .;
   IF (H1RI37_3 = 7) THEN H1RI37_3 = .;
   IF (H1RI38A3 = 97) THEN H1RI38A3 = .;
   IF (H1RI38B3 >= 96 AND H1RI38B3 <= 98) THEN H1RI38B3 = .;
   IF (H1RI38C3 = 97) THEN H1RI38C3 = .;
   IF (H1RI39_3 = 7) THEN H1RI39_3 = .;
   IF (H1RI40_3 = 7) THEN H1RI40_3 = .;
   IF (H1RI41_3 >= 9996 AND H1RI41_3 <= 9998) THEN H1RI41_3 = .;
   IF (RICARD1 = 7) THEN RICARD1 = .;
   IF (RICARD2 = 7) THEN RICARD2 = .;
   IF (RICARD3 = 7) THEN RICARD3 = .;
   IF (H1NR1 = 6 OR H1NR1 = 8 OR H1NR1 = 9) THEN H1NR1 = .;
   IF (H1NR2 = 6 OR H1NR2 = 8 OR H1NR2 = 9) THEN H1NR2 = .;
   IF (H1NR3 = 6 OR H1NR3 = 8 OR H1NR3 = 9) THEN H1NR3 = .;
   IF (H1NR4 >= 996 AND H1NR4 <= 999) THEN H1NR4 = .;
   IF (H1NR5 = 6 OR H1NR5 = 8 OR H1NR5 = 9) THEN H1NR5 = .;
   IF (H1NR6 >= 996 AND H1NR6 <= 999) THEN H1NR6 = .;
   IF (H1NR7 >= 996 AND H1NR7 <= 998) THEN H1NR7 = .;
   IF (H1NR8 >= 996 AND H1NR8 <= 999) THEN H1NR8 = .;
   IF (H1NR10_1 = 6 OR H1NR10_1 = 7) THEN H1NR10_1 = .;
   IF (H1NR11_1 = 6 OR H1NR11_1 = 7) THEN H1NR11_1 = .;
   IF (H1NR12_1 = 6 OR H1NR12_1 = 7) THEN H1NR12_1 = .;
   IF (H1RX1M_1 >= 96 AND H1RX1M_1 <= 98) THEN H1RX1M_1 = .;
   IF (H1RX1Y_1 >= 96 AND H1RX1Y_1 <= 98) THEN H1RX1Y_1 = .;
   IF (H1RX2_1 >= 96 AND H1RX2_1 <= 98) THEN H1RX2_1 = .;
   IF (H1RX3_1 >= 96 AND H1RX3_1 <= 98) THEN H1RX3_1 = .;
   IF (H1RX4_1 >= 96 AND H1RX4_1 <= 98) THEN H1RX4_1 = .;
   IF (H1RX5A_1 >= 96 AND H1RX5A_1 <= 98) THEN H1RX5A_1 = .;
   IF (H1RX6_1 >= 6 AND H1RX6_1 <= 8) THEN H1RX6_1 = .;
   IF (H1RX7_1 >= 6 AND H1RX7_1 <= 8) THEN H1RX7_1 = .;
   IF (H1RX8A_1 >= 6 AND H1RX8A_1 <= 8) THEN H1RX8A_1 = .;
   IF (H1RX8B_1 >= 6 AND H1RX8B_1 <= 8) THEN H1RX8B_1 = .;
   IF (H1RX8C_1 >= 6 AND H1RX8C_1 <= 8) THEN H1RX8C_1 = .;
   IF (H1RX8D_1 >= 6 AND H1RX8D_1 <= 8) THEN H1RX8D_1 = .;
   IF (H1RX8E_1 >= 6 AND H1RX8E_1 <= 8) THEN H1RX8E_1 = .;
   IF (H1RX8F_1 >= 6 AND H1RX8F_1 <= 8) THEN H1RX8F_1 = .;
   IF (H1RX8G_1 >= 6 AND H1RX8G_1 <= 8) THEN H1RX8G_1 = .;
   IF (H1RX8H_1 >= 6 AND H1RX8H_1 <= 8) THEN H1RX8H_1 = .;
   IF (H1RX9_1 >= 96 AND H1RX9_1 <= 98) THEN H1RX9_1 = .;
   IF (H1RX10_1 >= 6 AND H1RX10_1 <= 8) THEN H1RX10_1 = .;
   IF (H1RX11M1 >= 96 AND H1RX11M1 <= 98) THEN H1RX11M1 = .;
   IF (H1RX11Y1 >= 96 AND H1RX11Y1 <= 98) THEN H1RX11Y1 = .;
   IF (H1RX12_1 >= 96 AND H1RX12_1 <= 98) THEN H1RX12_1 = .;
   IF (H1RX13_1 >= 6 AND H1RX13_1 <= 8) THEN H1RX13_1 = .;
   IF (H1RX14_1 >= 6 AND H1RX14_1 <= 8) THEN H1RX14_1 = .;
   IF (H1RX15_1 >= 96 AND H1RX15_1 <= 98) THEN H1RX15_1 = .;
   IF (H1RX16_1 >= 6 AND H1RX16_1 <= 8) THEN H1RX16_1 = .;
   IF (H1RX17A1 = 7 OR H1RX17A1 = 8) THEN H1RX17A1 = .;
   IF (H1RX17B1 = 7 OR H1RX17B1 = 8) THEN H1RX17B1 = .;
   IF (H1RX17C1 = 7 OR H1RX17C1 = 8) THEN H1RX17C1 = .;
   IF (H1RX17D1 = 7 OR H1RX17D1 = 8) THEN H1RX17D1 = .;
   IF (H1RX17E1 = 7 OR H1RX17E1 = 8) THEN H1RX17E1 = .;
   IF (H1RX17F1 = 7 OR H1RX17F1 = 8) THEN H1RX17F1 = .;
   IF (H1RX18A1 >= 6 AND H1RX18A1 <= 8) THEN H1RX18A1 = .;
   IF (H1RX18B1 >= 6 AND H1RX18B1 <= 8) THEN H1RX18B1 = .;
   IF (H1RX18C1 >= 6 AND H1RX18C1 <= 8) THEN H1RX18C1 = .;
   IF (H1RX18D1 >= 6 AND H1RX18D1 <= 8) THEN H1RX18D1 = .;
   IF (H1RX18E1 >= 6 AND H1RX18E1 <= 8) THEN H1RX18E1 = .;
   IF (H1RX19A1 = 7) THEN H1RX19A1 = .;
   IF (H1RX19B1 = 7) THEN H1RX19B1 = .;
   IF (H1RX19C1 = 7) THEN H1RX19C1 = .;
   IF (H1RX19D1 = 7) THEN H1RX19D1 = .;
   IF (H1RX19E1 = 7) THEN H1RX19E1 = .;
   IF (H1RX19F1 = 7) THEN H1RX19F1 = .;
   IF (H1RX19G1 = 7) THEN H1RX19G1 = .;
   IF (H1RX20_1 >= 6 AND H1RX20_1 <= 8) THEN H1RX20_1 = .;
   IF (H1RX21A1 >= 6 AND H1RX21A1 <= 8) THEN H1RX21A1 = .;
   IF (H1RX21B1 >= 6 AND H1RX21B1 <= 8) THEN H1RX21B1 = .;
   IF (H1RX21C1 >= 6 AND H1RX21C1 <= 8) THEN H1RX21C1 = .;
   IF (H1RX21D1 >= 6 AND H1RX21D1 <= 8) THEN H1RX21D1 = .;
   IF (H1RX21E1 >= 6 AND H1RX21E1 <= 8) THEN H1RX21E1 = .;
   IF (H1RX21F1 >= 6 AND H1RX21F1 <= 8) THEN H1RX21F1 = .;
   IF (H1RX21G1 >= 6 AND H1RX21G1 <= 8) THEN H1RX21G1 = .;
   IF (H1RX21H1 >= 6 AND H1RX21H1 <= 8) THEN H1RX21H1 = .;
   IF (H1RX21I1 >= 6 AND H1RX21I1 <= 8) THEN H1RX21I1 = .;
   IF (H1RX21J1 >= 6 AND H1RX21J1 <= 8) THEN H1RX21J1 = .;
   IF (H1RX21K1 >= 6 AND H1RX21K1 <= 8) THEN H1RX21K1 = .;
   IF (H1RX21L1 >= 6 AND H1RX21L1 <= 8) THEN H1RX21L1 = .;
   IF (H1RX21M1 >= 6 AND H1RX21M1 <= 8) THEN H1RX21M1 = .;
   IF (H1RX21N1 >= 6 AND H1RX21N1 <= 8) THEN H1RX21N1 = .;
   IF (H1RX21O1 >= 6 AND H1RX21O1 <= 8) THEN H1RX21O1 = .;
   IF (H1RX21P1 >= 6 AND H1RX21P1 <= 8) THEN H1RX21P1 = .;
   IF (H1RX21Q1 >= 6 AND H1RX21Q1 <= 8) THEN H1RX21Q1 = .;
   IF (H1RX21R1 >= 6 AND H1RX21R1 <= 8) THEN H1RX21R1 = .;
   IF (H1RX22A1 = 97) THEN H1RX22A1 = .;
   IF (H1RX22B1 = 97) THEN H1RX22B1 = .;
   IF (H1RX22C1 = 97) THEN H1RX22C1 = .;
   IF (H1RX22D1 = 97) THEN H1RX22D1 = .;
   IF (H1RX22E1 = 97) THEN H1RX22E1 = .;
   IF (H1RX22F1 = 97) THEN H1RX22F1 = .;
   IF (H1RX22G1 = 97) THEN H1RX22G1 = .;
   IF (H1RX22H1 = 97) THEN H1RX22H1 = .;
   IF (H1RX22I1 = 97) THEN H1RX22I1 = .;
   IF (H1RX22J1 = 97) THEN H1RX22J1 = .;
   IF (H1RX22K1 = 97) THEN H1RX22K1 = .;
   IF (H1RX22L1 = 97) THEN H1RX22L1 = .;
   IF (H1RX22M1 = 97) THEN H1RX22M1 = .;
   IF (H1RX22N1 = 97) THEN H1RX22N1 = .;
   IF (H1RX22O1 = 97) THEN H1RX22O1 = .;
   IF (H1RX22P1 = 97) THEN H1RX22P1 = .;
   IF (H1RX22Q1 = 97) THEN H1RX22Q1 = .;
   IF (H1RX22R1 = 97) THEN H1RX22R1 = .;
   IF (H1RX24A1 >= 6 AND H1RX24A1 <= 8) THEN H1RX24A1 = .;
   IF (H1RX25M1 >= 96 AND H1RX25M1 <= 98) THEN H1RX25M1 = .;
   IF (H1RX25Y1 >= 96 AND H1RX25Y1 <= 98) THEN H1RX25Y1 = .;
   IF (H1RX26M1 >= 96 AND H1RX26M1 <= 98) THEN H1RX26M1 = .;
   IF (H1RX26Y1 >= 96 AND H1RX26Y1 <= 98) THEN H1RX26Y1 = .;
   IF (H1RX27_1 = 6 OR H1RX27_1 = 7) THEN H1RX27_1 = .;
   IF (H1RX28_1 = 7) THEN H1RX28_1 = .;
   IF (H1RX29A1 = 97) THEN H1RX29A1 = .;
   IF (H1RX29B1 = 96 OR H1RX29B1 = 97) THEN H1RX29B1 = .;
   IF (H1RX29C1 = 97) THEN H1RX29C1 = .;
   IF (H1RX30_1 = 7) THEN H1RX30_1 = .;
   IF (H1RX31_1 = 6 OR H1RX31_1 = 7) THEN H1RX31_1 = .;
   IF (H1RX32_1 = 7) THEN H1RX32_1 = .;
   IF (H1RX33A1 = 97) THEN H1RX33A1 = .;
   IF (H1RX33B1 = 97) THEN H1RX33B1 = .;
   IF (H1RX33C1 = 97) THEN H1RX33C1 = .;
   IF (H1RX34_1 = 7) THEN H1RX34_1 = .;
   IF (H1RX35_1 = 7) THEN H1RX35_1 = .;
   IF (H1RX36_1 = 7) THEN H1RX36_1 = .;
   IF (H1RX37_1 = 7) THEN H1RX37_1 = .;
   IF (H1RX38A1 = 97) THEN H1RX38A1 = .;
   IF (H1RX38B1 = 97) THEN H1RX38B1 = .;
   IF (H1RX38C1 = 97 OR H1RX38C1 = 98) THEN H1RX38C1 = .;
   IF (H1RX39_1 = 7) THEN H1RX39_1 = .;
   IF (H1RX40_1 = 7 OR H1RX40_1 = 8) THEN H1RX40_1 = .;
   IF (H1RX41_1 >= 9996 AND H1RX41_1 <= 9998) THEN H1RX41_1 = .;
   IF (H1NR13_1 = 97 OR H1NR13_1 = 98) THEN H1NR13_1 = .;
   IF (H1NR14_1 >= 6 AND H1NR14_1 <= 8) THEN H1NR14_1 = .;
   IF (H1NR15_1 = 6 OR H1NR15_1 = 7) THEN H1NR15_1 = .;
   IF (H1NR16_1 >= 6 AND H1NR16_1 <= 8) THEN H1NR16_1 = .;
   IF (H1NR17A1 = 7) THEN H1NR17A1 = .;
   IF (H1NR17B1 = 7) THEN H1NR17B1 = .;
   IF (H1NR17C1 = 7) THEN H1NR17C1 = .;
   IF (H1NR17D1 = 7) THEN H1NR17D1 = .;
   IF (H1NR17E1 = 7) THEN H1NR17E1 = .;
   IF (H1NR17F1 = 7) THEN H1NR17F1 = .;
   IF (H1NR18A1 = 6 OR H1NR18A1 = 7) THEN H1NR18A1 = .;
   IF (H1NR18B1 = 6 OR H1NR18B1 = 7) THEN H1NR18B1 = .;
   IF (H1NR18C1 = 6 OR H1NR18C1 = 7) THEN H1NR18C1 = .;
   IF (H1NR18D1 = 6 OR H1NR18D1 = 7) THEN H1NR18D1 = .;
   IF (H1NR18E1 = 6 OR H1NR18E1 = 7) THEN H1NR18E1 = .;
   IF (H1NR19A1 = 7) THEN H1NR19A1 = .;
   IF (H1NR19B1 = 7) THEN H1NR19B1 = .;
   IF (H1NR19C1 = 7) THEN H1NR19C1 = .;
   IF (H1NR19D1 = 7) THEN H1NR19D1 = .;
   IF (H1NR19E1 = 7) THEN H1NR19E1 = .;
   IF (H1NR19F1 = 7) THEN H1NR19F1 = .;
   IF (H1NR19G1 = 7) THEN H1NR19G1 = .;
   IF (H1NR20A1 >= 6 AND H1NR20A1 <= 8) THEN H1NR20A1 = .;
   IF (H1NR20B1 >= 6 AND H1NR20B1 <= 8) THEN H1NR20B1 = .;
   IF (H1NR20C1 >= 6 AND H1NR20C1 <= 8) THEN H1NR20C1 = .;
   IF (H1NR20D1 >= 6 AND H1NR20D1 <= 8) THEN H1NR20D1 = .;
   IF (H1NR20E1 >= 6 AND H1NR20E1 <= 8) THEN H1NR20E1 = .;
   IF (H1NR20F1 >= 6 AND H1NR20F1 <= 8) THEN H1NR20F1 = .;
   IF (H1NR20G1 >= 6 AND H1NR20G1 <= 8) THEN H1NR20G1 = .;
   IF (H1NR20H1 >= 6 AND H1NR20H1 <= 8) THEN H1NR20H1 = .;
   IF (H1NR21_1 >= 6 AND H1NR21_1 <= 8) THEN H1NR21_1 = .;
   IF (H1NR22_1 = 6 OR H1NR22_1 = 7) THEN H1NR22_1 = .;
   IF (H1NR23M1 >= 96 AND H1NR23M1 <= 98) THEN H1NR23M1 = .;
   IF (H1NR23Y1 >= 96 AND H1NR23Y1 <= 98) THEN H1NR23Y1 = .;
   IF (H1NR24M1 >= 96 AND H1NR24M1 <= 98) THEN H1NR24M1 = .;
   IF (H1NR24Y1 >= 96 AND H1NR24Y1 <= 98) THEN H1NR24Y1 = .;
   IF (H1NR25_1 >= 6 AND H1NR25_1 <= 8) THEN H1NR25_1 = .;
   IF (H1NR26_1 = 7) THEN H1NR26_1 = .;
   IF (H1NR27A1 = 97 OR H1NR27A1 = 98) THEN H1NR27A1 = .;
   IF (H1NR27B1 = 96 OR H1NR27B1 = 97) THEN H1NR27B1 = .;
   IF (H1NR27C1 = 97) THEN H1NR27C1 = .;
   IF (H1NR28_1 = 7) THEN H1NR28_1 = .;
   IF (H1NR29_1 = 7) THEN H1NR29_1 = .;
   IF (H1NR30_1 = 7) THEN H1NR30_1 = .;
   IF (H1NR31A1 = 97) THEN H1NR31A1 = .;
   IF (H1NR31B1 >= 96 AND H1NR31B1 <= 98) THEN H1NR31B1 = .;
   IF (H1NR31C1 = 97) THEN H1NR31C1 = .;
   IF (H1NR32_1 = 7) THEN H1NR32_1 = .;
   IF (H1NR33_1 = 7) THEN H1NR33_1 = .;
   IF (H1NR34_1 = 7) THEN H1NR34_1 = .;
   IF (H1NR35_1 = 7) THEN H1NR35_1 = .;
   IF (H1NR36A1 = 97 OR H1NR36A1 = 98) THEN H1NR36A1 = .;
   IF (H1NR36B1 >= 96 AND H1NR36B1 <= 98) THEN H1NR36B1 = .;
   IF (H1NR36C1 = 97) THEN H1NR36C1 = .;
   IF (H1NR37_1 = 7) THEN H1NR37_1 = .;
   IF (H1NR38_1 = 7 OR H1NR38_1 = 8) THEN H1NR38_1 = .;
   IF (H1NR39_1 = 997 OR H1NR39_1 = 998) THEN H1NR39_1 = .;
   IF (H1NR40_1 = 7) THEN H1NR40_1 = .;
   IF (H1NR41_1 = 7) THEN H1NR41_1 = .;
   IF (H1NR42_1 = 7) THEN H1NR42_1 = .;
   IF (H1NR43_1 = 97) THEN H1NR43_1 = .;
   IF (H1NR10_2 >= 6 AND H1NR10_2 <= 8) THEN H1NR10_2 = .;
   IF (H1NR11_2 >= 6 AND H1NR11_2 <= 8) THEN H1NR11_2 = .;
   IF (H1NR12_2 >= 6 AND H1NR12_2 <= 8) THEN H1NR12_2 = .;
   IF (H1RX1M_2 >= 96 AND H1RX1M_2 <= 98) THEN H1RX1M_2 = .;
   IF (H1RX1Y_2 >= 96 AND H1RX1Y_2 <= 98) THEN H1RX1Y_2 = .;
   IF (H1RX2_2 >= 96 AND H1RX2_2 <= 98) THEN H1RX2_2 = .;
   IF (H1RX3_2 >= 96 AND H1RX3_2 <= 98) THEN H1RX3_2 = .;
   IF (H1RX4_2 >= 96 AND H1RX4_2 <= 98) THEN H1RX4_2 = .;
   IF (H1RX5A_2 >= 96 AND H1RX5A_2 <= 98) THEN H1RX5A_2 = .;
   IF (H1RX6_2 >= 6 AND H1RX6_2 <= 8) THEN H1RX6_2 = .;
   IF (H1RX7_2 >= 6 AND H1RX7_2 <= 8) THEN H1RX7_2 = .;
   IF (H1RX8A_2 >= 6 AND H1RX8A_2 <= 8) THEN H1RX8A_2 = .;
   IF (H1RX8B_2 >= 6 AND H1RX8B_2 <= 8) THEN H1RX8B_2 = .;
   IF (H1RX8C_2 >= 6 AND H1RX8C_2 <= 8) THEN H1RX8C_2 = .;
   IF (H1RX8D_2 >= 6 AND H1RX8D_2 <= 8) THEN H1RX8D_2 = .;
   IF (H1RX8E_2 >= 6 AND H1RX8E_2 <= 8) THEN H1RX8E_2 = .;
   IF (H1RX8F_2 >= 6 AND H1RX8F_2 <= 8) THEN H1RX8F_2 = .;
   IF (H1RX8G_2 >= 6 AND H1RX8G_2 <= 8) THEN H1RX8G_2 = .;
   IF (H1RX8H_2 >= 6 AND H1RX8H_2 <= 8) THEN H1RX8H_2 = .;
   IF (H1RX9_2 >= 96 AND H1RX9_2 <= 98) THEN H1RX9_2 = .;
   IF (H1RX10_2 >= 6 AND H1RX10_2 <= 8) THEN H1RX10_2 = .;
   IF (H1RX11M2 >= 96 AND H1RX11M2 <= 98) THEN H1RX11M2 = .;
   IF (H1RX11Y2 >= 96 AND H1RX11Y2 <= 98) THEN H1RX11Y2 = .;
   IF (H1RX12_2 >= 96 AND H1RX12_2 <= 98) THEN H1RX12_2 = .;
   IF (H1RX13_2 = 6 OR H1RX13_2 = 7) THEN H1RX13_2 = .;
   IF (H1RX14_2 >= 6 AND H1RX14_2 <= 8) THEN H1RX14_2 = .;
   IF (H1RX15_2 >= 96 AND H1RX15_2 <= 98) THEN H1RX15_2 = .;
   IF (H1RX16_2 >= 6 AND H1RX16_2 <= 8) THEN H1RX16_2 = .;
   IF (H1RX17A2 = 6 OR H1RX17A2 = 7) THEN H1RX17A2 = .;
   IF (H1RX17B2 = 6 OR H1RX17B2 = 7) THEN H1RX17B2 = .;
   IF (H1RX17C2 = 6 OR H1RX17C2 = 7) THEN H1RX17C2 = .;
   IF (H1RX17D2 = 6 OR H1RX17D2 = 7) THEN H1RX17D2 = .;
   IF (H1RX17E2 = 6 OR H1RX17E2 = 7) THEN H1RX17E2 = .;
   IF (H1RX17F2 = 6 OR H1RX17F2 = 7) THEN H1RX17F2 = .;
   IF (H1RX18A2 >= 6 AND H1RX18A2 <= 8) THEN H1RX18A2 = .;
   IF (H1RX18B2 >= 6 AND H1RX18B2 <= 8) THEN H1RX18B2 = .;
   IF (H1RX18C2 >= 6 AND H1RX18C2 <= 8) THEN H1RX18C2 = .;
   IF (H1RX18D2 >= 6 AND H1RX18D2 <= 8) THEN H1RX18D2 = .;
   IF (H1RX18E2 >= 6 AND H1RX18E2 <= 8) THEN H1RX18E2 = .;
   IF (H1RX19A2 = 7) THEN H1RX19A2 = .;
   IF (H1RX19B2 = 7) THEN H1RX19B2 = .;
   IF (H1RX19C2 = 7) THEN H1RX19C2 = .;
   IF (H1RX19D2 = 7) THEN H1RX19D2 = .;
   IF (H1RX19E2 = 7) THEN H1RX19E2 = .;
   IF (H1RX19F2 = 7) THEN H1RX19F2 = .;
   IF (H1RX19G2 = 7) THEN H1RX19G2 = .;
   IF (H1RX20_2 >= 6 AND H1RX20_2 <= 8) THEN H1RX20_2 = .;
   IF (H1RX21A2 >= 6 AND H1RX21A2 <= 8) THEN H1RX21A2 = .;
   IF (H1RX21B2 >= 6 AND H1RX21B2 <= 8) THEN H1RX21B2 = .;
   IF (H1RX21C2 >= 6 AND H1RX21C2 <= 8) THEN H1RX21C2 = .;
   IF (H1RX21D2 >= 6 AND H1RX21D2 <= 8) THEN H1RX21D2 = .;
   IF (H1RX21E2 >= 6 AND H1RX21E2 <= 8) THEN H1RX21E2 = .;
   IF (H1RX21F2 >= 6 AND H1RX21F2 <= 8) THEN H1RX21F2 = .;
   IF (H1RX21G2 >= 6 AND H1RX21G2 <= 8) THEN H1RX21G2 = .;
   IF (H1RX21H2 >= 6 AND H1RX21H2 <= 8) THEN H1RX21H2 = .;
   IF (H1RX21I2 >= 6 AND H1RX21I2 <= 8) THEN H1RX21I2 = .;
   IF (H1RX21J2 >= 6 AND H1RX21J2 <= 8) THEN H1RX21J2 = .;
   IF (H1RX21K2 >= 6 AND H1RX21K2 <= 8) THEN H1RX21K2 = .;
   IF (H1RX21L2 >= 6 AND H1RX21L2 <= 8) THEN H1RX21L2 = .;
   IF (H1RX21M2 >= 6 AND H1RX21M2 <= 8) THEN H1RX21M2 = .;
   IF (H1RX21N2 >= 6 AND H1RX21N2 <= 8) THEN H1RX21N2 = .;
   IF (H1RX21O2 >= 6 AND H1RX21O2 <= 8) THEN H1RX21O2 = .;
   IF (H1RX21P2 >= 6 AND H1RX21P2 <= 8) THEN H1RX21P2 = .;
   IF (H1RX21Q2 >= 6 AND H1RX21Q2 <= 8) THEN H1RX21Q2 = .;
   IF (H1RX21R2 >= 6 AND H1RX21R2 <= 8) THEN H1RX21R2 = .;
   IF (H1RX22A2 = 97) THEN H1RX22A2 = .;
   IF (H1RX22B2 = 97) THEN H1RX22B2 = .;
   IF (H1RX22C2 = 97) THEN H1RX22C2 = .;
   IF (H1RX22D2 = 97) THEN H1RX22D2 = .;
   IF (H1RX22E2 = 97) THEN H1RX22E2 = .;
   IF (H1RX22F2 = 97) THEN H1RX22F2 = .;
   IF (H1RX22G2 = 97) THEN H1RX22G2 = .;
   IF (H1RX22H2 = 97) THEN H1RX22H2 = .;
   IF (H1RX22I2 = 97) THEN H1RX22I2 = .;
   IF (H1RX22J2 = 97) THEN H1RX22J2 = .;
   IF (H1RX22K2 = 97) THEN H1RX22K2 = .;
   IF (H1RX22L2 = 97) THEN H1RX22L2 = .;
   IF (H1RX22M2 = 97) THEN H1RX22M2 = .;
   IF (H1RX22N2 = 97) THEN H1RX22N2 = .;
   IF (H1RX22O2 = 97) THEN H1RX22O2 = .;
   IF (H1RX22P2 = 97) THEN H1RX22P2 = .;
   IF (H1RX22Q2 = 97) THEN H1RX22Q2 = .;
   IF (H1RX22R2 = 97) THEN H1RX22R2 = .;
   IF (H1RX24A2 = 6 OR H1RX24A2 = 7) THEN H1RX24A2 = .;
   IF (H1RX25M2 >= 96 AND H1RX25M2 <= 98) THEN H1RX25M2 = .;
   IF (H1RX25Y2 >= 96 AND H1RX25Y2 <= 98) THEN H1RX25Y2 = .;
   IF (H1RX26M2 >= 96 AND H1RX26M2 <= 98) THEN H1RX26M2 = .;
   IF (H1RX26Y2 >= 96 AND H1RX26Y2 <= 98) THEN H1RX26Y2 = .;
   IF (H1RX27_2 = 6 OR H1RX27_2 = 7) THEN H1RX27_2 = .;
   IF (H1RX28_2 = 7) THEN H1RX28_2 = .;
   IF (H1RX29A2 = 97) THEN H1RX29A2 = .;
   IF (H1RX29B2 = 97) THEN H1RX29B2 = .;
   IF (H1RX29C2 = 97) THEN H1RX29C2 = .;
   IF (H1RX30_2 = 7) THEN H1RX30_2 = .;
   IF (H1RX31_2 = 6 OR H1RX31_2 = 7) THEN H1RX31_2 = .;
   IF (H1RX32_2 = 7) THEN H1RX32_2 = .;
   IF (H1RX33A2 = 97) THEN H1RX33A2 = .;
   IF (H1RX33B2 = 97) THEN H1RX33B2 = .;
   IF (H1RX33C2 = 96 OR H1RX33C2 = 97) THEN H1RX33C2 = .;
   IF (H1RX34_2 = 7) THEN H1RX34_2 = .;
   IF (H1RX35_2 = 6 OR H1RX35_2 = 7) THEN H1RX35_2 = .;
   IF (H1RX36_2 = 7 OR H1RX36_2 = 8) THEN H1RX36_2 = .;
   IF (H1RX37_2 = 7) THEN H1RX37_2 = .;
   IF (H1RX38A2 = 97) THEN H1RX38A2 = .;
   IF (H1RX38B2 = 97) THEN H1RX38B2 = .;
   IF (H1RX38C2 = 97) THEN H1RX38C2 = .;
   IF (H1RX39_2 = 7) THEN H1RX39_2 = .;
   IF (H1RX40_2 = 7) THEN H1RX40_2 = .;
   IF (H1RX41_2 = 9997 OR H1RX41_2 = 9998) THEN H1RX41_2 = .;
   IF (H1NR13_2 >= 96 AND H1NR13_2 <= 98) THEN H1NR13_2 = .;
   IF (H1NR14_2 >= 6 AND H1NR14_2 <= 8) THEN H1NR14_2 = .;
   IF (H1NR15_2 >= 6 AND H1NR15_2 <= 8) THEN H1NR15_2 = .;
   IF (H1NR16_2 >= 6 AND H1NR16_2 <= 8) THEN H1NR16_2 = .;
   IF (H1NR17A2 = 7 OR H1NR17A2 = 8) THEN H1NR17A2 = .;
   IF (H1NR17B2 = 7 OR H1NR17B2 = 8) THEN H1NR17B2 = .;
   IF (H1NR17C2 = 7 OR H1NR17C2 = 8) THEN H1NR17C2 = .;
   IF (H1NR17D2 = 7 OR H1NR17D2 = 8) THEN H1NR17D2 = .;
   IF (H1NR17E2 = 7 OR H1NR17E2 = 8) THEN H1NR17E2 = .;
   IF (H1NR17F2 = 7 OR H1NR17F2 = 8) THEN H1NR17F2 = .;
   IF (H1NR18A2 >= 6 AND H1NR18A2 <= 8) THEN H1NR18A2 = .;
   IF (H1NR18B2 >= 6 AND H1NR18B2 <= 8) THEN H1NR18B2 = .;
   IF (H1NR18C2 >= 6 AND H1NR18C2 <= 8) THEN H1NR18C2 = .;
   IF (H1NR18D2 >= 6 AND H1NR18D2 <= 8) THEN H1NR18D2 = .;
   IF (H1NR18E2 >= 6 AND H1NR18E2 <= 8) THEN H1NR18E2 = .;
   IF (H1NR19A2 = 7) THEN H1NR19A2 = .;
   IF (H1NR19B2 = 7) THEN H1NR19B2 = .;
   IF (H1NR19C2 = 7) THEN H1NR19C2 = .;
   IF (H1NR19D2 = 7) THEN H1NR19D2 = .;
   IF (H1NR19E2 = 7) THEN H1NR19E2 = .;
   IF (H1NR19F2 = 7) THEN H1NR19F2 = .;
   IF (H1NR19G2 = 7) THEN H1NR19G2 = .;
   IF (H1NR20A2 >= 6 AND H1NR20A2 <= 8) THEN H1NR20A2 = .;
   IF (H1NR20B2 >= 6 AND H1NR20B2 <= 8) THEN H1NR20B2 = .;
   IF (H1NR20C2 >= 6 AND H1NR20C2 <= 8) THEN H1NR20C2 = .;
   IF (H1NR20D2 >= 6 AND H1NR20D2 <= 8) THEN H1NR20D2 = .;
   IF (H1NR20E2 >= 6 AND H1NR20E2 <= 8) THEN H1NR20E2 = .;
   IF (H1NR20F2 >= 6 AND H1NR20F2 <= 8) THEN H1NR20F2 = .;
   IF (H1NR20G2 >= 6 AND H1NR20G2 <= 8) THEN H1NR20G2 = .;
   IF (H1NR20H2 >= 6 AND H1NR20H2 <= 8) THEN H1NR20H2 = .;
   IF (H1NR21_2 >= 6 AND H1NR21_2 <= 8) THEN H1NR21_2 = .;
   IF (H1NR22_2 >= 6 AND H1NR22_2 <= 8) THEN H1NR22_2 = .;
   IF (H1NR23M2 >= 96 AND H1NR23M2 <= 98) THEN H1NR23M2 = .;
   IF (H1NR23Y2 >= 96 AND H1NR23Y2 <= 98) THEN H1NR23Y2 = .;
   IF (H1NR24M2 >= 96 AND H1NR24M2 <= 98) THEN H1NR24M2 = .;
   IF (H1NR24Y2 >= 96 AND H1NR24Y2 <= 98) THEN H1NR24Y2 = .;
   IF (H1NR25_2 >= 6 AND H1NR25_2 <= 8) THEN H1NR25_2 = .;
   IF (H1NR26_2 = 7) THEN H1NR26_2 = .;
   IF (H1NR27A2 = 97) THEN H1NR27A2 = .;
   IF (H1NR27B2 = 97) THEN H1NR27B2 = .;
   IF (H1NR27C2 = 97) THEN H1NR27C2 = .;
   IF (H1NR28_2 = 7) THEN H1NR28_2 = .;
   IF (H1NR29_2 = 7) THEN H1NR29_2 = .;
   IF (H1NR30_2 = 7) THEN H1NR30_2 = .;
   IF (H1NR31A2 = 97) THEN H1NR31A2 = .;
   IF (H1NR31B2 = 97) THEN H1NR31B2 = .;
   IF (H1NR31C2 = 97 OR H1NR31C2 = 98) THEN H1NR31C2 = .;
   IF (H1NR32_2 = 7) THEN H1NR32_2 = .;
   IF (H1NR33_2 = 7) THEN H1NR33_2 = .;
   IF (H1NR34_2 = 7) THEN H1NR34_2 = .;
   IF (H1NR35_2 = 7) THEN H1NR35_2 = .;
   IF (H1NR36A2 = 97) THEN H1NR36A2 = .;
   IF (H1NR36B2 = 97) THEN H1NR36B2 = .;
   IF (H1NR36C2 = 97) THEN H1NR36C2 = .;
   IF (H1NR37_2 = 7) THEN H1NR37_2 = .;
   IF (H1NR38_2 = 7 OR H1NR38_2 = 8) THEN H1NR38_2 = .;
   IF (H1NR39_2 = 997 OR H1NR39_2 = 998) THEN H1NR39_2 = .;
   IF (H1NR40_2 = 7) THEN H1NR40_2 = .;
   IF (H1NR41_2 = 7) THEN H1NR41_2 = .;
   IF (H1NR42_2 = 7) THEN H1NR42_2 = .;
   IF (H1NR43_2 = 97) THEN H1NR43_2 = .;
   IF (H1NR10_3 >= 6 AND H1NR10_3 <= 8) THEN H1NR10_3 = .;
   IF (H1NR11_3 >= 6 AND H1NR11_3 <= 8) THEN H1NR11_3 = .;
   IF (H1NR12_3 >= 6 AND H1NR12_3 <= 8) THEN H1NR12_3 = .;
   IF (H1RX1M_3 = 97 OR H1RX1M_3 = 98) THEN H1RX1M_3 = .;
   IF (H1RX1Y_3 = 97 OR H1RX1Y_3 = 98) THEN H1RX1Y_3 = .;
   IF (H1RX2_3 = 97 OR H1RX2_3 = 98) THEN H1RX2_3 = .;
   IF (H1RX3_3 = 97) THEN H1RX3_3 = .;
   IF (H1RX4_3 = 97) THEN H1RX4_3 = .;
   IF (H1RX5A_3 = 97) THEN H1RX5A_3 = .;
   IF (H1RX6_3 = 7) THEN H1RX6_3 = .;
   IF (H1RX7_3 = 7) THEN H1RX7_3 = .;
   IF (H1RX8A_3 = 7) THEN H1RX8A_3 = .;
   IF (H1RX8B_3 = 7) THEN H1RX8B_3 = .;
   IF (H1RX8C_3 = 7) THEN H1RX8C_3 = .;
   IF (H1RX8D_3 = 7) THEN H1RX8D_3 = .;
   IF (H1RX8E_3 = 7) THEN H1RX8E_3 = .;
   IF (H1RX8F_3 = 7) THEN H1RX8F_3 = .;
   IF (H1RX8G_3 = 7) THEN H1RX8G_3 = .;
   IF (H1RX8H_3 = 7) THEN H1RX8H_3 = .;
   IF (H1RX9_3 = 97) THEN H1RX9_3 = .;
   IF (H1RX10_3 = 7) THEN H1RX10_3 = .;
   IF (H1RX11M3 = 97 OR H1RX11M3 = 98) THEN H1RX11M3 = .;
   IF (H1RX11Y3 = 97 OR H1RX11Y3 = 98) THEN H1RX11Y3 = .;
   IF (H1RX12_3 >= 96 AND H1RX12_3 <= 98) THEN H1RX12_3 = .;
   IF (H1RX13_3 = 7 OR H1RX13_3 = 8) THEN H1RX13_3 = .;
   IF (H1RX14_3 = 7) THEN H1RX14_3 = .;
   IF (H1RX15_3 = 97) THEN H1RX15_3 = .;
   IF (H1RX16_3 = 7) THEN H1RX16_3 = .;
   IF (H1RX17A3 = 7) THEN H1RX17A3 = .;
   IF (H1RX17B3 = 7) THEN H1RX17B3 = .;
   IF (H1RX17C3 = 7) THEN H1RX17C3 = .;
   IF (H1RX17D3 = 7) THEN H1RX17D3 = .;
   IF (H1RX17E3 = 7) THEN H1RX17E3 = .;
   IF (H1RX17F3 = 7) THEN H1RX17F3 = .;
   IF (H1RX18A3 = 7) THEN H1RX18A3 = .;
   IF (H1RX18B3 = 7) THEN H1RX18B3 = .;
   IF (H1RX18C3 = 7) THEN H1RX18C3 = .;
   IF (H1RX18D3 = 7) THEN H1RX18D3 = .;
   IF (H1RX18E3 = 7) THEN H1RX18E3 = .;
   IF (H1RX19A3 = 7) THEN H1RX19A3 = .;
   IF (H1RX19B3 = 7) THEN H1RX19B3 = .;
   IF (H1RX19C3 = 7) THEN H1RX19C3 = .;
   IF (H1RX19D3 = 7) THEN H1RX19D3 = .;
   IF (H1RX19E3 = 7) THEN H1RX19E3 = .;
   IF (H1RX19F3 = 7) THEN H1RX19F3 = .;
   IF (H1RX19G3 = 7) THEN H1RX19G3 = .;
   IF (H1RX20_3 = 7) THEN H1RX20_3 = .;
   IF (H1RX21A3 >= 6 AND H1RX21A3 <= 8) THEN H1RX21A3 = .;
   IF (H1RX21B3 >= 6 AND H1RX21B3 <= 8) THEN H1RX21B3 = .;
   IF (H1RX21C3 >= 6 AND H1RX21C3 <= 8) THEN H1RX21C3 = .;
   IF (H1RX21D3 >= 6 AND H1RX21D3 <= 8) THEN H1RX21D3 = .;
   IF (H1RX21E3 >= 6 AND H1RX21E3 <= 8) THEN H1RX21E3 = .;
   IF (H1RX21F3 >= 6 AND H1RX21F3 <= 8) THEN H1RX21F3 = .;
   IF (H1RX21G3 >= 6 AND H1RX21G3 <= 8) THEN H1RX21G3 = .;
   IF (H1RX21H3 >= 6 AND H1RX21H3 <= 8) THEN H1RX21H3 = .;
   IF (H1RX21I3 >= 6 AND H1RX21I3 <= 8) THEN H1RX21I3 = .;
   IF (H1RX21J3 >= 6 AND H1RX21J3 <= 8) THEN H1RX21J3 = .;
   IF (H1RX21K3 >= 6 AND H1RX21K3 <= 8) THEN H1RX21K3 = .;
   IF (H1RX21L3 >= 6 AND H1RX21L3 <= 8) THEN H1RX21L3 = .;
   IF (H1RX21M3 >= 6 AND H1RX21M3 <= 8) THEN H1RX21M3 = .;
   IF (H1RX21N3 >= 6 AND H1RX21N3 <= 8) THEN H1RX21N3 = .;
   IF (H1RX21O3 >= 6 AND H1RX21O3 <= 8) THEN H1RX21O3 = .;
   IF (H1RX21P3 >= 6 AND H1RX21P3 <= 8) THEN H1RX21P3 = .;
   IF (H1RX21Q3 >= 6 AND H1RX21Q3 <= 8) THEN H1RX21Q3 = .;
   IF (H1RX21R3 >= 6 AND H1RX21R3 <= 8) THEN H1RX21R3 = .;
   IF (H1RX22A3 = 97) THEN H1RX22A3 = .;
   IF (H1RX22B3 = 97) THEN H1RX22B3 = .;
   IF (H1RX22C3 = 97) THEN H1RX22C3 = .;
   IF (H1RX22D3 = 97) THEN H1RX22D3 = .;
   IF (H1RX22E3 = 97) THEN H1RX22E3 = .;
   IF (H1RX22F3 = 97) THEN H1RX22F3 = .;
   IF (H1RX22G3 = 97) THEN H1RX22G3 = .;
   IF (H1RX22H3 = 97) THEN H1RX22H3 = .;
   IF (H1RX22I3 = 97) THEN H1RX22I3 = .;
   IF (H1RX22J3 = 97) THEN H1RX22J3 = .;
   IF (H1RX22K3 = 97) THEN H1RX22K3 = .;
   IF (H1RX22L3 = 97) THEN H1RX22L3 = .;
   IF (H1RX22M3 = 97) THEN H1RX22M3 = .;
   IF (H1RX22N3 = 97) THEN H1RX22N3 = .;
   IF (H1RX22O3 = 97) THEN H1RX22O3 = .;
   IF (H1RX22P3 = 97) THEN H1RX22P3 = .;
   IF (H1RX22Q3 = 97) THEN H1RX22Q3 = .;
   IF (H1RX22R3 = 97) THEN H1RX22R3 = .;
   IF (H1RX24A3 = 7) THEN H1RX24A3 = .;
   IF (H1RX25M3 = 97 OR H1RX25M3 = 98) THEN H1RX25M3 = .;
   IF (H1RX25Y3 = 97 OR H1RX25Y3 = 98) THEN H1RX25Y3 = .;
   IF (H1RX26M3 = 97 OR H1RX26M3 = 98) THEN H1RX26M3 = .;
   IF (H1RX26Y3 = 97 OR H1RX26Y3 = 98) THEN H1RX26Y3 = .;
   IF (H1RX27_3 = 7) THEN H1RX27_3 = .;
   IF (H1RX28_3 = 7) THEN H1RX28_3 = .;
   IF (H1RX29A3 = 97) THEN H1RX29A3 = .;
   IF (H1RX29B3 = 97) THEN H1RX29B3 = .;
   IF (H1RX29C3 = 97) THEN H1RX29C3 = .;
   IF (H1RX30_3 = 7) THEN H1RX30_3 = .;
   IF (H1RX31_3 = 7) THEN H1RX31_3 = .;
   IF (H1RX32_3 = 7) THEN H1RX32_3 = .;
   IF (H1RX33A3 = 97) THEN H1RX33A3 = .;
   IF (H1RX33B3 = 97) THEN H1RX33B3 = .;
   IF (H1RX33C3 = 97 OR H1RX33C3 = 98) THEN H1RX33C3 = .;
   IF (H1RX34_3 = 7) THEN H1RX34_3 = .;
   IF (H1RX35_3 = 7) THEN H1RX35_3 = .;
   IF (H1RX36_3 = 7) THEN H1RX36_3 = .;
   IF (H1RX37_3 = 7) THEN H1RX37_3 = .;
   IF (H1RX38A3 = 97) THEN H1RX38A3 = .;
   IF (H1RX38B3 = 97) THEN H1RX38B3 = .;
   IF (H1RX38C3 = 97) THEN H1RX38C3 = .;
   IF (H1RX39_3 = 7) THEN H1RX39_3 = .;
   IF (H1RX40_3 = 7) THEN H1RX40_3 = .;
   IF (H1RX41_3 = 9997) THEN H1RX41_3 = .;
   IF (H1NR13_3 >= 96 AND H1NR13_3 <= 98) THEN H1NR13_3 = .;
   IF (H1NR14_3 >= 6 AND H1NR14_3 <= 8) THEN H1NR14_3 = .;
   IF (H1NR15_3 >= 6 AND H1NR15_3 <= 8) THEN H1NR15_3 = .;
   IF (H1NR16_3 >= 6 AND H1NR16_3 <= 8) THEN H1NR16_3 = .;
   IF (H1NR17A3 = 7) THEN H1NR17A3 = .;
   IF (H1NR17B3 = 7) THEN H1NR17B3 = .;
   IF (H1NR17C3 = 7) THEN H1NR17C3 = .;
   IF (H1NR17D3 = 7) THEN H1NR17D3 = .;
   IF (H1NR17E3 = 7) THEN H1NR17E3 = .;
   IF (H1NR17F3 = 7) THEN H1NR17F3 = .;
   IF (H1NR18A3 >= 6 AND H1NR18A3 <= 8) THEN H1NR18A3 = .;
   IF (H1NR18B3 >= 6 AND H1NR18B3 <= 8) THEN H1NR18B3 = .;
   IF (H1NR18C3 >= 6 AND H1NR18C3 <= 8) THEN H1NR18C3 = .;
   IF (H1NR18D3 >= 6 AND H1NR18D3 <= 8) THEN H1NR18D3 = .;
   IF (H1NR18E3 >= 6 AND H1NR18E3 <= 8) THEN H1NR18E3 = .;
   IF (H1NR19A3 = 7) THEN H1NR19A3 = .;
   IF (H1NR19B3 = 7) THEN H1NR19B3 = .;
   IF (H1NR19C3 = 7) THEN H1NR19C3 = .;
   IF (H1NR19D3 = 7) THEN H1NR19D3 = .;
   IF (H1NR19E3 = 7) THEN H1NR19E3 = .;
   IF (H1NR19F3 = 7) THEN H1NR19F3 = .;
   IF (H1NR19G3 = 7) THEN H1NR19G3 = .;
   IF (H1NR20A3 >= 6 AND H1NR20A3 <= 8) THEN H1NR20A3 = .;
   IF (H1NR20B3 >= 6 AND H1NR20B3 <= 8) THEN H1NR20B3 = .;
   IF (H1NR20C3 >= 6 AND H1NR20C3 <= 8) THEN H1NR20C3 = .;
   IF (H1NR20D3 >= 6 AND H1NR20D3 <= 8) THEN H1NR20D3 = .;
   IF (H1NR20E3 >= 6 AND H1NR20E3 <= 8) THEN H1NR20E3 = .;
   IF (H1NR20F3 >= 6 AND H1NR20F3 <= 8) THEN H1NR20F3 = .;
   IF (H1NR20G3 >= 6 AND H1NR20G3 <= 8) THEN H1NR20G3 = .;
   IF (H1NR20H3 >= 6 AND H1NR20H3 <= 8) THEN H1NR20H3 = .;
   IF (H1NR21_3 >= 6 AND H1NR21_3 <= 8) THEN H1NR21_3 = .;
   IF (H1NR22_3 >= 6 AND H1NR22_3 <= 8) THEN H1NR22_3 = .;
   IF (H1NR23M3 >= 96 AND H1NR23M3 <= 98) THEN H1NR23M3 = .;
   IF (H1NR23Y3 >= 96 AND H1NR23Y3 <= 98) THEN H1NR23Y3 = .;
   IF (H1NR24M3 >= 96 AND H1NR24M3 <= 98) THEN H1NR24M3 = .;
   IF (H1NR24Y3 >= 96 AND H1NR24Y3 <= 98) THEN H1NR24Y3 = .;
   IF (H1NR25_3 >= 6 AND H1NR25_3 <= 8) THEN H1NR25_3 = .;
   IF (H1NR26_3 = 7) THEN H1NR26_3 = .;
   IF (H1NR27A3 = 97) THEN H1NR27A3 = .;
   IF (H1NR27B3 = 96 OR H1NR27B3 = 97) THEN H1NR27B3 = .;
   IF (H1NR27C3 = 97 OR H1NR27C3 = 98) THEN H1NR27C3 = .;
   IF (H1NR28_3 = 7) THEN H1NR28_3 = .;
   IF (H1NR29_3 = 6 OR H1NR29_3 = 7) THEN H1NR29_3 = .;
   IF (H1NR30_3 = 7) THEN H1NR30_3 = .;
   IF (H1NR31A3 = 97) THEN H1NR31A3 = .;
   IF (H1NR31B3 = 97) THEN H1NR31B3 = .;
   IF (H1NR31C3 = 97 OR H1NR31C3 = 98) THEN H1NR31C3 = .;
   IF (H1NR32_3 = 7) THEN H1NR32_3 = .;
   IF (H1NR33_3 = 7) THEN H1NR33_3 = .;
   IF (H1NR34_3 = 7) THEN H1NR34_3 = .;
   IF (H1NR35_3 = 7) THEN H1NR35_3 = .;
   IF (H1NR36A3 = 97) THEN H1NR36A3 = .;
   IF (H1NR36B3 = 97) THEN H1NR36B3 = .;
   IF (H1NR36C3 = 97) THEN H1NR36C3 = .;
   IF (H1NR37_3 = 7) THEN H1NR37_3 = .;
   IF (H1NR38_3 = 7) THEN H1NR38_3 = .;
   IF (H1NR39_3 = 997) THEN H1NR39_3 = .;
   IF (H1NR40_3 = 7) THEN H1NR40_3 = .;
   IF (H1NR41_3 = 7) THEN H1NR41_3 = .;
   IF (H1NR42_3 = 6 OR H1NR42_3 = 7) THEN H1NR42_3 = .;
   IF (H1NR43_3 = 97) THEN H1NR43_3 = .;
   IF (H1NR44 >= 6 AND H1NR44 <= 8) THEN H1NR44 = .;
   IF (H1NR45 >= 96 AND H1NR45 <= 98) THEN H1NR45 = .;
   IF (H1NR46 >= 96 AND H1NR46 <= 98) THEN H1NR46 = .;
   IF (H1NR47 = 6 OR H1NR47 = 7) THEN H1NR47 = .;
   IF (H1NR48 >= 6 AND H1NR48 <= 8) THEN H1NR48 = .;
   IF (H1NR49 = 7) THEN H1NR49 = .;
   IF (H1NR50 >= 96 AND H1NR50 <= 98) THEN H1NR50 = .;
   IF (H1NR51 >= 96 AND H1NR51 <= 99) THEN H1NR51 = .;
   IF (H1NR52 >= 6 AND H1NR52 <= 8) THEN H1NR52 = .;
   IF (H1NR53 = 7) THEN H1NR53 = .;
   IF (RXCARD1 = 7) THEN RXCARD1 = .;
   IF (RXCARD2 = 7) THEN RXCARD2 = .;
   IF (RXCARD3 = 7) THEN RXCARD3 = .;
   IF (H1BC1 >= 6 AND H1BC1 <= 9) THEN H1BC1 = .;
   IF (H1BC2 >= 6 AND H1BC2 <= 9) THEN H1BC2 = .;
   IF (H1BC3 >= 6 AND H1BC3 <= 9) THEN H1BC3 = .;
   IF (H1BC4 >= 6 AND H1BC4 <= 9) THEN H1BC4 = .;
   IF (H1BC5 >= 6 AND H1BC5 <= 9) THEN H1BC5 = .;
   IF (H1BC6 >= 6 AND H1BC6 <= 9) THEN H1BC6 = .;
   IF (H1BC7 >= 6 AND H1BC7 <= 9) THEN H1BC7 = .;
   IF (H1BC8 >= 6 AND H1BC8 <= 9) THEN H1BC8 = .;
   IF (H1TO1 = 6 OR H1TO1 = 8 OR H1TO1 = 9) THEN H1TO1 = .;
   IF (H1TO2 >= 96 AND H1TO2 <= 98) THEN H1TO2 = .;
   IF (H1TO3 = 6 OR H1TO3 = 7) THEN H1TO3 = .;
   IF (H1TO4 >= 96 AND H1TO4 <= 98) THEN H1TO4 = .;
   IF (H1TO5 >= 96 AND H1TO5 <= 98) THEN H1TO5 = .;
   IF (H1TO6M >= 96 AND H1TO6M <= 99) THEN H1TO6M = .;
   IF (H1TO6Y >= 96 AND H1TO6Y <= 99) THEN H1TO6Y = .;
   IF (H1TO7 >= 96 AND H1TO7 <= 98) THEN H1TO7 = .;
   IF (H1TO8 >= 6 AND H1TO8 <= 8) THEN H1TO8 = .;
   IF (H1TO9 = 6 OR H1TO9 = 8 OR H1TO9 = 9) THEN H1TO9 = .;
   IF (H1TO10 >= 96 AND H1TO10 <= 99) THEN H1TO10 = .;
   IF (H1TO11 >= 96 AND H1TO11 <= 98) THEN H1TO11 = .;
   IF (H1TO12 = 6 OR H1TO12 = 8 OR H1TO12 = 9) THEN H1TO12 = .;
   IF (H1TO13 = 7 OR H1TO13 = 8) THEN H1TO13 = .;
   IF (H1TO14 >= 96 AND H1TO14 <= 98) THEN H1TO14 = .;
   IF (H1TO15 >= 96 AND H1TO15 <= 98) THEN H1TO15 = .;
   IF (H1TO16 >= 96 AND H1TO16 <= 99) THEN H1TO16 = .;
   IF (H1TO17 >= 96 AND H1TO17 <= 98) THEN H1TO17 = .;
   IF (H1TO18 >= 96 AND H1TO18 <= 98) THEN H1TO18 = .;
   IF (H1TO19 >= 96 AND H1TO19 <= 98) THEN H1TO19 = .;
   IF (H1TO20 >= 6 AND H1TO20 <= 8) THEN H1TO20 = .;
   IF (H1TO21 = 6 OR H1TO21 = 7 OR H1TO21 = 9) THEN H1TO21 = .;
   IF (H1TO22 = 6 OR H1TO22 = 7) THEN H1TO22 = .;
   IF (H1TO23 = 6 OR H1TO23 = 7) THEN H1TO23 = .;
   IF (H1TO24 >= 6 AND H1TO24 <= 8) THEN H1TO24 = .;
   IF (H1TO25 >= 6 AND H1TO25 <= 8) THEN H1TO25 = .;
   IF (H1TO26 >= 6 AND H1TO26 <= 8) THEN H1TO26 = .;
   IF (H1TO27 >= 6 AND H1TO27 <= 8) THEN H1TO27 = .;
   IF (H1TO28 >= 6 AND H1TO28 <= 8) THEN H1TO28 = .;
   IF (H1TO29 = 6 OR H1TO29 = 8 OR H1TO29 = 9) THEN H1TO29 = .;
   IF (H1TO30 = 96 OR H1TO30 = 98 OR H1TO30 = 99) THEN H1TO30 = .;
   IF (H1TO31 >= 996 AND H1TO31 <= 999) THEN H1TO31 = .;
   IF (H1TO32 >= 996 AND H1TO32 <= 999) THEN H1TO32 = .;
   IF (H1TO33 = 6 OR H1TO33 = 8 OR H1TO33 = 9) THEN H1TO33 = .;
   IF (H1TO34 = 96 OR H1TO34 = 98 OR H1TO34 = 99) THEN H1TO34 = .;
   IF (H1TO35 >= 996 AND H1TO35 <= 999) THEN H1TO35 = .;
   IF (H1TO36 >= 996 AND H1TO36 <= 999) THEN H1TO36 = .;
   IF (H1TO37 = 96 OR H1TO37 = 98 OR H1TO37 = 99) THEN H1TO37 = .;
   IF (H1TO38 >= 996 AND H1TO38 <= 999) THEN H1TO38 = .;
   IF (H1TO39 >= 996 AND H1TO39 <= 999) THEN H1TO39 = .;
   IF (H1TO40 = 96 OR H1TO40 = 98 OR H1TO40 = 99) THEN H1TO40 = .;
   IF (H1TO41 >= 996 AND H1TO41 <= 999) THEN H1TO41 = .;
   IF (H1TO42 >= 996 AND H1TO42 <= 999) THEN H1TO42 = .;
   IF (H1TO43 >= 6 AND H1TO43 <= 9) THEN H1TO43 = .;
   IF (H1TO44 = 6 OR H1TO44 = 7) THEN H1TO44 = .;
   IF (H1TO45 = 97 OR H1TO45 = 98) THEN H1TO45 = .;
   IF (H1TO46 = 7) THEN H1TO46 = .;
   IF (H1TO47 = 7) THEN H1TO47 = .;
   IF (H1TO48 = 7) THEN H1TO48 = .;
   IF (H1TO49 = 7) THEN H1TO49 = .;
   IF (H1TO50 = 6 OR H1TO50 = 8 OR H1TO50 = 9) THEN H1TO50 = .;
   IF (H1TO51 = 6 OR H1TO51 = 8 OR H1TO51 = 9) THEN H1TO51 = .;
   IF (H1TO52 = 6 OR H1TO52 = 8 OR H1TO52 = 9) THEN H1TO52 = .;
   IF (H1TO53 = 6 OR H1TO53 = 8 OR H1TO53 = 9) THEN H1TO53 = .;
   IF (H1TO54A >= 6 AND H1TO54A <= 8) THEN H1TO54A = .;
   IF (H1TO54B >= 6 AND H1TO54B <= 8) THEN H1TO54B = .;
   IF (H1TO54C >= 6 AND H1TO54C <= 8) THEN H1TO54C = .;
   IF (H1TO54D >= 6 AND H1TO54D <= 8) THEN H1TO54D = .;
   IF (H1DS1 = 6 OR H1DS1 = 8 OR H1DS1 = 9) THEN H1DS1 = .;
   IF (H1DS2 = 6 OR H1DS2 = 8 OR H1DS2 = 9) THEN H1DS2 = .;
   IF (H1DS3 = 6 OR H1DS3 = 8 OR H1DS3 = 9) THEN H1DS3 = .;
   IF (H1DS4 = 6 OR H1DS4 = 8 OR H1DS4 = 9) THEN H1DS4 = .;
   IF (H1DS5 = 6 OR H1DS5 = 8 OR H1DS5 = 9) THEN H1DS5 = .;
   IF (H1DS6 = 6 OR H1DS6 = 8 OR H1DS6 = 9) THEN H1DS6 = .;
   IF (H1DS7 = 6 OR H1DS7 = 8 OR H1DS7 = 9) THEN H1DS7 = .;
   IF (H1DS8 = 6 OR H1DS8 = 8 OR H1DS8 = 9) THEN H1DS8 = .;
   IF (H1DS9 = 6 OR H1DS9 = 8 OR H1DS9 = 9) THEN H1DS9 = .;
   IF (H1DS10 = 6 OR H1DS10 = 8 OR H1DS10 = 9) THEN H1DS10 = .;
   IF (H1DS11 = 6 OR H1DS11 = 8 OR H1DS11 = 9) THEN H1DS11 = .;
   IF (H1DS12 = 6 OR H1DS12 = 8 OR H1DS12 = 9) THEN H1DS12 = .;
   IF (H1DS13 = 6 OR H1DS13 = 8 OR H1DS13 = 9) THEN H1DS13 = .;
   IF (H1DS14 = 6 OR H1DS14 = 8 OR H1DS14 = 9) THEN H1DS14 = .;
   IF (H1DS15 = 6 OR H1DS15 = 8 OR H1DS15 = 9) THEN H1DS15 = .;
   IF (H1JO1 >= 6 AND H1JO1 <= 8) THEN H1JO1 = .;
   IF (H1JO2 = 7) THEN H1JO2 = .;
   IF (H1JO3 >= 6 AND H1JO3 <= 8) THEN H1JO3 = .;
   IF (H1JO4 = 7) THEN H1JO4 = .;
   IF (H1JO5 = 6 OR H1JO5 = 7) THEN H1JO5 = .;
   IF (H1JO6A >= 6 AND H1JO6A <= 8) THEN H1JO6A = .;
   IF (H1JO6B >= 6 AND H1JO6B <= 8) THEN H1JO6B = .;
   IF (H1JO6C >= 6 AND H1JO6C <= 8) THEN H1JO6C = .;
   IF (H1JO6D >= 6 AND H1JO6D <= 8) THEN H1JO6D = .;
   IF (H1JO6E >= 6 AND H1JO6E <= 8) THEN H1JO6E = .;
   IF (H1JO7 = 6 OR H1JO7 = 7) THEN H1JO7 = .;
   IF (H1JO8A = 7) THEN H1JO8A = .;
   IF (H1JO8B = 7) THEN H1JO8B = .;
   IF (H1JO8C = 7) THEN H1JO8C = .;
   IF (H1JO8D = 7) THEN H1JO8D = .;
   IF (H1JO8E = 7) THEN H1JO8E = .;
   IF (H1JO9 >= 6 AND H1JO9 <= 8) THEN H1JO9 = .;
   IF (H1JO10 >= 6 AND H1JO10 <= 8) THEN H1JO10 = .;
   IF (H1JO11 = 6 OR H1JO11 = 7) THEN H1JO11 = .;
   IF (H1JO12 = 7) THEN H1JO12 = .;
   IF (H1JO13 = 7) THEN H1JO13 = .;
   IF (H1JO14 = 6 OR H1JO14 = 7) THEN H1JO14 = .;
   IF (H1JO15 = 6 OR H1JO15 = 7) THEN H1JO15 = .;
   IF (H1JO16 = 7) THEN H1JO16 = .;
   IF (H1JO17 = 6 OR H1JO17 = 7) THEN H1JO17 = .;
   IF (H1JO18A >= 6 AND H1JO18A <= 8) THEN H1JO18A = .;
   IF (H1JO18B >= 6 AND H1JO18B <= 8) THEN H1JO18B = .;
   IF (H1JO18C >= 6 AND H1JO18C <= 8) THEN H1JO18C = .;
   IF (H1JO18D >= 6 AND H1JO18D <= 8) THEN H1JO18D = .;
   IF (H1JO18E >= 6 AND H1JO18E <= 8) THEN H1JO18E = .;
   IF (H1JO19 = 6 OR H1JO19 = 7) THEN H1JO19 = .;
   IF (H1JO20 = 6 OR H1JO20 = 7) THEN H1JO20 = .;
   IF (H1JO21 = 6 OR H1JO21 = 7) THEN H1JO21 = .;
   IF (H1JO22A >= 6 AND H1JO22A <= 8) THEN H1JO22A = .;
   IF (H1JO22B >= 6 AND H1JO22B <= 8) THEN H1JO22B = .;
   IF (H1JO22C >= 6 AND H1JO22C <= 8) THEN H1JO22C = .;
   IF (H1JO22D >= 6 AND H1JO22D <= 8) THEN H1JO22D = .;
   IF (H1JO22E >= 6 AND H1JO22E <= 8) THEN H1JO22E = .;
   IF (H1JO23 = 6 OR H1JO23 = 7) THEN H1JO23 = .;
   IF (H1JO24 >= 6 AND H1JO24 <= 8) THEN H1JO24 = .;
   IF (H1JO25 = 6 OR H1JO25 = 8 OR H1JO25 = 9) THEN H1JO25 = .;
   IF (H1JO26 = 6 OR H1JO26 = 8 OR H1JO26 = 9) THEN H1JO26 = .;
   IF (H1FV1 = 6 OR H1FV1 = 8 OR H1FV1 = 9) THEN H1FV1 = .;
   IF (H1FV2 = 6 OR H1FV2 = 8 OR H1FV2 = 9) THEN H1FV2 = .;
   IF (H1FV3 = 6 OR H1FV3 = 8 OR H1FV3 = 9) THEN H1FV3 = .;
   IF (H1FV4 = 6 OR H1FV4 = 8 OR H1FV4 = 9) THEN H1FV4 = .;
   IF (H1FV5 = 6 OR H1FV5 = 8 OR H1FV5 = 9) THEN H1FV5 = .;
   IF (H1FV6 = 6 OR H1FV6 = 8 OR H1FV6 = 9) THEN H1FV6 = .;
   IF (H1FV7 = 6 OR H1FV7 = 8 OR H1FV7 = 9) THEN H1FV7 = .;
   IF (H1FV8 = 6 OR H1FV8 = 8 OR H1FV8 = 9) THEN H1FV8 = .;
   IF (H1FV9 = 6 OR H1FV9 = 8 OR H1FV9 = 9) THEN H1FV9 = .;
   IF (H1FV10 >= 6 AND H1FV10 <= 8) THEN H1FV10 = .;
   IF (H1FV11 = 96 OR H1FV11 = 98 OR H1FV11 = 99) THEN H1FV11 = .;
   IF (H1FV12 >= 6 AND H1FV12 <= 9) THEN H1FV12 = .;
   IF (H1FV13 >= 996 AND H1FV13 <= 999) THEN H1FV13 = .;
   IF (H1FV14M >= 96 AND H1FV14M <= 99) THEN H1FV14M = .;
   IF (H1FV14Y >= 96 AND H1FV14Y <= 99) THEN H1FV14Y = .;
   IF (H1MP1 >= 6 AND H1MP1 <= 9) THEN H1MP1 = .;
   IF (H1MP2 >= 6 AND H1MP2 <= 9) THEN H1MP2 = .;
   IF (H1MP3 >= 6 AND H1MP3 <= 9) THEN H1MP3 = .;
   IF (H1MP4 >= 6 AND H1MP4 <= 9) THEN H1MP4 = .;
   IF (H1FP1 >= 6 AND H1FP1 <= 9) THEN H1FP1 = .;
   IF (H1FP2 >= 6 AND H1FP2 <= 9) THEN H1FP2 = .;
   IF (H1FP3 >= 6 AND H1FP3 <= 9) THEN H1FP3 = .;
   IF (H1FP4 >= 96 AND H1FP4 <= 98) THEN H1FP4 = .;
   IF (H1FP5M >= 96 AND H1FP5M <= 99) THEN H1FP5M = .;
   IF (H1FP5D >= 96 AND H1FP5D <= 99) THEN H1FP5D = .;
   IF (H1FP6 >= 6 AND H1FP6 <= 9) THEN H1FP6 = .;
   IF (H1FP7 >= 6 AND H1FP7 <= 8) THEN H1FP7 = .;
   IF (H1FP8 = 97 OR H1FP8 = 98) THEN H1FP8 = .;
   IF (H1FP9M >= 96 AND H1FP9M <= 98) THEN H1FP9M = .;
   IF (H1FP9Y >= 96 AND H1FP9Y <= 98) THEN H1FP9Y = .;
   IF (H1FP10 = 7) THEN H1FP10 = .;
   IF (H1FP11M1 = 97 OR H1FP11M1 = 98) THEN H1FP11M1 = .;
   IF (H1FP11Y1 = 97 OR H1FP11Y1 = 98) THEN H1FP11Y1 = .;
   IF (H1FP12_1 = 7) THEN H1FP12_1 = .;
   IF (H1FP13A1 = 97) THEN H1FP13A1 = .;
   IF (H1FP13B1 = 97) THEN H1FP13B1 = .;
   IF (H1FP13C1 = 97) THEN H1FP13C1 = .;
   IF (H1FP14_1 = 7) THEN H1FP14_1 = .;
   IF (H1FP15_1 = 7) THEN H1FP15_1 = .;
   IF (H1FP17_1 = 7) THEN H1FP17_1 = .;
   IF (H1FP20M1 = 97 OR H1FP20M1 = 98) THEN H1FP20M1 = .;
   IF (H1FP20Y1 = 97 OR H1FP20Y1 = 98) THEN H1FP20Y1 = .;
   IF (H1FP21_1 = 7) THEN H1FP21_1 = .;
   IF (H1FP22_1 = 7) THEN H1FP22_1 = .;
   IF (H1FP23A1 = 7) THEN H1FP23A1 = .;
   IF (H1FP24A1 = 7) THEN H1FP24A1 = .;
   IF (H1FP11M2 = 97 OR H1FP11M2 = 98) THEN H1FP11M2 = .;
   IF (H1FP11Y2 = 97 OR H1FP11Y2 = 98) THEN H1FP11Y2 = .;
   IF (H1FP12_2 = 7) THEN H1FP12_2 = .;
   IF (H1FP13A2 = 97) THEN H1FP13A2 = .;
   IF (H1FP13B2 = 97) THEN H1FP13B2 = .;
   IF (H1FP13C2 = 97) THEN H1FP13C2 = .;
   IF (H1FP14_2 = 7) THEN H1FP14_2 = .;
   IF (H1FP15_2 = 7) THEN H1FP15_2 = .;
   IF (H1FP17_2 = 7) THEN H1FP17_2 = .;
   IF (H1FP20M2 = 97 OR H1FP20M2 = 98) THEN H1FP20M2 = .;
   IF (H1FP20Y2 = 97 OR H1FP20Y2 = 98) THEN H1FP20Y2 = .;
   IF (H1FP21_2 = 7) THEN H1FP21_2 = .;
   IF (H1FP22_2 = 7) THEN H1FP22_2 = .;
   IF (H1FP23A2 = 7) THEN H1FP23A2 = .;
   IF (H1FP24A2 = 7) THEN H1FP24A2 = .;
   IF (H1FP11M3 = 97) THEN H1FP11M3 = .;
   IF (H1FP11Y3 = 97) THEN H1FP11Y3 = .;
   IF (H1FP12_3 = 7) THEN H1FP12_3 = .;
   IF (H1FP13A3 = 97) THEN H1FP13A3 = .;
   IF (H1FP13B3 = 97) THEN H1FP13B3 = .;
   IF (H1FP13C3 = 97) THEN H1FP13C3 = .;
   IF (H1FP14_3 = 7) THEN H1FP14_3 = .;
   IF (H1FP15_3 = 7) THEN H1FP15_3 = .;
   IF (H1FP17_3 = 7) THEN H1FP17_3 = .;
   IF (H1FP20M3 = 97 OR H1FP20M3 = 98) THEN H1FP20M3 = .;
   IF (H1FP20Y3 = 97 OR H1FP20Y3 = 98) THEN H1FP20Y3 = .;
   IF (H1FP21_3 = 7) THEN H1FP21_3 = .;
   IF (H1FP22_3 = 7) THEN H1FP22_3 = .;
   IF (H1FP23A3 = 7) THEN H1FP23A3 = .;
   IF (H1FP24A3 = 7) THEN H1FP24A3 = .;
   IF (H1FP11M4 = 97) THEN H1FP11M4 = .;
   IF (H1FP11Y4 = 97) THEN H1FP11Y4 = .;
   IF (H1FP12_4 = 7) THEN H1FP12_4 = .;
   IF (H1FP13A4 = 97) THEN H1FP13A4 = .;
   IF (H1FP13B4 = 97) THEN H1FP13B4 = .;
   IF (H1FP13C4 = 97) THEN H1FP13C4 = .;
   IF (H1FP14_4 = 7) THEN H1FP14_4 = .;
   IF (H1FP15_4 = 7) THEN H1FP15_4 = .;
   IF (H1FP17_4 = 7) THEN H1FP17_4 = .;
   IF (H1FP20M4 = 97) THEN H1FP20M4 = .;
   IF (H1FP20Y4 = 97) THEN H1FP20Y4 = .;
   IF (H1FP21_4 = 7) THEN H1FP21_4 = .;
   IF (H1FP22_4 = 7) THEN H1FP22_4 = .;
   IF (H1FP23A4 = 7) THEN H1FP23A4 = .;
   IF (H1FP24A4 = 7) THEN H1FP24A4 = .;
   IF (H1FP11M5 = 97) THEN H1FP11M5 = .;
   IF (H1FP11Y5 = 97) THEN H1FP11Y5 = .;
   IF (H1FP12_5 = 7) THEN H1FP12_5 = .;
   IF (H1FP13A5 = 97) THEN H1FP13A5 = .;
   IF (H1FP13B5 = 97) THEN H1FP13B5 = .;
   IF (H1FP13C5 = 97) THEN H1FP13C5 = .;
   IF (H1FP14_5 = 7) THEN H1FP14_5 = .;
   IF (H1FP15_5 = 7) THEN H1FP15_5 = .;
   IF (H1FP17_5 = 7) THEN H1FP17_5 = .;
   IF (H1FP20M5 = 97) THEN H1FP20M5 = .;
   IF (H1FP20Y5 = 97) THEN H1FP20Y5 = .;
   IF (H1FP21_5 = 7) THEN H1FP21_5 = .;
   IF (H1FP22_5 = 7) THEN H1FP22_5 = .;
   IF (H1FP23A5 = 7) THEN H1FP23A5 = .;
   IF (H1FP24A5 = 7) THEN H1FP24A5 = .;
   IF (H1SU1 = 6 OR H1SU1 = 8 OR H1SU1 = 9) THEN H1SU1 = .;
   IF (H1SU2 >= 6 AND H1SU2 <= 8) THEN H1SU2 = .;
   IF (H1SU3 = 7) THEN H1SU3 = .;
   IF (H1SU4 = 6 OR H1SU4 = 8 OR H1SU4 = 9) THEN H1SU4 = .;
   IF (H1SU5 >= 6 AND H1SU5 <= 8) THEN H1SU5 = .;
   IF (H1SU6 = 6 OR H1SU6 = 8 OR H1SU6 = 9) THEN H1SU6 = .;
   IF (H1SU7 = 7 OR H1SU7 = 8) THEN H1SU7 = .;
   IF (H1SU8 = 6 OR H1SU8 = 8 OR H1SU8 = 9) THEN H1SU8 = .;
   IF (H1PA1 >= 6 AND H1PA1 <= 9) THEN H1PA1 = .;
   IF (H1PA2 >= 6 AND H1PA2 <= 9) THEN H1PA2 = .;
   IF (H1PA3 >= 6 AND H1PA3 <= 9) THEN H1PA3 = .;
   IF (H1PA4 >= 6 AND H1PA4 <= 9) THEN H1PA4 = .;
   IF (H1PA5 >= 6 AND H1PA5 <= 9) THEN H1PA5 = .;
   IF (H1PA6 >= 6 AND H1PA6 <= 9) THEN H1PA6 = .;
   IF (H1PA7 >= 6 AND H1PA7 <= 9) THEN H1PA7 = .;
   IF (H1PR1 = 96 OR H1PR1 = 98) THEN H1PR1 = .;
   IF (H1PR2 = 96 OR H1PR2 = 98) THEN H1PR2 = .;
   IF (H1PR3 = 96 OR H1PR3 = 98) THEN H1PR3 = .;
   IF (H1PR4 = 96 OR H1PR4 = 98) THEN H1PR4 = .;
   IF (H1PR5 = 96 OR H1PR5 = 98) THEN H1PR5 = .;
   IF (H1PR6 = 96 OR H1PR6 = 98) THEN H1PR6 = .;
   IF (H1PR7 = 96 OR H1PR7 = 98) THEN H1PR7 = .;
   IF (H1PR8 = 96 OR H1PR8 = 98) THEN H1PR8 = .;
   IF (H1NB1 = 6 OR H1NB1 = 8 OR H1NB1 = 9) THEN H1NB1 = .;
   IF (H1NB2 = 6 OR H1NB2 = 8 OR H1NB2 = 9) THEN H1NB2 = .;
   IF (H1NB3 = 6 OR H1NB3 = 8 OR H1NB3 = 9) THEN H1NB3 = .;
   IF (H1NB4 = 6 OR H1NB4 = 8 OR H1NB4 = 9) THEN H1NB4 = .;
   IF (H1NB5 = 6 OR H1NB5 = 8) THEN H1NB5 = .;
   IF (H1NB6 = 6 OR H1NB6 = 8) THEN H1NB6 = .;
   IF (H1NB7 = 6 OR H1NB7 = 8) THEN H1NB7 = .;
   IF (H1RE1 = 96 OR H1RE1 = 98 OR H1RE1 = 99) THEN H1RE1 = .;
   IF (H1RE2 >= 6 AND H1RE2 <= 8) THEN H1RE2 = .;
   IF (H1RE3 >= 6 AND H1RE3 <= 8) THEN H1RE3 = .;
   IF (H1RE4 >= 6 AND H1RE4 <= 8) THEN H1RE4 = .;
   IF (H1RE5 >= 6 AND H1RE5 <= 9) THEN H1RE5 = .;
   IF (H1RE6 >= 6 AND H1RE6 <= 8) THEN H1RE6 = .;
   IF (H1RE7 >= 6 AND H1RE7 <= 8) THEN H1RE7 = .;
   IF (H1EE1 = 6 OR H1EE1 = 8) THEN H1EE1 = .;
   IF (H1EE2 = 6 OR H1EE2 = 8) THEN H1EE2 = .;
   IF (H1EE3 = 6 OR H1EE3 = 8) THEN H1EE3 = .;
   IF (H1EE4 = 996.0 OR H1EE4 = 998.0 OR H1EE4 = 999.0) THEN H1EE4 = .;
   IF (H1EE5 >= 996 AND H1EE5 <= 999) THEN H1EE5 = .;
   IF (H1EE6 = 996 OR H1EE6 = 998 OR H1EE6 = 999) THEN H1EE6 = .;
   IF (H1EE7 >= 996.0 AND H1EE7 <= 999.0) THEN H1EE7 = .;
   IF (H1EE8 = 96 OR H1EE8 = 98 OR H1EE8 = 99) THEN H1EE8 = .;
   IF (H1EE9 = 6 OR H1EE9 = 8) THEN H1EE9 = .;
   IF (H1EE10 = 7) THEN H1EE10 = .;
   IF (H1EE11 >= 6 AND H1EE11 <= 8) THEN H1EE11 = .;
   IF (H1EE12 = 6 OR H1EE12 = 8) THEN H1EE12 = .;
   IF (H1EE13 = 6 OR H1EE13 = 8) THEN H1EE13 = .;
   IF (H1EE14 = 6 OR H1EE14 = 8) THEN H1EE14 = .;
   IF (H1EE15 = 6 OR H1EE15 = 8) THEN H1EE15 = .;
   IF (STUDSIBA >= 6 AND STUDSIBA <= 8) THEN STUDSIBA = .;
   IF (TWINA = 7 OR TWINA = 9) THEN TWINA = .;
   IF (H1WS1A >= 6 AND H1WS1A <= 9) THEN H1WS1A = .;
   IF (H1WS2A >= 6 AND H1WS2A <= 9) THEN H1WS2A = .;
   IF (H1WS3A >= 6 AND H1WS3A <= 9) THEN H1WS3A = .;
   IF (H1WS4A >= 6 AND H1WS4A <= 9) THEN H1WS4A = .;
   IF (H1WS5A >= 6 AND H1WS5A <= 99) THEN H1WS5A = .;
   IF (H1WS6A >= 6 AND H1WS6A <= 9) THEN H1WS6A = .;
   IF (H1WS7A = 6 OR H1WS7A = 7) THEN H1WS7A = .;
   IF (H1WS8A = 7 OR H1WS8A = 8) THEN H1WS8A = .;
   IF (H1WS9A = 7 OR H1WS9A = 8) THEN H1WS9A = .;
   IF (H1WS10A = 7) THEN H1WS10A = .;
   IF (H1WS11A = 7) THEN H1WS11A = .;
   IF (H1WS12A >= 6 AND H1WS12A <= 9) THEN H1WS12A = .;
   IF (STUDSIBB >= 6 AND STUDSIBB <= 8) THEN STUDSIBB = .;
   IF (TWINB = 6 OR TWINB = 7) THEN TWINB = .;
   IF (H1WS1B >= 6 AND H1WS1B <= 8) THEN H1WS1B = .;
   IF (H1WS2B >= 6 AND H1WS2B <= 8) THEN H1WS2B = .;
   IF (H1WS3B >= 6 AND H1WS3B <= 8) THEN H1WS3B = .;
   IF (H1WS4B >= 6 AND H1WS4B <= 8) THEN H1WS4B = .;
   IF (H1WS5B >= 96 AND H1WS5B <= 98) THEN H1WS5B = .;
   IF (H1WS6B >= 6 AND H1WS6B <= 9) THEN H1WS6B = .;
   IF (H1WS7B = 6 OR H1WS7B = 7) THEN H1WS7B = .;
   IF (H1WS8B = 6 OR H1WS8B = 7) THEN H1WS8B = .;
   IF (H1WS9B = 6 OR H1WS9B = 7) THEN H1WS9B = .;
   IF (H1WS10B = 7) THEN H1WS10B = .;
   IF (H1WS11B = 7) THEN H1WS11B = .;
   IF (H1WS12B >= 6 AND H1WS12B <= 8) THEN H1WS12B = .;
   IF (STUDSIBC = 7) THEN STUDSIBC = .;
   IF (TWINC = 7) THEN TWINC = .;
   IF (H1WS1C >= 6 AND H1WS1C <= 8) THEN H1WS1C = .;
   IF (H1WS2C >= 6 AND H1WS2C <= 8) THEN H1WS2C = .;
   IF (H1WS3C >= 6 AND H1WS3C <= 8) THEN H1WS3C = .;
   IF (H1WS4C >= 6 AND H1WS4C <= 8) THEN H1WS4C = .;
   IF (H1WS5C >= 96 AND H1WS5C <= 98) THEN H1WS5C = .;
   IF (H1WS6C >= 6 AND H1WS6C <= 8) THEN H1WS6C = .;
   IF (H1WS7C = 7) THEN H1WS7C = .;
   IF (H1WS8C = 7) THEN H1WS8C = .;
   IF (H1WS9C = 7) THEN H1WS9C = .;
   IF (H1WS10C = 7) THEN H1WS10C = .;
   IF (H1WS11C = 7) THEN H1WS11C = .;
   IF (H1WS12C >= 6 AND H1WS12C <= 8) THEN H1WS12C = .;
   IF (STUDSIBD >= 6 AND STUDSIBD <= 8) THEN STUDSIBD = .;
   IF (TWIND = 6 OR TWIND = 7) THEN TWIND = .;
   IF (H1WS1D = 6 OR H1WS1D = 7) THEN H1WS1D = .;
   IF (H1WS2D = 6 OR H1WS2D = 7) THEN H1WS2D = .;
   IF (H1WS3D = 6 OR H1WS3D = 7) THEN H1WS3D = .;
   IF (H1WS4D = 6 OR H1WS4D = 7) THEN H1WS4D = .;
   IF (H1WS5D = 96 OR H1WS5D = 97) THEN H1WS5D = .;
   IF (H1WS6D = 6 OR H1WS6D = 7) THEN H1WS6D = .;
   IF (H1WS7D = 7) THEN H1WS7D = .;
   IF (H1WS8D = 7) THEN H1WS8D = .;
   IF (H1WS9D = 7) THEN H1WS9D = .;
   IF (H1WS10D = 7) THEN H1WS10D = .;
   IF (H1WS11D = 7) THEN H1WS11D = .;
   IF (H1WS12D = 6 OR H1WS12D = 7) THEN H1WS12D = .;
   IF (STUDSIBE >= 6 AND STUDSIBE <= 8) THEN STUDSIBE = .;
   IF (TWINE = 6 OR TWINE = 7) THEN TWINE = .;
   IF (H1WS1E = 6 OR H1WS1E = 7) THEN H1WS1E = .;
   IF (H1WS2E = 6 OR H1WS2E = 7) THEN H1WS2E = .;
   IF (H1WS3E = 6 OR H1WS3E = 7) THEN H1WS3E = .;
   IF (H1WS4E = 6 OR H1WS4E = 7) THEN H1WS4E = .;
   IF (H1WS5E = 96 OR H1WS5E = 97) THEN H1WS5E = .;
   IF (H1WS6E = 6 OR H1WS6E = 7) THEN H1WS6E = .;
   IF (H1WS7E = 7) THEN H1WS7E = .;
   IF (H1WS8E = 7) THEN H1WS8E = .;
   IF (H1WS9E = 7) THEN H1WS9E = .;
   IF (H1WS10E = 7) THEN H1WS10E = .;
   IF (H1WS11E = 7) THEN H1WS11E = .;
   IF (H1WS12E = 6 OR H1WS12E = 7) THEN H1WS12E = .;
   IF (STUDSIBF = 7) THEN STUDSIBF = .;
   IF (TWINF = 7) THEN TWINF = .;
   IF (H1WS1F = 7) THEN H1WS1F = .;
   IF (H1WS2F = 7) THEN H1WS2F = .;
   IF (H1WS3F = 7) THEN H1WS3F = .;
   IF (H1WS4F = 7) THEN H1WS4F = .;
   IF (H1WS5F = 7) THEN H1WS5F = .;
   IF (H1WS6F = 7) THEN H1WS6F = .;
   IF (H1WS7F = 7) THEN H1WS7F = .;
   IF (H1WS8F = 7) THEN H1WS8F = .;
   IF (H1WS9F = 7) THEN H1WS9F = .;
   IF (H1WS10F = 7) THEN H1WS10F = .;
   IF (H1WS11F = 7) THEN H1WS11F = .;
   IF (H1WS12F = 7) THEN H1WS12F = .;
   IF (STUDSIBG = 7) THEN STUDSIBG = .;
   IF (TWING = 7) THEN TWING = .;
   IF (H1WS1G = 7) THEN H1WS1G = .;
   IF (H1WS2G = 7) THEN H1WS2G = .;
   IF (H1WS3G = 7) THEN H1WS3G = .;
   IF (H1WS4G = 7) THEN H1WS4G = .;
   IF (H1WS5G = 97) THEN H1WS5G = .;
   IF (H1WS6G = 7) THEN H1WS6G = .;
   IF (H1WS7G = 7) THEN H1WS7G = .;
   IF (H1WS8G = 7) THEN H1WS8G = .;
   IF (H1WS9G = 7) THEN H1WS9G = .;
   IF (H1WS10G = 7) THEN H1WS10G = .;
   IF (H1WS11G = 7) THEN H1WS11G = .;
   IF (H1WS12G = 7) THEN H1WS12G = .;
   IF (H1WS13 = 6 OR H1WS13 = 8 OR H1WS13 = 9) THEN H1WS13 = .;
   IF (H1IR1 = 6 OR H1IR1 = 8) THEN H1IR1 = .;
   IF (H1IR2 = 6 OR H1IR2 = 8) THEN H1IR2 = .;
   IF (H1IR3 = 6 OR H1IR3 = 8) THEN H1IR3 = .;
   IF (H1IR4 = 6 OR H1IR4 = 8) THEN H1IR4 = .;
   IF (H1IR5 = 6 OR H1IR5 = 8) THEN H1IR5 = .;
   IF (H1IR6 = 6 OR H1IR6 = 8) THEN H1IR6 = .;
   IF (H1IR7A = 7) THEN H1IR7A = .;
   IF (H1IR7B = 7) THEN H1IR7B = .;
   IF (H1IR7C = 7) THEN H1IR7C = .;
   IF (H1IR7D = 7) THEN H1IR7D = .;
   IF (H1IR7E = 7) THEN H1IR7E = .;
   IF (H1IR7F = 7) THEN H1IR7F = .;
   IF (H1IR7G = 7) THEN H1IR7G = .;
   IF (H1IR7H = 7) THEN H1IR7H = .;
   IF (H1IR7I = 7) THEN H1IR7I = .;
   IF (H1IR7J = 7) THEN H1IR7J = .;
   IF (H1IR7K = 7) THEN H1IR7K = .;
   IF (H1IR7L = 7) THEN H1IR7L = .;
   IF (H1IR7M = 7) THEN H1IR7M = .;
   IF (H1IR7N = 7) THEN H1IR7N = .;
   IF (H1IR7O = 7) THEN H1IR7O = .;
   IF (H1IR7P = 7) THEN H1IR7P = .;
   IF (H1IR7Q = 7) THEN H1IR7Q = .;
   IF (H1IR7R = 7) THEN H1IR7R = .;
   IF (H1IR7S = 7) THEN H1IR7S = .;
   IF (H1IR7T = 7) THEN H1IR7T = .;
   IF (H1IR7U = 7) THEN H1IR7U = .;
   IF (H1IR7V = 7) THEN H1IR7V = .;
   IF (H1IR7W = 7) THEN H1IR7W = .;
   IF (H1IR7X = 7) THEN H1IR7X = .;
   IF (H1IR7Y = 7) THEN H1IR7Y = .;
   IF (H1IR7Z = 7) THEN H1IR7Z = .;
   IF (H1IR7AA = 7) THEN H1IR7AA = .;
   IF (H1IR7BB = 7) THEN H1IR7BB = .;
   IF (H1IR7CC = 7) THEN H1IR7CC = .;
   IF (H1IR7DD = 7) THEN H1IR7DD = .;
   IF (H1IR8A = 7) THEN H1IR8A = .;
   IF (H1IR8B = 7) THEN H1IR8B = .;
   IF (H1IR8C = 7) THEN H1IR8C = .;
   IF (H1IR8D = 7 OR H1IR8D = 8) THEN H1IR8D = .;
   IF (H1IR9 = 6 OR H1IR9 = 8) THEN H1IR9 = .;
   IF (H1IR11 = 6 OR H1IR11 = 8 OR H1IR11 = 9) THEN H1IR11 = .;
   IF (H1IR12 = 96 OR H1IR12 = 98 OR H1IR12 = 99) THEN H1IR12 = .;
   IF (H1IR13 = 97 OR H1IR13 = 99) THEN H1IR13 = .;
   IF (H1IR14 = 6 OR H1IR14 = 97 OR H1IR14 = 98) THEN H1IR14 = .;
   IF (H1IR15 = 6 OR H1IR15 = 8 OR H1IR15 = 9) THEN H1IR15 = .;
   IF (H1IR16 = 96 OR H1IR16 = 98) THEN H1IR16 = .;
   IF (H1IR17A = 7) THEN H1IR17A = .;
   IF (H1IR17B = 7) THEN H1IR17B = .;
   IF (H1IR17C = 7) THEN H1IR17C = .;
   IF (H1IR17D = 7) THEN H1IR17D = .;
   IF (H1IR17E = 7) THEN H1IR17E = .;
   IF (H1IR17F = 7) THEN H1IR17F = .;
   IF (H1IR17G = 7) THEN H1IR17G = .;
   IF (H1IR17H = 7) THEN H1IR17H = .;
   IF (H1IR17I = 7) THEN H1IR17I = .;
   IF (H1IR17J = 7) THEN H1IR17J = .;
   IF (H1IR18 = 6 OR H1IR18 = 8) THEN H1IR18 = .;
   IF (H1IR19 = 6 OR H1IR19 = 8) THEN H1IR19 = .;
   IF (H1IR20 >= 6 AND H1IR20 <= 8) THEN H1IR20 = .;
   IF (H1IR21 = 6 OR H1IR21 = 8 OR H1IR21 = 9) THEN H1IR21 = .;
   IF (H1IR22A >= 6 AND H1IR22A <= 8) THEN H1IR22A = .;
   IF (H1IR22B >= 6 AND H1IR22B <= 8) THEN H1IR22B = .;
   IF (H1IR22C >= 6 AND H1IR22C <= 8) THEN H1IR22C = .;
   IF (H1IR22D >= 6 AND H1IR22D <= 8) THEN H1IR22D = .;
   IF (H1IR22E >= 6 AND H1IR22E <= 8) THEN H1IR22E = .;
   IF (H1IR22F >= 6 AND H1IR22F <= 8) THEN H1IR22F = .;
   IF (H1IR22G >= 6 AND H1IR22G <= 8) THEN H1IR22G = .;
   IF (H1IR22H >= 6 AND H1IR22H <= 8) THEN H1IR22H = .;
   IF (H1IR22I >= 6 AND H1IR22I <= 8) THEN H1IR22I = .;
   IF (H1IR22J >= 6 AND H1IR22J <= 8) THEN H1IR22J = .;
   IF (H1IR22K >= 6 AND H1IR22K <= 8) THEN H1IR22K = .;
   IF (H1IR22L >= 6 AND H1IR22L <= 8) THEN H1IR22L = .;
   IF (H1IR22M >= 6 AND H1IR22M <= 8) THEN H1IR22M = .;
   IF (H1IR22N >= 6 AND H1IR22N <= 8) THEN H1IR22N = .;
   IF (H1IR22O >= 6 AND H1IR22O <= 8) THEN H1IR22O = .;
   IF (H1IR22P >= 6 AND H1IR22P <= 8) THEN H1IR22P = .;
   IF (H1IR22Q >= 6 AND H1IR22Q <= 8) THEN H1IR22Q = .;
   IF (H1IR22R >= 6 AND H1IR22R <= 8) THEN H1IR22R = .;
   IF (H1IR22S >= 6 AND H1IR22S <= 8) THEN H1IR22S = .;
   IF (H1IR22T >= 6 AND H1IR22T <= 8) THEN H1IR22T = .;
   IF (H1IR22U >= 6 AND H1IR22U <= 8) THEN H1IR22U = .;
   IF (H1IR22V >= 6 AND H1IR22V <= 8) THEN H1IR22V = .;
   IF (H1IR22W >= 6 AND H1IR22W <= 8) THEN H1IR22W = .;
   IF (H1IR22X >= 6 AND H1IR22X <= 8) THEN H1IR22X = .;
   IF (H1IR22Y >= 6 AND H1IR22Y <= 8) THEN H1IR22Y = .;
   IF (H1IR22Z >= 6 AND H1IR22Z <= 8) THEN H1IR22Z = .;
   IF (H1IR22AA >= 6 AND H1IR22AA <= 8) THEN H1IR22AA = .;
   IF (H1IR22BB >= 6 AND H1IR22BB <= 8) THEN H1IR22BB = .;
   IF (H1IR22CC >= 6 AND H1IR22CC <= 8) THEN H1IR22CC = .;
   IF (H1IR22DD >= 6 AND H1IR22DD <= 8) THEN H1IR22DD = .;
   IF (H1IR22EE >= 6 AND H1IR22EE <= 8) THEN H1IR22EE = .;
   IF (H1IR22FF >= 6 AND H1IR22FF <= 8) THEN H1IR22FF = .;
   IF (H1IR22GG >= 6 AND H1IR22GG <= 8) THEN H1IR22GG = .;
   IF (H1IR22HH >= 6 AND H1IR22HH <= 8) THEN H1IR22HH = .;
   IF (H1IR22II >= 6 AND H1IR22II <= 8) THEN H1IR22II = .;
   IF (H1IR22JJ >= 6 AND H1IR22JJ <= 8) THEN H1IR22JJ = .;
   IF (H1IR22KK >= 6 AND H1IR22KK <= 8) THEN H1IR22KK = .;
   IF (H1IR22LL >= 6 AND H1IR22LL <= 8) THEN H1IR22LL = .;
   IF (H1IR22MM >= 6 AND H1IR22MM <= 8) THEN H1IR22MM = .;
   IF (H1IR23 = 6 OR H1IR23 = 8 OR H1IR23 = 9) THEN H1IR23 = .;
   IF (H1IR24 = 6 OR H1IR24 = 8 OR H1IR24 = 9) THEN H1IR24 = .;
   IF (H1IR25 = 6 OR H1IR25 = 8) THEN H1IR25 = .;
   IF (H1IR26 = 6 OR H1IR26 = 8) THEN H1IR26 = .;
   IF (H1IR27 = 6 OR H1IR27 = 8) THEN H1IR27 = .;
   IF (H1IR28 = 6 OR H1IR28 = 8) THEN H1IR28 = .;
   IF (S2 = 9) THEN S2 = .;
   IF (S3 = 13 OR S3 = 99) THEN S3 = .;
   IF (S4 = 8) THEN S4 = .;
   IF (S5 >= 97 AND S5 <= 99) THEN S5 = .;
   IF (S7 = 97 OR S7 = 99) THEN S7 = .;
   IF (S10A >= 7 AND S10A <= 9) THEN S10A = .;
   IF (S10B >= 7 AND S10B <= 9) THEN S10B = .;
   IF (S10C >= 7 AND S10C <= 9) THEN S10C = .;
   IF (S10D >= 7 AND S10D <= 9) THEN S10D = .;
   IF (S12 = 97 OR S12 = 99) THEN S12 = .;
   IF (S13 = 7 OR S13 = 8) THEN S13 = .;
   IF (S14 = 97 OR S14 = 99) THEN S14 = .;
   IF (S15 >= 7 AND S15 <= 9) THEN S15 = .;
   IF (S16 = 7 OR S16 = 9) THEN S16 = .;
   IF (S17 = 9) THEN S17 = .;
   IF (S18 = 97 OR S18 = 99) THEN S18 = .;
   IF (S19 = 7 OR S19 = 8) THEN S19 = .;
   IF (S20 = 97 OR S20 = 99) THEN S20 = .;
   IF (S21 = 7 OR S21 = 8) THEN S21 = .;
   IF (S22 = 7 OR S22 = 9) THEN S22 = .;
   IF (S24 = 7) THEN S24 = .;
   IF (S26 = 7) THEN S26 = .;
   IF (S27 = 99) THEN S27 = .;
   IF (S28 >= 97 AND S28 <= 99) THEN S28 = .;
   IF (S45A = 99) THEN S45A = .;
   IF (S45B = 99) THEN S45B = .;
   IF (S45C = 99) THEN S45C = .;
   IF (S45D = 99) THEN S45D = .;
   IF (S45E = 99) THEN S45E = .;
   IF (S45F = 99) THEN S45F = .;
   IF (S46A = 9) THEN S46A = .;
   IF (S46B = 9) THEN S46B = .;
   IF (S46C = 9) THEN S46C = .;
   IF (S46D = 9) THEN S46D = .;
   IF (S47 = 9) THEN S47 = .;
   IF (S48 = 9) THEN S48 = .;
   IF (S50 = 9) THEN S50 = .;
   IF (S53 = 9) THEN S53 = .;
   IF (S55A = 7) THEN S55A = .;
   IF (S55B = 7) THEN S55B = .;
   IF (S55C = 7) THEN S55C = .;
   IF (S55D = 7) THEN S55D = .;
   IF (S59A = 99) THEN S59A = .;
   IF (S59C = 99) THEN S59C = .;
   IF (S59D = 99) THEN S59D = .;
   IF (S59E = 99) THEN S59E = .;
   IF (S59F = 99) THEN S59F = .;
   IF (S59G = 99) THEN S59G = .;
   IF (S60A = 9) THEN S60A = .;
   IF (S60B = 9) THEN S60B = .;
   IF (S60C = 9) THEN S60C = .;
   IF (S60D = 9) THEN S60D = .;
   IF (S60E = 9) THEN S60E = .;
   IF (S60F = 9) THEN S60F = .;
   IF (S60G = 9) THEN S60G = .;
   IF (S60H = 9) THEN S60H = .;
   IF (S60I = 9) THEN S60I = .;
   IF (S60J = 9) THEN S60J = .;
   IF (S60K = 9) THEN S60K = .;
   IF (S60L = 9) THEN S60L = .;
   IF (S60M = 9) THEN S60M = .;
   IF (S60N = 9) THEN S60N = .;
   IF (S60O = 9) THEN S60O = .;
   IF (S61A = 9) THEN S61A = .;
   IF (S61B = 9) THEN S61B = .;
   IF (S61C = 9) THEN S61C = .;
   IF (S61D = 9) THEN S61D = .;
   IF (S61E = 9) THEN S61E = .;
   IF (S61F = 9) THEN S61F = .;
   IF (S62A = 9) THEN S62A = .;
   IF (S62B = 9) THEN S62B = .;
   IF (S62C = 9) THEN S62C = .;
   IF (S62D = 9) THEN S62D = .;
   IF (S62E = 9) THEN S62E = .;
   IF (S62F = 9) THEN S62F = .;
   IF (S62G = 9) THEN S62G = .;
   IF (S62H = 9) THEN S62H = .;
   IF (S62I = 9) THEN S62I = .;
   IF (S62J = 9) THEN S62J = .;
   IF (S62K = 9) THEN S62K = .;
   IF (S62L = 9) THEN S62L = .;
   IF (S62M = 9) THEN S62M = .;
   IF (S62N = 9) THEN S62N = .;
   IF (S62O = 9) THEN S62O = .;
   IF (S62P = 9) THEN S62P = .;
   IF (S62Q = 9) THEN S62Q = .;
   IF (S62R = 9) THEN S62R = .;
   IF (S63 = 9) THEN S63 = .;
   IF (S64 = 9) THEN S64 = .;
   IF (S65 = 9) THEN S65 = .;
   IF (PA2 = 996) THEN PA2 = .;
   IF (PA3 = 6) THEN PA3 = .;
   IF (PA4 = 6) THEN PA4 = .;
   IF (PA5_1 = 6 OR PA5_1 = 7) THEN PA5_1 = .;
   IF (PA5_2 = 6 OR PA5_2 = 7) THEN PA5_2 = .;
   IF (PA5_3 = 6 OR PA5_3 = 7) THEN PA5_3 = .;
   IF (PA5_4 = 6 OR PA5_4 = 7) THEN PA5_4 = .;
   IF (PA5_5 = 6 OR PA5_5 = 7) THEN PA5_5 = .;
   IF (PA5_6 = 6 OR PA5_6 = 7) THEN PA5_6 = .;
   IF (PA5_7 = 6 OR PA5_7 = 7) THEN PA5_7 = .;
   IF (PA6_1 = 6) THEN PA6_1 = .;
   IF (PA6_2 = 6) THEN PA6_2 = .;
   IF (PA6_3 = 6) THEN PA6_3 = .;
   IF (PA6_4 = 6) THEN PA6_4 = .;
   IF (PA6_5 = 6) THEN PA6_5 = .;
   IF (PA7_1 = 6 OR PA7_1 = 7) THEN PA7_1 = .;
   IF (PA7_2 = 6 OR PA7_2 = 7) THEN PA7_2 = .;
   IF (PA7_3 = 6 OR PA7_3 = 7) THEN PA7_3 = .;
   IF (PA7_4 = 6 OR PA7_4 = 7) THEN PA7_4 = .;
   IF (PA7_5 = 6 OR PA7_5 = 7) THEN PA7_5 = .;
   IF (PA7_6 = 6 OR PA7_6 = 7) THEN PA7_6 = .;
   IF (PA7_7 = 6 OR PA7_7 = 7) THEN PA7_7 = .;
   IF (PA7_8 = 6 OR PA7_8 = 7) THEN PA7_8 = .;
   IF (PA8B = 6 OR PA8B = 7) THEN PA8B = .;
   IF (PA10 = 6) THEN PA10 = .;
   IF (PA11 = 6 OR PA11 = 7) THEN PA11 = .;
   IF (PA12 = 96) THEN PA12 = .;
   IF (PA13 = 6) THEN PA13 = .;
   IF (PA14 = 6 OR PA14 = 7) THEN PA14 = .;
   IF (PA15 = 6 OR PA15 = 7) THEN PA15 = .;
   IF (PA16 = 6 OR PA16 = 7) THEN PA16 = .;
   IF (PA17 = 6 OR PA17 = 7) THEN PA17 = .;
   IF (PA18 = 6) THEN PA18 = .;
   IF (PA19 = 6) THEN PA19 = .;
   IF (PA20 = 6) THEN PA20 = .;
   IF (PA21 = 6) THEN PA21 = .;
   IF (PA22 = 96) THEN PA22 = .;
   IF (PA23 = 6 OR PA23 = 7) THEN PA23 = .;
   IF (PA24 = 6 OR PA24 = 7) THEN PA24 = .;
   IF (PA25 = 6 OR PA25 = 7) THEN PA25 = .;
   IF (PA26 = 6 OR PA26 = 7 OR PA26 = 8) THEN PA26 = .;
   IF (PA27A = 6) THEN PA27A = .;
   IF (PA27B = 6) THEN PA27B = .;
   IF (PA27C = 6) THEN PA27C = .;
   IF (PA27D = 6) THEN PA27D = .;
   IF (PA27E = 6) THEN PA27E = .;
   IF (PA28A = 6) THEN PA28A = .;
   IF (PA28B = 6) THEN PA28B = .;
   IF (PA28C = 6) THEN PA28C = .;
   IF (PA28D = 6) THEN PA28D = .;
   IF (PA28E = 6) THEN PA28E = .;
   IF (PA28F = 6) THEN PA28F = .;
   IF (PA28G = 6) THEN PA28G = .;
   IF (PA28H = 6) THEN PA28H = .;
   IF (PA28I = 6) THEN PA28I = .;
   IF (PA28J = 6) THEN PA28J = .;
   IF (PA30 = 96 OR PA30 = 97) THEN PA30 = .;
   IF (PA31 = 6) THEN PA31 = .;
   IF (PA32 = 6) THEN PA32 = .;
   IF (PA33 = 6) THEN PA33 = .;
   IF (PA34 = 6) THEN PA34 = .;
   IF (PA35 = 6) THEN PA35 = .;
   IF (PA36 = 6) THEN PA36 = .;
   IF (PA37 = 6) THEN PA37 = .;
   IF (PA38 = 6) THEN PA38 = .;
   IF (PA39 = 996 OR PA39 = 997) THEN PA39 = .;
   IF (PA40 = 96) THEN PA40 = .;
   IF (PA41_1 = 6 OR PA41_1 = 7) THEN PA41_1 = .;
   IF (PA41_2 = 6 OR PA41_2 = 7) THEN PA41_2 = .;
   IF (PA41_3 = 6 OR PA41_3 = 7) THEN PA41_3 = .;
   IF (PA41_4 = 6 OR PA41_4 = 7) THEN PA41_4 = .;
   IF (PA41_5 = 6 OR PA41_5 = 7) THEN PA41_5 = .;
   IF (PA41_6 = 6 OR PA41_6 = 7) THEN PA41_6 = .;
   IF (PA41_7 = 6 OR PA41_7 = 7) THEN PA41_7 = .;
   IF (PA41_8 = 6 OR PA41_8 = 7) THEN PA41_8 = .;
   IF (PA41_9 = 6 OR PA41_9 = 7) THEN PA41_9 = .;
   IF (PA41_10 = 6 OR PA41_10 = 7) THEN PA41_10 = .;
   IF (PA41_11 = 6 OR PA41_11 = 7) THEN PA41_11 = .;
   IF (PA41_12 = 6 OR PA41_12 = 7) THEN PA41_12 = .;
   IF (PA41_13 = 6 OR PA41_13 = 7) THEN PA41_13 = .;
   IF (PA41_14 = 6 OR PA41_14 = 7) THEN PA41_14 = .;
   IF (PA41_15 = 6 OR PA41_15 = 7) THEN PA41_15 = .;
   IF (PA41_16 = 6 OR PA41_16 = 7) THEN PA41_16 = .;
   IF (PA41_17 = 6 OR PA41_17 = 7) THEN PA41_17 = .;
   IF (PA41_18 = 6 OR PA41_18 = 7) THEN PA41_18 = .;
   IF (PA41_19 = 6 OR PA41_19 = 7) THEN PA41_19 = .;
   IF (PA42 = 6 OR PA42 = 7) THEN PA42 = .;
   IF (PA43 = 6 OR PA43 = 7) THEN PA43 = .;
   IF (PA44 = 6 OR PA44 = 7) THEN PA44 = .;
   IF (PA46_1 = 6 OR PA46_1 = 7) THEN PA46_1 = .;
   IF (PA46_2 = 6 OR PA46_2 = 7) THEN PA46_2 = .;
   IF (PA46_3 = 6 OR PA46_3 = 7) THEN PA46_3 = .;
   IF (PA46_4 = 6 OR PA46_4 = 7) THEN PA46_4 = .;
   IF (PA46_5 = 6 OR PA46_5 = 7) THEN PA46_5 = .;
   IF (PA46_6 = 6 OR PA46_6 = 7) THEN PA46_6 = .;
   IF (PA46_7 = 6 OR PA46_7 = 7) THEN PA46_7 = .;
   IF (PA46_8 = 6 OR PA46_8 = 7) THEN PA46_8 = .;
   IF (PA46_9 = 6 OR PA46_9 = 7) THEN PA46_9 = .;
   IF (PA46_10 = 6 OR PA46_10 = 7) THEN PA46_10 = .;
   IF (PA46_11 = 6 OR PA46_11 = 7) THEN PA46_11 = .;
   IF (PA46_12 = 6 OR PA46_12 = 7) THEN PA46_12 = .;
   IF (PA46_13 = 6 OR PA46_13 = 7) THEN PA46_13 = .;
   IF (PA46_14 = 6 OR PA46_14 = 7) THEN PA46_14 = .;
   IF (PA46_15 = 6 OR PA46_15 = 7) THEN PA46_15 = .;
   IF (PA46_16 = 6 OR PA46_16 = 7) THEN PA46_16 = .;
   IF (PA46_17 = 6 OR PA46_17 = 7) THEN PA46_17 = .;
   IF (PA46_18 = 6 OR PA46_18 = 7) THEN PA46_18 = .;
   IF (PA46_19 = 6 OR PA46_19 = 7) THEN PA46_19 = .;
   IF (PA47 = 6 OR PA47 = 7) THEN PA47 = .;
   IF (PA48 = 6 OR PA48 = 7) THEN PA48 = .;
   IF (PA49 = 6 OR PA49 = 7) THEN PA49 = .;
   IF (PA51_1 = 6 OR PA51_1 = 7) THEN PA51_1 = .;
   IF (PA51_2 = 6 OR PA51_2 = 7) THEN PA51_2 = .;
   IF (PA51_3 = 6 OR PA51_3 = 7) THEN PA51_3 = .;
   IF (PA51_4 = 6 OR PA51_4 = 7) THEN PA51_4 = .;
   IF (PA51_5 = 6 OR PA51_5 = 7) THEN PA51_5 = .;
   IF (PA51_6 = 6 OR PA51_6 = 7) THEN PA51_6 = .;
   IF (PA51_7 = 6 OR PA51_7 = 7) THEN PA51_7 = .;
   IF (PA51_8 = 6 OR PA51_8 = 7) THEN PA51_8 = .;
   IF (PA51_9 = 6 OR PA51_9 = 7) THEN PA51_9 = .;
   IF (PA51_10 = 6 OR PA51_10 = 7) THEN PA51_10 = .;
   IF (PA51_11 = 6 OR PA51_11 = 7) THEN PA51_11 = .;
   IF (PA51_12 = 6 OR PA51_12 = 7) THEN PA51_12 = .;
   IF (PA51_13 = 6 OR PA51_13 = 7) THEN PA51_13 = .;
   IF (PA51_14 = 6 OR PA51_14 = 7) THEN PA51_14 = .;
   IF (PA51_15 = 6 OR PA51_15 = 7) THEN PA51_15 = .;
   IF (PA51_16 = 6 OR PA51_16 = 7) THEN PA51_16 = .;
   IF (PA51_17 = 6 OR PA51_17 = 7) THEN PA51_17 = .;
   IF (PA51_18 = 6 OR PA51_18 = 7) THEN PA51_18 = .;
   IF (PA51_19 = 6 OR PA51_19 = 7) THEN PA51_19 = .;
   IF (PA52 = 6 OR PA52 = 7) THEN PA52 = .;
   IF (PA53 = 6 OR PA53 = 7) THEN PA53 = .;
   IF (PA54 = 6 OR PA54 = 7) THEN PA54 = .;
   IF (PA55 = 9996) THEN PA55 = .;
   IF (PA56 = 6) THEN PA56 = .;
   IF (PA57A = 6) THEN PA57A = .;
   IF (PA57B = 6) THEN PA57B = .;
   IF (PA57C = 6) THEN PA57C = .;
   IF (PA57D = 6) THEN PA57D = .;
   IF (PA57E = 6) THEN PA57E = .;
   IF (PA57F = 6) THEN PA57F = .;
   IF (PA58 = 6) THEN PA58 = .;
   IF (PA59 = 6) THEN PA59 = .;
   IF (PA60 = 6) THEN PA60 = .;
   IF (PA61 = 96) THEN PA61 = .;
   IF (PA62 = 96) THEN PA62 = .;
   IF (PA63 = 6) THEN PA63 = .;
   IF (PA64 = 6 OR PA64 = 7) THEN PA64 = .;
   IF (PB2 = 6 OR PB2 = 7) THEN PB2 = .;
   IF (PB3 >= 6 AND PB3 <= 8) THEN PB3 = .;
   IF (PB4_1 = 6 OR PB4_1 = 7) THEN PB4_1 = .;
   IF (PB4_2 = 6 OR PB4_2 = 7) THEN PB4_2 = .;
   IF (PB4_3 = 6 OR PB4_3 = 7) THEN PB4_3 = .;
   IF (PB4_4 = 6 OR PB4_4 = 7) THEN PB4_4 = .;
   IF (PB4_5 = 6 OR PB4_5 = 7) THEN PB4_5 = .;
   IF (PB4_6 = 6 OR PB4_6 = 7) THEN PB4_6 = .;
   IF (PB4_7 = 6 OR PB4_7 = 7) THEN PB4_7 = .;
   IF (PB5_1 = 6 OR PB5_1 = 7) THEN PB5_1 = .;
   IF (PB5_2 = 6 OR PB5_2 = 7) THEN PB5_2 = .;
   IF (PB5_3 = 6 OR PB5_3 = 7) THEN PB5_3 = .;
   IF (PB5_4 = 6 OR PB5_4 = 7) THEN PB5_4 = .;
   IF (PB5_5 = 6 OR PB5_5 = 7) THEN PB5_5 = .;
   IF (PB6_1 = 6 OR PB6_1 = 7) THEN PB6_1 = .;
   IF (PB6_2 = 6 OR PB6_2 = 7) THEN PB6_2 = .;
   IF (PB6_3 = 6 OR PB6_3 = 7) THEN PB6_3 = .;
   IF (PB6_4 = 6 OR PB6_4 = 7) THEN PB6_4 = .;
   IF (PB6_5 = 6 OR PB6_5 = 7) THEN PB6_5 = .;
   IF (PB6_6 = 6 OR PB6_6 = 7) THEN PB6_6 = .;
   IF (PB6_7 = 6 OR PB6_7 = 7) THEN PB6_7 = .;
   IF (PB6_8 = 6 OR PB6_8 = 7) THEN PB6_8 = .;
   IF (PB7 = 96 OR PB7 = 97) THEN PB7 = .;
   IF (PB8 = 96 OR PB8 = 97) THEN PB8 = .;
   IF (PB9 = 6 OR PB9 = 7) THEN PB9 = .;
   IF (PB10 = 6 OR PB10 = 7) THEN PB10 = .;
   IF (PB11 = 6 OR PB11 = 7) THEN PB11 = .;
   IF (PB12 = 6 OR PB12 = 7) THEN PB12 = .;
   IF (PB13 = 6 OR PB13 = 7) THEN PB13 = .;
   IF (PB14 = 6 OR PB14 = 7) THEN PB14 = .;
   IF (PB15 = 6 OR PB15 = 7) THEN PB15 = .;
   IF (PB16 = 6 OR PB16 = 7) THEN PB16 = .;
   IF (PB17 = 6 OR PB17 = 7) THEN PB17 = .;
   IF (PB18 = 96 OR PB18 = 97) THEN PB18 = .;
   IF (PB19 = 6 OR PB19 = 7) THEN PB19 = .;
   IF (PB20 = 6 OR PB20 = 7) THEN PB20 = .;
   IF (PB21 >= 6 AND PB21 <= 8) THEN PB21 = .;
   IF (PB22 >= 96 AND PB22 <= 98) THEN PB22 = .;
   IF (PC1 = 96) THEN PC1 = .;
   IF (PC2 = 7) THEN PC2 = .;
   IF (PC3 = 7 OR PC3 = 8) THEN PC3 = .;
   IF (PC4 >= 996 AND PC4 <= 998) THEN PC4 = .;
   IF (PC5 >= 6 AND PC5 <= 8) THEN PC5 = .;
   IF (PC6B = 6 OR PC6B = 7) THEN PC6B = .;
   IF (PC7 >= 6 AND PC7 <= 8) THEN PC7 = .;
   IF (PC8 >= 996 AND PC8 <= 998) THEN PC8 = .;
   IF (PC9 >= 6 AND PC9 <= 8) THEN PC9 = .;
   IF (PC10 = 6) THEN PC10 = .;
   IF (PC11 = 6) THEN PC11 = .;
   IF (PC12 = 6) THEN PC12 = .;
   IF (PC13 = 6 OR PC13 = 8) THEN PC13 = .;
   IF (PC14 = 6 OR PC14 = 8) THEN PC14 = .;
   IF (PC15 = 6 OR PC15 = 7) THEN PC15 = .;
   IF (PC16 = 6 OR PC16 = 7) THEN PC16 = .;
   IF (PC17 = 96) THEN PC17 = .;
   IF (PC18 = 6 OR PC18 = 8) THEN PC18 = .;
   IF (PC19A_P = 98) THEN PC19A_P = .;
   IF (PC19B_O = 98 OR PC19B_O = 99) THEN PC19B_O = .;
   IF (PC20 = 96 OR PC20 = 98) THEN PC20 = .;
   IF (PC21_1 = 6) THEN PC21_1 = .;
   IF (PC21_2 = 6) THEN PC21_2 = .;
   IF (PC21_3 = 6) THEN PC21_3 = .;
   IF (PC21_4 = 6) THEN PC21_4 = .;
   IF (PC21_5 = 6) THEN PC21_5 = .;
   IF (PC21_6 = 6) THEN PC21_6 = .;
   IF (PC21_7 = 6) THEN PC21_7 = .;
   IF (PC22 >= 6 AND PC22 <= 8) THEN PC22 = .;
   IF (PC23 = 96 OR PC23 = 98) THEN PC23 = .;
   IF (PC24 = 6) THEN PC24 = .;
   IF (PC25 = 6 OR PC25 = 7) THEN PC25 = .;
   IF (PC26 = 6 OR PC26 = 7) THEN PC26 = .;
   IF (PC27 = 6 OR PC27 = 7) THEN PC27 = .;
   IF (PC28 = 6 OR PC28 = 7) THEN PC28 = .;
   IF (PC29A = 6 OR PC29A = 7) THEN PC29A = .;
   IF (PC29B = 6 OR PC29B = 7) THEN PC29B = .;
   IF (PC29C = 6 OR PC29C = 7) THEN PC29C = .;
   IF (PC30 = 6) THEN PC30 = .;
   IF (PC31 = 6) THEN PC31 = .;
   IF (PC32 = 6) THEN PC32 = .;
   IF (PC33 = 6) THEN PC33 = .;
   IF (PC34A = 6) THEN PC34A = .;
   IF (PC34B = 6) THEN PC34B = .;
   IF (PC34C = 6) THEN PC34C = .;
   IF (PC34D = 6) THEN PC34D = .;
   IF (PC34E = 6) THEN PC34E = .;
   IF (PC35 = 6) THEN PC35 = .;
   IF (PC36_0 = 6 OR PC36_0 = 7) THEN PC36_0 = .;
   IF (PC36_1 = 6 OR PC36_1 = 7) THEN PC36_1 = .;
   IF (PC36_2 = 6 OR PC36_2 = 7) THEN PC36_2 = .;
   IF (PC36_3 = 6 OR PC36_3 = 7) THEN PC36_3 = .;
   IF (PC36_4 = 6 OR PC36_4 = 7) THEN PC36_4 = .;
   IF (PC36_5 = 6 OR PC36_5 = 7) THEN PC36_5 = .;
   IF (PC36_6 = 6 OR PC36_6 = 7) THEN PC36_6 = .;
   IF (PC36_7 = 6 OR PC36_7 = 7) THEN PC36_7 = .;
   IF (PC36_8 = 6 OR PC36_8 = 7) THEN PC36_8 = .;
   IF (PC36_9 = 6 OR PC36_9 = 7) THEN PC36_9 = .;
   IF (PC36_10 = 6 OR PC36_10 = 7) THEN PC36_10 = .;
   IF (PC36_11 = 6 OR PC36_11 = 7) THEN PC36_11 = .;
   IF (PC36_12 = 6 OR PC36_12 = 7) THEN PC36_12 = .;
   IF (PC36_13 = 6 OR PC36_13 = 7) THEN PC36_13 = .;
   IF (PC36_14 = 6 OR PC36_14 = 7) THEN PC36_14 = .;
   IF (PC36_15 = 6 OR PC36_15 = 7) THEN PC36_15 = .;
   IF (PC36_16 = 6 OR PC36_16 = 7) THEN PC36_16 = .;
   IF (PC36_17 = 6 OR PC36_17 = 7) THEN PC36_17 = .;
   IF (PC36_18 = 6 OR PC36_18 = 7) THEN PC36_18 = .;
   IF (PC36_19 = 6 OR PC36_19 = 7) THEN PC36_19 = .;
   IF (PC37 = 6 OR PC37 = 8) THEN PC37 = .;
   IF (PC38 = 6 OR PC38 = 8) THEN PC38 = .;
   IF (PC39 = 6 OR PC39 = 8) THEN PC39 = .;
   IF (PC40 = 6 OR PC40 = 8) THEN PC40 = .;
   IF (PC41 = 6 OR PC41 = 8) THEN PC41 = .;
   IF (PC42A = 6) THEN PC42A = .;
   IF (PC42B = 6) THEN PC42B = .;
   IF (PC42C = 6) THEN PC42C = .;
   IF (PC42D = 6) THEN PC42D = .;
   IF (PC42E = 6) THEN PC42E = .;
   IF (PC43AA = 6) THEN PC43AA = .;
   IF (PC43AB = 6) THEN PC43AB = .;
   IF (PC43AC = 6) THEN PC43AC = .;
   IF (PC43AD = 6) THEN PC43AD = .;
   IF (PC43BA = 6) THEN PC43BA = .;
   IF (PC43BB = 6) THEN PC43BB = .;
   IF (PC44A = 6) THEN PC44A = .;
   IF (PC44B = 6) THEN PC44B = .;
   IF (PC44C = 6) THEN PC44C = .;
   IF (PC44D = 6) THEN PC44D = .;
   IF (PC45 = 6) THEN PC45 = .;
   IF (PC46 = 6) THEN PC46 = .;
   IF (PC47 = 6 OR PC47 = 8) THEN PC47 = .;
   IF (PC48 = 96 OR PC48 = 97) THEN PC48 = .;
   IF (PC49A_1 = 6 OR PC49A_1 = 8) THEN PC49A_1 = .;
   IF (PC49A_2 = 6 OR PC49A_2 = 8) THEN PC49A_2 = .;
   IF (PC49A_3 = 6 OR PC49A_3 = 8) THEN PC49A_3 = .;
   IF (PC49B_1 = 6 OR PC49B_1 = 8) THEN PC49B_1 = .;
   IF (PC49B_2 = 6 OR PC49B_2 = 8) THEN PC49B_2 = .;
   IF (PC49B_3 = 6 OR PC49B_3 = 8) THEN PC49B_3 = .;
   IF (PC49C_1 = 6 OR PC49C_1 = 8) THEN PC49C_1 = .;
   IF (PC49C_2 = 6 OR PC49C_2 = 8) THEN PC49C_2 = .;
   IF (PC49C_3 = 6 OR PC49C_3 = 8) THEN PC49C_3 = .;
   IF (PC49D_1 = 6 OR PC49D_1 = 8) THEN PC49D_1 = .;
   IF (PC49D_2 = 6 OR PC49D_2 = 8) THEN PC49D_2 = .;
   IF (PC49D_3 = 6 OR PC49D_3 = 8) THEN PC49D_3 = .;
   IF (PC49E_1 = 6 OR PC49E_1 = 8) THEN PC49E_1 = .;
   IF (PC49E_2 = 6 OR PC49E_2 = 8) THEN PC49E_2 = .;
   IF (PC49E_3 = 6 OR PC49E_3 = 8) THEN PC49E_3 = .;
   IF (PC49F_1 = 6 OR PC49F_1 = 8) THEN PC49F_1 = .;
   IF (PC49F_2 = 6 OR PC49F_2 = 8) THEN PC49F_2 = .;
   IF (PC49F_3 = 6 OR PC49F_3 = 8) THEN PC49F_3 = .;
   IF (PC50 = 6) THEN PC50 = .;
   IF (PC51 = 6) THEN PC51 = .;
   IF (PC53 = 6 OR PC53 = 7) THEN PC53 = .;
   IF (PC54 >= 6 AND PC54 <= 8) THEN PC54 = .;
   IF (PC55 = 6 OR PC55 = 7) THEN PC55 = .;
   IF (PC58 >= 6 AND PC58 <= 8) THEN PC58 = .;
   IF (PC59 >= 96 AND PC59 <= 98) THEN PC59 = .;
   IF (PC60_1 = 6 OR PC60_1 = 7) THEN PC60_1 = .;
   IF (PC60_2 = 6 OR PC60_2 = 7) THEN PC60_2 = .;
   IF (PC60_3 = 6 OR PC60_3 = 7) THEN PC60_3 = .;
   IF (PC60_4 = 6 OR PC60_4 = 7) THEN PC60_4 = .;
   IF (PC60_5 = 6 OR PC60_5 = 7) THEN PC60_5 = .;
   IF (PC60_6 = 6 OR PC60_6 = 7) THEN PC60_6 = .;
   IF (PC60_7 = 6 OR PC60_7 = 7) THEN PC60_7 = .;
   IF (PC60_8 = 6 OR PC60_8 = 7) THEN PC60_8 = .;
   IF (PC60_9 = 6 OR PC60_9 = 7) THEN PC60_9 = .;
   IF (PC60_10 = 6 OR PC60_10 = 7) THEN PC60_10 = .;
   IF (PC60_11 = 6 OR PC60_11 = 7) THEN PC60_11 = .;
   IF (PC60_12 = 6 OR PC60_12 = 7) THEN PC60_12 = .;
   IF (PC60_13 = 6 OR PC60_13 = 7) THEN PC60_13 = .;
   IF (PC60_14 = 6 OR PC60_14 = 7) THEN PC60_14 = .;
   IF (PC60_15 = 6 OR PC60_15 = 7) THEN PC60_15 = .;
   IF (PC60_16 = 6 OR PC60_16 = 7) THEN PC60_16 = .;
   IF (PC60_17 = 6 OR PC60_17 = 7) THEN PC60_17 = .;
   IF (PC60_18 = 6 OR PC60_18 = 7) THEN PC60_18 = .;
   IF (PC61A = 6 OR PC61A = 7) THEN PC61A = .;
   IF (PC61B = 6 OR PC61B = 7) THEN PC61B = .;
   IF (PC61C = 6 OR PC61C = 7) THEN PC61C = .;
   IF (PC61D = 6 OR PC61D = 7) THEN PC61D = .;
   IF (PC62_1 = 6 OR PC62_1 = 7) THEN PC62_1 = .;
   IF (PC62_2 = 6 OR PC62_2 = 7) THEN PC62_2 = .;
   IF (PC62_4 = 6 OR PC62_4 = 7) THEN PC62_4 = .;
   IF (PC62_5 = 6 OR PC62_5 = 7) THEN PC62_5 = .;
   IF (PC62_8 = 6 OR PC62_8 = 7) THEN PC62_8 = .;
   IF (PC62_10 = 6 OR PC62_10 = 7) THEN PC62_10 = .;
   IF (PC62_11 = 6 OR PC62_11 = 7) THEN PC62_11 = .;
   IF (PC63 = 6 OR PC63 = 8) THEN PC63 = .;
   IF (PC64 >= 6 AND PC64 <= 8) THEN PC64 = .;
   IF (PC65_M >= 96 AND PC65_M <= 98) THEN PC65_M = .;
   IF (PC65_Y >= 96 AND PC65_Y <= 98) THEN PC65_Y = .;
   IF (PC66_M >= 96 AND PC66_M <= 98) THEN PC66_M = .;
   IF (PC66_Y >= 96 AND PC66_Y <= 98) THEN PC66_Y = .;
   IF (PC68_M >= 96 AND PC68_M <= 98) THEN PC68_M = .;
   IF (PC68_Y >= 96 AND PC68_Y <= 98) THEN PC68_Y = .;
   IF (PD2 = 7 OR PD2 = 8) THEN PD2 = .;
   IF (PD3 >= 6 AND PD3 <= 8) THEN PD3 = .;
   IF (PD4A = 7 OR PD4A = 8) THEN PD4A = .;
   IF (PD4B >= 7 AND PD4B <= 9) THEN PD4B = .;
   IF (PD4C = 6 OR PD4C = 7 OR PD4C = 9) THEN PD4C = .;
   IF (PD4D >= 7 AND PD4D <= 9) THEN PD4D = .;
   IF (PD4E = 7 OR PD4E = 8) THEN PD4E = .;
   IF (PD4F = 7 OR PD4F = 8) THEN PD4F = .;
*/


* SAS FORMAT STATEMENT;

/*
   FORMAT
         BIO_SEX bio_sexf. FR_FLAG fr_flagf. H1BC1 h1bc1fff.
         H1BC2 h1bc1fff. H1BC3 h1bc1fff. H1BC4 h1bc1fff.
         H1BC5 h1bc1fff. H1BC6 h1bc1fff. H1BC7 h1bc1fff.
         H1BC8 h1bc1fff. H1CO1 h1co1fff. H1CO10 h1co10ff.
         H1CO11 h1co11ff. H1CO12A h1co12af. H1CO12B h1co12bf.
         H1CO12C h1co12cf. H1CO13 h1co13ff. H1CO14M h1co14mf.
         H1CO14Y h1co14yf. H1CO15 h1co15ff. H1CO16A h1co16af.
         H1CO16B h1co16bf. H1CO16C h1co16cf. H1CO16D h1co16df.
         H1CO16E h1co16ef. H1CO16F h1co16ff. H1CO16G h1co16gf.
         H1CO16H h1co16hf. H1CO16I h1co16if. H1CO16J h1co16jf.
         H1CO17A h1co17af. H1CO17B h1co17bf. H1CO17C h1co17cf.
         H1CO17D h1co17df. H1CO17E h1co17ef. H1CO17F h1co17ff.
         H1CO17G h1co17gf. H1CO17H h1co17hf. H1CO17I h1co17if.
         H1CO17J h1co17jf. H1CO2M h1co2mff. H1CO2Y h1co2yff.
         H1CO3 h1co3fff. H1CO4A h1co4aff. H1CO4B h1co4bff.
         H1CO4C h1co4cff. H1CO5M h1co2mff. H1CO5Y h1co5yff.
         H1CO6 h1co6fff. H1CO7A h1co7aff. H1CO7B h1co7bff.
         H1CO7C h1co4cff. H1CO8 h1co8fff. H1CO9 h1co9fff.
         H1DA1 h1da1fff. H1DA10 h1da10ff. H1DA11 h1da11ff.
         H1DA2 h1da1fff. H1DA3 h1da1fff. H1DA4 h1da1fff.
         H1DA5 h1da1fff. H1DA6 h1da1fff. H1DA7 h1da1fff.
         H1DA8 h1da8fff. H1DA9 h1da9fff. H1DS1 h1ds1fff.
         H1DS10 h1ds1fff. H1DS11 h1ds1fff. H1DS12 h1ds1fff.
         H1DS13 h1ds1fff. H1DS14 h1ds1fff. H1DS15 h1ds1fff.
         H1DS2 h1ds1fff. H1DS3 h1ds1fff. H1DS4 h1ds1fff.
         H1DS5 h1ds1fff. H1DS6 h1ds1fff. H1DS7 h1ds1fff.
         H1DS8 h1ds1fff. H1DS9 h1ds1fff. H1ED1 h1ed1fff.
         H1ED10 h1ed10ff. H1ED11 h1ed11ff. H1ED12 h1ed11ff.
         H1ED13 h1ed11ff. H1ED14 h1ed11ff. H1ED15 h1gh16ff.
         H1ED16 h1gh16ff. H1ED17 h1gh16ff. H1ED18 h1gh16ff.
         H1ED19 h1ed19ff. H1ED2 h1ed2fff. H1ED20 h1ed19ff.
         H1ED21 h1ed19ff. H1ED22 h1ed19ff. H1ED23 h1ed19ff.
         H1ED24 h1ed19ff. H1ED3 h1ed3fff. H1ED4A h1gh27af.
         H1ED4B h1gh27af. H1ED4C h1gh27af. H1ED4D h1gh27af.
         H1ED4E h1gh27af. H1ED4F h1gh27af. H1ED4G h1gh27af.
         H1ED4H h1gh27af. H1ED4I h1gh27af. H1ED4J h1gh27af.
         H1ED4K h1gh27af. H1ED4M h1gh27af. H1ED5 h1ed5fff.
         H1ED6A h1ed6aff. H1ED6B h1ed6aff. H1ED6C h1ed6aff.
         H1ED6D h1ed6aff. H1ED6E h1ed6aff. H1ED6F h1ed6aff.
         H1ED6G h1ed6aff. H1ED6H h1ed6aff. H1ED6I h1ed6aff.
         H1ED6J h1ed6aff. H1ED6K h1ed6aff. H1ED6L h1ed6aff.
         H1ED6M h1ed6aff. H1ED7 h1ed7fff. H1ED8 h1ed8fff.
         H1ED9 h1ed9fff. H1EE1 h1ee1fff. H1EE10 h1ee10ff.
         H1EE11 h1ee11ff. H1EE12 h1ee12ff. H1EE13 h1ee12ff.
         H1EE14 h1ee12ff. H1EE15 h1ee12ff. H1EE2 h1ee1fff.
         H1EE3 h1gi2fff. H1EE4 h1ee4fff. H1EE5 h1ee5fff.
         H1EE6 h1ee6fff. H1EE7 h1ee7fff. H1EE8 h1ee8fff.
         H1EE9 h1ee9fff. H1FF10A h1mf6aff. H1FF10B h1mf6aff.
         H1FF10C h1pl2fff. H1FF10D h1ff6dff. H1FF10E h1pl2fff.
         H1FF2A h1ff2aff. H1FF2B h1ff2bff. H1FF2C h1ff2cff.
         H1FF2D h1ff2dff. H1FF2E h1ff2eff. H1FF3A h1ff3aff.
         H1FF3B h1ff3aff. H1FF3C h1mf3aff. H1FF3D h1ff3dff.
         H1FF3E h1ff3eff. H1FF4A h1ff4aff. H1FF4B h1mf4aff.
         H1FF4C h1ff4cff. H1FF4D h1mf4aff. H1FF4E h1mf4aff.
         H1FF5A h1ff5aff. H1FF5B h1mf5aff. H1FF5C h1ff5aff.
         H1FF5D h1mf5aff. H1FF5E h1ff5eff. H1FF6A h1gh1aff.
         H1FF6B h1mf6aff. H1FF6C h1pl2fff. H1FF6D h1ff6dff.
         H1FF6E h1pl2fff. H1FF7A h1ff7aff. H1FF7B h1mf6aff.
         H1FF7C h1pl2fff. H1FF7D h1ff6dff. H1FF7E h1pl2fff.
         H1FF8A h1mf6aff. H1FF8B h1mf6aff. H1FF8C h1pl2fff.
         H1FF8D h1ff6dff. H1FF8E h1pl2fff. H1FF9A h1mf6aff.
         H1FF9B h1mf6aff. H1FF9C h1pl2fff. H1FF9D h1ff6dff.
         H1FF9E h1pl2fff. H1FP1 h1fp1fff. H1FP10 h1fp10ff.
         H1FP11M1 h1fp11mf. H1FP11M2 h1fp11m_1f. H1FP11M3 h1fp11m_2f.
         H1FP11M4 h1nr43_f. H1FP11M5 h1nr43_f. H1FP11Y1 h1fp11yf.
         H1FP11Y2 h1fp11yf. H1FP11Y3 h1fp11y_1f. H1FP11Y4 h1nr43_f.
         H1FP11Y5 h1nr43_f. H1FP12_1 h1fp12_f. H1FP12_2 h1fp12__1f.
         H1FP12_3 h1fp12__1f. H1FP12_4 h1fp14_f. H1FP12_5 h1fp14_f.
         H1FP13A1 h1fp13af. H1FP13A2 h1fp13a_1f. H1FP13A3 h1nr43_f.
         H1FP13A4 h1nr43_f. H1FP13A5 h1nr43_f. H1FP13B1 h1fp13bf.
         H1FP13B2 h1fp13b_1f. H1FP13B3 h1nr43_f. H1FP13B4 h1nr43_f.
         H1FP13B5 h1nr43_f. H1FP13C1 h1nr43_f. H1FP13C2 h1nr43_f.
         H1FP13C3 h1nr43_f. H1FP13C4 h1nr43_f. H1FP13C5 h1nr43_f.
         H1FP14_1 h1pl2fff. H1FP14_2 h1pl2fff. H1FP14_3 h1fp14_f.
         H1FP14_4 h1fp14_f. H1FP14_5 h1fp14_f. H1FP15_1 h1fp15_f.
         H1FP15_2 h1fp15_f. H1FP15_3 h1fp15_f. H1FP15_4 h1fp14_f.
         H1FP15_5 h1fp14_f. H1FP17_1 h1fp17_f. H1FP17_2 h1fp17_f.
         H1FP17_3 h1fp17_f. H1FP17_4 h1fp14_f. H1FP17_5 h1fp14_f.
         H1FP2 h1fp2fff. H1FP20M1 h1fp20mf. H1FP20M2 h1fp20m_1f.
         H1FP20M3 h1fp20m_2f. H1FP20M4 h1nr43_f. H1FP20M5 h1nr43_f.
         H1FP20Y1 h1fp20yf. H1FP20Y2 h1fp20yf. H1FP20Y3 h1fp20m_2f.
         H1FP20Y4 h1nr43_f. H1FP20Y5 h1nr43_f. H1FP21_1 h1fp21_f.
         H1FP21_2 h1fp21_f. H1FP21_3 h1fp21_f. H1FP21_4 h1fp14_f.
         H1FP21_5 h1fp14_f. H1FP22_1 h1pl2fff. H1FP22_2 h1pl2fff.
         H1FP22_3 h1fp14_f. H1FP22_4 h1fp14_f. H1FP22_5 h1fp14_f.
         H1FP23A1 h1pl2fff. H1FP23A2 h1pl2fff. H1FP23A3 h1fp14_f.
         H1FP23A4 h1fp14_f. H1FP23A5 h1fp14_f. H1FP24A1 h1fp24af.
         H1FP24A2 h1fp24a_1f. H1FP24A3 h1fp14_f. H1FP24A4 h1fp14_f.
         H1FP24A5 h1fp14_f. H1FP3 h1fp3fff. H1FP4 h1fp4fff.
         H1FP5D h1fp5dff. H1FP5M h1fp5mff. H1FP6 h1fp6fff.
         H1FP7 h1fp7fff. H1FP8 h1fp8fff. H1FP9M h1fp9mff.
         H1FP9Y h1fp9yff. H1FS1 h1fs1fff. H1FS10 h1fs1fff.
         H1FS11 h1fs1fff. H1FS12 h1fs1fff. H1FS13 h1fs1fff.
         H1FS14 h1fs1fff. H1FS15 h1fs1fff. H1FS16 h1fs1fff.
         H1FS17 h1fs1fff. H1FS18 h1fs1fff. H1FS19 h1fs1fff.
         H1FS2 h1fs1fff. H1FS3 h1fs1fff. H1FS4 h1fs1fff.
         H1FS5 h1fs1fff. H1FS6 h1fs1fff. H1FS7 h1fs1fff.
         H1FS8 h1fs1fff. H1FS9 h1fs1fff. H1FV1 h1fv1fff.
         H1FV10 h1fv10ff. H1FV11 h1fv11ff. H1FV12 h1fv12ff.
         H1FV13 h1fv13ff. H1FV14M h1fv14mf. H1FV14Y h1fv14yf.
         H1FV2 h1fv1fff. H1FV3 h1fv1fff. H1FV4 h1fv1fff.
         H1FV5 h1fv1fff. H1FV6 h1fv1fff. H1FV7 h1fv1fff.
         H1FV8 h1fv1fff. H1FV9 h1fv9fff. H1GH1 h1gh1fff.
         H1GH10 h1gh2fff. H1GH11 h1gh2fff. H1GH12 h1gh2fff.
         H1GH13 h1gh2fff. H1GH14 h1gh2fff. H1GH15 h1gh2fff.
         H1GH16 h1gh16ff. H1GH17 h1gh2fff. H1GH18 h1gh2fff.
         H1GH19 h1gh2fff. H1GH1A h1gh1aff. H1GH2 h1gh2fff.
         H1GH20 h1gh2fff. H1GH21 h1gh2fff. H1GH22 h1gh2fff.
         H1GH23A h1gi6aff. H1GH23B h1gi6aff. H1GH23C h1gi6aff.
         H1GH23D h1gi6aff. H1GH23E h1gi6aff. H1GH23F h1gi6aff.
         H1GH23G h1gi6aff. H1GH23H h1gi6aff. H1GH23I h1gi6aff.
         H1GH23J h1gi6aff. H1GH24 h1gh24ff. H1GH25 h1gh24ff.
         H1GH26 h1gh26ff. H1GH27A h1gh27af. H1GH27B h1gh27af.
         H1GH27C h1gh27af. H1GH27D h1gh27af. H1GH27E h1gh27af.
         H1GH27F h1gh27af. H1GH27G h1gh27af. H1GH27H h1gh27af.
         H1GH27I h1gh27af. H1GH27J h1gh27af. H1GH28 h1gh28ff.
         H1GH29 h1gh29ff. H1GH3 h1gh2fff. H1GH30A h1gh27af.
         H1GH30B h1gh27af. H1GH30C h1gh27af. H1GH30D h1gh27af.
         H1GH30E h1gh27af. H1GH30F h1gh27af. H1GH30G h1gh27af.
         H1GH31A h1gh31af. H1GH31B h1gh31af. H1GH31C h1gh31af.
         H1GH31D h1gh31af. H1GH31F h1gh31af. H1GH31G h1gh31af.
         H1GH32 h1gh32ff. H1GH33 h1gh32ff. H1GH34 h1gh32ff.
         H1GH35 h1gh32ff. H1GH36 h1gh32ff. H1GH37 h1gh37ff.
         H1GH38 h1gh38ff. H1GH39 h1gh39ff. H1GH4 h1gh2fff.
         H1GH40 h1gh40ff. H1GH41 h1gh41ff. H1GH42 h1gh42ff.
         H1GH43 h1gh43ff. H1GH44 h1gh44ff. H1GH46 h1gh46ff.
         H1GH48 h1gh48ff. H1GH49 h1gh2fff. H1GH5 h1gh2fff.
         H1GH50 $h1gh50ff. H1GH51 h1gh51ff. H1GH52 h1gi2fff.
         H1GH53 h1gh53ff. H1GH54 h1gh54ff. H1GH55 h1gi2fff.
         H1GH56 h1gi2fff. H1GH57 h1gh57ff. H1GH58 h1gh1aff.
         H1GH59A h1gh59af. H1GH59B h1gh59bf. H1GH6 h1gh2fff.
         H1GH60 h1gh60ff. H1GH7 h1gh2fff. H1GH8 h1gh2fff.
         H1GH9 h1gh2fff. H1GI10 h1gi10ff. H1GI11 h1gi11ff.
         H1GI12 h1gi12ff. H1GI13M h1gi13mf. H1GI13Y h1gi13yf.
         H1GI14 h1gi14ff. H1GI15 h1gi15ff. H1GI16M h1gi16mf.
         H1GI16Y h1gi16yf. H1GI18 h1gi18ff. H1GI19 h1gi19ff.
         H1GI1M h1gi1mff. H1GI1Y h1gi1yff. H1GI2 h1gi2fff.
         H1GI20 h1gi20ff. H1GI21 h1gi21ff. H1GI3 h1gi3fff.
         H1GI4 h1gi4fff. H1GI5A h1gi5aff. H1GI5B h1gi5aff.
         H1GI5C h1gi5aff. H1GI5D h1gi5aff. H1GI5E h1gi5aff.
         H1GI5F h1gi5aff. H1GI6A h1gi6aff. H1GI6B h1gi6aff.
         H1GI6C h1gi6aff. H1GI6D h1gi6dff. H1GI6E h1gi6aff.
         H1GI7A h1gi7aff. H1GI7B h1gi7aff. H1GI7C h1gi7aff.
         H1GI7D h1gi7aff. H1GI7E h1gi7aff. H1GI7F h1gi7aff.
         H1GI7G h1gi7aff. H1GI8 h1gi8fff. H1GI9 h1gi9fff.
         H1HR10A h1hr10af. H1HR10B h1hr10af. H1HR10C h1hr10cf.
         H1HR10D h1hr10df. H1HR10E h1hr10ef. H1HR10F h1hr10ef.
         H1HR10G h1hr10ef. H1HR10H h1hr10ef. H1HR10I h1hr10ef.
         H1HR10J h1hr10ef. H1HR10K h1hr10ef. H1HR10L h1hr10ef.
         H1HR10M h1hr10ef. H1HR10N h1hr10ef. H1HR10O h1hr10ef.
         H1HR10P h1hr10ef. H1HR10Q h1hr10ef. H1HR10R h1hr10ef.
         H1HR10S h1hr10ef. H1HR10T h1hr10ef. H1HR11A h1hr11af.
         H1HR11B h1hr11bf. H1HR11C h1hr11af. H1HR11D h1hr11bf.
         H1HR11E h1hr11bf. H1HR11F h1hr11af. H1HR11G h1hr11af.
         H1HR11H h1hr11af. H1HR11I h1hr11af. H1HR11J h1hr11af.
         H1HR11K h1hr11af. H1HR11L h1hr11af. H1HR11M h1hr11af.
         H1HR11N h1hr11af. H1HR11O h1hr11af. H1HR11P h1hr11af.
         H1HR11Q h1hr11af. H1HR11R h1hr11af. H1HR11S h1hr11af.
         H1HR11T h1hr11af. H1HR12 h1hr12ff. H1HR13 h1hr12ff.
         H1HR14 h1hr14ff. H1HR15 h1hr15ff. H1HR2A h1hr2aff.
         H1HR2B h1hr2bff. H1HR2C h1hr2cff. H1HR2D h1hr2dff.
         H1HR2E h1hr2eff. H1HR2F h1hr2fff. H1HR2G h1hr2gff.
         H1HR2H h1hr2hff. H1HR2I h1hr2iff. H1HR2J h1hr2jff.
         H1HR2K h1hr2kff. H1HR2L h1hr2lff. H1HR2M h1hr2mff.
         H1HR2N h1hr2nff. H1HR2O h1hr2off. H1HR2P h1hr2pff.
         H1HR2Q h1hr2qff. H1HR2R h1hr2rff. H1HR2S h1hr2sff.
         H1HR2T h1hr2tff. H1HR3A h1hr3aff. H1HR3B h1hr3bff.
         H1HR3C h1hr3cff. H1HR3D h1hr3dff. H1HR3E h1hr3eff.
         H1HR3F h1hr3fff. H1HR3G h1hr3gff. H1HR3H h1hr3hff.
         H1HR3I h1hr3iff. H1HR3J h1hr3jff. H1HR3K h1hr3kff.
         H1HR3L h1hr3lff. H1HR3M h1hr3mff. H1HR3N h1hr3nff.
         H1HR3O h1hr3off. H1HR3P h1hr3pff. H1HR3Q h1hr3qff.
         H1HR3R h1hr3rff. H1HR3S h1hr3sff. H1HR3T h1hr3tff.
         H1HR4A h1hr4aff. H1HR4B h1hr4bff. H1HR4C h1hr4cff.
         H1HR4D h1hr4dff. H1HR4E h1hr4aff. H1HR4F h1hr4aff.
         H1HR4G h1hr4aff. H1HR4H h1hr4aff. H1HR4I h1hr4aff.
         H1HR4J h1hr4aff. H1HR4K h1hr4aff. H1HR4L h1hr4aff.
         H1HR4M h1hr4aff. H1HR4N h1hr4aff. H1HR4O h1hr4aff.
         H1HR4P h1hr4aff. H1HR4Q h1hr4aff. H1HR4R h1hr4aff.
         H1HR4S h1hr4aff. H1HR4T h1hr4aff. H1HR5A h1hr5aff.
         H1HR5B h1hr5bff. H1HR5C h1hr5cff. H1HR5D h1hr5cff.
         H1HR5E h1hr5eff. H1HR5F h1hr5eff. H1HR5G h1hr5cff.
         H1HR5H h1hr5cff. H1HR5I h1hr5cff. H1HR5J h1hr5cff.
         H1HR5K h1hr5cff. H1HR5L h1hr5cff. H1HR5M h1hr5cff.
         H1HR5N h1hr5cff. H1HR5O h1hr5cff. H1HR5P h1hr5cff.
         H1HR5Q h1hr5cff. H1HR5R h1hr5cff. H1HR5S h1hr5cff.
         H1HR5T h1hr5cff. H1HR6A h1hr6aff. H1HR6B h1hr6aff.
         H1HR6C h1hr6cff. H1HR6D h1hr6dff. H1HR6E h1hr6eff.
         H1HR6F h1hr6fff. H1HR6G h1hr6aff. H1HR6H h1hr6aff.
         H1HR6I h1hr6aff. H1HR6J h1hr6aff. H1HR6K h1hr6aff.
         H1HR6L h1hr6aff. H1HR6M h1hr6aff. H1HR6N h1hr6aff.
         H1HR6O h1hr6aff. H1HR6P h1hr6aff. H1HR6Q h1hr6aff.
         H1HR6R h1hr6aff. H1HR6S h1hr6aff. H1HR6T h1hr6aff.
         H1HR7A h1hr7aff. H1HR7B h1hr7bff. H1HR7C h1hr7cff.
         H1HR7D h1hr7dff. H1HR7E h1hr7eff. H1HR7F h1hr7fff.
         H1HR7G h1hr7gff. H1HR7H h1hr7hff. H1HR7I h1hr7iff.
         H1HR7J h1hr7jff. H1HR7K h1hr7kff. H1HR7L h1hr7lff.
         H1HR7M h1hr7mff. H1HR7N h1hr7nff. H1HR7O h1hr7off.
         H1HR7P h1hr7pff. H1HR7Q h1hr7qff. H1HR7R h1hr7rff.
         H1HR7S h1hr7sff. H1HR7T h1hr7tff. H1HR8A h1hr8aff.
         H1HR8B h1hr8aff. H1HR8C h1hr8aff. H1HR8D h1hr8aff.
         H1HR8E h1hr8eff. H1HR8F h1hr8eff. H1HR8G h1hr8eff.
         H1HR8H h1hr8eff. H1HR8I h1hr8eff. H1HR8J h1hr8eff.
         H1HR8K h1hr8eff. H1HR8L h1hr8eff. H1HR8M h1hr8eff.
         H1HR8N h1hr8eff. H1HR8O h1hr8eff. H1HR8P h1hr8eff.
         H1HR8Q h1hr8eff. H1HR8R h1hr8eff. H1HR8S h1hr8eff.
         H1HR8T h1hr8eff. H1HR9A h1hr9aff. H1HR9B h1hr9bff.
         H1HR9C h1hr9cff. H1HR9D h1hr9dff. H1HR9E h1hr9eff.
         H1HR9F h1hr9fff. H1HR9G h1hr9gff. H1HR9H h1hr9hff.
         H1HR9I h1hr9iff. H1HR9J h1hr9jff. H1HR9K h1hr9kff.
         H1HR9L h1hr9lff. H1HR9M h1hr9mff. H1HR9N h1hr9nff.
         H1HR9O h1hr9off. H1HR9P h1hr9pff. H1HR9Q h1hr9qff.
         H1HR9R h1hr9rff. H1HR9S h1hr9sff. H1HR9T h1hr9tff.
         H1HS1 h1hs1fff. H1HS10A h1gh31af. H1HS10B h1gh31af.
         H1HS10C h1gh31af. H1HS10D h1gh31af. H1HS10E h1gh31af.
         H1HS11 h1hs11ff. H1HS12A h1gh31af. H1HS12B h1gh31af.
         H1HS12C h1gh31af. H1HS12D h1gh31af. H1HS12E h1gh31af.
         H1HS2A h1ed6aff. H1HS2B h1ed6aff. H1HS2C h1ed6aff.
         H1HS2D h1ed6aff. H1HS2E h1ed6aff. H1HS3 h1ed3fff.
         H1HS4A h1gh31af. H1HS4B h1gh31af. H1HS4C h1gh31af.
         H1HS4D h1gh31af. H1HS4E h1gh31af. H1HS5 h1ed5fff.
         H1HS6A h1gh31af. H1HS6B h1gh31af. H1HS6C h1gh31af.
         H1HS6D h1gh31af. H1HS6E h1gh31af. H1HS7 h1hs7fff.
         H1HS8A h1ed6aff. H1HS8B h1ed6aff. H1HS8C h1ed6aff.
         H1HS8D h1ed6aff. H1HS8E h1ed6aff. H1HS9 h1ed9fff.
         H1ID1A h1id1aff. H1ID1B h1id1aff. H1ID1C h1id1aff.
         H1ID1D h1id1aff. H1ID1E h1id1aff. H1ID1F h1id1aff.
         H1ID1G h1id1aff. H1ID1H h1id1aff. H1ID1I h1id1aff.
         H1ID1J h1id1aff. H1ID1K h1id1aff. H1ID1L h1id1aff.
         H1ID1M h1id1aff. H1ID1N h1id1aff. H1ID1O h1id1aff.
         H1ID1P h1id1aff. H1ID1Q h1id1aff. H1ID1R h1id1aff.
         H1ID2_1 h1id2_1f. H1ID2_10 h1id2_2f. H1ID2_11 h1id2_2f.
         H1ID2_12 h1id2_2f. H1ID2_13 h1id2_2f. H1ID2_14 h1id2_2f.
         H1ID2_15 h1id2_2f. H1ID2_16 h1id2_2f. H1ID2_17 h1id2_2f.
         H1ID2_2 h1id2_2f. H1ID2_3 h1id2_2f. H1ID2_4 h1id2_2f.
         H1ID2_5 h1id2_2f. H1ID2_6 h1id2_2f. H1ID2_7 h1id2_2f.
         H1ID2_8 h1id2_2f. H1ID2_9 h1id2_2f. H1ID5 h1id5fff.
         H1ID6 h1id6fff. H1IR1 h1ir1fff. H1IR10 h1ir10ff.
         H1IR11 h1ir11ff. H1IR12 h1ir12ff. H1IR13 h1ir13ff.
         H1IR14 h1ir14ff. H1IR15 h1gh53ff. H1IR16 h1ir16ff.
         H1IR17A h1ir17af. H1IR17B h1ir17af. H1IR17C h1ir17af.
         H1IR17D h1ir17af. H1IR17E h1ir17af. H1IR17F h1ir17af.
         H1IR17G h1ir17af. H1IR17H h1ir17af. H1IR17I h1ir17af.
         H1IR17J h1ir17af. H1IR18 h1ir18ff. H1IR19 h1gi18ff.
         H1IR2 h1ir1fff. H1IR20 h1ir20ff. H1IR21 h1ir21ff.
         H1IR22A h1ir22af. H1IR22AA h1ir22af. H1IR22B h1ir22af.
         H1IR22BB h1ir22af. H1IR22C h1ir22af. H1IR22CC h1ir22af.
         H1IR22D h1ir22af. H1IR22DD h1ir22af. H1IR22E h1ir22af.
         H1IR22EE h1ir22af. H1IR22F h1ir22af. H1IR22FF h1ir22af.
         H1IR22G h1ir22af. H1IR22GG h1ir22af. H1IR22H h1ir22af.
         H1IR22HH h1ir22af. H1IR22I h1ir22af. H1IR22II h1ir22af.
         H1IR22J h1ir22af. H1IR22JJ h1ir22af. H1IR22K h1ir22af.
         H1IR22KK h1ir22af. H1IR22L h1ir22af. H1IR22LL h1ir22af.
         H1IR22M h1ir22af. H1IR22MM h1ir22af. H1IR22N h1ir22af.
         H1IR22O h1ir22af. H1IR22P h1ir22af. H1IR22Q h1ir22af.
         H1IR22R h1ir22af. H1IR22S h1ir22af. H1IR22T h1ir22af.
         H1IR22U h1ir22af. H1IR22V h1ir22af. H1IR22W h1ir22af.
         H1IR22X h1ir22af. H1IR22Y h1ir22af. H1IR22Z h1ir22af.
         H1IR23 h1gh53ff. H1IR24 h1gh53ff. H1IR25 h1gi10ff.
         H1IR26 h1ir26ff. H1IR27 h1gi2fff. H1IR28 h1ir28ff.
         H1IR3 h1ir3fff. H1IR4 h1ir4fff. H1IR5 h1ir5fff.
         H1IR6 h1ed7fff. H1IR7A h1ir7aff. H1IR7AA h1ir7aff.
         H1IR7B h1ir7aff. H1IR7BB h1ir7aff. H1IR7C h1ir7aff.
         H1IR7CC h1ir7aff. H1IR7D h1ir7aff. H1IR7DD h1ir7ddf.
         H1IR7E h1ir7aff. H1IR7F h1ir7aff. H1IR7G h1ir7aff.
         H1IR7H h1ir7aff. H1IR7I h1ir7aff. H1IR7J h1ir7aff.
         H1IR7K h1ir7aff. H1IR7L h1ir7aff. H1IR7M h1ir7aff.
         H1IR7N h1ir7aff. H1IR7O h1ir7aff. H1IR7P h1ir7aff.
         H1IR7Q h1ir7aff. H1IR7R h1ir7aff. H1IR7S h1ir7aff.
         H1IR7T h1ir7aff. H1IR7U h1ir7aff. H1IR7V h1ir7aff.
         H1IR7W h1ir7aff. H1IR7X h1ir7aff. H1IR7Y h1ir7aff.
         H1IR7Z h1ir7aff. H1IR8A h1ir8aff. H1IR8B h1ir8bff.
         H1IR8C h1ir8cff. H1IR8D h1ir8dff. H1IR9 h1ir9fff.
         H1JO1 h1jo1fff. H1JO10 h1jo9fff. H1JO11 h1jo11ff.
         H1JO12 h1jo12ff. H1JO13 h1jo13ff. H1JO14 h1jo14ff.
         H1JO15 h1jo15ff. H1JO16 h1jo16ff. H1JO17 h1jo17ff.
         H1JO18A h1jo18af. H1JO18B h1jo18af. H1JO18C h1jo18af.
         H1JO18D h1jo18af. H1JO18E h1jo18af. H1JO19 h1jo19ff.
         H1JO2 h1jo2fff. H1JO20 h1jo19ff. H1JO21 h1jo21ff.
         H1JO22A h1jo22af. H1JO22B h1jo22af. H1JO22C h1jo22af.
         H1JO22D h1jo22af. H1JO22E h1jo22af. H1JO23 h1jo19ff.
         H1JO24 h1jo24ff. H1JO25 h1gh53ff. H1JO26 h1gh53ff.
         H1JO3 h1jo3fff. H1JO4 h1jo4fff. H1JO5 h1jo5fff.
         H1JO6A h1jo6aff. H1JO6B h1jo6aff. H1JO6C h1jo6aff.
         H1JO6D h1jo6aff. H1JO6E h1jo6aff. H1JO7 h1jo7fff.
         H1JO8A h1jo8aff. H1JO8B h1jo8aff. H1JO8C h1jo8aff.
         H1JO8D h1jo8aff. H1JO8E h1jo8aff. H1JO9 h1jo9fff.
         H1KQ10A h1kq1aff. H1KQ10B h1kq1bff. H1KQ1A h1kq1aff.
         H1KQ1B h1kq1bff. H1KQ2A h1kq2aff. H1KQ2B h1kq1bff.
         H1KQ3A h1kq1aff. H1KQ3B h1kq1bff. H1KQ4A h1kq1aff.
         H1KQ4B h1kq1bff. H1KQ5A h1kq1aff. H1KQ5B h1kq1bff.
         H1KQ6A h1kq1aff. H1KQ6B h1kq1bff. H1KQ7A h1kq1aff.
         H1KQ7B h1kq1bff. H1KQ8A h1kq2aff. H1KQ8B h1kq1bff.
         H1KQ9A h1kq1aff. H1KQ9B h1kq1bff. H1LR1 h1lr1fff.
         H1LR2 h1lr2fff. H1LR3 h1lr2fff. H1LR4 h1lr4fff.
         H1MF10A h1gh1aff. H1MF10B h1mf6aff. H1MF10C h1mf6aff.
         H1MF10D h1mf6aff. H1MF10E h1pl2fff. H1MF2A h1mf2aff.
         H1MF2B h1mf2bff. H1MF2C h1mf2cff. H1MF2D h1mf2dff.
         H1MF2E h1mf2eff. H1MF3A h1mf3aff. H1MF3B h1mf3aff.
         H1MF3C h1mf3aff. H1MF3D h1mf3aff. H1MF3E h1mf3aff.
         H1MF4A h1mf4aff. H1MF4B h1mf4aff. H1MF4C h1mf4aff.
         H1MF4D h1mf4aff. H1MF4E h1mf4aff. H1MF5A h1mf5aff.
         H1MF5B h1mf5aff. H1MF5C h1mf5aff. H1MF5D h1mf5aff.
         H1MF5E h1mf5aff. H1MF6A h1mf6aff. H1MF6B h1mf6aff.
         H1MF6C h1mf6aff. H1MF6D h1mf6aff. H1MF6E h1pl2fff.
         H1MF7A h1rf5fff. H1MF7B h1mf6aff. H1MF7C h1mf6aff.
         H1MF7D h1mf6aff. H1MF7E h1pl2fff. H1MF8A h1gh1aff.
         H1MF8B h1mf6aff. H1MF8C h1gh1aff. H1MF8D h1mf6aff.
         H1MF8E h1pl2fff. H1MF9A h1gh1aff. H1MF9B h1mf6aff.
         H1MF9C h1mf6aff. H1MF9D h1mf6aff. H1MF9E h1pl2fff.
         H1MO1 h1mo1fff. H1MO10 h1mo1fff. H1MO11 h1mo1fff.
         H1MO12 h1mo1fff. H1MO13 h1mo1fff. H1MO14 h1mo1fff.
         H1MO2 h1mo1fff. H1MO3 h1mo1fff. H1MO4 h1mo4fff.
         H1MO5 h1mo1fff. H1MO6 h1mo1fff. H1MO7 h1mo1fff.
         H1MO8 h1mo1fff. H1MO9 h1mo1fff. H1MP1 h1mp1fff.
         H1MP2 h1mp2fff. H1MP3 h1mp3fff. H1MP4 h1mp4fff.
         H1NB1 h1nb1fff. H1NB2 h1nb1fff. H1NB3 h1nb1fff.
         H1NB4 h1gh53ff. H1NB5 h1gi2fff. H1NB6 h1nb6fff.
         H1NB7 h1nb7fff. H1NF1 h1nf1fff. H1NF10 h1nm10ff.
         H1NF11 h1nm10ff. H1NF12A h1gh1aff. H1NF12B h1gh1aff.
         H1NF12C h1gh1aff. H1NF12D h1gh1aff. H1NF12E h1gh1aff.
         H1NF12F h1gh1aff. H1NF12G h1gh1aff. H1NF12H h1gh1aff.
         H1NF12I h1gh1aff. H1NF12J h1gh1aff. H1NF13 h1gh1aff.
         H1NF14 h1nm14ff. H1NF2 h1nf2fff. H1NF3 h1nf3fff.
         H1NF4 h1nf4fff. H1NF5 h1gh1aff. H1NF6 h1gh1aff.
         H1NF7 h1nm7fff. H1NF8 h1nf8fff. H1NF9 h1nf9fff.
         H1NM1 h1nm1fff. H1NM10 h1nm10ff. H1NM11 h1nm10ff.
         H1NM12A h1gh1aff. H1NM12B h1gh1aff. H1NM12C h1gh1aff.
         H1NM12D h1gh1aff. H1NM12E h1gh1aff. H1NM12F h1gh1aff.
         H1NM12G h1gh1aff. H1NM12H h1gh1aff. H1NM12I h1gh1aff.
         H1NM12J h1gh1aff. H1NM13 h1gh1aff. H1NM14 h1nm14ff.
         H1NM2 h1pl3fff. H1NM3 h1nm3fff. H1NM4 h1nm4fff.
         H1NM5 h1gh1aff. H1NM6 h1gh1aff. H1NM7 h1nm7fff.
         H1NM8 h1nm8fff. H1NM9 h1nm9fff. H1NR1 h1gh53ff.
         H1NR10_1 h1nr10_f. H1NR10_2 h1nr14_f. H1NR10_3 h1nr14_f.
         H1NR11_1 h1nr10_f. H1NR11_2 h1nr14_f. H1NR11_3 h1nr14_f.
         H1NR12_1 h1nr10_f. H1NR12_2 h1nr14_f. H1NR12_3 h1nr14_f.
         H1NR13_1 h1nr13_f. H1NR13_2 h1nr13__1f. H1NR13_3 h1nr13__1f.
         H1NR14_1 h1nr14_f. H1NR14_2 h1nr14_f. H1NR14_3 h1nr14_f.
         H1NR15_1 h1nr15_f. H1NR15_2 h1nr15__1f. H1NR15_3 h1nr15__1f.
         H1NR16_1 h1nr16_f. H1NR16_2 h1nr16_f. H1NR16_3 h1nr16_f.
         H1NR17A1 h1nr17af. H1NR17A2 h1gi5aff. H1NR17A3 h1rx17a_1f.
         H1NR17B1 h1nr17af. H1NR17B2 h1gi5aff. H1NR17B3 h1rx17a_1f.
         H1NR17C1 h1nr17af. H1NR17C2 h1gi5aff. H1NR17C3 h1rx17a_1f.
         H1NR17D1 h1nr17af. H1NR17D2 h1gi5aff. H1NR17D3 h1rx17a_1f.
         H1NR17E1 h1nr17af. H1NR17E2 h1gi5aff. H1NR17E3 h1rx17a_1f.
         H1NR17F1 h1nr17af. H1NR17F2 h1gi5aff. H1NR17F3 h1rx17a_1f.
         H1NR18A1 h1nr18af. H1NR18A2 h1nr20af. H1NR18A3 h1nr20af.
         H1NR18B1 h1nr18af. H1NR18B2 h1nr20af. H1NR18B3 h1nr20af.
         H1NR18C1 h1nr18af. H1NR18C2 h1nr20af. H1NR18C3 h1nr20af.
         H1NR18D1 h1nr18df. H1NR18D2 h1nr18d_1f. H1NR18D3 h1nr18d_1f.
         H1NR18E1 h1nr18af. H1NR18E2 h1nr20af. H1NR18E3 h1nr20af.
         H1NR19A1 h1rx19af. H1NR19A2 h1rx19af. H1NR19A3 h1rx19af.
         H1NR19B1 h1rx19af. H1NR19B2 h1rx19af. H1NR19B3 h1rx19af.
         H1NR19C1 h1rx19af. H1NR19C2 h1rx19af. H1NR19C3 h1rx19af.
         H1NR19D1 h1rx19af. H1NR19D2 h1rx19af. H1NR19D3 h1rx19af.
         H1NR19E1 h1rx19af. H1NR19E2 h1rx19af. H1NR19E3 h1rx19af.
         H1NR19F1 h1rx19af. H1NR19F2 h1rx19af. H1NR19F3 h1rx19af.
         H1NR19G1 h1rx19af. H1NR19G2 h1rx19af. H1NR19G3 h1rx19af.
         H1NR2 h1gh53ff. H1NR20A1 h1nr20af. H1NR20A2 h1nr20af.
         H1NR20A3 h1nr20af. H1NR20B1 h1nr20af. H1NR20B2 h1nr20af.
         H1NR20B3 h1nr20af. H1NR20C1 h1nr20af. H1NR20C2 h1nr20af.
         H1NR20C3 h1nr20af. H1NR20D1 h1nr20af. H1NR20D2 h1nr20af.
         H1NR20D3 h1nr20af. H1NR20E1 h1nr20af. H1NR20E2 h1nr20af.
         H1NR20E3 h1nr20af. H1NR20F1 h1nr20af. H1NR20F2 h1nr20af.
         H1NR20F3 h1nr20af. H1NR20G1 h1nr20af. H1NR20G2 h1nr20af.
         H1NR20G3 h1nr20af. H1NR20H1 h1nr14_f. H1NR20H2 h1nr14_f.
         H1NR20H3 h1nr14_f. H1NR21_1 h1nr21_f. H1NR21_2 h1nr21_f.
         H1NR21_3 h1nr21_f. H1NR22_1 h1nr22_f. H1NR22_2 h1nr22__1f.
         H1NR22_3 h1nr22__1f. H1NR23M1 h1nr23mf. H1NR23M2 h1nr23mf.
         H1NR23M3 h1nr23mf. H1NR23Y1 h1nr23yf. H1NR23Y2 h1nr23y_1f.
         H1NR23Y3 h1nr24y_1f. H1NR24M1 h1nr23mf. H1NR24M2 h1nr23mf.
         H1NR24M3 h1nr23mf. H1NR24Y1 h1nr24yf. H1NR24Y2 h1nr24y_1f.
         H1NR24Y3 h1nr24y_2f. H1NR25_1 h1nr25_f. H1NR25_2 h1nr25_f.
         H1NR25_3 h1nr25_f. H1NR26_1 h1nr26_f. H1NR26_2 h1nr26_f.
         H1NR26_3 h1nr26_f. H1NR27A1 h1nr27af. H1NR27A2 h1ri38a_2f.
         H1NR27A3 h1nr31a_1f. H1NR27B1 h1nr27bf. H1NR27B2 h1nr27b_1f.
         H1NR27B3 h1nr27b_2f. H1NR27C1 h1nr27cf. H1NR27C2 h1nr27c_1f.
         H1NR27C3 h1nr27c_2f. H1NR28_1 h1ri32_f. H1NR28_2 h1ri32_f.
         H1NR28_3 h1ri32_f. H1NR29_1 h1nr29_f. H1NR29_2 h1nr29_f.
         H1NR29_3 h1nr29__1f. H1NR3 h1nr3fff. H1NR30_1 h1ri32_f.
         H1NR30_2 h1ri32_f. H1NR30_3 h1ri32_f. H1NR31A1 h1nr31af.
         H1NR31A2 h1nr31a_1f. H1NR31A3 h1nr31a_2f. H1NR31B1 h1nr31bf.
         H1NR31B2 h1nr31b_1f. H1NR31B3 h1nr31b_2f. H1NR31C1 h1nr31cf.
         H1NR31C2 h1nr31c_1f. H1NR31C3 h1nr31c_2f. H1NR32_1 h1ri32_f.
         H1NR32_2 h1ri32_f. H1NR32_3 h1ri32_f. H1NR33_1 h1nr33_f.
         H1NR33_2 h1nr33_f. H1NR33_3 h1nr33_f. H1NR34_1 h1nr34_f.
         H1NR34_2 h1nr34__1f. H1NR34_3 h1nr34_f. H1NR35_1 h1ri32_f.
         H1NR35_2 h1ri32_f. H1NR35_3 h1ri32_f. H1NR36A1 h1nr36af.
         H1NR36A2 h1nr36a_1f. H1NR36A3 h1ri29a_2f. H1NR36B1 h1nr36bf.
         H1NR36B2 h1nr36b_1f. H1NR36B3 h1nr36b_2f. H1NR36C1 h1nr36cf.
         H1NR36C2 h1nr36c_1f. H1NR36C3 h1nr36c_2f. H1NR37_1 h1ri32_f.
         H1NR37_2 h1ri32_f. H1NR37_3 h1ri32_f. H1NR38_1 h1nr38_f.
         H1NR38_2 h1nr38_f. H1NR38_3 h1nr33_f. H1NR39_1 h1nr39_f.
         H1NR39_2 h1nr39_f. H1NR39_3 h1nr39__1f. H1NR4 h1nr4fff.
         H1NR40_1 h1nr40_f. H1NR40_2 h1nr40_f. H1NR40_3 h1nr40_f.
         H1NR41_1 h1nr40_f. H1NR41_2 h1nr40_f. H1NR41_3 h1nr40_f.
         H1NR42_1 h1nr42_f. H1NR42_2 h1nr42_f. H1NR42_3 h1nr42__1f.
         H1NR43_1 h1nr43_f. H1NR43_2 h1nr43__1f. H1NR43_3 h1nr43__2f.
         H1NR44 h1nr44ff. H1NR45 h1rx3_2f. H1NR46 h1rx3_2f.
         H1NR47 h1nr47ff. H1NR48 h1nr48ff. H1NR49 h1pl2fff.
         H1NR5 h1nr5fff. H1NR50 h1rx3_2f. H1NR51 h1nr51ff.
         H1NR52 h1nr48ff. H1NR53 h1nr53ff. H1NR6 h1nr6fff.
         H1NR7 h1nr7fff. H1NR8 h1nr6fff. H1PA1 h1pa1fff.
         H1PA2 h1pa1fff. H1PA3 h1pa1fff. H1PA4 h1pa4fff.
         H1PA5 h1pa4fff. H1PA6 h1pa4fff. H1PA7 h1id5fff.
         H1PF1 h1pf1fff. H1PF10 h1pf7fff. H1PF11 h1pf6fff.
         H1PF12 h1pf6fff. H1PF13 h1pf7fff. H1PF14 h1pf7fff.
         H1PF15 h1pf7fff. H1PF16 h1pf7fff. H1PF17 h1pf6fff.
         H1PF18 h1pf6fff. H1PF19 h1pf7fff. H1PF2 h1pf1fff.
         H1PF20 h1pf6fff. H1PF21 h1pf6fff. H1PF22 h1pf6fff.
         H1PF23 h1pf23ff. H1PF24 h1pf23ff. H1PF25 h1pf23ff.
         H1PF26 h1pf6fff. H1PF27 h1pf7fff. H1PF28 h1pf7fff.
         H1PF29 h1pf7fff. H1PF3 h1pf1fff. H1PF30 h1pf7fff.
         H1PF31 h1pf7fff. H1PF32 h1pf7fff. H1PF33 h1pf7fff.
         H1PF34 h1pf7fff. H1PF35 h1pf7fff. H1PF36 h1pf7fff.
         H1PF4 h1pf1fff. H1PF5 h1pf1fff. H1PF6 h1pf6fff.
         H1PF7 h1pf7fff. H1PF8 h1pf7fff. H1PF9 h1pf6fff.
         H1PL1 h1ed3fff. H1PL10 h1pl10ff. H1PL11 h1pl11ff.
         H1PL12 h1pl12ff. H1PL13 h1pl11ff. H1PL14 h1pl14ff.
         H1PL15 h1pl15ff. H1PL16 h1pl16ff. H1PL17 h1pl15ff.
         H1PL18 h1pl18ff. H1PL19 h1pl15ff. H1PL2 h1pl2fff.
         H1PL20 h1gh1aff. H1PL21 h1gh1aff. H1PL22 h1gh1aff.
         H1PL23 h1gh1aff. H1PL24 h1gh1aff. H1PL25 h1gh1aff.
         H1PL26 h1gh1aff. H1PL29 h1gh1aff. H1PL3 h1pl3fff.
         H1PL30 h1gh1aff. H1PL31 h1gh1aff. H1PL33 h1gh1aff.
         H1PL34 h1gh1aff. H1PL37 h1gh1aff. H1PL38 h1gh1aff.
         H1PL4 h1pl2fff. H1PL5 h1gi2fff. H1PL6 h1gi2fff.
         H1PL7 h1gi2fff. H1PL8 h1pl8fff. H1PL9 h1pl9fff.
         H1PR1 h1pr1fff. H1PR2 h1pr1fff. H1PR3 h1pr1fff.
         H1PR4 h1pr1fff. H1PR5 h1pr1fff. H1PR6 h1pr1fff.
         H1PR7 h1pr1fff. H1PR8 h1pr1fff. H1RE1 h1re1fff.
         H1RE2 h1re2fff. H1RE3 h1re3fff. H1RE4 h1re4fff.
         H1RE5 h1re5fff. H1RE6 h1re6fff. H1RE7 h1re3fff.
         H1RF1 h1rf1fff. H1RF10 h1rf9fff. H1RF11 h1rf11ff.
         H1RF12 h1rf12ff. H1RF13 h1rf13ff. H1RF14 h1rf9fff.
         H1RF2 h1rf2fff. H1RF3 h1rf3fff. H1RF4 h1rf4fff.
         H1RF5 h1rf5fff. H1RF6 h1rf5fff. H1RF7 h1ed2fff.
         H1RF8 h1rm8fff. H1RF9 h1rf9fff. H1RI10_1 h1ri10_f.
         H1RI10_2 h1ri10__1f. H1RI10_3 h1ri10__2f. H1RI11M1 h1ri11mf.
         H1RI11M2 h1ri11m_1f. H1RI11M3 h1ri11m_2f. H1RI11Y1 h1ri11yf.
         H1RI11Y2 h1ri11y_1f. H1RI11Y3 h1ri11y_2f. H1RI12_1 h1ri12_f.
         H1RI12_2 h1ri12__1f. H1RI12_3 h1ri12__2f. H1RI13_1 h1ri13_f.
         H1RI13_2 h1ri13__1f. H1RI13_3 h1ri13__2f. H1RI14_1 h1ri14_f.
         H1RI14_2 h1ri14__1f. H1RI14_3 h1ri14__2f. H1RI15_1 h1ri15_f.
         H1RI15_2 h1ri15__1f. H1RI15_3 h1ri15__2f. H1RI16_1 h1ri16_f.
         H1RI16_2 h1ri16__1f. H1RI16_3 h1ri16__2f. H1RI17A1 h1ri17af.
         H1RI17A2 h1gi5aff. H1RI17A3 h1gi5aff. H1RI17B1 h1ri17af.
         H1RI17B2 h1gi5aff. H1RI17B3 h1gi5aff. H1RI17C1 h1ri17af.
         H1RI17C2 h1gi5aff. H1RI17C3 h1gi5aff. H1RI17D1 h1ri17af.
         H1RI17D2 h1gi5aff. H1RI17D3 h1gi5aff. H1RI17E1 h1ri17af.
         H1RI17E2 h1gi5aff. H1RI17E3 h1gi5aff. H1RI17F1 h1ri17af.
         H1RI17F2 h1gi5aff. H1RI17F3 h1gi5aff. H1RI18A1 h1ri18af.
         H1RI18A2 h1ri8a__1f. H1RI18A3 h1ri18a_1f. H1RI18B1 h1ri18af.
         H1RI18B2 h1ri8a__1f. H1RI18B3 h1ri18a_1f. H1RI18C1 h1ri18af.
         H1RI18C2 h1ri8a__1f. H1RI18C3 h1ri18a_1f. H1RI18D1 h1ri18af.
         H1RI18D2 h1ri8a__1f. H1RI18D3 h1ri18df. H1RI18E1 h1ri18af.
         H1RI18E2 h1ri8a__1f. H1RI18E3 h1ri18ef. H1RI19A1 h1gi7aff.
         H1RI19A2 h1gi7aff. H1RI19A3 h1gi7aff. H1RI19B1 h1gi7aff.
         H1RI19B2 h1gi7aff. H1RI19B3 h1gi7aff. H1RI19C1 h1gi7aff.
         H1RI19C2 h1gi7aff. H1RI19C3 h1gi7aff. H1RI19D1 h1gi7aff.
         H1RI19D2 h1gi7aff. H1RI19D3 h1gi7aff. H1RI19E1 h1gi7aff.
         H1RI19E2 h1gi7aff. H1RI19E3 h1gi7aff. H1RI19F1 h1gi7aff.
         H1RI19F2 h1gi7aff. H1RI19F3 h1gi7aff. H1RI19G1 h1gi7aff.
         H1RI19G2 h1gi7aff. H1RI19G3 h1gi7aff. H1RI1M_1 h1ri1m_f.
         H1RI1M_2 h1ri1m__1f. H1RI1M_3 h1ri1m__2f. H1RI1Y_1 h1ri1y_f.
         H1RI1Y_2 h1ri1y__1f. H1RI1Y_3 h1ri1y__2f. H1RI20_1 h1ri20_f.
         H1RI20_2 h1ri20__1f. H1RI20_3 h1ri20__2f. H1RI21A1 h1ri21af.
         H1RI21A2 h1ri21a_1f. H1RI21A3 h1ri21a_2f. H1RI21B1 h1ri21af.
         H1RI21B2 h1ri21a_1f. H1RI21B3 h1ri21a_2f. H1RI21C1 h1ri21af.
         H1RI21C2 h1ri21a_1f. H1RI21C3 h1ri21a_2f. H1RI21D1 h1ri21af.
         H1RI21D2 h1ri21a_1f. H1RI21D3 h1ri21a_2f. H1RI21E1 h1ri21af.
         H1RI21E2 h1ri21a_1f. H1RI21E3 h1ri21a_2f. H1RI21F1 h1ri21af.
         H1RI21F2 h1ri21a_1f. H1RI21F3 h1ri21a_2f. H1RI21G1 h1ri21af.
         H1RI21G2 h1ri21a_1f. H1RI21G3 h1ri21a_2f. H1RI21H1 h1ri21af.
         H1RI21H2 h1ri21a_1f. H1RI21H3 h1ri21a_2f. H1RI21I1 h1ri21af.
         H1RI21I2 h1ri21a_1f. H1RI21I3 h1ri21a_2f. H1RI21J1 h1ri21af.
         H1RI21J2 h1ri21a_1f. H1RI21J3 h1ri21a_2f. H1RI21K1 h1ri21af.
         H1RI21K2 h1ri21a_1f. H1RI21K3 h1ri21a_2f. H1RI21L1 h1ri21af.
         H1RI21L2 h1ri21a_1f. H1RI21L3 h1ri21a_2f. H1RI21M1 h1ri21af.
         H1RI21M2 h1ri21a_1f. H1RI21M3 h1ri21a_2f. H1RI21N1 h1ri21af.
         H1RI21N2 h1ri21a_1f. H1RI21N3 h1ri21a_2f. H1RI21O1 h1ri21af.
         H1RI21O2 h1ri21a_1f. H1RI21O3 h1ri21a_2f. H1RI21P1 h1ri21af.
         H1RI21P2 h1ri21a_1f. H1RI21P3 h1ri21a_2f. H1RI21Q1 h1ri21af.
         H1RI21Q2 h1ri21a_1f. H1RI21Q3 h1ri21a_2f. H1RI21R1 h1ri21af.
         H1RI21R2 h1ri21a_1f. H1RI21R3 h1ri21a_2f. H1RI22A1 h1ri22af.
         H1RI22A2 h1ri22a_1f. H1RI22A3 h1ri22a_2f. H1RI22B1 h1ri22af.
         H1RI22B2 h1ri22a_1f. H1RI22B3 h1ri22a_2f. H1RI22C1 h1ri22af.
         H1RI22C2 h1ri22a_1f. H1RI22C3 h1ri22a_2f. H1RI22D1 h1ri22af.
         H1RI22D2 h1ri22a_1f. H1RI22D3 h1ri22a_2f. H1RI22E1 h1ri22af.
         H1RI22E2 h1ri22a_1f. H1RI22E3 h1ri22a_2f. H1RI22F1 h1ri22af.
         H1RI22F2 h1ri22a_1f. H1RI22F3 h1ri22a_2f. H1RI22G1 h1ri22af.
         H1RI22G2 h1ri22a_1f. H1RI22G3 h1ri22a_2f. H1RI22H1 h1ri22af.
         H1RI22H2 h1ri22a_1f. H1RI22H3 h1ri22a_2f. H1RI22I1 h1ri22af.
         H1RI22I2 h1ri22a_1f. H1RI22I3 h1ri22a_2f. H1RI22J1 h1ri22af.
         H1RI22J2 h1ri22a_1f. H1RI22J3 h1ri22a_2f. H1RI22K1 h1ri22af.
         H1RI22K2 h1ri22a_1f. H1RI22K3 h1ri22a_2f. H1RI22L1 h1ri22af.
         H1RI22L2 h1ri22a_1f. H1RI22L3 h1ri22a_2f. H1RI22M1 h1ri22af.
         H1RI22M2 h1ri22a_1f. H1RI22M3 h1ri22a_2f. H1RI22N1 h1ri22af.
         H1RI22N2 h1ri22a_1f. H1RI22N3 h1ri22a_2f. H1RI22O1 h1ri22af.
         H1RI22O2 h1ri22a_1f. H1RI22O3 h1ri22a_2f. H1RI22P1 h1ri22af.
         H1RI22P2 h1ri22a_1f. H1RI22P3 h1ri22a_2f. H1RI22Q1 h1ri22af.
         H1RI22Q2 h1ri22a_1f. H1RI22Q3 h1ri22a_2f. H1RI22R1 h1ri22af.
         H1RI22R2 h1ri22a_1f. H1RI22R3 h1ri22a_2f. H1RI24A1 h1ri24af.
         H1RI24A2 h1ri24a_1f. H1RI24A3 h1ri24a_2f. H1RI25M1 h1ri25mf.
         H1RI25M2 h1ri25m_1f. H1RI25M3 h1ri25m_1f. H1RI25Y1 h1ri25yf.
         H1RI25Y2 h1ri25y_1f. H1RI25Y3 h1ri25y_2f. H1RI26M1 h1ri25mf.
         H1RI26M2 h1ri25m_1f. H1RI26M3 h1ri25m_1f. H1RI26Y1 h1ri26yf.
         H1RI26Y2 h1ri26y_1f. H1RI26Y3 h1ri26y_2f. H1RI27_1 h1ri27_f.
         H1RI27_2 h1ri27__1f. H1RI27_3 h1ri27__1f. H1RI28_1 h1ri28_f.
         H1RI28_2 h1ri28__1f. H1RI28_3 h1ri28__2f. H1RI29A1 h1ri29af.
         H1RI29A2 h1ri29a_1f. H1RI29A3 h1ri29a_2f. H1RI29B1 h1ri29bf.
         H1RI29B2 h1ri29b_1f. H1RI29B3 h1ri29b_2f. H1RI29C1 h1ri29cf.
         H1RI29C2 h1ri29c_1f. H1RI29C3 h1ri29c_2f. H1RI2_1 h1ri2_1f.
         H1RI2_2 h1ri2_2f. H1RI2_3 h1ri2_3f. H1RI30_1 h1ri30_f.
         H1RI30_2 h1ri30_f. H1RI30_3 h1ri30_f. H1RI31_1 h1ri31_f.
         H1RI31_2 h1ri31__1f. H1RI31_3 h1ri31__2f. H1RI32_1 h1ri32_f.
         H1RI32_2 h1ri32__1f. H1RI32_3 h1ri32__2f. H1RI33A1 h1ri33af.
         H1RI33A2 h1ri33a_1f. H1RI33A3 h1ri33a_2f. H1RI33B1 h1ri33bf.
         H1RI33B2 h1ri33b_1f. H1RI33B3 h1ri33b_2f. H1RI33C1 h1ri33cf.
         H1RI33C2 h1ri33c_1f. H1RI33C3 h1ri33c_2f. H1RI34_1 h1ri30_f.
         H1RI34_2 h1ri30_f. H1RI34_3 h1ri30_f. H1RI35_1 h1ri35_f.
         H1RI35_2 h1ri35__1f. H1RI35_3 h1ri35__1f. H1RI36_1 h1ri36_f.
         H1RI36_2 h1ri36__1f. H1RI36_3 h1ri36__2f. H1RI37_1 h1ri37_f.
         H1RI37_2 h1ri32_f. H1RI37_3 h1ri32_f. H1RI38A1 h1ri38af.
         H1RI38A2 h1ri38a_1f. H1RI38A3 h1ri38a_2f. H1RI38B1 h1ri38bf.
         H1RI38B2 h1ri38b_1f. H1RI38B3 h1ri38b_2f. H1RI38C1 h1ri38cf.
         H1RI38C2 h1ri38c_1f. H1RI38C3 h1ri38c_2f. H1RI39_1 h1ri30_f.
         H1RI39_2 h1ri30_f. H1RI39_3 h1ri30_f. H1RI3_1 h1ri3_1f.
         H1RI3_2 h1ri3_2f. H1RI3_3 h1ri3_3f. H1RI40_1 h1ri40_f.
         H1RI40_2 h1ri35__1f. H1RI40_3 h1ri35__1f. H1RI41_1 h1ri41_f.
         H1RI41_2 h1ri41__1f. H1RI41_3 h1ri41__2f. H1RI4_1 h1ri4_1f.
         H1RI4_2 h1ri4_2f. H1RI4_3 h1ri4_3f. H1RI5A_1 h1ri5a_f.
         H1RI5A_2 h1ri5a__1f. H1RI5A_3 h1ri5a__2f. H1RI6_1 h1ri6_1f.
         H1RI6_2 h1ri6_2f. H1RI6_3 h1ri6_3f. H1RI7_1 h1ri7_1f.
         H1RI7_2 h1ri7_2f. H1RI7_3 h1ri7_3f. H1RI8A_1 h1ri8a_f.
         H1RI8A_2 h1ri8a__1f. H1RI8A_3 h1ri8a__2f. H1RI8B_1 h1ri8a_f.
         H1RI8B_2 h1ri8a__1f. H1RI8B_3 h1ri8a__2f. H1RI8C_1 h1ri8a_f.
         H1RI8C_2 h1ri8a__1f. H1RI8C_3 h1ri8a__2f. H1RI8D_1 h1ri8a_f.
         H1RI8D_2 h1ri8a__1f. H1RI8D_3 h1ri8a__2f. H1RI8E_1 h1ri8a_f.
         H1RI8E_2 h1ri8a__1f. H1RI8E_3 h1ri8a__2f. H1RI8F_1 h1ri8a_f.
         H1RI8F_2 h1ri8a__1f. H1RI8F_3 h1ri8a__2f. H1RI8G_1 h1ri8a_f.
         H1RI8G_2 h1ri8a__1f. H1RI8G_3 h1ri8a__2f. H1RI8H_1 h1ri8a_f.
         H1RI8H_2 h1ri8a__1f. H1RI8H_3 h1ri8a__2f. H1RI9_1 h1ri9_1f.
         H1RI9_2 h1ri9_2f. H1RI9_3 h1ri9_3f. H1RM1 h1rm1fff.
         H1RM10 h1rm10ff. H1RM11 h1rm11ff. H1RM12 h1rm12ff.
         H1RM13 h1rm13ff. H1RM14 h1rm10ff. H1RM2 h1rm2fff.
         H1RM3 h1rm3fff. H1RM4 h1rm4fff. H1RM5 h1rm5fff.
         H1RM6 h1gh1aff. H1RM7 h1ed2fff. H1RM8 h1rm8fff.
         H1RM9 h1rm9fff. H1RP1 h1rp1fff. H1RP2 h1rp1fff.
         H1RP3 h1rp1fff. H1RP4 h1rp1fff. H1RP5 h1rp5fff.
         H1RP6 h1rp5fff. H1RR1 h1rr1fff. H1RX10_1 h1rx10_f.
         H1RX10_2 h1rx10__1f. H1RX10_3 h1rx10__2f. H1RX11M1 h1rx11mf.
         H1RX11M2 h1rx11mf. H1RX11M3 h1rx11m_1f. H1RX11Y1 h1rx11yf.
         H1RX11Y2 h1rx11yf. H1RX11Y3 h1rx11y_1f. H1RX12_1 h1rx12_f.
         H1RX12_2 h1rx12__1f. H1RX12_3 h1rx12__1f. H1RX13_1 h1rx13_f.
         H1RX13_2 h1rx13__1f. H1RX13_3 h1rx13__2f. H1RX14_1 h1rx14_f.
         H1RX14_2 h1rx14__1f. H1RX14_3 h1pl2fff. H1RX15_1 h1rx15_f.
         H1RX15_2 h1rx15__1f. H1RX15_3 h1rx15__2f. H1RX16_1 h1rx16_f.
         H1RX16_2 h1rx16__1f. H1RX16_3 h1rx16__2f. H1RX17A1 h1gi5aff.
         H1RX17A2 h1rx17af. H1RX17A3 h1rx17a_1f. H1RX17B1 h1gi5aff.
         H1RX17B2 h1rx17af. H1RX17B3 h1rx17a_1f. H1RX17C1 h1gi5aff.
         H1RX17C2 h1rx17af. H1RX17C3 h1rx17a_1f. H1RX17D1 h1gi5aff.
         H1RX17D2 h1rx17af. H1RX17D3 h1rx17a_1f. H1RX17E1 h1gi5aff.
         H1RX17E2 h1rx17af. H1RX17E3 h1rx17a_1f. H1RX17F1 h1gi5aff.
         H1RX17F2 h1rx17af. H1RX17F3 h1rx17a_1f. H1RX18A1 h1rx8a_f.
         H1RX18A2 h1rx18af. H1RX18A3 h1rx8a__1f. H1RX18B1 h1rx8a_f.
         H1RX18B2 h1rx18af. H1RX18B3 h1rx8a__1f. H1RX18C1 h1rx8a_f.
         H1RX18C2 h1rx18af. H1RX18C3 h1rx8a__1f. H1RX18D1 h1rx8a_f.
         H1RX18D2 h1rx18df. H1RX18D3 h1rx18d_1f. H1RX18E1 h1rx8a_f.
         H1RX18E2 h1rx18af. H1RX18E3 h1rx8a__1f. H1RX19A1 h1rx19af.
         H1RX19A2 h1rx19af. H1RX19A3 h1rx19af. H1RX19B1 h1rx19af.
         H1RX19B2 h1rx19af. H1RX19B3 h1rx19af. H1RX19C1 h1rx19af.
         H1RX19C2 h1rx19af. H1RX19C3 h1rx19af. H1RX19D1 h1rx19af.
         H1RX19D2 h1rx19af. H1RX19D3 h1rx19af. H1RX19E1 h1rx19af.
         H1RX19E2 h1rx19af. H1RX19E3 h1rx19af. H1RX19F1 h1rx19af.
         H1RX19F2 h1rx19af. H1RX19F3 h1rx19af. H1RX19G1 h1rx19af.
         H1RX19G2 h1rx19af. H1RX19G3 h1rx19af. H1RX1M_1 h1rx1m_f.
         H1RX1M_2 h1rx1m__1f. H1RX1M_3 h1rx1m__2f. H1RX1Y_1 h1rx1y_f.
         H1RX1Y_2 h1rx1y__1f. H1RX1Y_3 h1rx1y__2f. H1RX20_1 h1rx20_f.
         H1RX20_2 h1rx20__1f. H1RX20_3 h1rx20__2f. H1RX21A1 h1rx21af.
         H1RX21A2 h1rx21a_1f. H1RX21A3 h1rx21a_2f. H1RX21B1 h1rx21af.
         H1RX21B2 h1rx21a_1f. H1RX21B3 h1rx21a_2f. H1RX21C1 h1rx21af.
         H1RX21C2 h1rx21a_1f. H1RX21C3 h1rx21a_2f. H1RX21D1 h1rx21af.
         H1RX21D2 h1rx21a_1f. H1RX21D3 h1rx21a_2f. H1RX21E1 h1rx21af.
         H1RX21E2 h1rx21a_1f. H1RX21E3 h1rx21a_2f. H1RX21F1 h1rx21af.
         H1RX21F2 h1rx21a_1f. H1RX21F3 h1rx21a_2f. H1RX21G1 h1rx21af.
         H1RX21G2 h1rx21a_1f. H1RX21G3 h1rx21a_2f. H1RX21H1 h1rx21af.
         H1RX21H2 h1rx21a_1f. H1RX21H3 h1rx21a_2f. H1RX21I1 h1rx21af.
         H1RX21I2 h1rx21a_1f. H1RX21I3 h1rx21a_2f. H1RX21J1 h1rx21af.
         H1RX21J2 h1rx21a_1f. H1RX21J3 h1rx21a_2f. H1RX21K1 h1rx21af.
         H1RX21K2 h1rx21a_1f. H1RX21K3 h1rx21a_2f. H1RX21L1 h1rx21af.
         H1RX21L2 h1rx21a_1f. H1RX21L3 h1rx21a_2f. H1RX21M1 h1rx21af.
         H1RX21M2 h1rx21a_1f. H1RX21M3 h1rx21a_2f. H1RX21N1 h1rx21af.
         H1RX21N2 h1rx21a_1f. H1RX21N3 h1rx21a_2f. H1RX21O1 h1rx21af.
         H1RX21O2 h1rx21a_1f. H1RX21O3 h1rx21a_2f. H1RX21P1 h1rx21af.
         H1RX21P2 h1rx21a_1f. H1RX21P3 h1rx21a_2f. H1RX21Q1 h1rx21af.
         H1RX21Q2 h1rx21a_1f. H1RX21Q3 h1rx21a_2f. H1RX21R1 h1rx21af.
         H1RX21R2 h1rx21a_1f. H1RX21R3 h1rx21a_2f. H1RX22A1 h1rx22af.
         H1RX22A2 h1rx22a_1f. H1RX22A3 h1rx22a_2f. H1RX22B1 h1rx22af.
         H1RX22B2 h1rx22a_1f. H1RX22B3 h1rx22a_2f. H1RX22C1 h1rx22af.
         H1RX22C2 h1rx22a_1f. H1RX22C3 h1rx22a_2f. H1RX22D1 h1rx22af.
         H1RX22D2 h1rx22a_1f. H1RX22D3 h1rx22a_2f. H1RX22E1 h1rx22af.
         H1RX22E2 h1rx22a_1f. H1RX22E3 h1rx22a_2f. H1RX22F1 h1rx22af.
         H1RX22F2 h1rx22a_1f. H1RX22F3 h1rx22a_2f. H1RX22G1 h1rx22af.
         H1RX22G2 h1rx22a_1f. H1RX22G3 h1rx22a_2f. H1RX22H1 h1rx22af.
         H1RX22H2 h1rx22a_1f. H1RX22H3 h1rx22a_2f. H1RX22I1 h1rx22af.
         H1RX22I2 h1rx22a_1f. H1RX22I3 h1rx22a_2f. H1RX22J1 h1rx22af.
         H1RX22J2 h1rx22a_1f. H1RX22J3 h1rx22a_2f. H1RX22K1 h1rx22af.
         H1RX22K2 h1rx22a_1f. H1RX22K3 h1rx22a_2f. H1RX22L1 h1rx22af.
         H1RX22L2 h1rx22a_1f. H1RX22L3 h1rx22a_2f. H1RX22M1 h1rx22af.
         H1RX22M2 h1rx22a_1f. H1RX22M3 h1rx22a_2f. H1RX22N1 h1rx22af.
         H1RX22N2 h1rx22a_1f. H1RX22N3 h1rx22a_2f. H1RX22O1 h1rx22af.
         H1RX22O2 h1rx22a_1f. H1RX22O3 h1rx22a_2f. H1RX22P1 h1rx22af.
         H1RX22P2 h1rx22a_1f. H1RX22P3 h1rx22a_2f. H1RX22Q1 h1rx22af.
         H1RX22Q2 h1rx22a_1f. H1RX22Q3 h1rx22a_2f. H1RX22R1 h1rx22af.
         H1RX22R2 h1rx22a_1f. H1RX22R3 h1rx22a_2f. H1RX24A1 h1ri24a_1f.
         H1RX24A2 h1ri24af. H1RX24A3 h1rx24af. H1RX25M1 h1ri25m_1f.
         H1RX25M2 h1ri25m_1f. H1RX25M3 h1rx25mf. H1RX25Y1 h1rx25yf.
         H1RX25Y2 h1ri26y_1f. H1RX25Y3 h1rx25y_1f. H1RX26M1 h1ri25m_1f.
         H1RX26M2 h1ri25m_1f. H1RX26M3 h1rx25mf. H1RX26Y1 h1rx26yf.
         H1RX26Y2 h1rx26y_1f. H1RX26Y3 h1rx26y_2f. H1RX27_1 h1rx27_f.
         H1RX27_2 h1rx27__1f. H1RX27_3 h1rx27__2f. H1RX28_1 h1rx28_f.
         H1RX28_2 h1rx28__1f. H1RX28_3 h1rx28__2f. H1RX29A1 h1ri38a_1f.
         H1RX29A2 h1rx29af. H1RX29A3 h1ri33a_2f. H1RX29B1 h1rx29bf.
         H1RX29B2 h1rx29b_1f. H1RX29B3 h1rx29b_2f. H1RX29C1 h1rx29cf.
         H1RX29C2 h1rx29c_1f. H1RX29C3 h1rx29c_2f. H1RX2_1 h1rx2_1f.
         H1RX2_2 h1rx2_2f. H1RX2_3 h1rx2_3f. H1RX30_1 h1ri30_f.
         H1RX30_2 h1ri30_f. H1RX30_3 h1rx30_f. H1RX31_1 h1rx31_f.
         H1RX31_2 h1rx31__1f. H1RX31_3 h1ri31__2f. H1RX32_1 h1ri32_f.
         H1RX32_2 h1ri32_f. H1RX32_3 h1ri32_f. H1RX33A1 h1rx33af.
         H1RX33A2 h1ri29a_1f. H1RX33A3 h1rx33a_1f. H1RX33B1 h1rx33bf.
         H1RX33B2 h1rx33b_1f. H1RX33B3 h1rx33b_2f. H1RX33C1 h1rx33cf.
         H1RX33C2 h1rx33c_1f. H1RX33C3 h1rx33c_2f. H1RX34_1 h1ri30_f.
         H1RX34_2 h1ri30_f. H1RX34_3 h1ri30_f. H1RX35_1 h1ri35__1f.
         H1RX35_2 h1ri35_f. H1RX35_3 h1ri35__1f. H1RX36_1 h1ri36__1f.
         H1RX36_2 h1rx36_f. H1RX36_3 h1rx36__1f. H1RX37_1 h1ri32_f.
         H1RX37_2 h1ri32_f. H1RX37_3 h1ri32_f. H1RX38A1 h1rx38af.
         H1RX38A2 h1ri29a_2f. H1RX38A3 h1ri29a_2f. H1RX38B1 h1rx38bf.
         H1RX38B2 h1rx38b_1f. H1RX38B3 h1rx33bf. H1RX38C1 h1rx38cf.
         H1RX38C2 h1rx38c_1f. H1RX38C3 h1rx38c_2f. H1RX39_1 h1ri30_f.
         H1RX39_2 h1ri30_f. H1RX39_3 h1ri30_f. H1RX3_1 h1rx3_1f.
         H1RX3_2 h1rx3_2f. H1RX3_3 h1rx3_3f. H1RX40_1 h1ri40_f.
         H1RX40_2 h1ri35__1f. H1RX40_3 h1ri35__1f. H1RX41_1 h1ri41__2f.
         H1RX41_2 h1rx41_f. H1RX41_3 h1rx41__1f. H1RX4_1 h1rx4_1f.
         H1RX4_2 h1rx4_2f. H1RX4_3 h1rx4_3f. H1RX5A_1 h1rx5a_f.
         H1RX5A_2 h1rx5a__1f. H1RX5A_3 h1rx5a__2f. H1RX6_1 h1rx6_1f.
         H1RX6_2 h1rx6_1f. H1RX6_3 h1rx6_3f. H1RX7_1 h1rx7_1f.
         H1RX7_2 h1rx7_2f. H1RX7_3 h1rx7_3f. H1RX8A_1 h1rx8a_f.
         H1RX8A_2 h1gh27af. H1RX8A_3 h1rx8a__1f. H1RX8B_1 h1rx8a_f.
         H1RX8B_2 h1gh27af. H1RX8B_3 h1rx8a__1f. H1RX8C_1 h1rx8a_f.
         H1RX8C_2 h1gh27af. H1RX8C_3 h1rx8a__1f. H1RX8D_1 h1rx8a_f.
         H1RX8D_2 h1gh27af. H1RX8D_3 h1rx8a__1f. H1RX8E_1 h1rx8a_f.
         H1RX8E_2 h1gh27af. H1RX8E_3 h1rx8a__1f. H1RX8F_1 h1rx8a_f.
         H1RX8F_2 h1gh27af. H1RX8F_3 h1rx8a__1f. H1RX8G_1 h1rx8a_f.
         H1RX8G_2 h1gh27af. H1RX8G_3 h1rx8a__1f. H1RX8H_1 h1rx8a_f.
         H1RX8H_2 h1gh27af. H1RX8H_3 h1rx8a__1f. H1RX9_1 h1rx9_1f.
         H1RX9_2 h1rx9_2f. H1RX9_3 h1rx9_3f. H1SE1 h1se1fff.
         H1SE2 h1se1fff. H1SE3 h1se3fff. H1SE4 h1se4fff.
         H1SU1 h1su1fff. H1SU2 h1su2fff. H1SU3 h1su3fff.
         H1SU4 h1su4fff. H1SU5 h1su5fff. H1SU6 h1su6fff.
         H1SU7 h1su7fff. H1SU8 h1su8fff. H1TO1 h1to1fff.
         H1TO10 h1to10ff. H1TO11 h1to11ff. H1TO12 h1to12ff.
         H1TO13 h1to13ff. H1TO14 h1to14ff. H1TO15 h1to15ff.
         H1TO16 h1to16ff. H1TO17 h1to17ff. H1TO18 h1to17ff.
         H1TO19 h1to19ff. H1TO2 h1to2fff. H1TO20 h1to20ff.
         H1TO21 h1to21ff. H1TO22 h1to22ff. H1TO23 h1to22ff.
         H1TO24 h1to20ff. H1TO25 h1to20ff. H1TO26 h1to20ff.
         H1TO27 h1to20ff. H1TO28 h1to20ff. H1TO29 h1to9fff.
         H1TO3 h1to3fff. H1TO30 h1to30ff. H1TO31 h1to31ff.
         H1TO32 h1to31ff. H1TO33 h1to9fff. H1TO34 h1to34ff.
         H1TO35 h1to35ff. H1TO36 h1to36ff. H1TO37 h1to37ff.
         H1TO38 h1to38ff. H1TO39 h1to38ff. H1TO4 h1to4fff.
         H1TO40 h1to40ff. H1TO41 h1to41ff. H1TO42 h1to41ff.
         H1TO43 h1to43ff. H1TO44 h1to44ff. H1TO45 h1to45ff.
         H1TO46 h1to46ff. H1TO47 h1pl2fff. H1TO48 h1to48ff.
         H1TO49 h1pl2fff. H1TO5 h1to5fff. H1TO50 h1gh53ff.
         H1TO51 h1gh53ff. H1TO52 h1gh53ff. H1TO53 h1to53ff.
         H1TO54A h1to54af. H1TO54B h1to54af. H1TO54C h1to54af.
         H1TO54D h1to54af. H1TO6M h1to6mff. H1TO6Y h1to6yff.
         H1TO7 h1to7fff. H1TO8 h1to8fff. H1TO9 h1to9fff.
         H1TS1 h1gi2fff. H1TS10 h1gi2fff. H1TS11 h1gi2fff.
         H1TS12 h1gi2fff. H1TS13 h1gi2fff. H1TS14 h1gi2fff.
         H1TS15 h1gi2fff. H1TS16 h1gi2fff. H1TS17 h1gi2fff.
         H1TS2 h1gi2fff. H1TS3 h1gi2fff. H1TS4 h1gi2fff.
         H1TS5 h1gi2fff. H1TS6 h1gi2fff. H1TS7 h1gi2fff.
         H1TS8 h1gi2fff. H1TS9 h1gi2fff. H1WP1 h1wp1fff.
         H1WP10 h1wp9fff. H1WP11 h1wp11ff. H1WP12 h1wp11ff.
         H1WP13 h1wp13ff. H1WP14 h1wp13ff. H1WP15 h1wp15ff.
         H1WP16 h1wp15ff. H1WP17A h1rm10ff. H1WP17B h1rm10ff.
         H1WP17C h1rm10ff. H1WP17D h1rm10ff. H1WP17E h1rm10ff.
         H1WP17F h1rm10ff. H1WP17G h1rm10ff. H1WP17H h1rm10ff.
         H1WP17I h1rm10ff. H1WP17J h1rm10ff. H1WP17K h1rm10ff.
         H1WP18A h1rf9fff. H1WP18B h1rf9fff. H1WP18C h1rf9fff.
         H1WP18D h1rf9fff. H1WP18E h1rf9fff. H1WP18F h1rf9fff.
         H1WP18G h1rf9fff. H1WP18H h1rf9fff. H1WP18I h1rf9fff.
         H1WP18J h1rf9fff. H1WP18K h1rf9fff. H1WP2 h1wp1fff.
         H1WP3 h1wp1fff. H1WP4 h1wp1fff. H1WP5 h1wp1fff.
         H1WP6 h1wp1fff. H1WP7 h1wp1fff. H1WP8 h1wp8fff.
         H1WP9 h1wp9fff. H1WS10A h1ws10af. H1WS10B h1ws10bf.
         H1WS10C h1ws10bf. H1WS10D h1ws10df. H1WS10E h1fp14_f.
         H1WS10F h1fp14_f. H1WS10G h1fp14_f. H1WS11A h1ws11af.
         H1WS11B h1ws11af. H1WS11C h1ws11af. H1WS11D h1ws11df.
         H1WS11E h1fp14_f. H1WS11F h1fp14_f. H1WS11G h1fp14_f.
         H1WS12A h1ws12af. H1WS12B h1ws12bf. H1WS12C h1ws12cf.
         H1WS12D h1ws12df. H1WS12E h1ws12ef. H1WS12F twinffff.
         H1WS12G twingfff. H1WS13 h1gh53ff. H1WS1A h1ws1aff.
         H1WS1B h1ws1bff. H1WS1C h1ws1cff. H1WS1D h1ws1dff.
         H1WS1E h1ws1eff. H1WS1F twinffff. H1WS1G twingfff.
         H1WS2A h1ws1aff. H1WS2B h1ws1bff. H1WS2C h1ws1cff.
         H1WS2D h1ws1dff. H1WS2E h1ws1eff. H1WS2F twinffff.
         H1WS2G twingfff. H1WS3A h1ws3aff. H1WS3B h1ws3bff.
         H1WS3C h1ws3cff. H1WS3D h1ws3dff. H1WS3E h1ws3eff.
         H1WS3F twinffff. H1WS3G twingfff. H1WS4A h1ws3aff.
         H1WS4B h1ws3bff. H1WS4C h1ws3cff. H1WS4D h1ws3dff.
         H1WS4E h1ws3eff. H1WS4F twinffff. H1WS4G twingfff.
         H1WS5A h1ws5aff. H1WS5B h1ws5bff. H1WS5C h1ws5cff.
         H1WS5D h1ws5dff. H1WS5E h1ws5eff. H1WS5F twinffff.
         H1WS5G h1ws5gff. H1WS6A h1ws6aff. H1WS6B h1ws6aff.
         H1WS6C h1ws6cff. H1WS6D h1ws6dff. H1WS6E h1ws6dff.
         H1WS6F twinffff. H1WS6G twingfff. H1WS7A h1ws7aff.
         H1WS7B h1ws7aff. H1WS7C h1ws7cff. H1WS7D h1ws7cff.
         H1WS7E h1ws8dff. H1WS7F h1ws8dff. H1WS7G h1ws8dff.
         H1WS8A h1ws8aff. H1WS8B h1ws8bff. H1WS8C h1ws8cff.
         H1WS8D h1ws8dff. H1WS8E h1ws8dff. H1WS8F h1fp14_f.
         H1WS8G h1fp14_f. H1WS9A h1ws9aff. H1WS9B h1ws9bff.
         H1WS9C h1ws9cff. H1WS9D h1ws9dff. H1WS9E h1ws9dff.
         H1WS9F h1fp14_f. H1WS9G h1fp14_f. IMONTH imonthff.
         IYEAR iyearfff. NRRXFLG1 nrrxflgf. NRRXFLG2 nrrxflgf.
         NRRXFLG3 smp01fff. PA1 pa1fffff. PA10 pa10ffff.
         PA11 pa11ffff. PA12 pa12ffff. PA13 pa13ffff.
         PA14 pa14ffff. PA15 pa15ffff. PA16 pa16ffff.
         PA17 pa17ffff. PA18 pa3fffff. PA19 pa3fffff.
         PA2 pa2fffff. PA20 pa3fffff. PA21 pa3fffff.
         PA22 pa22ffff. PA23 pa23ffff. PA24 pa24ffff.
         PA25 pa25ffff. PA26 pa26ffff. PA27A pa3fffff.
         PA27B pa3fffff. PA27C pa3fffff. PA27D pa3fffff.
         PA27E pa3fffff. PA28A pa3fffff. PA28B pa3fffff.
         PA28C pa3fffff. PA28D pa3fffff. PA28E pa3fffff.
         PA28F pa3fffff. PA28G pa3fffff. PA28H pa3fffff.
         PA28I pa3fffff. PA28J pa3fffff. PA3 pa3fffff.
         PA30 pa30ffff. PA31 pa31ffff. PA32 pa31ffff.
         PA33 pa33ffff. PA34 pa33ffff. PA35 pa35ffff.
         PA36 pa36ffff. PA37 pa37ffff. PA38 pa38ffff.
         PA39 pa39ffff. PA4 pa4fffff. PA40 pa40ffff.
         PA41_1 pa41_1ff. PA41_10 pa41_1ff. PA41_11 pa41_1ff.
         PA41_12 pa41_1ff. PA41_13 pa41_1ff. PA41_14 pa41_1ff.
         PA41_15 pa41_1ff. PA41_16 pa41_1ff. PA41_17 pa41_1ff.
         PA41_18 pa41_1ff. PA41_19 pa41_1ff. PA41_2 pa41_1ff.
         PA41_3 pa41_1ff. PA41_4 pa41_1ff. PA41_5 pa41_1ff.
         PA41_6 pa41_1ff. PA41_7 pa41_1ff. PA41_8 pa41_1ff.
         PA41_9 pa41_1ff. PA42 pa42ffff. PA43 pa43ffff.
         PA44 pa44ffff. PA46_1 pa46_1ff. PA46_10 pa46_1ff.
         PA46_11 pa46_1ff. PA46_12 pa46_1ff. PA46_13 pa46_1ff.
         PA46_14 pa46_1ff. PA46_15 pa46_1ff. PA46_16 pa46_1ff.
         PA46_17 pa46_1ff. PA46_18 pa46_1ff. PA46_19 pa46_1ff.
         PA46_2 pa46_1ff. PA46_3 pa46_1ff. PA46_4 pa46_1ff.
         PA46_5 pa46_1ff. PA46_6 pa46_1ff. PA46_7 pa46_1ff.
         PA46_8 pa46_1ff. PA46_9 pa46_1ff. PA47 pa47ffff.
         PA48 pa48ffff. PA49 pa44ffff. PA51_1 pa51_1ff.
         PA51_10 pa51_1ff. PA51_11 pa51_1ff. PA51_12 pa51_1ff.
         PA51_13 pa51_1ff. PA51_14 pa51_1ff. PA51_15 pa51_1ff.
         PA51_16 pa51_1ff. PA51_17 pa51_1ff. PA51_18 pa51_1ff.
         PA51_19 pa51_1ff. PA51_2 pa51_1ff. PA51_3 pa51_1ff.
         PA51_4 pa51_1ff. PA51_5 pa51_1ff. PA51_6 pa51_1ff.
         PA51_7 pa51_1ff. PA51_8 pa51_1ff. PA51_9 pa51_1ff.
         PA52 pa52ffff. PA53 pa53ffff. PA54 pa44ffff.
         PA55 pa55ffff. PA56 pa3fffff. PA57A pa3fffff.
         PA57B pa3fffff. PA57C pa3fffff. PA57D pa3fffff.
         PA57E pa3fffff. PA57F pa3fffff. PA58 pa58ffff.
         PA59 pa59ffff. PA5_1 pa5_1fff. PA5_2 pa5_1fff.
         PA5_3 pa5_1fff. PA5_4 pa5_1fff. PA5_5 pa5_1fff.
         PA5_6 pa5_1fff. PA5_7 pa5_1fff. PA60 pa60ffff.
         PA61 pa61ffff. PA62 pa62ffff. PA63 pa63ffff.
         PA64 pa64ffff. PA6_1 pa6_1fff. PA6_2 pa6_1fff.
         PA6_3 pa6_1fff. PA6_4 pa6_1fff. PA6_5 pa6_1fff.
         PA7_1 pa7_1fff. PA7_2 pa7_1fff. PA7_3 pa7_1fff.
         PA7_4 pa7_1fff. PA7_5 pa7_1fff. PA7_6 pa7_1fff.
         PA7_7 pa7_1fff. PA7_8 pa7_1fff. PA8B pa8bffff.
         PA9 pa9fffff. PB10 pb10ffff. PB11 pb11ffff.
         PB12 pb12ffff. PB13 pa17ffff. PB14 pb14ffff.
         PB15 pb14ffff. PB16 pb14ffff. PB17 pb14ffff.
         PB18 pb18ffff. PB19 pb14ffff. PB2 pb2fffff.
         PB20 pb20ffff. PB21 pb21ffff. PB22 pb22ffff.
         PB3 pb3fffff. PB4_1 pa5_1fff. PB4_2 pa5_1fff.
         PB4_3 pa5_1fff. PB4_4 pa5_1fff. PB4_5 pa5_1fff.
         PB4_6 pa5_1fff. PB4_7 pa5_1fff. PB5_1 pb5_1fff.
         PB5_2 pb5_1fff. PB5_3 pb5_1fff. PB5_4 pb5_1fff.
         PB5_5 pb5_1fff. PB6_1 pa7_1fff. PB6_2 pa7_1fff.
         PB6_3 pa7_1fff. PB6_4 pa7_1fff. PB6_5 pa7_1fff.
         PB6_6 pa7_1fff. PB6_7 pa7_1fff. PB6_8 pa7_1fff.
         PB7 pb7fffff. PB8 pb8fffff. PB9 pb9fffff.
         PC1 pc1fffff. PC10 pc10ffff. PC11 pa3fffff.
         PC12 pa3fffff. PC13 pc13ffff. PC14 pc14ffff.
         PC15 pc15ffff. PC16 pc15ffff. PC17 pc17ffff.
         PC18 pc18ffff. PC19A_P pc19a_pf. PC19B_O pc19b_of.
         PC2 pc2fffff. PC20 pc20ffff. PC21_1 pa6_1fff.
         PC21_2 pa6_1fff. PC21_3 pa6_1fff. PC21_4 pa6_1fff.
         PC21_5 pa6_1fff. PC21_6 pa6_1fff. PC21_7 pa6_1fff.
         PC22 pc22ffff. PC23 pc23ffff. PC24 pc24ffff.
         PC25 pc25ffff. PC26 pc25ffff. PC27 pc25ffff.
         PC28 pc25ffff. PC29A pc29afff. PC29B pc29afff.
         PC29C pc29afff. PC3 pc3fffff. PC30 pc30ffff.
         PC31 pc31ffff. PC32 pa3fffff. PC33 pc33ffff.
         PC34A pc34afff. PC34B pc34afff. PC34C pc34afff.
         PC34D pc34afff. PC34E pc34afff. PC35 pa3fffff.
         PC36_0 pc36_0ff. PC36_1 pc36_0ff. PC36_10 pc36_0ff.
         PC36_11 pc36_0ff. PC36_12 pc36_0ff. PC36_13 pc36_0ff.
         PC36_14 pc36_0ff. PC36_15 pc36_0ff. PC36_16 pc36_0ff.
         PC36_17 pc36_0ff. PC36_18 pc36_0ff. PC36_19 pc36_0ff.
         PC36_2 pc36_0ff. PC36_3 pc36_0ff. PC36_4 pc36_0ff.
         PC36_5 pc36_0ff. PC36_6 pc36_0ff. PC36_7 pc36_0ff.
         PC36_8 pc36_0ff. PC36_9 pc36_0ff. PC37 pc37ffff.
         PC38 pc37ffff. PC39 pc37ffff. PC4 pc4fffff.
         PC40 pc37ffff. PC41 pc37ffff. PC42A pc42afff.
         PC42B pc42afff. PC42C pc42afff. PC42D pc42afff.
         PC42E pc42afff. PC43AA pc43aaff. PC43AB pc43aaff.
         PC43AC pc43aaff. PC43AD pc43aaff. PC43BA pc43aaff.
         PC43BB pc43aaff. PC44A pc42afff. PC44B pc42afff.
         PC44C pc42afff. PC44D pc42afff. PC45 pa3fffff.
         PC46 pa3fffff. PC47 pc47ffff. PC48 pc48ffff.
         PC49A_1 pc37ffff. PC49A_2 pc37ffff. PC49A_3 pc37ffff.
         PC49B_1 pc37ffff. PC49B_2 pc37ffff. PC49B_3 pc37ffff.
         PC49C_1 pc37ffff. PC49C_2 pc37ffff. PC49C_3 pc37ffff.
         PC49D_1 pc37ffff. PC49D_2 pc37ffff. PC49D_3 pc37ffff.
         PC49E_1 pc37ffff. PC49E_2 pc37ffff. PC49E_3 pc37ffff.
         PC49F_1 pc37ffff. PC49F_2 pc37ffff. PC49F_3 pc37ffff.
         PC5 pc5fffff. PC50 pa3fffff. PC51 pa3fffff.
         PC53 pa64ffff. PC54 pc54ffff. PC55 pc55ffff.
         PC58 pc58ffff. PC59 pc59ffff. PC60_1 pc60_1ff.
         PC60_10 pc60_1ff. PC60_11 pc60_1ff. PC60_12 pc60_1ff.
         PC60_13 pc60_1ff. PC60_14 pc60_1ff. PC60_15 pc60_1ff.
         PC60_16 pc60_1ff. PC60_17 pc60_1ff. PC60_18 pc60_1ff.
         PC60_2 pc60_1ff. PC60_3 pc60_1ff. PC60_4 pc60_1ff.
         PC60_5 pc60_1ff. PC60_6 pc60_1ff. PC60_7 pc60_1ff.
         PC60_8 pc60_1ff. PC60_9 pc60_1ff. PC61A pc60_1ff.
         PC61B pc60_1ff. PC61C pc60_1ff. PC61D pc60_1ff.
         PC62_1 pc60_1ff. PC62_10 pc60_1ff. PC62_11 pc60_1ff.
         PC62_2 pc60_1ff. PC62_4 pc60_1ff. PC62_5 pc60_1ff.
         PC62_8 pc60_1ff. PC63 pc63ffff. PC64 pc64ffff.
         PC65_M pc65_mff. PC65_Y pc65_yff. PC66_M pc65_mff.
         PC66_Y pc66_yff. PC68_M pc68_mff. PC68_Y pc68_yff.
         PC69 pc69ffff. PC6B pc6bffff. PC7 pc7fffff.
         PC8 pc8fffff. PC9 pc9fffff. PD2 pd2fffff.
         PD3 pd3fffff. PD4A pd4affff. PD4B pd4bffff.
         PD4C pd4cffff. PD4D pd4bffff. PD4E pd4affff.
         PD4F pd4affff. PD5 smp01fff. PD5A smp01fff.
         RICARD1 ricard1f. RICARD2 ricard1f. RICARD3 ricard1f.
         RR_FLAG rr_flagf. RXCARD1 rxcard1f. RXCARD2 rxcard1f.
         RXCARD3 rxcard1f. S1 s1ffffff. S10 s6afffff.
         S10A s10affff. S10B s10affff. S10C s10affff.
         S10D s10affff. S11 s11fffff. S12 s12fffff.
         S13 s13fffff. S14 s14fffff. S15 s15fffff.
         S16 s16fffff. S17 s17fffff. S18 s18fffff.
         S19 s13fffff. S2 s2ffffff. S20 s20fffff.
         S21 s13fffff. S22 s16fffff. S23 s23fffff.
         S24 h1pl2fff. S25 s25fffff. S26 h1pl2fff.
         S27 s27fffff. S28 s28fffff. S29A s6afffff.
         S29B s6afffff. S29C s6afffff. S29D s6afffff.
         S29E s6afffff. S3 s3ffffff. S30A s6afffff.
         S30B s6afffff. S30C s6afffff. S30D s6afffff.
         S30E s6afffff. S31A s6afffff. S31B s6afffff.
         S31C s6afffff. S31D s6afffff. S31E s6afffff.
         S32A s6afffff. S32B s6afffff. S32C s6afffff.
         S32D s6afffff. S32E s6afffff. S33A s6afffff.
         S33B s6afffff. S33C s6afffff. S33D s6afffff.
         S33E s6afffff. S34A s6afffff. S34B s6afffff.
         S34C s6afffff. S34D s6afffff. S34E s6afffff.
         S35A s6afffff. S35B s6afffff. S35C s6afffff.
         S35D s6afffff. S35E s6afffff. S36A s6afffff.
         S36B s6afffff. S36C s6afffff. S36D s6afffff.
         S36E s6afffff. S37A s6afffff. S37B s6afffff.
         S37C s6afffff. S37D s6afffff. S37E s6afffff.
         S38A s6afffff. S38B s6afffff. S38C s6afffff.
         S38D s6afffff. S38E s6afffff. S39A s6afffff.
         S39B s6afffff. S39C s6afffff. S39D s6afffff.
         S39E s6afffff. S4 s4ffffff. S40A s6afffff.
         S40B s6afffff. S40C s6afffff. S40D s6afffff.
         S40E s6afffff. S41A s6afffff. S41B s6afffff.
         S41C s6afffff. S41D s6afffff. S41E s6afffff.
         S42A s6afffff. S42B s6afffff. S42C s6afffff.
         S42D s6afffff. S42E s6afffff. S43A s6afffff.
         S43B s6afffff. S43C s6afffff. S43D s6afffff.
         S43E s6afffff. S44 s6afffff. S44A1 s6afffff.
         S44A10 s6afffff. S44A11 s6afffff. S44A12 s6afffff.
         S44A13 s6afffff. S44A14 s6afffff. S44A15 s6afffff.
         S44A16 s6afffff. S44A17 s6afffff. S44A18 s6afffff.
         S44A19 s6afffff. S44A2 s6afffff. S44A20 s6afffff.
         S44A21 s6afffff. S44A22 s6afffff. S44A23 s6afffff.
         S44A24 s6afffff. S44A25 s6afffff. S44A26 s6afffff.
         S44A27 s6afffff. S44A28 s6afffff. S44A29 s6afffff.
         S44A3 s6afffff. S44A30 s6afffff. S44A31 s6afffff.
         S44A32 s6afffff. S44A33 s6afffff. S44A4 s6afffff.
         S44A5 s6afffff. S44A6 s6afffff. S44A7 s6afffff.
         S44A8 s6afffff. S44A9 s6afffff. S45A s45affff.
         S45B s45affff. S45C s45affff. S45D s45affff.
         S45E s45affff. S45F s45affff. S46A s46affff.
         S46B s46affff. S46C s46affff. S46D s46affff.
         S47 s47fffff. S48 s48fffff. S49 smp01fff.
         S5 s5ffffff. S50 s50fffff. S51 s51fffff.
         S52 s52fffff. S53 s53fffff. S54 s54fffff.
         S55A h1pl2fff. S55B h1pl2fff. S55C h1pl2fff.
         S55D h1pl2fff. S56 smp01fff. S57 smp01fff.
         S58 smp01fff. S59A s59affff. S59B s59bffff.
         S59C s59affff. S59D s59affff. S59E s59affff.
         S59F s59affff. S59G s59affff. S60A s60affff.
         S60B s60affff. S60C s60affff. S60D s60affff.
         S60E s60affff. S60F s60affff. S60G s60affff.
         S60H s60affff. S60I s60affff. S60J s60affff.
         S60K s60affff. S60L s60affff. S60M s60affff.
         S60N s60affff. S60O s60affff. S61A s46affff.
         S61B s46affff. S61C s46affff. S61D s46affff.
         S61E s46affff. S61F s46affff. S62A s62affff.
         S62B s62affff. S62C s62affff. S62D s62affff.
         S62E s62affff. S62F s62affff. S62G s62affff.
         S62H s62affff. S62I s62affff. S62J s62affff.
         S62K s62affff. S62L s62affff. S62M s62affff.
         S62N s62affff. S62O s62affff. S62P s62affff.
         S62Q s62affff. S62R s62affff. S63 s63fffff.
         S64 s63fffff. S65 s65fffff. S66 s6afffff.
         S67 s6afffff. S68 s6afffff. S6A s6afffff.
         S6B s6afffff. S6C s6afffff. S6D s6afffff.
         S6E s6afffff. S7 s7ffffff. S8 smp01fff.
         S9 s9ffffff. SCH_YR sch_yrff. SMP01 smp01fff.
         SMP03 smp01fff. STUDSIBA studsibf. STUDSIBB studsibf.
         STUDSIBC studsib_1f. STUDSIBD studsibf. STUDSIBE studsibf.
         STUDSIBF studsib_2f. STUDSIBG studsib_2f. TWINA twinafff.
         TWINB twinbfff. TWINC twincfff. TWIND twindfff.
         TWINE twinefff. TWINF twinffff. TWING twingfff.
         VERSION $versionf.
    ;
*/

RUN ;
