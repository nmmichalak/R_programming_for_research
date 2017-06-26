/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |          (DATASET 0001: WAVE I: IN-HOME QUESTIONNAIRE, PUBLIC
 |                              USE SAMPLE)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0001-statasetup.do)
 |
 **************************************************************************/


set more off  /* This prevents the Stata output viewer from pausing the
                 process */

/****************************************************

Section 1: File Specifications
   This section assigns local macros to the necessary files.
   Please edit:
        "data-filename" ==> The name of data file downloaded from ICPSR
        "dictionary-filename" ==> The name of the dictionary file downloaded.
        "stata-datafile" ==> The name you wish to call your Stata data file.

   Note:  We assume that the raw data, dictionary, and setup (this do file) all
          reside in the same directory (or folder).  If that is not the case
          you will need to include paths as well as filenames in the macros.

********************************************************/

local raw_data "data-filename"
local dict "dictionary-filename"
local outfile "stata-datafile"

/********************************************************

Section 2: Infile Command

This section reads the raw data into Stata format.  If Section 1 was defined
properly, there should be no reason to modify this section.  These macros
should inflate automatically.

**********************************************************/

infile using `dict', using (`raw_data') clear


/********************************************************************

 Section 3: Reformat

  This section applies optimized formats to variables.

*********************************************************************/

format IMONTH %2.0f
format IDAY %2.0f
format IYEAR %2.0f
format SCH_YR %1.0f
format BIO_SEX %1.0f
format SMP01 %1.0f
format SMP03 %1.0f
format H1GI1M %2.0f
format H1GI1Y %2.0f
format H1GI2 %1.0f
format H1GI3 %2.0f
format H1GI4 %1.0f
format H1GI5A %1.0f
format H1GI5B %1.0f
format H1GI5C %1.0f
format H1GI5D %1.0f
format H1GI5E %1.0f
format H1GI5F %1.0f
format H1GI6A %1.0f
format H1GI6B %1.0f
format H1GI6C %1.0f
format H1GI6D %1.0f
format H1GI6E %1.0f
format H1GI7A %1.0f
format H1GI7B %1.0f
format H1GI7C %1.0f
format H1GI7D %1.0f
format H1GI7E %1.0f
format H1GI7F %1.0f
format H1GI7G %1.0f
format H1GI8 %1.0f
format H1GI9 %1.0f
format H1GI10 %1.0f
format H1GI11 %1.0f
format H1GI12 %3.0f
format H1GI13M %2.0f
format H1GI13Y %2.0f
format H1GI14 %1.0f
format H1GI15 %1.0f
format H1GI16M %2.0f
format H1GI16Y %2.0f
format H1GI18 %1.0f
format H1GI19 %1.0f
format H1GI20 %2.0f
format H1GI21 %2.0f
format H1DA1 %1.0f
format H1DA2 %1.0f
format H1DA3 %1.0f
format H1DA4 %1.0f
format H1DA5 %1.0f
format H1DA6 %1.0f
format H1DA7 %1.0f
format H1DA8 %3.0f
format H1DA9 %3.0f
format H1DA10 %3.0f
format H1DA11 %3.0f
format H1GH1 %1.0f
format H1GH1A %1.0f
format H1GH2 %1.0f
format H1GH3 %1.0f
format H1GH4 %1.0f
format H1GH5 %1.0f
format H1GH6 %1.0f
format H1GH7 %1.0f
format H1GH8 %1.0f
format H1GH9 %1.0f
format H1GH10 %1.0f
format H1GH11 %1.0f
format H1GH12 %1.0f
format H1GH13 %1.0f
format H1GH14 %1.0f
format H1GH15 %1.0f
format H1GH16 %1.0f
format H1GH17 %1.0f
format H1GH18 %1.0f
format H1GH19 %1.0f
format H1GH20 %1.0f
format H1GH21 %1.0f
format H1GH22 %1.0f
format H1GH23A %1.0f
format H1GH23B %1.0f
format H1GH23C %1.0f
format H1GH23D %1.0f
format H1GH23E %1.0f
format H1GH23F %1.0f
format H1GH23G %1.0f
format H1GH23H %1.0f
format H1GH23I %1.0f
format H1GH23J %1.0f
format H1GH24 %1.0f
format H1GH25 %1.0f
format H1GH26 %1.0f
format H1GH27A %1.0f
format H1GH27B %1.0f
format H1GH27C %1.0f
format H1GH27D %1.0f
format H1GH27E %1.0f
format H1GH27F %1.0f
format H1GH27G %1.0f
format H1GH27H %1.0f
format H1GH27I %1.0f
format H1GH27J %1.0f
format H1GH28 %1.0f
format H1GH29 %1.0f
format H1GH30A %1.0f
format H1GH30B %1.0f
format H1GH30C %1.0f
format H1GH30D %1.0f
format H1GH30E %1.0f
format H1GH30F %1.0f
format H1GH30G %1.0f
format H1GH31A %1.0f
format H1GH31B %1.0f
format H1GH31C %1.0f
format H1GH31D %1.0f
format H1GH31F %1.0f
format H1GH31G %1.0f
format H1GH32 %1.0f
format H1GH33 %1.0f
format H1GH34 %1.0f
format H1GH35 %1.0f
format H1GH36 %1.0f
format H1GH37 %1.0f
format H1GH38 %1.0f
format H1GH39 %1.0f
format H1GH40 %1.0f
format H1GH41 %1.0f
format H1GH42 %1.0f
format H1GH43 %1.0f
format H1GH44 %1.0f
format H1GH45 %2.0f
format H1GH46 %1.0f
format H1GH47 %2.0f
format H1GH48 %1.0f
format H1GH49 %1.0f
format H1GH51 %2.0f
format H1GH52 %1.0f
format H1GH53 %1.0f
format H1GH54 %1.0f
format H1GH55 %1.0f
format H1GH56 %1.0f
format H1GH57 %1.0f
format H1GH58 %1.0f
format H1GH59A %2.0f
format H1GH59B %2.0f
format H1GH60 %3.0f
format H1TS1 %1.0f
format H1TS2 %1.0f
format H1TS3 %1.0f
format H1TS4 %1.0f
format H1TS5 %1.0f
format H1TS6 %1.0f
format H1TS7 %1.0f
format H1TS8 %1.0f
format H1TS9 %1.0f
format H1TS10 %1.0f
format H1TS11 %1.0f
format H1TS12 %1.0f
format H1TS13 %1.0f
format H1TS14 %1.0f
format H1TS15 %1.0f
format H1TS16 %1.0f
format H1TS17 %1.0f
format H1ED1 %1.0f
format H1ED2 %3.0f
format H1ED3 %1.0f
format H1ED4A %1.0f
format H1ED4B %1.0f
format H1ED4C %1.0f
format H1ED4D %1.0f
format H1ED4E %1.0f
format H1ED4F %1.0f
format H1ED4G %1.0f
format H1ED4H %1.0f
format H1ED4I %1.0f
format H1ED4J %1.0f
format H1ED4K %1.0f
format H1ED4M %1.0f
format H1ED5 %1.0f
format H1ED6A %1.0f
format H1ED6B %1.0f
format H1ED6C %1.0f
format H1ED6D %1.0f
format H1ED6E %1.0f
format H1ED6F %1.0f
format H1ED6G %1.0f
format H1ED6H %1.0f
format H1ED6I %1.0f
format H1ED6J %1.0f
format H1ED6K %1.0f
format H1ED6L %1.0f
format H1ED6M %1.0f
format H1ED7 %1.0f
format H1ED8 %2.0f
format H1ED9 %1.0f
format H1ED10 %2.0f
format H1ED11 %2.0f
format H1ED12 %2.0f
format H1ED13 %2.0f
format H1ED14 %2.0f
format H1ED15 %1.0f
format H1ED16 %1.0f
format H1ED17 %1.0f
format H1ED18 %1.0f
format H1ED19 %1.0f
format H1ED20 %1.0f
format H1ED21 %1.0f
format H1ED22 %1.0f
format H1ED23 %1.0f
format H1ED24 %1.0f
format H1PL1 %1.0f
format H1PL2 %1.0f
format H1PL3 %1.0f
format H1PL4 %1.0f
format H1PL5 %1.0f
format H1PL6 %1.0f
format H1PL7 %1.0f
format H1PL8 %1.0f
format H1PL9 %1.0f
format H1PL10 %1.0f
format H1PL11 %1.0f
format H1PL12 %1.0f
format H1PL13 %1.0f
format H1PL14 %1.0f
format H1PL15 %1.0f
format H1PL16 %1.0f
format H1PL17 %1.0f
format H1PL18 %1.0f
format H1PL19 %1.0f
format H1PL20 %1.0f
format H1PL21 %1.0f
format H1PL22 %1.0f
format H1PL23 %1.0f
format H1PL24 %1.0f
format H1PL25 %1.0f
format H1PL26 %1.0f
format H1PL29 %1.0f
format H1PL30 %1.0f
format H1PL31 %1.0f
format H1PL33 %1.0f
format H1PL34 %1.0f
format H1PL37 %1.0f
format H1PL38 %1.0f
format H1HS1 %1.0f
format H1HS2A %1.0f
format H1HS2B %1.0f
format H1HS2C %1.0f
format H1HS2D %1.0f
format H1HS2E %1.0f
format H1HS3 %1.0f
format H1HS4A %1.0f
format H1HS4B %1.0f
format H1HS4C %1.0f
format H1HS4D %1.0f
format H1HS4E %1.0f
format H1HS5 %1.0f
format H1HS6A %1.0f
format H1HS6B %1.0f
format H1HS6C %1.0f
format H1HS6D %1.0f
format H1HS6E %1.0f
format H1HS7 %1.0f
format H1HS8A %1.0f
format H1HS8B %1.0f
format H1HS8C %1.0f
format H1HS8D %1.0f
format H1HS8E %1.0f
format H1HS9 %1.0f
format H1HS10A %1.0f
format H1HS10B %1.0f
format H1HS10C %1.0f
format H1HS10D %1.0f
format H1HS10E %1.0f
format H1HS11 %1.0f
format H1HS12A %1.0f
format H1HS12B %1.0f
format H1HS12C %1.0f
format H1HS12D %1.0f
format H1HS12E %1.0f
format H1RP1 %1.0f
format H1RP2 %1.0f
format H1RP3 %1.0f
format H1RP4 %1.0f
format H1RP5 %1.0f
format H1RP6 %1.0f
format H1SE1 %2.0f
format H1SE2 %2.0f
format H1SE3 %2.0f
format H1SE4 %2.0f
format H1FS1 %1.0f
format H1FS2 %1.0f
format H1FS3 %1.0f
format H1FS4 %1.0f
format H1FS5 %1.0f
format H1FS6 %1.0f
format H1FS7 %1.0f
format H1FS8 %1.0f
format H1FS9 %1.0f
format H1FS10 %1.0f
format H1FS11 %1.0f
format H1FS12 %1.0f
format H1FS13 %1.0f
format H1FS14 %1.0f
format H1FS15 %1.0f
format H1FS16 %1.0f
format H1FS17 %1.0f
format H1FS18 %1.0f
format H1FS19 %1.0f
format H1HR2A %1.0f
format H1HR3A %2.0f
format H1HR4A %2.0f
format H1HR5A %2.0f
format H1HR6A %2.0f
format H1HR7A %5.1f
format H1HR8A %3.0f
format H1HR9A %1.0f
format H1HR10A %2.0f
format H1HR11A %2.0f
format H1HR2B %1.0f
format H1HR3B %2.0f
format H1HR4B %2.0f
format H1HR5B %2.0f
format H1HR6B %2.0f
format H1HR7B %5.1f
format H1HR8B %3.0f
format H1HR9B %1.0f
format H1HR10B %2.0f
format H1HR11B %2.0f
format H1HR2C %1.0f
format H1HR3C %2.0f
format H1HR4C %2.0f
format H1HR5C %2.0f
format H1HR6C %2.0f
format H1HR7C %3.0f
format H1HR8C %3.0f
format H1HR9C %1.0f
format H1HR10C %2.0f
format H1HR11C %2.0f
format H1HR2D %1.0f
format H1HR3D %2.0f
format H1HR4D %2.0f
format H1HR5D %2.0f
format H1HR6D %2.0f
format H1HR7D %3.0f
format H1HR8D %3.0f
format H1HR9D %1.0f
format H1HR10D %2.0f
format H1HR11D %2.0f
format H1HR2E %1.0f
format H1HR3E %2.0f
format H1HR4E %2.0f
format H1HR5E %2.0f
format H1HR6E %2.0f
format H1HR7E %3.0f
format H1HR8E %3.0f
format H1HR9E %1.0f
format H1HR10E %2.0f
format H1HR11E %2.0f
format H1HR2F %1.0f
format H1HR3F %2.0f
format H1HR4F %2.0f
format H1HR5F %2.0f
format H1HR6F %2.0f
format H1HR7F %3.0f
format H1HR8F %3.0f
format H1HR9F %1.0f
format H1HR10F %2.0f
format H1HR11F %2.0f
format H1HR2G %1.0f
format H1HR3G %2.0f
format H1HR4G %2.0f
format H1HR5G %2.0f
format H1HR6G %2.0f
format H1HR7G %3.0f
format H1HR8G %3.0f
format H1HR9G %1.0f
format H1HR10G %2.0f
format H1HR11G %2.0f
format H1HR2H %1.0f
format H1HR3H %2.0f
format H1HR4H %2.0f
format H1HR5H %2.0f
format H1HR6H %2.0f
format H1HR7H %3.0f
format H1HR8H %3.0f
format H1HR9H %1.0f
format H1HR10H %2.0f
format H1HR11H %2.0f
format H1HR2I %1.0f
format H1HR3I %2.0f
format H1HR4I %2.0f
format H1HR5I %2.0f
format H1HR6I %2.0f
format H1HR7I %3.0f
format H1HR8I %3.0f
format H1HR9I %1.0f
format H1HR10I %2.0f
format H1HR11I %2.0f
format H1HR2J %1.0f
format H1HR3J %2.0f
format H1HR4J %2.0f
format H1HR5J %2.0f
format H1HR6J %2.0f
format H1HR7J %3.0f
format H1HR8J %3.0f
format H1HR9J %1.0f
format H1HR10J %2.0f
format H1HR11J %2.0f
format H1HR2K %1.0f
format H1HR3K %2.0f
format H1HR4K %2.0f
format H1HR5K %2.0f
format H1HR6K %2.0f
format H1HR7K %3.0f
format H1HR8K %3.0f
format H1HR9K %1.0f
format H1HR10K %2.0f
format H1HR11K %2.0f
format H1HR2L %1.0f
format H1HR3L %2.0f
format H1HR4L %2.0f
format H1HR5L %2.0f
format H1HR6L %2.0f
format H1HR7L %3.0f
format H1HR8L %3.0f
format H1HR9L %1.0f
format H1HR10L %2.0f
format H1HR11L %2.0f
format H1HR2M %1.0f
format H1HR3M %2.0f
format H1HR4M %2.0f
format H1HR5M %2.0f
format H1HR6M %2.0f
format H1HR7M %3.0f
format H1HR8M %3.0f
format H1HR9M %1.0f
format H1HR10M %2.0f
format H1HR11M %2.0f
format H1HR2N %1.0f
format H1HR3N %2.0f
format H1HR4N %2.0f
format H1HR5N %2.0f
format H1HR6N %2.0f
format H1HR7N %3.0f
format H1HR8N %3.0f
format H1HR9N %1.0f
format H1HR10N %2.0f
format H1HR11N %2.0f
format H1HR2O %1.0f
format H1HR3O %2.0f
format H1HR4O %2.0f
format H1HR5O %2.0f
format H1HR6O %2.0f
format H1HR7O %3.0f
format H1HR8O %3.0f
format H1HR9O %1.0f
format H1HR10O %2.0f
format H1HR11O %2.0f
format H1HR2P %1.0f
format H1HR3P %2.0f
format H1HR4P %2.0f
format H1HR5P %2.0f
format H1HR6P %2.0f
format H1HR7P %3.0f
format H1HR8P %3.0f
format H1HR9P %1.0f
format H1HR10P %2.0f
format H1HR11P %2.0f
format H1HR2Q %1.0f
format H1HR3Q %2.0f
format H1HR4Q %2.0f
format H1HR5Q %2.0f
format H1HR6Q %2.0f
format H1HR7Q %3.0f
format H1HR8Q %3.0f
format H1HR9Q %1.0f
format H1HR10Q %2.0f
format H1HR11Q %2.0f
format H1HR2R %1.0f
format H1HR3R %2.0f
format H1HR4R %2.0f
format H1HR5R %2.0f
format H1HR6R %2.0f
format H1HR7R %3.0f
format H1HR8R %3.0f
format H1HR9R %1.0f
format H1HR10R %2.0f
format H1HR11R %2.0f
format H1HR2S %1.0f
format H1HR3S %2.0f
format H1HR4S %2.0f
format H1HR5S %2.0f
format H1HR6S %2.0f
format H1HR7S %3.0f
format H1HR8S %3.0f
format H1HR9S %1.0f
format H1HR10S %2.0f
format H1HR11S %2.0f
format H1HR2T %1.0f
format H1HR3T %2.0f
format H1HR4T %2.0f
format H1HR5T %2.0f
format H1HR6T %2.0f
format H1HR7T %3.0f
format H1HR8T %3.0f
format H1HR9T %1.0f
format H1HR10T %2.0f
format H1HR11T %2.0f
format H1HR12 %2.0f
format H1HR13 %2.0f
format H1HR14 %2.0f
format H1HR15 %2.0f
format H1NM1 %1.0f
format H1NM2 %1.0f
format H1NM3 %2.0f
format H1NM4 %2.0f
format H1NM5 %1.0f
format H1NM6 %1.0f
format H1NM7 %1.0f
format H1NM8 %2.0f
format H1NM9 %2.0f
format H1NM10 %1.0f
format H1NM11 %1.0f
format H1NM12A %1.0f
format H1NM12B %1.0f
format H1NM12C %1.0f
format H1NM12D %1.0f
format H1NM12E %1.0f
format H1NM12F %1.0f
format H1NM12G %1.0f
format H1NM12H %1.0f
format H1NM12I %1.0f
format H1NM12J %1.0f
format H1NM13 %1.0f
format H1NM14 %1.0f
format H1NF1 %1.0f
format H1NF2 %1.0f
format H1NF3 %2.0f
format H1NF4 %2.0f
format H1NF5 %1.0f
format H1NF6 %1.0f
format H1NF7 %1.0f
format H1NF8 %2.0f
format H1NF9 %2.0f
format H1NF10 %1.0f
format H1NF11 %1.0f
format H1NF12A %1.0f
format H1NF12B %1.0f
format H1NF12C %1.0f
format H1NF12D %1.0f
format H1NF12E %1.0f
format H1NF12F %1.0f
format H1NF12G %1.0f
format H1NF12H %1.0f
format H1NF12I %1.0f
format H1NF12J %1.0f
format H1NF13 %1.0f
format H1NF14 %1.0f
format H1RM1 %2.0f
format H1RM2 %1.0f
format H1RM3 %3.0f
format H1RM4 %2.0f
format H1RM5 %1.0f
format H1RM6 %1.0f
format H1RM7 %3.0f
format H1RM8 %1.0f
format H1RM9 %1.0f
format H1RM10 %1.0f
format H1RM11 %2.0f
format H1RM12 %2.0f
format H1RM13 %2.0f
format H1RM14 %1.0f
format H1RF1 %2.0f
format H1RF2 %1.0f
format H1RF3 %3.0f
format H1RF4 %2.0f
format H1RF5 %1.0f
format H1RF6 %1.0f
format H1RF7 %3.0f
format H1RF8 %1.0f
format H1RF9 %1.0f
format H1RF10 %1.0f
format H1RF11 %2.0f
format H1RF12 %2.0f
format H1RF13 %2.0f
format H1RF14 %1.0f
format H1WP1 %1.0f
format H1WP2 %1.0f
format H1WP3 %1.0f
format H1WP4 %1.0f
format H1WP5 %1.0f
format H1WP6 %1.0f
format H1WP7 %1.0f
format H1WP8 %2.0f
format H1WP9 %1.0f
format H1WP10 %1.0f
format H1WP11 %1.0f
format H1WP12 %1.0f
format H1WP13 %1.0f
format H1WP14 %1.0f
format H1WP15 %1.0f
format H1WP16 %1.0f
format H1WP17A %1.0f
format H1WP17B %1.0f
format H1WP17C %1.0f
format H1WP17D %1.0f
format H1WP17E %1.0f
format H1WP17F %1.0f
format H1WP17G %1.0f
format H1WP17H %1.0f
format H1WP17I %1.0f
format H1WP17J %1.0f
format H1WP17K %1.0f
format H1WP18A %1.0f
format H1WP18B %1.0f
format H1WP18C %1.0f
format H1WP18D %1.0f
format H1WP18E %1.0f
format H1WP18F %1.0f
format H1WP18G %1.0f
format H1WP18H %1.0f
format H1WP18I %1.0f
format H1WP18J %1.0f
format H1WP18K %1.0f
format H1MO1 %1.0f
format H1MO2 %1.0f
format H1MO3 %1.0f
format H1MO4 %1.0f
format H1MO5 %1.0f
format H1MO6 %1.0f
format H1MO7 %1.0f
format H1MO8 %1.0f
format H1MO9 %1.0f
format H1MO10 %1.0f
format H1MO11 %1.0f
format H1MO12 %1.0f
format H1MO13 %1.0f
format H1MO14 %1.0f
format H1PF1 %1.0f
format H1PF2 %1.0f
format H1PF3 %1.0f
format H1PF4 %1.0f
format H1PF5 %1.0f
format H1PF6 %1.0f
format H1PF7 %1.0f
format H1PF8 %1.0f
format H1PF9 %1.0f
format H1PF10 %1.0f
format H1PF11 %1.0f
format H1PF12 %1.0f
format H1PF13 %1.0f
format H1PF14 %1.0f
format H1PF15 %1.0f
format H1PF16 %1.0f
format H1PF17 %1.0f
format H1PF18 %1.0f
format H1PF19 %1.0f
format H1PF20 %1.0f
format H1PF21 %1.0f
format H1PF22 %1.0f
format H1PF23 %1.0f
format H1PF24 %1.0f
format H1PF25 %1.0f
format H1PF26 %1.0f
format H1PF27 %1.0f
format H1PF28 %1.0f
format H1PF29 %1.0f
format H1PF30 %1.0f
format H1PF31 %1.0f
format H1PF32 %1.0f
format H1PF33 %1.0f
format H1PF34 %1.0f
format H1PF35 %1.0f
format H1PF36 %1.0f
format H1KQ1A %1.0f
format H1KQ1B %1.0f
format H1KQ2A %1.0f
format H1KQ2B %1.0f
format H1KQ3A %1.0f
format H1KQ3B %1.0f
format H1KQ4A %1.0f
format H1KQ4B %1.0f
format H1KQ5A %1.0f
format H1KQ5B %1.0f
format H1KQ6A %1.0f
format H1KQ6B %1.0f
format H1KQ7A %1.0f
format H1KQ7B %1.0f
format H1KQ8A %1.0f
format H1KQ8B %1.0f
format H1KQ9A %1.0f
format H1KQ9B %1.0f
format H1KQ10A %1.0f
format H1KQ10B %1.0f
format FR_FLAG %1.0f
format H1MF2A %1.0f
format H1MF3A %2.0f
format H1MF4A %1.0f
format H1MF5A %1.0f
format H1MF6A %1.0f
format H1MF7A %1.0f
format H1MF8A %1.0f
format H1MF9A %1.0f
format H1MF10A %1.0f
format H1MF2B %1.0f
format H1MF3B %2.0f
format H1MF4B %1.0f
format H1MF5B %1.0f
format H1MF6B %1.0f
format H1MF7B %1.0f
format H1MF8B %1.0f
format H1MF9B %1.0f
format H1MF10B %1.0f
format H1MF2C %1.0f
format H1MF3C %2.0f
format H1MF4C %1.0f
format H1MF5C %1.0f
format H1MF6C %1.0f
format H1MF7C %1.0f
format H1MF8C %1.0f
format H1MF9C %1.0f
format H1MF10C %1.0f
format H1MF2D %1.0f
format H1MF3D %2.0f
format H1MF4D %1.0f
format H1MF5D %1.0f
format H1MF6D %1.0f
format H1MF7D %1.0f
format H1MF8D %1.0f
format H1MF9D %1.0f
format H1MF10D %1.0f
format H1MF2E %1.0f
format H1MF3E %2.0f
format H1MF4E %1.0f
format H1MF5E %1.0f
format H1MF6E %1.0f
format H1MF7E %1.0f
format H1MF8E %1.0f
format H1MF9E %1.0f
format H1MF10E %1.0f
format H1FF2A %1.0f
format H1FF3A %2.0f
format H1FF4A %1.0f
format H1FF5A %1.0f
format H1FF6A %1.0f
format H1FF7A %1.0f
format H1FF8A %1.0f
format H1FF9A %1.0f
format H1FF10A %1.0f
format H1FF2B %1.0f
format H1FF3B %2.0f
format H1FF4B %1.0f
format H1FF5B %1.0f
format H1FF6B %1.0f
format H1FF7B %1.0f
format H1FF8B %1.0f
format H1FF9B %1.0f
format H1FF10B %1.0f
format H1FF2C %1.0f
format H1FF3C %2.0f
format H1FF4C %1.0f
format H1FF5C %1.0f
format H1FF6C %1.0f
format H1FF7C %1.0f
format H1FF8C %1.0f
format H1FF9C %1.0f
format H1FF10C %1.0f
format H1FF2D %1.0f
format H1FF3D %2.0f
format H1FF4D %1.0f
format H1FF5D %1.0f
format H1FF6D %1.0f
format H1FF7D %1.0f
format H1FF8D %1.0f
format H1FF9D %1.0f
format H1FF10D %1.0f
format H1FF2E %1.0f
format H1FF3E %2.0f
format H1FF4E %1.0f
format H1FF5E %1.0f
format H1FF6E %1.0f
format H1FF7E %1.0f
format H1FF8E %1.0f
format H1FF9E %1.0f
format H1FF10E %1.0f
format H1ID1A %1.0f
format H1ID1B %1.0f
format H1ID1C %1.0f
format H1ID1D %1.0f
format H1ID1E %1.0f
format H1ID1F %1.0f
format H1ID1G %1.0f
format H1ID1H %1.0f
format H1ID1I %1.0f
format H1ID1J %1.0f
format H1ID1K %1.0f
format H1ID1L %1.0f
format H1ID1M %1.0f
format H1ID1N %1.0f
format H1ID1O %1.0f
format H1ID1P %1.0f
format H1ID1Q %1.0f
format H1ID1R %1.0f
format H1ID2_1 %2.0f
format H1ID2_2 %2.0f
format H1ID2_3 %2.0f
format H1ID2_4 %2.0f
format H1ID2_5 %2.0f
format H1ID2_6 %2.0f
format H1ID2_7 %2.0f
format H1ID2_8 %2.0f
format H1ID2_9 %2.0f
format H1ID2_10 %2.0f
format H1ID2_11 %2.0f
format H1ID2_12 %2.0f
format H1ID2_13 %2.0f
format H1ID2_14 %2.0f
format H1ID2_15 %2.0f
format H1ID2_16 %2.0f
format H1ID2_17 %2.0f
format H1ID5 %1.0f
format H1ID6 %1.0f
format H1RR1 %1.0f
format RR_FLAG %1.0f
format H1LR1 %1.0f
format H1LR2 %1.0f
format H1LR3 %1.0f
format H1LR4 %1.0f
format H1CO1 %1.0f
format H1CO2M %2.0f
format H1CO2Y %2.0f
format H1CO3 %1.0f
format H1CO4A %2.0f
format H1CO4B %2.0f
format H1CO4C %2.0f
format H1CO5M %2.0f
format H1CO5Y %2.0f
format H1CO6 %1.0f
format H1CO7A %2.0f
format H1CO7B %2.0f
format H1CO7C %2.0f
format H1CO8 %1.0f
format H1CO9 %1.0f
format H1CO10 %1.0f
format H1CO11 %1.0f
format H1CO12A %2.0f
format H1CO12B %2.0f
format H1CO12C %2.0f
format H1CO13 %1.0f
format H1CO14M %2.0f
format H1CO14Y %2.0f
format H1CO15 %1.0f
format H1CO16A %1.0f
format H1CO16B %1.0f
format H1CO16C %1.0f
format H1CO16D %1.0f
format H1CO16E %1.0f
format H1CO16F %1.0f
format H1CO16G %1.0f
format H1CO16H %1.0f
format H1CO16I %1.0f
format H1CO16J %1.0f
format H1CO17A %1.0f
format H1CO17B %1.0f
format H1CO17C %1.0f
format H1CO17D %1.0f
format H1CO17E %1.0f
format H1CO17F %1.0f
format H1CO17G %1.0f
format H1CO17H %1.0f
format H1CO17I %1.0f
format H1CO17J %1.0f
format H1RI1M_1 %2.0f
format H1RI1Y_1 %2.0f
format H1RI2_1 %2.0f
format H1RI3_1 %2.0f
format H1RI4_1 %2.0f
format H1RI5A_1 %2.0f
format H1RI6_1 %1.0f
format H1RI7_1 %1.0f
format H1RI8A_1 %1.0f
format H1RI8B_1 %1.0f
format H1RI8C_1 %1.0f
format H1RI8D_1 %1.0f
format H1RI8E_1 %1.0f
format H1RI8F_1 %1.0f
format H1RI8G_1 %1.0f
format H1RI8H_1 %1.0f
format H1RI9_1 %2.0f
format H1RI10_1 %1.0f
format H1RI11M1 %2.0f
format H1RI11Y1 %2.0f
format H1RI12_1 %2.0f
format H1RI13_1 %1.0f
format H1RI14_1 %1.0f
format H1RI15_1 %2.0f
format H1RI16_1 %1.0f
format H1RI17A1 %1.0f
format H1RI17B1 %1.0f
format H1RI17C1 %1.0f
format H1RI17D1 %1.0f
format H1RI17E1 %1.0f
format H1RI17F1 %1.0f
format H1RI18A1 %1.0f
format H1RI18B1 %1.0f
format H1RI18C1 %1.0f
format H1RI18D1 %1.0f
format H1RI18E1 %1.0f
format H1RI19A1 %1.0f
format H1RI19B1 %1.0f
format H1RI19C1 %1.0f
format H1RI19D1 %1.0f
format H1RI19E1 %1.0f
format H1RI19F1 %1.0f
format H1RI19G1 %1.0f
format H1RI20_1 %1.0f
format H1RI21A1 %1.0f
format H1RI21B1 %1.0f
format H1RI21C1 %1.0f
format H1RI21D1 %1.0f
format H1RI21E1 %1.0f
format H1RI21F1 %1.0f
format H1RI21G1 %1.0f
format H1RI21H1 %1.0f
format H1RI21I1 %1.0f
format H1RI21J1 %1.0f
format H1RI21K1 %1.0f
format H1RI21L1 %1.0f
format H1RI21M1 %1.0f
format H1RI21N1 %1.0f
format H1RI21O1 %1.0f
format H1RI21P1 %1.0f
format H1RI21Q1 %1.0f
format H1RI21R1 %1.0f
format H1RI22A1 %2.0f
format H1RI22B1 %2.0f
format H1RI22C1 %2.0f
format H1RI22D1 %2.0f
format H1RI22E1 %2.0f
format H1RI22F1 %2.0f
format H1RI22G1 %2.0f
format H1RI22H1 %2.0f
format H1RI22I1 %2.0f
format H1RI22J1 %2.0f
format H1RI22K1 %2.0f
format H1RI22L1 %2.0f
format H1RI22M1 %2.0f
format H1RI22N1 %2.0f
format H1RI22O1 %2.0f
format H1RI22P1 %2.0f
format H1RI22Q1 %2.0f
format H1RI22R1 %2.0f
format H1RI24A1 %1.0f
format H1RI25M1 %2.0f
format H1RI25Y1 %2.0f
format H1RI26M1 %2.0f
format H1RI26Y1 %2.0f
format H1RI27_1 %1.0f
format H1RI28_1 %1.0f
format H1RI29A1 %2.0f
format H1RI29B1 %2.0f
format H1RI29C1 %2.0f
format H1RI30_1 %1.0f
format H1RI31_1 %1.0f
format H1RI32_1 %1.0f
format H1RI33A1 %2.0f
format H1RI33B1 %2.0f
format H1RI33C1 %2.0f
format H1RI34_1 %1.0f
format H1RI35_1 %1.0f
format H1RI36_1 %1.0f
format H1RI37_1 %1.0f
format H1RI38A1 %2.0f
format H1RI38B1 %2.0f
format H1RI38C1 %2.0f
format H1RI39_1 %1.0f
format H1RI40_1 %1.0f
format H1RI41_1 %4.0f
format H1RI1M_2 %2.0f
format H1RI1Y_2 %2.0f
format H1RI2_2 %2.0f
format H1RI3_2 %2.0f
format H1RI4_2 %2.0f
format H1RI5A_2 %2.0f
format H1RI6_2 %1.0f
format H1RI7_2 %1.0f
format H1RI8A_2 %1.0f
format H1RI8B_2 %1.0f
format H1RI8C_2 %1.0f
format H1RI8D_2 %1.0f
format H1RI8E_2 %1.0f
format H1RI8F_2 %1.0f
format H1RI8G_2 %1.0f
format H1RI8H_2 %1.0f
format H1RI9_2 %2.0f
format H1RI10_2 %1.0f
format H1RI11M2 %2.0f
format H1RI11Y2 %2.0f
format H1RI12_2 %2.0f
format H1RI13_2 %1.0f
format H1RI14_2 %1.0f
format H1RI15_2 %2.0f
format H1RI16_2 %1.0f
format H1RI17A2 %1.0f
format H1RI17B2 %1.0f
format H1RI17C2 %1.0f
format H1RI17D2 %1.0f
format H1RI17E2 %1.0f
format H1RI17F2 %1.0f
format H1RI18A2 %1.0f
format H1RI18B2 %1.0f
format H1RI18C2 %1.0f
format H1RI18D2 %1.0f
format H1RI18E2 %1.0f
format H1RI19A2 %1.0f
format H1RI19B2 %1.0f
format H1RI19C2 %1.0f
format H1RI19D2 %1.0f
format H1RI19E2 %1.0f
format H1RI19F2 %1.0f
format H1RI19G2 %1.0f
format H1RI20_2 %1.0f
format H1RI21A2 %1.0f
format H1RI21B2 %1.0f
format H1RI21C2 %1.0f
format H1RI21D2 %1.0f
format H1RI21E2 %1.0f
format H1RI21F2 %1.0f
format H1RI21G2 %1.0f
format H1RI21H2 %1.0f
format H1RI21I2 %1.0f
format H1RI21J2 %1.0f
format H1RI21K2 %1.0f
format H1RI21L2 %1.0f
format H1RI21M2 %1.0f
format H1RI21N2 %1.0f
format H1RI21O2 %1.0f
format H1RI21P2 %1.0f
format H1RI21Q2 %1.0f
format H1RI21R2 %1.0f
format H1RI22A2 %2.0f
format H1RI22B2 %2.0f
format H1RI22C2 %2.0f
format H1RI22D2 %2.0f
format H1RI22E2 %2.0f
format H1RI22F2 %2.0f
format H1RI22G2 %2.0f
format H1RI22H2 %2.0f
format H1RI22I2 %2.0f
format H1RI22J2 %2.0f
format H1RI22K2 %2.0f
format H1RI22L2 %2.0f
format H1RI22M2 %2.0f
format H1RI22N2 %2.0f
format H1RI22O2 %2.0f
format H1RI22P2 %2.0f
format H1RI22Q2 %2.0f
format H1RI22R2 %2.0f
format H1RI24A2 %1.0f
format H1RI25M2 %2.0f
format H1RI25Y2 %2.0f
format H1RI26M2 %2.0f
format H1RI26Y2 %2.0f
format H1RI27_2 %1.0f
format H1RI28_2 %1.0f
format H1RI29A2 %2.0f
format H1RI29B2 %2.0f
format H1RI29C2 %2.0f
format H1RI30_2 %1.0f
format H1RI31_2 %1.0f
format H1RI32_2 %1.0f
format H1RI33A2 %2.0f
format H1RI33B2 %2.0f
format H1RI33C2 %2.0f
format H1RI34_2 %1.0f
format H1RI35_2 %1.0f
format H1RI36_2 %1.0f
format H1RI37_2 %1.0f
format H1RI38A2 %2.0f
format H1RI38B2 %2.0f
format H1RI38C2 %2.0f
format H1RI39_2 %1.0f
format H1RI40_2 %1.0f
format H1RI41_2 %4.0f
format H1RI1M_3 %2.0f
format H1RI1Y_3 %2.0f
format H1RI2_3 %2.0f
format H1RI3_3 %2.0f
format H1RI4_3 %2.0f
format H1RI5A_3 %2.0f
format H1RI6_3 %1.0f
format H1RI7_3 %1.0f
format H1RI8A_3 %1.0f
format H1RI8B_3 %1.0f
format H1RI8C_3 %1.0f
format H1RI8D_3 %1.0f
format H1RI8E_3 %1.0f
format H1RI8F_3 %1.0f
format H1RI8G_3 %1.0f
format H1RI8H_3 %1.0f
format H1RI9_3 %2.0f
format H1RI10_3 %1.0f
format H1RI11M3 %2.0f
format H1RI11Y3 %2.0f
format H1RI12_3 %2.0f
format H1RI13_3 %1.0f
format H1RI14_3 %1.0f
format H1RI15_3 %2.0f
format H1RI16_3 %1.0f
format H1RI17A3 %1.0f
format H1RI17B3 %1.0f
format H1RI17C3 %1.0f
format H1RI17D3 %1.0f
format H1RI17E3 %1.0f
format H1RI17F3 %1.0f
format H1RI18A3 %1.0f
format H1RI18B3 %1.0f
format H1RI18C3 %1.0f
format H1RI18D3 %1.0f
format H1RI18E3 %1.0f
format H1RI19A3 %1.0f
format H1RI19B3 %1.0f
format H1RI19C3 %1.0f
format H1RI19D3 %1.0f
format H1RI19E3 %1.0f
format H1RI19F3 %1.0f
format H1RI19G3 %1.0f
format H1RI20_3 %1.0f
format H1RI21A3 %1.0f
format H1RI21B3 %1.0f
format H1RI21C3 %1.0f
format H1RI21D3 %1.0f
format H1RI21E3 %1.0f
format H1RI21F3 %1.0f
format H1RI21G3 %1.0f
format H1RI21H3 %1.0f
format H1RI21I3 %1.0f
format H1RI21J3 %1.0f
format H1RI21K3 %1.0f
format H1RI21L3 %1.0f
format H1RI21M3 %1.0f
format H1RI21N3 %1.0f
format H1RI21O3 %1.0f
format H1RI21P3 %1.0f
format H1RI21Q3 %1.0f
format H1RI21R3 %1.0f
format H1RI22A3 %2.0f
format H1RI22B3 %2.0f
format H1RI22C3 %2.0f
format H1RI22D3 %2.0f
format H1RI22E3 %2.0f
format H1RI22F3 %2.0f
format H1RI22G3 %2.0f
format H1RI22H3 %2.0f
format H1RI22I3 %2.0f
format H1RI22J3 %2.0f
format H1RI22K3 %2.0f
format H1RI22L3 %2.0f
format H1RI22M3 %2.0f
format H1RI22N3 %2.0f
format H1RI22O3 %2.0f
format H1RI22P3 %2.0f
format H1RI22Q3 %2.0f
format H1RI22R3 %2.0f
format H1RI24A3 %1.0f
format H1RI25M3 %2.0f
format H1RI25Y3 %2.0f
format H1RI26M3 %2.0f
format H1RI26Y3 %2.0f
format H1RI27_3 %1.0f
format H1RI28_3 %1.0f
format H1RI29A3 %2.0f
format H1RI29B3 %2.0f
format H1RI29C3 %2.0f
format H1RI30_3 %1.0f
format H1RI31_3 %1.0f
format H1RI32_3 %1.0f
format H1RI33A3 %2.0f
format H1RI33B3 %2.0f
format H1RI33C3 %2.0f
format H1RI34_3 %1.0f
format H1RI35_3 %1.0f
format H1RI36_3 %1.0f
format H1RI37_3 %1.0f
format H1RI38A3 %2.0f
format H1RI38B3 %2.0f
format H1RI38C3 %2.0f
format H1RI39_3 %1.0f
format H1RI40_3 %1.0f
format H1RI41_3 %4.0f
format RICARD1 %1.0f
format RICARD2 %1.0f
format RICARD3 %1.0f
format H1NR1 %1.0f
format H1NR2 %1.0f
format H1NR3 %1.0f
format H1NR4 %3.0f
format H1NR5 %1.0f
format H1NR6 %3.0f
format H1NR7 %3.0f
format H1NR8 %3.0f
format H1NR10_1 %1.0f
format H1NR11_1 %1.0f
format H1NR12_1 %1.0f
format NRRXFLG1 %1.0f
format H1RX1M_1 %2.0f
format H1RX1Y_1 %2.0f
format H1RX2_1 %2.0f
format H1RX3_1 %2.0f
format H1RX4_1 %2.0f
format H1RX5A_1 %2.0f
format H1RX6_1 %1.0f
format H1RX7_1 %1.0f
format H1RX8A_1 %1.0f
format H1RX8B_1 %1.0f
format H1RX8C_1 %1.0f
format H1RX8D_1 %1.0f
format H1RX8E_1 %1.0f
format H1RX8F_1 %1.0f
format H1RX8G_1 %1.0f
format H1RX8H_1 %1.0f
format H1RX9_1 %2.0f
format H1RX10_1 %1.0f
format H1RX11M1 %2.0f
format H1RX11Y1 %2.0f
format H1RX12_1 %2.0f
format H1RX13_1 %1.0f
format H1RX14_1 %1.0f
format H1RX15_1 %2.0f
format H1RX16_1 %1.0f
format H1RX17A1 %1.0f
format H1RX17B1 %1.0f
format H1RX17C1 %1.0f
format H1RX17D1 %1.0f
format H1RX17E1 %1.0f
format H1RX17F1 %1.0f
format H1RX18A1 %1.0f
format H1RX18B1 %1.0f
format H1RX18C1 %1.0f
format H1RX18D1 %1.0f
format H1RX18E1 %1.0f
format H1RX19A1 %1.0f
format H1RX19B1 %1.0f
format H1RX19C1 %1.0f
format H1RX19D1 %1.0f
format H1RX19E1 %1.0f
format H1RX19F1 %1.0f
format H1RX19G1 %1.0f
format H1RX20_1 %1.0f
format H1RX21A1 %1.0f
format H1RX21B1 %1.0f
format H1RX21C1 %1.0f
format H1RX21D1 %1.0f
format H1RX21E1 %1.0f
format H1RX21F1 %1.0f
format H1RX21G1 %1.0f
format H1RX21H1 %1.0f
format H1RX21I1 %1.0f
format H1RX21J1 %1.0f
format H1RX21K1 %1.0f
format H1RX21L1 %1.0f
format H1RX21M1 %1.0f
format H1RX21N1 %1.0f
format H1RX21O1 %1.0f
format H1RX21P1 %1.0f
format H1RX21Q1 %1.0f
format H1RX21R1 %1.0f
format H1RX22A1 %2.0f
format H1RX22B1 %2.0f
format H1RX22C1 %2.0f
format H1RX22D1 %2.0f
format H1RX22E1 %2.0f
format H1RX22F1 %2.0f
format H1RX22G1 %2.0f
format H1RX22H1 %2.0f
format H1RX22I1 %2.0f
format H1RX22J1 %2.0f
format H1RX22K1 %2.0f
format H1RX22L1 %2.0f
format H1RX22M1 %2.0f
format H1RX22N1 %2.0f
format H1RX22O1 %2.0f
format H1RX22P1 %2.0f
format H1RX22Q1 %2.0f
format H1RX22R1 %2.0f
format H1RX24A1 %1.0f
format H1RX25M1 %2.0f
format H1RX25Y1 %2.0f
format H1RX26M1 %2.0f
format H1RX26Y1 %2.0f
format H1RX27_1 %1.0f
format H1RX28_1 %1.0f
format H1RX29A1 %2.0f
format H1RX29B1 %2.0f
format H1RX29C1 %2.0f
format H1RX30_1 %1.0f
format H1RX31_1 %1.0f
format H1RX32_1 %1.0f
format H1RX33A1 %2.0f
format H1RX33B1 %2.0f
format H1RX33C1 %2.0f
format H1RX34_1 %1.0f
format H1RX35_1 %1.0f
format H1RX36_1 %1.0f
format H1RX37_1 %1.0f
format H1RX38A1 %2.0f
format H1RX38B1 %2.0f
format H1RX38C1 %2.0f
format H1RX39_1 %1.0f
format H1RX40_1 %1.0f
format H1RX41_1 %4.0f
format H1NR13_1 %2.0f
format H1NR14_1 %1.0f
format H1NR15_1 %1.0f
format H1NR16_1 %1.0f
format H1NR17A1 %1.0f
format H1NR17B1 %1.0f
format H1NR17C1 %1.0f
format H1NR17D1 %1.0f
format H1NR17E1 %1.0f
format H1NR17F1 %1.0f
format H1NR18A1 %1.0f
format H1NR18B1 %1.0f
format H1NR18C1 %1.0f
format H1NR18D1 %1.0f
format H1NR18E1 %1.0f
format H1NR19A1 %1.0f
format H1NR19B1 %1.0f
format H1NR19C1 %1.0f
format H1NR19D1 %1.0f
format H1NR19E1 %1.0f
format H1NR19F1 %1.0f
format H1NR19G1 %1.0f
format H1NR20A1 %1.0f
format H1NR20B1 %1.0f
format H1NR20C1 %1.0f
format H1NR20D1 %1.0f
format H1NR20E1 %1.0f
format H1NR20F1 %1.0f
format H1NR20G1 %1.0f
format H1NR20H1 %1.0f
format H1NR21_1 %1.0f
format H1NR22_1 %1.0f
format H1NR23M1 %2.0f
format H1NR23Y1 %2.0f
format H1NR24M1 %2.0f
format H1NR24Y1 %2.0f
format H1NR25_1 %1.0f
format H1NR26_1 %1.0f
format H1NR27A1 %2.0f
format H1NR27B1 %2.0f
format H1NR27C1 %2.0f
format H1NR28_1 %1.0f
format H1NR29_1 %1.0f
format H1NR30_1 %1.0f
format H1NR31A1 %2.0f
format H1NR31B1 %2.0f
format H1NR31C1 %2.0f
format H1NR32_1 %1.0f
format H1NR33_1 %1.0f
format H1NR34_1 %1.0f
format H1NR35_1 %1.0f
format H1NR36A1 %2.0f
format H1NR36B1 %2.0f
format H1NR36C1 %2.0f
format H1NR37_1 %1.0f
format H1NR38_1 %1.0f
format H1NR39_1 %3.0f
format H1NR40_1 %1.0f
format H1NR41_1 %1.0f
format H1NR42_1 %1.0f
format H1NR43_1 %2.0f
format H1NR10_2 %1.0f
format H1NR11_2 %1.0f
format H1NR12_2 %1.0f
format NRRXFLG2 %1.0f
format H1RX1M_2 %2.0f
format H1RX1Y_2 %2.0f
format H1RX2_2 %2.0f
format H1RX3_2 %2.0f
format H1RX4_2 %2.0f
format H1RX5A_2 %2.0f
format H1RX6_2 %1.0f
format H1RX7_2 %1.0f
format H1RX8A_2 %1.0f
format H1RX8B_2 %1.0f
format H1RX8C_2 %1.0f
format H1RX8D_2 %1.0f
format H1RX8E_2 %1.0f
format H1RX8F_2 %1.0f
format H1RX8G_2 %1.0f
format H1RX8H_2 %1.0f
format H1RX9_2 %2.0f
format H1RX10_2 %1.0f
format H1RX11M2 %2.0f
format H1RX11Y2 %2.0f
format H1RX12_2 %2.0f
format H1RX13_2 %1.0f
format H1RX14_2 %1.0f
format H1RX15_2 %2.0f
format H1RX16_2 %1.0f
format H1RX17A2 %1.0f
format H1RX17B2 %1.0f
format H1RX17C2 %1.0f
format H1RX17D2 %1.0f
format H1RX17E2 %1.0f
format H1RX17F2 %1.0f
format H1RX18A2 %1.0f
format H1RX18B2 %1.0f
format H1RX18C2 %1.0f
format H1RX18D2 %1.0f
format H1RX18E2 %1.0f
format H1RX19A2 %1.0f
format H1RX19B2 %1.0f
format H1RX19C2 %1.0f
format H1RX19D2 %1.0f
format H1RX19E2 %1.0f
format H1RX19F2 %1.0f
format H1RX19G2 %1.0f
format H1RX20_2 %1.0f
format H1RX21A2 %1.0f
format H1RX21B2 %1.0f
format H1RX21C2 %1.0f
format H1RX21D2 %1.0f
format H1RX21E2 %1.0f
format H1RX21F2 %1.0f
format H1RX21G2 %1.0f
format H1RX21H2 %1.0f
format H1RX21I2 %1.0f
format H1RX21J2 %1.0f
format H1RX21K2 %1.0f
format H1RX21L2 %1.0f
format H1RX21M2 %1.0f
format H1RX21N2 %1.0f
format H1RX21O2 %1.0f
format H1RX21P2 %1.0f
format H1RX21Q2 %1.0f
format H1RX21R2 %1.0f
format H1RX22A2 %2.0f
format H1RX22B2 %2.0f
format H1RX22C2 %2.0f
format H1RX22D2 %2.0f
format H1RX22E2 %2.0f
format H1RX22F2 %2.0f
format H1RX22G2 %2.0f
format H1RX22H2 %2.0f
format H1RX22I2 %2.0f
format H1RX22J2 %2.0f
format H1RX22K2 %2.0f
format H1RX22L2 %2.0f
format H1RX22M2 %2.0f
format H1RX22N2 %2.0f
format H1RX22O2 %2.0f
format H1RX22P2 %2.0f
format H1RX22Q2 %2.0f
format H1RX22R2 %2.0f
format H1RX24A2 %1.0f
format H1RX25M2 %2.0f
format H1RX25Y2 %2.0f
format H1RX26M2 %2.0f
format H1RX26Y2 %2.0f
format H1RX27_2 %1.0f
format H1RX28_2 %1.0f
format H1RX29A2 %2.0f
format H1RX29B2 %2.0f
format H1RX29C2 %2.0f
format H1RX30_2 %1.0f
format H1RX31_2 %1.0f
format H1RX32_2 %1.0f
format H1RX33A2 %2.0f
format H1RX33B2 %2.0f
format H1RX33C2 %2.0f
format H1RX34_2 %1.0f
format H1RX35_2 %1.0f
format H1RX36_2 %1.0f
format H1RX37_2 %1.0f
format H1RX38A2 %2.0f
format H1RX38B2 %2.0f
format H1RX38C2 %2.0f
format H1RX39_2 %1.0f
format H1RX40_2 %1.0f
format H1RX41_2 %4.0f
format H1NR13_2 %2.0f
format H1NR14_2 %1.0f
format H1NR15_2 %1.0f
format H1NR16_2 %1.0f
format H1NR17A2 %1.0f
format H1NR17B2 %1.0f
format H1NR17C2 %1.0f
format H1NR17D2 %1.0f
format H1NR17E2 %1.0f
format H1NR17F2 %1.0f
format H1NR18A2 %1.0f
format H1NR18B2 %1.0f
format H1NR18C2 %1.0f
format H1NR18D2 %1.0f
format H1NR18E2 %1.0f
format H1NR19A2 %1.0f
format H1NR19B2 %1.0f
format H1NR19C2 %1.0f
format H1NR19D2 %1.0f
format H1NR19E2 %1.0f
format H1NR19F2 %1.0f
format H1NR19G2 %1.0f
format H1NR20A2 %1.0f
format H1NR20B2 %1.0f
format H1NR20C2 %1.0f
format H1NR20D2 %1.0f
format H1NR20E2 %1.0f
format H1NR20F2 %1.0f
format H1NR20G2 %1.0f
format H1NR20H2 %1.0f
format H1NR21_2 %1.0f
format H1NR22_2 %1.0f
format H1NR23M2 %2.0f
format H1NR23Y2 %2.0f
format H1NR24M2 %2.0f
format H1NR24Y2 %2.0f
format H1NR25_2 %1.0f
format H1NR26_2 %1.0f
format H1NR27A2 %2.0f
format H1NR27B2 %2.0f
format H1NR27C2 %2.0f
format H1NR28_2 %1.0f
format H1NR29_2 %1.0f
format H1NR30_2 %1.0f
format H1NR31A2 %2.0f
format H1NR31B2 %2.0f
format H1NR31C2 %2.0f
format H1NR32_2 %1.0f
format H1NR33_2 %1.0f
format H1NR34_2 %1.0f
format H1NR35_2 %1.0f
format H1NR36A2 %2.0f
format H1NR36B2 %2.0f
format H1NR36C2 %2.0f
format H1NR37_2 %1.0f
format H1NR38_2 %1.0f
format H1NR39_2 %3.0f
format H1NR40_2 %1.0f
format H1NR41_2 %1.0f
format H1NR42_2 %1.0f
format H1NR43_2 %2.0f
format H1NR10_3 %1.0f
format H1NR11_3 %1.0f
format H1NR12_3 %1.0f
format NRRXFLG3 %1.0f
format H1RX1M_3 %2.0f
format H1RX1Y_3 %2.0f
format H1RX2_3 %2.0f
format H1RX3_3 %2.0f
format H1RX4_3 %2.0f
format H1RX5A_3 %2.0f
format H1RX6_3 %1.0f
format H1RX7_3 %1.0f
format H1RX8A_3 %1.0f
format H1RX8B_3 %1.0f
format H1RX8C_3 %1.0f
format H1RX8D_3 %1.0f
format H1RX8E_3 %1.0f
format H1RX8F_3 %1.0f
format H1RX8G_3 %1.0f
format H1RX8H_3 %1.0f
format H1RX9_3 %2.0f
format H1RX10_3 %1.0f
format H1RX11M3 %2.0f
format H1RX11Y3 %2.0f
format H1RX12_3 %2.0f
format H1RX13_3 %1.0f
format H1RX14_3 %1.0f
format H1RX15_3 %2.0f
format H1RX16_3 %1.0f
format H1RX17A3 %1.0f
format H1RX17B3 %1.0f
format H1RX17C3 %1.0f
format H1RX17D3 %1.0f
format H1RX17E3 %1.0f
format H1RX17F3 %1.0f
format H1RX18A3 %1.0f
format H1RX18B3 %1.0f
format H1RX18C3 %1.0f
format H1RX18D3 %1.0f
format H1RX18E3 %1.0f
format H1RX19A3 %1.0f
format H1RX19B3 %1.0f
format H1RX19C3 %1.0f
format H1RX19D3 %1.0f
format H1RX19E3 %1.0f
format H1RX19F3 %1.0f
format H1RX19G3 %1.0f
format H1RX20_3 %1.0f
format H1RX21A3 %1.0f
format H1RX21B3 %1.0f
format H1RX21C3 %1.0f
format H1RX21D3 %1.0f
format H1RX21E3 %1.0f
format H1RX21F3 %1.0f
format H1RX21G3 %1.0f
format H1RX21H3 %1.0f
format H1RX21I3 %1.0f
format H1RX21J3 %1.0f
format H1RX21K3 %1.0f
format H1RX21L3 %1.0f
format H1RX21M3 %1.0f
format H1RX21N3 %1.0f
format H1RX21O3 %1.0f
format H1RX21P3 %1.0f
format H1RX21Q3 %1.0f
format H1RX21R3 %1.0f
format H1RX22A3 %2.0f
format H1RX22B3 %2.0f
format H1RX22C3 %2.0f
format H1RX22D3 %2.0f
format H1RX22E3 %2.0f
format H1RX22F3 %2.0f
format H1RX22G3 %2.0f
format H1RX22H3 %2.0f
format H1RX22I3 %2.0f
format H1RX22J3 %2.0f
format H1RX22K3 %2.0f
format H1RX22L3 %2.0f
format H1RX22M3 %2.0f
format H1RX22N3 %2.0f
format H1RX22O3 %2.0f
format H1RX22P3 %2.0f
format H1RX22Q3 %2.0f
format H1RX22R3 %2.0f
format H1RX24A3 %1.0f
format H1RX25M3 %2.0f
format H1RX25Y3 %2.0f
format H1RX26M3 %2.0f
format H1RX26Y3 %2.0f
format H1RX27_3 %1.0f
format H1RX28_3 %1.0f
format H1RX29A3 %2.0f
format H1RX29B3 %2.0f
format H1RX29C3 %2.0f
format H1RX30_3 %1.0f
format H1RX31_3 %1.0f
format H1RX32_3 %1.0f
format H1RX33A3 %2.0f
format H1RX33B3 %2.0f
format H1RX33C3 %2.0f
format H1RX34_3 %1.0f
format H1RX35_3 %1.0f
format H1RX36_3 %1.0f
format H1RX37_3 %1.0f
format H1RX38A3 %2.0f
format H1RX38B3 %2.0f
format H1RX38C3 %2.0f
format H1RX39_3 %1.0f
format H1RX40_3 %1.0f
format H1RX41_3 %4.0f
format H1NR13_3 %2.0f
format H1NR14_3 %1.0f
format H1NR15_3 %1.0f
format H1NR16_3 %1.0f
format H1NR17A3 %1.0f
format H1NR17B3 %1.0f
format H1NR17C3 %1.0f
format H1NR17D3 %1.0f
format H1NR17E3 %1.0f
format H1NR17F3 %1.0f
format H1NR18A3 %1.0f
format H1NR18B3 %1.0f
format H1NR18C3 %1.0f
format H1NR18D3 %1.0f
format H1NR18E3 %1.0f
format H1NR19A3 %1.0f
format H1NR19B3 %1.0f
format H1NR19C3 %1.0f
format H1NR19D3 %1.0f
format H1NR19E3 %1.0f
format H1NR19F3 %1.0f
format H1NR19G3 %1.0f
format H1NR20A3 %1.0f
format H1NR20B3 %1.0f
format H1NR20C3 %1.0f
format H1NR20D3 %1.0f
format H1NR20E3 %1.0f
format H1NR20F3 %1.0f
format H1NR20G3 %1.0f
format H1NR20H3 %1.0f
format H1NR21_3 %1.0f
format H1NR22_3 %1.0f
format H1NR23M3 %2.0f
format H1NR23Y3 %2.0f
format H1NR24M3 %2.0f
format H1NR24Y3 %2.0f
format H1NR25_3 %1.0f
format H1NR26_3 %1.0f
format H1NR27A3 %2.0f
format H1NR27B3 %2.0f
format H1NR27C3 %2.0f
format H1NR28_3 %1.0f
format H1NR29_3 %1.0f
format H1NR30_3 %1.0f
format H1NR31A3 %2.0f
format H1NR31B3 %2.0f
format H1NR31C3 %2.0f
format H1NR32_3 %1.0f
format H1NR33_3 %1.0f
format H1NR34_3 %1.0f
format H1NR35_3 %1.0f
format H1NR36A3 %2.0f
format H1NR36B3 %2.0f
format H1NR36C3 %2.0f
format H1NR37_3 %1.0f
format H1NR38_3 %1.0f
format H1NR39_3 %3.0f
format H1NR40_3 %1.0f
format H1NR41_3 %1.0f
format H1NR42_3 %1.0f
format H1NR43_3 %2.0f
format H1NR44 %1.0f
format H1NR45 %2.0f
format H1NR46 %2.0f
format H1NR47 %1.0f
format H1NR48 %1.0f
format H1NR49 %1.0f
format H1NR50 %2.0f
format H1NR51 %2.0f
format H1NR52 %1.0f
format H1NR53 %1.0f
format RXCARD1 %1.0f
format RXCARD2 %1.0f
format RXCARD3 %1.0f
format H1BC1 %1.0f
format H1BC2 %1.0f
format H1BC3 %1.0f
format H1BC4 %1.0f
format H1BC5 %1.0f
format H1BC6 %1.0f
format H1BC7 %1.0f
format H1BC8 %1.0f
format H1TO1 %1.0f
format H1TO2 %2.0f
format H1TO3 %1.0f
format H1TO4 %2.0f
format H1TO5 %2.0f
format H1TO6M %2.0f
format H1TO6Y %2.0f
format H1TO7 %2.0f
format H1TO8 %1.0f
format H1TO9 %1.0f
format H1TO10 %2.0f
format H1TO11 %2.0f
format H1TO12 %1.0f
format H1TO13 %1.0f
format H1TO14 %2.0f
format H1TO15 %2.0f
format H1TO16 %2.0f
format H1TO17 %2.0f
format H1TO18 %2.0f
format H1TO19 %2.0f
format H1TO20 %1.0f
format H1TO21 %1.0f
format H1TO22 %1.0f
format H1TO23 %1.0f
format H1TO24 %1.0f
format H1TO25 %1.0f
format H1TO26 %1.0f
format H1TO27 %1.0f
format H1TO28 %1.0f
format H1TO29 %1.0f
format H1TO30 %2.0f
format H1TO31 %3.0f
format H1TO32 %3.0f
format H1TO33 %1.0f
format H1TO34 %2.0f
format H1TO35 %3.0f
format H1TO36 %3.0f
format H1TO37 %2.0f
format H1TO38 %3.0f
format H1TO39 %3.0f
format H1TO40 %2.0f
format H1TO41 %3.0f
format H1TO42 %3.0f
format H1TO43 %1.0f
format H1TO44 %1.0f
format H1TO45 %2.0f
format H1TO46 %1.0f
format H1TO47 %1.0f
format H1TO48 %1.0f
format H1TO49 %1.0f
format H1TO50 %1.0f
format H1TO51 %1.0f
format H1TO52 %1.0f
format H1TO53 %1.0f
format H1TO54A %1.0f
format H1TO54B %1.0f
format H1TO54C %1.0f
format H1TO54D %1.0f
format H1DS1 %1.0f
format H1DS2 %1.0f
format H1DS3 %1.0f
format H1DS4 %1.0f
format H1DS5 %1.0f
format H1DS6 %1.0f
format H1DS7 %1.0f
format H1DS8 %1.0f
format H1DS9 %1.0f
format H1DS10 %1.0f
format H1DS11 %1.0f
format H1DS12 %1.0f
format H1DS13 %1.0f
format H1DS14 %1.0f
format H1DS15 %1.0f
format H1JO1 %1.0f
format H1JO2 %1.0f
format H1JO3 %1.0f
format H1JO4 %1.0f
format H1JO5 %1.0f
format H1JO6A %1.0f
format H1JO6B %1.0f
format H1JO6C %1.0f
format H1JO6D %1.0f
format H1JO6E %1.0f
format H1JO7 %1.0f
format H1JO8A %1.0f
format H1JO8B %1.0f
format H1JO8C %1.0f
format H1JO8D %1.0f
format H1JO8E %1.0f
format H1JO9 %1.0f
format H1JO10 %1.0f
format H1JO11 %1.0f
format H1JO12 %1.0f
format H1JO13 %1.0f
format H1JO14 %1.0f
format H1JO15 %1.0f
format H1JO16 %1.0f
format H1JO17 %1.0f
format H1JO18A %1.0f
format H1JO18B %1.0f
format H1JO18C %1.0f
format H1JO18D %1.0f
format H1JO18E %1.0f
format H1JO19 %1.0f
format H1JO20 %1.0f
format H1JO21 %1.0f
format H1JO22A %1.0f
format H1JO22B %1.0f
format H1JO22C %1.0f
format H1JO22D %1.0f
format H1JO22E %1.0f
format H1JO23 %1.0f
format H1JO24 %1.0f
format H1JO25 %1.0f
format H1JO26 %1.0f
format H1FV1 %1.0f
format H1FV2 %1.0f
format H1FV3 %1.0f
format H1FV4 %1.0f
format H1FV5 %1.0f
format H1FV6 %1.0f
format H1FV7 %1.0f
format H1FV8 %1.0f
format H1FV9 %1.0f
format H1FV10 %1.0f
format H1FV11 %2.0f
format H1FV12 %1.0f
format H1FV13 %3.0f
format H1FV14M %2.0f
format H1FV14Y %2.0f
format H1MP1 %1.0f
format H1MP2 %1.0f
format H1MP3 %1.0f
format H1MP4 %1.0f
format H1FP1 %1.0f
format H1FP2 %1.0f
format H1FP3 %1.0f
format H1FP4 %2.0f
format H1FP5M %2.0f
format H1FP5D %2.0f
format H1FP6 %1.0f
format H1FP7 %1.0f
format H1FP8 %2.0f
format H1FP9M %2.0f
format H1FP9Y %2.0f
format H1FP10 %1.0f
format H1FP11M1 %2.0f
format H1FP11Y1 %2.0f
format H1FP12_1 %1.0f
format H1FP13A1 %2.0f
format H1FP13B1 %2.0f
format H1FP13C1 %2.0f
format H1FP14_1 %1.0f
format H1FP15_1 %1.0f
format H1FP17_1 %1.0f
format H1FP20M1 %2.0f
format H1FP20Y1 %2.0f
format H1FP21_1 %1.0f
format H1FP22_1 %1.0f
format H1FP23A1 %1.0f
format H1FP24A1 %1.0f
format H1FP11M2 %2.0f
format H1FP11Y2 %2.0f
format H1FP12_2 %1.0f
format H1FP13A2 %2.0f
format H1FP13B2 %2.0f
format H1FP13C2 %2.0f
format H1FP14_2 %1.0f
format H1FP15_2 %1.0f
format H1FP17_2 %1.0f
format H1FP20M2 %2.0f
format H1FP20Y2 %2.0f
format H1FP21_2 %1.0f
format H1FP22_2 %1.0f
format H1FP23A2 %1.0f
format H1FP24A2 %1.0f
format H1FP11M3 %2.0f
format H1FP11Y3 %2.0f
format H1FP12_3 %1.0f
format H1FP13A3 %2.0f
format H1FP13B3 %2.0f
format H1FP13C3 %2.0f
format H1FP14_3 %1.0f
format H1FP15_3 %1.0f
format H1FP17_3 %1.0f
format H1FP20M3 %2.0f
format H1FP20Y3 %2.0f
format H1FP21_3 %1.0f
format H1FP22_3 %1.0f
format H1FP23A3 %1.0f
format H1FP24A3 %1.0f
format H1FP11M4 %2.0f
format H1FP11Y4 %2.0f
format H1FP12_4 %1.0f
format H1FP13A4 %2.0f
format H1FP13B4 %2.0f
format H1FP13C4 %2.0f
format H1FP14_4 %1.0f
format H1FP15_4 %1.0f
format H1FP17_4 %1.0f
format H1FP20M4 %2.0f
format H1FP20Y4 %2.0f
format H1FP21_4 %1.0f
format H1FP22_4 %1.0f
format H1FP23A4 %1.0f
format H1FP24A4 %1.0f
format H1FP11M5 %2.0f
format H1FP11Y5 %2.0f
format H1FP12_5 %1.0f
format H1FP13A5 %2.0f
format H1FP13B5 %2.0f
format H1FP13C5 %2.0f
format H1FP14_5 %1.0f
format H1FP15_5 %1.0f
format H1FP17_5 %1.0f
format H1FP20M5 %2.0f
format H1FP20Y5 %2.0f
format H1FP21_5 %1.0f
format H1FP22_5 %1.0f
format H1FP23A5 %1.0f
format H1FP24A5 %1.0f
format H1SU1 %1.0f
format H1SU2 %1.0f
format H1SU3 %1.0f
format H1SU4 %1.0f
format H1SU5 %1.0f
format H1SU6 %1.0f
format H1SU7 %1.0f
format H1SU8 %1.0f
format H1PA1 %1.0f
format H1PA2 %1.0f
format H1PA3 %1.0f
format H1PA4 %1.0f
format H1PA5 %1.0f
format H1PA6 %1.0f
format H1PA7 %1.0f
format H1PR1 %2.0f
format H1PR2 %2.0f
format H1PR3 %2.0f
format H1PR4 %2.0f
format H1PR5 %2.0f
format H1PR6 %2.0f
format H1PR7 %2.0f
format H1PR8 %2.0f
format H1NB1 %1.0f
format H1NB2 %1.0f
format H1NB3 %1.0f
format H1NB4 %1.0f
format H1NB5 %1.0f
format H1NB6 %1.0f
format H1NB7 %1.0f
format H1RE1 %2.0f
format H1RE2 %1.0f
format H1RE3 %1.0f
format H1RE4 %1.0f
format H1RE5 %1.0f
format H1RE6 %1.0f
format H1RE7 %1.0f
format H1EE1 %1.0f
format H1EE2 %1.0f
format H1EE3 %1.0f
format H1EE4 %5.1f
format H1EE5 %3.0f
format H1EE6 %3.0f
format H1EE7 %5.1f
format H1EE8 %2.0f
format H1EE9 %1.0f
format H1EE10 %1.0f
format H1EE11 %1.0f
format H1EE12 %1.0f
format H1EE13 %1.0f
format H1EE14 %1.0f
format H1EE15 %1.0f
format STUDSIBA %1.0f
format TWINA %1.0f
format H1WS1A %1.0f
format H1WS2A %1.0f
format H1WS3A %1.0f
format H1WS4A %1.0f
format H1WS5A %2.0f
format H1WS6A %1.0f
format H1WS7A %1.0f
format H1WS8A %1.0f
format H1WS9A %1.0f
format H1WS10A %1.0f
format H1WS11A %1.0f
format H1WS12A %1.0f
format STUDSIBB %1.0f
format TWINB %1.0f
format H1WS1B %1.0f
format H1WS2B %1.0f
format H1WS3B %1.0f
format H1WS4B %1.0f
format H1WS5B %2.0f
format H1WS6B %1.0f
format H1WS7B %1.0f
format H1WS8B %1.0f
format H1WS9B %1.0f
format H1WS10B %1.0f
format H1WS11B %1.0f
format H1WS12B %1.0f
format STUDSIBC %1.0f
format TWINC %1.0f
format H1WS1C %1.0f
format H1WS2C %1.0f
format H1WS3C %1.0f
format H1WS4C %1.0f
format H1WS5C %2.0f
format H1WS6C %1.0f
format H1WS7C %1.0f
format H1WS8C %1.0f
format H1WS9C %1.0f
format H1WS10C %1.0f
format H1WS11C %1.0f
format H1WS12C %1.0f
format STUDSIBD %1.0f
format TWIND %1.0f
format H1WS1D %1.0f
format H1WS2D %1.0f
format H1WS3D %1.0f
format H1WS4D %1.0f
format H1WS5D %2.0f
format H1WS6D %1.0f
format H1WS7D %1.0f
format H1WS8D %1.0f
format H1WS9D %1.0f
format H1WS10D %1.0f
format H1WS11D %1.0f
format H1WS12D %1.0f
format STUDSIBE %1.0f
format TWINE %1.0f
format H1WS1E %1.0f
format H1WS2E %1.0f
format H1WS3E %1.0f
format H1WS4E %1.0f
format H1WS5E %2.0f
format H1WS6E %1.0f
format H1WS7E %1.0f
format H1WS8E %1.0f
format H1WS9E %1.0f
format H1WS10E %1.0f
format H1WS11E %1.0f
format H1WS12E %1.0f
format STUDSIBF %1.0f
format TWINF %1.0f
format H1WS1F %1.0f
format H1WS2F %1.0f
format H1WS3F %1.0f
format H1WS4F %1.0f
format H1WS5F %1.0f
format H1WS6F %1.0f
format H1WS7F %1.0f
format H1WS8F %1.0f
format H1WS9F %1.0f
format H1WS10F %1.0f
format H1WS11F %1.0f
format H1WS12F %1.0f
format STUDSIBG %1.0f
format TWING %1.0f
format H1WS1G %1.0f
format H1WS2G %1.0f
format H1WS3G %1.0f
format H1WS4G %1.0f
format H1WS5G %2.0f
format H1WS6G %1.0f
format H1WS7G %1.0f
format H1WS8G %1.0f
format H1WS9G %1.0f
format H1WS10G %1.0f
format H1WS11G %1.0f
format H1WS12G %1.0f
format H1WS13 %1.0f
format H1IR1 %1.0f
format H1IR2 %1.0f
format H1IR3 %1.0f
format H1IR4 %1.0f
format H1IR5 %1.0f
format H1IR6 %1.0f
format H1IR7A %1.0f
format H1IR7B %1.0f
format H1IR7C %1.0f
format H1IR7D %1.0f
format H1IR7E %1.0f
format H1IR7F %1.0f
format H1IR7G %1.0f
format H1IR7H %1.0f
format H1IR7I %1.0f
format H1IR7J %1.0f
format H1IR7K %1.0f
format H1IR7L %1.0f
format H1IR7M %1.0f
format H1IR7N %1.0f
format H1IR7O %1.0f
format H1IR7P %1.0f
format H1IR7Q %1.0f
format H1IR7R %1.0f
format H1IR7S %1.0f
format H1IR7T %1.0f
format H1IR7U %1.0f
format H1IR7V %1.0f
format H1IR7W %1.0f
format H1IR7X %1.0f
format H1IR7Y %1.0f
format H1IR7Z %1.0f
format H1IR7AA %1.0f
format H1IR7BB %1.0f
format H1IR7CC %1.0f
format H1IR7DD %1.0f
format H1IR8A %1.0f
format H1IR8B %1.0f
format H1IR8C %1.0f
format H1IR8D %1.0f
format H1IR9 %1.0f
format H1IR10 %1.0f
format H1IR11 %1.0f
format H1IR12 %2.0f
format H1IR13 %2.0f
format H1IR14 %2.0f
format H1IR15 %1.0f
format H1IR16 %2.0f
format H1IR17A %1.0f
format H1IR17B %1.0f
format H1IR17C %1.0f
format H1IR17D %1.0f
format H1IR17E %1.0f
format H1IR17F %1.0f
format H1IR17G %1.0f
format H1IR17H %1.0f
format H1IR17I %1.0f
format H1IR17J %1.0f
format H1IR18 %1.0f
format H1IR19 %1.0f
format H1IR20 %1.0f
format H1IR21 %1.0f
format H1IR22A %1.0f
format H1IR22B %1.0f
format H1IR22C %1.0f
format H1IR22D %1.0f
format H1IR22E %1.0f
format H1IR22F %1.0f
format H1IR22G %1.0f
format H1IR22H %1.0f
format H1IR22I %1.0f
format H1IR22J %1.0f
format H1IR22K %1.0f
format H1IR22L %1.0f
format H1IR22M %1.0f
format H1IR22N %1.0f
format H1IR22O %1.0f
format H1IR22P %1.0f
format H1IR22Q %1.0f
format H1IR22R %1.0f
format H1IR22S %1.0f
format H1IR22T %1.0f
format H1IR22U %1.0f
format H1IR22V %1.0f
format H1IR22W %1.0f
format H1IR22X %1.0f
format H1IR22Y %1.0f
format H1IR22Z %1.0f
format H1IR22AA %1.0f
format H1IR22BB %1.0f
format H1IR22CC %1.0f
format H1IR22DD %1.0f
format H1IR22EE %1.0f
format H1IR22FF %1.0f
format H1IR22GG %1.0f
format H1IR22HH %1.0f
format H1IR22II %1.0f
format H1IR22JJ %1.0f
format H1IR22KK %1.0f
format H1IR22LL %1.0f
format H1IR22MM %1.0f
format H1IR23 %1.0f
format H1IR24 %1.0f
format H1IR25 %1.0f
format H1IR26 %1.0f
format H1IR27 %1.0f
format H1IR28 %1.0f
format S1 %2.0f
format S2 %1.0f
format S3 %2.0f
format S4 %1.0f
format S5 %2.0f
format S6A %1.0f
format S6B %1.0f
format S6C %1.0f
format S6D %1.0f
format S6E %1.0f
format S7 %2.0f
format S8 %1.0f
format S9 %1.0f
format S10 %1.0f
format S10A %1.0f
format S10B %1.0f
format S10C %1.0f
format S10D %1.0f
format S11 %1.0f
format S12 %2.0f
format S13 %1.0f
format S14 %2.0f
format S15 %1.0f
format S16 %1.0f
format S17 %1.0f
format S18 %2.0f
format S19 %1.0f
format S20 %2.0f
format S21 %1.0f
format S22 %1.0f
format S23 %1.0f
format S24 %1.0f
format S25 %1.0f
format S26 %1.0f
format S27 %2.0f
format S28 %2.0f
format S29A %1.0f
format S29B %1.0f
format S29C %1.0f
format S29D %1.0f
format S29E %1.0f
format S30A %1.0f
format S30B %1.0f
format S30C %1.0f
format S30D %1.0f
format S30E %1.0f
format S31A %1.0f
format S31B %1.0f
format S31C %1.0f
format S31D %1.0f
format S31E %1.0f
format S32A %1.0f
format S32B %1.0f
format S32C %1.0f
format S32D %1.0f
format S32E %1.0f
format S33A %1.0f
format S33B %1.0f
format S33C %1.0f
format S33D %1.0f
format S33E %1.0f
format S34A %1.0f
format S34B %1.0f
format S34C %1.0f
format S34D %1.0f
format S34E %1.0f
format S35A %1.0f
format S35B %1.0f
format S35C %1.0f
format S35D %1.0f
format S35E %1.0f
format S36A %1.0f
format S36B %1.0f
format S36C %1.0f
format S36D %1.0f
format S36E %1.0f
format S37A %1.0f
format S37B %1.0f
format S37C %1.0f
format S37D %1.0f
format S37E %1.0f
format S38A %1.0f
format S38B %1.0f
format S38C %1.0f
format S38D %1.0f
format S38E %1.0f
format S39A %1.0f
format S39B %1.0f
format S39C %1.0f
format S39D %1.0f
format S39E %1.0f
format S40A %1.0f
format S40B %1.0f
format S40C %1.0f
format S40D %1.0f
format S40E %1.0f
format S41A %1.0f
format S41B %1.0f
format S41C %1.0f
format S41D %1.0f
format S41E %1.0f
format S42A %1.0f
format S42B %1.0f
format S42C %1.0f
format S42D %1.0f
format S42E %1.0f
format S43A %1.0f
format S43B %1.0f
format S43C %1.0f
format S43D %1.0f
format S43E %1.0f
format S44A1 %1.0f
format S44A2 %1.0f
format S44A3 %1.0f
format S44A4 %1.0f
format S44A5 %1.0f
format S44A6 %1.0f
format S44A7 %1.0f
format S44A8 %1.0f
format S44A9 %1.0f
format S44A10 %1.0f
format S44A11 %1.0f
format S44A12 %1.0f
format S44A13 %1.0f
format S44A14 %1.0f
format S44A15 %1.0f
format S44A16 %1.0f
format S44A17 %1.0f
format S44A18 %1.0f
format S44A19 %1.0f
format S44A20 %1.0f
format S44A21 %1.0f
format S44A22 %1.0f
format S44A23 %1.0f
format S44A24 %1.0f
format S44A25 %1.0f
format S44A26 %1.0f
format S44A27 %1.0f
format S44A28 %1.0f
format S44A29 %1.0f
format S44A30 %1.0f
format S44A31 %1.0f
format S44A32 %1.0f
format S44A33 %1.0f
format S44 %1.0f
format S45A %2.0f
format S45B %2.0f
format S45C %2.0f
format S45D %2.0f
format S45E %2.0f
format S45F %2.0f
format S46A %1.0f
format S46B %1.0f
format S46C %1.0f
format S46D %1.0f
format S47 %1.0f
format S48 %1.0f
format S49 %1.0f
format S50 %1.0f
format S51 %1.0f
format S52 %1.0f
format S53 %1.0f
format S54 %1.0f
format S55A %1.0f
format S55B %1.0f
format S55C %1.0f
format S55D %1.0f
format S56 %1.0f
format S57 %1.0f
format S58 %1.0f
format S59A %2.0f
format S59B %1.0f
format S59C %2.0f
format S59D %2.0f
format S59E %2.0f
format S59F %2.0f
format S59G %2.0f
format S60A %1.0f
format S60B %1.0f
format S60C %1.0f
format S60D %1.0f
format S60E %1.0f
format S60F %1.0f
format S60G %1.0f
format S60H %1.0f
format S60I %1.0f
format S60J %1.0f
format S60K %1.0f
format S60L %1.0f
format S60M %1.0f
format S60N %1.0f
format S60O %1.0f
format S61A %1.0f
format S61B %1.0f
format S61C %1.0f
format S61D %1.0f
format S61E %1.0f
format S61F %1.0f
format S62A %1.0f
format S62B %1.0f
format S62C %1.0f
format S62D %1.0f
format S62E %1.0f
format S62F %1.0f
format S62G %1.0f
format S62H %1.0f
format S62I %1.0f
format S62J %1.0f
format S62K %1.0f
format S62L %1.0f
format S62M %1.0f
format S62N %1.0f
format S62O %1.0f
format S62P %1.0f
format S62Q %1.0f
format S62R %1.0f
format S63 %1.0f
format S64 %1.0f
format S65 %1.0f
format S66 %1.0f
format S67 %1.0f
format S68 %1.0f
format PA1 %1.0f
format PA2 %3.0f
format PA3 %1.0f
format PA4 %1.0f
format PA5_1 %1.0f
format PA5_2 %1.0f
format PA5_3 %1.0f
format PA5_4 %1.0f
format PA5_5 %1.0f
format PA5_6 %1.0f
format PA5_7 %1.0f
format PA6_1 %1.0f
format PA6_2 %1.0f
format PA6_3 %1.0f
format PA6_4 %1.0f
format PA6_5 %1.0f
format PA7_1 %1.0f
format PA7_2 %1.0f
format PA7_3 %1.0f
format PA7_4 %1.0f
format PA7_5 %1.0f
format PA7_6 %1.0f
format PA7_7 %1.0f
format PA7_8 %1.0f
format PA8B %1.0f
format PA9 %1.0f
format PA10 %1.0f
format PA11 %1.0f
format PA12 %2.0f
format PA13 %1.0f
format PA14 %1.0f
format PA15 %1.0f
format PA16 %1.0f
format PA17 %1.0f
format PA18 %1.0f
format PA19 %1.0f
format PA20 %1.0f
format PA21 %1.0f
format PA22 %2.0f
format PA23 %1.0f
format PA24 %1.0f
format PA25 %1.0f
format PA26 %1.0f
format PA27A %1.0f
format PA27B %1.0f
format PA27C %1.0f
format PA27D %1.0f
format PA27E %1.0f
format PA28A %1.0f
format PA28B %1.0f
format PA28C %1.0f
format PA28D %1.0f
format PA28E %1.0f
format PA28F %1.0f
format PA28G %1.0f
format PA28H %1.0f
format PA28I %1.0f
format PA28J %1.0f
format PA30 %2.0f
format PA31 %1.0f
format PA32 %1.0f
format PA33 %1.0f
format PA34 %1.0f
format PA35 %1.0f
format PA36 %1.0f
format PA37 %1.0f
format PA38 %1.0f
format PA39 %3.0f
format PA40 %2.0f
format PA41_1 %1.0f
format PA41_2 %1.0f
format PA41_3 %1.0f
format PA41_4 %1.0f
format PA41_5 %1.0f
format PA41_6 %1.0f
format PA41_7 %1.0f
format PA41_8 %1.0f
format PA41_9 %1.0f
format PA41_10 %1.0f
format PA41_11 %1.0f
format PA41_12 %1.0f
format PA41_13 %1.0f
format PA41_14 %1.0f
format PA41_15 %1.0f
format PA41_16 %1.0f
format PA41_17 %1.0f
format PA41_18 %1.0f
format PA41_19 %1.0f
format PA42 %1.0f
format PA43 %1.0f
format PA44 %1.0f
format PA46_1 %1.0f
format PA46_2 %1.0f
format PA46_3 %1.0f
format PA46_4 %1.0f
format PA46_5 %1.0f
format PA46_6 %1.0f
format PA46_7 %1.0f
format PA46_8 %1.0f
format PA46_9 %1.0f
format PA46_10 %1.0f
format PA46_11 %1.0f
format PA46_12 %1.0f
format PA46_13 %1.0f
format PA46_14 %1.0f
format PA46_15 %1.0f
format PA46_16 %1.0f
format PA46_17 %1.0f
format PA46_18 %1.0f
format PA46_19 %1.0f
format PA47 %1.0f
format PA48 %1.0f
format PA49 %1.0f
format PA51_1 %1.0f
format PA51_2 %1.0f
format PA51_3 %1.0f
format PA51_4 %1.0f
format PA51_5 %1.0f
format PA51_6 %1.0f
format PA51_7 %1.0f
format PA51_8 %1.0f
format PA51_9 %1.0f
format PA51_10 %1.0f
format PA51_11 %1.0f
format PA51_12 %1.0f
format PA51_13 %1.0f
format PA51_14 %1.0f
format PA51_15 %1.0f
format PA51_16 %1.0f
format PA51_17 %1.0f
format PA51_18 %1.0f
format PA51_19 %1.0f
format PA52 %1.0f
format PA53 %1.0f
format PA54 %1.0f
format PA55 %4.0f
format PA56 %1.0f
format PA57A %1.0f
format PA57B %1.0f
format PA57C %1.0f
format PA57D %1.0f
format PA57E %1.0f
format PA57F %1.0f
format PA58 %1.0f
format PA59 %1.0f
format PA60 %1.0f
format PA61 %2.0f
format PA62 %2.0f
format PA63 %1.0f
format PA64 %1.0f
format PB2 %1.0f
format PB3 %1.0f
format PB4_1 %1.0f
format PB4_2 %1.0f
format PB4_3 %1.0f
format PB4_4 %1.0f
format PB4_5 %1.0f
format PB4_6 %1.0f
format PB4_7 %1.0f
format PB5_1 %1.0f
format PB5_2 %1.0f
format PB5_3 %1.0f
format PB5_4 %1.0f
format PB5_5 %1.0f
format PB6_1 %1.0f
format PB6_2 %1.0f
format PB6_3 %1.0f
format PB6_4 %1.0f
format PB6_5 %1.0f
format PB6_6 %1.0f
format PB6_7 %1.0f
format PB6_8 %1.0f
format PB7 %2.0f
format PB8 %2.0f
format PB9 %1.0f
format PB10 %1.0f
format PB11 %1.0f
format PB12 %1.0f
format PB13 %1.0f
format PB14 %1.0f
format PB15 %1.0f
format PB16 %1.0f
format PB17 %1.0f
format PB18 %2.0f
format PB19 %1.0f
format PB20 %1.0f
format PB21 %1.0f
format PB22 %2.0f
format PC1 %2.0f
format PC2 %1.0f
format PC3 %1.0f
format PC4 %3.0f
format PC5 %1.0f
format PC6B %1.0f
format PC7 %1.0f
format PC8 %3.0f
format PC9 %1.0f
format PC10 %1.0f
format PC11 %1.0f
format PC12 %1.0f
format PC13 %1.0f
format PC14 %1.0f
format PC15 %1.0f
format PC16 %1.0f
format PC17 %2.0f
format PC18 %1.0f
format PC19A_P %2.0f
format PC19B_O %2.0f
format PC20 %2.0f
format PC21_1 %1.0f
format PC21_2 %1.0f
format PC21_3 %1.0f
format PC21_4 %1.0f
format PC21_5 %1.0f
format PC21_6 %1.0f
format PC21_7 %1.0f
format PC22 %1.0f
format PC23 %2.0f
format PC24 %1.0f
format PC25 %1.0f
format PC26 %1.0f
format PC27 %1.0f
format PC28 %1.0f
format PC29A %1.0f
format PC29B %1.0f
format PC29C %1.0f
format PC30 %1.0f
format PC31 %1.0f
format PC32 %1.0f
format PC33 %1.0f
format PC34A %1.0f
format PC34B %1.0f
format PC34C %1.0f
format PC34D %1.0f
format PC34E %1.0f
format PC35 %1.0f
format PC36_0 %1.0f
format PC36_1 %1.0f
format PC36_2 %1.0f
format PC36_3 %1.0f
format PC36_4 %1.0f
format PC36_5 %1.0f
format PC36_6 %1.0f
format PC36_7 %1.0f
format PC36_8 %1.0f
format PC36_9 %1.0f
format PC36_10 %1.0f
format PC36_11 %1.0f
format PC36_12 %1.0f
format PC36_13 %1.0f
format PC36_14 %1.0f
format PC36_15 %1.0f
format PC36_16 %1.0f
format PC36_17 %1.0f
format PC36_18 %1.0f
format PC36_19 %1.0f
format PC37 %1.0f
format PC38 %1.0f
format PC39 %1.0f
format PC40 %1.0f
format PC41 %1.0f
format PC42A %1.0f
format PC42B %1.0f
format PC42C %1.0f
format PC42D %1.0f
format PC42E %1.0f
format PC43AA %1.0f
format PC43AB %1.0f
format PC43AC %1.0f
format PC43AD %1.0f
format PC43BA %1.0f
format PC43BB %1.0f
format PC44A %1.0f
format PC44B %1.0f
format PC44C %1.0f
format PC44D %1.0f
format PC45 %1.0f
format PC46 %1.0f
format PC47 %1.0f
format PC48 %2.0f
format PC49A_1 %1.0f
format PC49A_2 %1.0f
format PC49A_3 %1.0f
format PC49B_1 %1.0f
format PC49B_2 %1.0f
format PC49B_3 %1.0f
format PC49C_1 %1.0f
format PC49C_2 %1.0f
format PC49C_3 %1.0f
format PC49D_1 %1.0f
format PC49D_2 %1.0f
format PC49D_3 %1.0f
format PC49E_1 %1.0f
format PC49E_2 %1.0f
format PC49E_3 %1.0f
format PC49F_1 %1.0f
format PC49F_2 %1.0f
format PC49F_3 %1.0f
format PC50 %1.0f
format PC51 %1.0f
format PC53 %1.0f
format PC54 %1.0f
format PC55 %1.0f
format PC58 %1.0f
format PC59 %2.0f
format PC60_1 %1.0f
format PC60_2 %1.0f
format PC60_3 %1.0f
format PC60_4 %1.0f
format PC60_5 %1.0f
format PC60_6 %1.0f
format PC60_7 %1.0f
format PC60_8 %1.0f
format PC60_9 %1.0f
format PC60_10 %1.0f
format PC60_11 %1.0f
format PC60_12 %1.0f
format PC60_13 %1.0f
format PC60_14 %1.0f
format PC60_15 %1.0f
format PC60_16 %1.0f
format PC60_17 %1.0f
format PC60_18 %1.0f
format PC61A %1.0f
format PC61B %1.0f
format PC61C %1.0f
format PC61D %1.0f
format PC62_1 %1.0f
format PC62_2 %1.0f
format PC62_4 %1.0f
format PC62_5 %1.0f
format PC62_8 %1.0f
format PC62_10 %1.0f
format PC62_11 %1.0f
format PC63 %1.0f
format PC64 %1.0f
format PC65_M %2.0f
format PC65_Y %2.0f
format PC66_M %2.0f
format PC66_Y %2.0f
format PC68_M %2.0f
format PC68_Y %2.0f
format PC69 %1.0f
format PD2 %1.0f
format PD3 %1.0f
format PD4A %1.0f
format PD4B %1.0f
format PD4C %1.0f
format PD4D %1.0f
format PD4E %1.0f
format PD4F %1.0f
format PD5 %1.0f
format PD5A %1.0f
format AH_PVT %3.0f
format AH_RAW %2.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave I: In-Home Questionnaire, Public Use Sample"

#delimit ;
label define IMONTH    1 "(1) January" 4 "(4) April" 5 "(5) May" 6 "(6) June"
                       7 "(7) July" 8 "(8) August" 9 "(9) September"
                       10 "(10) October" 11 "(11) November"
                       12 "(12) December" ;
label define IYEAR     94 "(94) 1994" 95 "(95) 1995" ;
label define SCH_YR    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused" ;
label define BIO_SEX   1 "(1) Male" 2 "(2) Female" 6 "(6) Refused" ;
label define SMP01     0 "(0) No" 1 "(1) Yes" ;
label define SMP03     0 "(0) No" 1 "(1) Yes" ;
label define H1GI1M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" ;
label define H1GI1Y    74 "(74) 1974" 75 "(75) 1975" 76 "(76) 1976"
                       77 "(77) 1977" 78 "(78) 1978" 79 "(79) 1979"
                       80 "(80) 1980" 81 "(81) 1981" 82 "(82) 1982"
                       83 "(83) 1983" 96 "(96) Refused" ;
label define H1GI2     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GI3     0 "(0) Since birth/under 1y/o when moved"
                       19 "(19) 19 years old and older" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H1GI4     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused (skip to Q.6)"
                       8 "(8) Don't know (skip to Q.6)" ;
label define H1GI5A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1GI5B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1GI5C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1GI5D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1GI5E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1GI5F    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1GI6A    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GI6B    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GI6C    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GI6D    0 "(0) Not marked (skip to Q.8)"
                       1 "(1) Marked (If Asian/Pacific Islander among R's answer ask Q"
                       6 "(6) Refused (skip to Q.8)"
                       8 "(8) Don't know (skip to Q.8)" ;
label define H1GI6E    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GI7A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1GI7B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1GI7C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1GI7D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1GI7E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1GI7F    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1GI7G    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1GI8     1 "(1) White" 2 "(2) Black/African American"
                       3 "(3) American Indian/Native American"
                       4 "(4) Asian/Pacific Islander" 5 "(5) Other"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (only one race marked in Q.6)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1GI9     1 "(1) White" 2 "(2) Black/African American"
                       3 "(3) American Indian/Native American"
                       4 "(4) Asian/Pacific Islander" 5 "(5) Other"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1GI10    1 "(1) English" 2 "(2) Spanish" 3 "(3) Other"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GI11    0 "(0) No" 1 "(1) Yes (skip to Q.15)"
                       6 "(6) Refused (skip to Q.15)"
                       7 "(7) Legitimate skip (lived at current address since birth)"
                       8 "(8) Don't know (skip to Q.15)" ;
label define H1GI12    30 "(30) Cambodia" 32 "(32) Canada"
                       37 "(37) People's Republic of China"
                       38 "(38) Colombia" 43 "(43) Cuba"
                       51 "(51) The Dominican Republic" 52 "(52) Ecuador"
                       54 "(54) El Salvador" 75 "(75) Germany"
                       79 "(79) Guatemala" 83 "(83) Haiti" 84 "(84) Honduras"
                       87 "(87) India" 95 "(95) Jamaica" 96 "(96) Japan"
                       102 "(102) South Korea" 105 "(105) Laos"
                       123 "(123) Mexico" 142 "(142) Nicaragua"
                       151 "(151) Panama" 154 "(154) Peru"
                       155 "(155) The Philippines" 187 "(187) Taiwan"
                       190 "(190) Thailand" 193 "(193) Trinidad/Tobago"
                       202 "(202) Great Britain" 213 "(213) Hong Kong"
                       221 "(221) Puerto Rico" 231 "(231) Viet-Nam"
                       311 "(311) Eastern/North Africa"
                       313 "(313) Western/North Africa"
                       314 "(314) South Africa" 321 "(321) Middle East"
                       322 "(322) Central Asia"
                       331 "(331) Northern/Western Europe"
                       332 "(332) British Isles"
                       333 "(333) Southern/Western Europe"
                       334 "(334) Eastern Europe" 337 "(337) Southern Europe"
                       341 "(341) Oceania/Pacific Ocean Islands"
                       361 "(361) Central/Northern South America"
                       371 "(371) Greater and Lesser Antilles"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (born in U.S.)"
                       998 "(998) Don't know"
                       999 "(999) Not applicable/Other" ;
label define H1GI13M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (born in U.S.)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1GI13Y   77 "(77) 1975 to 1977" 78 "(78) 1978" 79 "(79) 1979"
                       80 "(80) 1980" 81 "(81) 1981" 82 "(82) 1982"
                       83 "(83) 1983" 84 "(84) 1984" 85 "(85) 1985"
                       86 "(86) 1986" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (born in U.S.)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1GI14    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (born in U.S.)"
                       8 "(8) Don't know" ;
label define H1GI15    0 "(0) No (skip to Q.18)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.18)"
                       7 "(7) Legitimate skip (age<15 or unknown)"
                       8 "(8) Don't know (skip to Q.18)" ;
label define H1GI16M   1 "(1) January to March" 2 "(2) April to June"
                       3 "(3) July to September" 4 "(4) October to December"
                       97 "(97) Legitimate skip (never married)" ;
label define H1GI16Y   93 "(93) 1991 to 1993" 94 "(94) 1994" 95 "(95) 1995"
                       97 "(97) Legitimate skip (never married)" ;
label define H1GI18    0 "(0) No (skip to Q.21)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.21)"
                       8 "(8) Don't know (skip to Q.21)" ;
label define H1GI19    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (not in school)" ;
label define H1GI20    7 "(7) 7th grade" 8 "(8) 8th grade" 9 "(9) 9th grade"
                       10 "(10) 10th grade" 11 "(11) 11th grade"
                       12 "(12) 12th grade" 96 "(96) Refused"
                       97 "(97) Legitimate skip (not in school)"
                       98 "(98) Don't know"
                       99 "(99) Not applicable/school doesn't have grade levels" ;
label define H1GI21    1 "(1) Suspended/expelled" 2 "(2) Dropped out"
                       3 "(3) Sick/injured/on leave" 4 "(4) Graduated"
                       5 "(5) Pregnant (R is female)" 6 "(6) Other"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (in school)"
                       98 "(98) Don't know" ;
label define H1DA1     0 "(0) Not at all" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1DA2     0 "(0) Not at all" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1DA3     0 "(0) Not at all" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1DA4     0 "(0) Not at all" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1DA5     0 "(0) Not at all" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1DA6     0 "(0) Not at all" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1DA7     0 "(0) Not at all" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1DA8     0 "(0) Doesn't watch T.V." 996 "(996) Refused"
                       998 "(998) Don't know" ;
label define H1DA9     0 "(0) Doesn't watch videos" 996 "(996) Refused"
                       998 "(998) Don't know" ;
label define H1DA10    0 "(0) Doesn't play videos/computer games"
                       996 "(996) Refused" 998 "(998) Don't know" ;
label define H1DA11    0 "(0) Doesn't listen to the radio"
                       996 "(996) Refused" 998 "(998) Don't know" ;
label define H1GH1     1 "(1) Excellent" 2 "(2) Very good" 3 "(3) Good"
                       4 "(4) Fair" 5 "(5) Poor" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH1A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH2     0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH3     0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH4     0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH5     0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH6     0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH7     0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH8     0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH9     0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH10    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH11    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH12    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH13    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH14    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH15    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH16    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH17    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH18    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH19    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH20    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH21    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH22    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH23A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH23B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH23C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH23D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH23E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH23F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH23G   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH23H   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH23I   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH23J   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH24    1 "(1) Less than a year ago" 2 "(2) 1 to 2 years ago"
                       3 "(3) More than 2 years ago" 4 "(4) Never"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1GH25    1 "(1) Less than a year ago" 2 "(2) 1 to 2 years ago"
                       3 "(3) More than 2 years ago" 4 "(4) Never"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1GH26    0 "(0) No (skip to Q.28)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.28)"
                       8 "(8) Don't know (skip to Q.28)" ;
label define H1GH27A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH27B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH27C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH27D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH27E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH27F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH27G   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH27H   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH27I   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH27J   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH28    1 "(1) Very underweight" 2 "(2) Slightly underweight"
                       3 "(3) About the right weight"
                       4 "(4) Slightly overweight" 5 "(5) Very overweight"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH29    1 "(1) Lose weight" 2 "(2) Gain weight (skip to Q.31)"
                       3 "(3) Stay the same weight"
                       4 "(4) Not trying to do anything about weight"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH30A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH30B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH30C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH30D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH30E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH30F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH30G   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH31A   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1GH31B   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1GH31C   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1GH31D   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1GH31F   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1GH31G   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1GH32    0 "(0) Didn't eat" 1 "(1) Ate once"
                       2 "(2) Ate twice or more" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH33    0 "(0) Didn't eat" 1 "(1) Ate once"
                       2 "(2) Ate twice or more" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH34    0 "(0) Didn't eat" 1 "(1) Ate once"
                       2 "(2) Ate twice or more" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH35    0 "(0) Didn't eat" 1 "(1) Ate once"
                       2 "(2) Ate twice or more" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH36    0 "(0) Didn't eat" 1 "(1) Ate once"
                       2 "(2) Ate twice or more" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH37    0 "(0) 0 days (skip to Q.39)" 1 "(1) 1 day"
                       2 "(2) 2 days" 3 "(3) 3 days" 4 "(4) 4 days"
                       5 "(5) 5 days" 6 "(6) Refused (skip to Q.39)"
                       7 "(7) Legitimate skip (not in school now)"
                       8 "(8) Don't know (skip to Q.39)" ;
label define H1GH38    1 "(1) Less than 10 minutes" 2 "(2) 10 to 20 minutes"
                       3 "(3) 21 to 30 minutes" 4 "(4) More than 30 minutes"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH39    0 "(0) Never" 1 "(1) Rarely" 2 "(2) Sometimes"
                       3 "(3) Most of the time" 4 "(4) Always"
                       5 "(5) Never rides a bicycle" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH40    0 "(0) Never (skip to Q.42)" 1 "(1) Once or twice"
                       2 "(2) About once a month" 3 "(3) About once a week"
                       4 "(4) Almost every day" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH41    0 "(0) Never" 1 "(1) Rarely" 2 "(2) Sometimes"
                       3 "(3) Most of the time" 4 "(4) Always"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H1GH42    0 "(0) Never" 1 "(1) Rarely" 2 "(2) Sometimes"
                       3 "(3) Most of the time" 4 "(4) Always"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH43    0 "(0) Never" 1 "(1) 1 time" 2 "(2) 2 or 3 times"
                       3 "(3) 4 or 5 times" 4 "(4) 6 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1GH44    1 "(1) Very high" 2 "(2) High" 3 "(3) Low"
                       4 "(4) Very low" 5 "(5) None" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH46    1 "(1) Very high" 2 "(2) High" 3 "(3) Low"
                       4 "(4) Very low" 5 "(5) No chance" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1GH48    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1GH49    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1GH51    96 "(96) Refused" 98 "(98) Don't know" ;
label define H1GH52    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH53    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1GH54    1 "(1) Very minor" 2 "(2) Minor" 3 "(3) Serious"
                       4 "(4) Very serious" 5 "(5) Extremely serious"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1GH55    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH56    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH57    0 "(0) No" 1 "(1) Yes (skip to Q.59)" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1GH58    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1GH59A   4 "(4) 4 feet" 5 "(5) 5 feet" 6 "(6) 6 feet"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H1GH59B   0 "(0) 0 inches" 1 "(1) 1 inch" 2 "(2) 2 inches"
                       3 "(3) 3 inches" 4 "(4) 4 inches" 5 "(5) 5 inches"
                       6 "(6) 6 inches" 7 "(7) 7 inches" 8 "(8) 8 inches"
                       9 "(9) 9 inches" 10 "(10) 10 inches"
                       11 "(11) 11 inches" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1GH60    996 "(996) Refused" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H1TS1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS2     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS3     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS4     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS7     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS8     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS11    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS12    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS13    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS15    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS16    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1TS17    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1ED1     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 to 10 times" 3 "(3) More than 10 times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1ED2     996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H1ED3     0 "(0) No (skip to Q.5)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.5)"
                       8 "(8) Don't know (skip to Q.5)" ;
label define H1ED4A    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED4B    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED4C    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED4D    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED4E    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED4F    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED4G    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED4H    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED4I    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED4J    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED4K    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED4M    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED5     0 "(0) No (skip to Q.7)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.7)"
                       8 "(8) Don't know (skip to Q.7)" ;
label define H1ED6A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED6B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED6C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED6D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED6E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED6F    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED6G    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED6H    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED6I    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED6J    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED6K    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED6L    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED6M    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED7     0 "(0) No (skip to Q.9)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.9)"
                       8 "(8) Don't know (skip to Q.9)" ;
label define H1ED8     1 "(1) 1st" 2 "(2) 2nd" 3 "(3) 3rd" 4 "(4) 4th"
                       5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H1ED9     0 "(0) No (skip to Q.11)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.11)"
                       8 "(8) Don't know (skip to Q.11)" ;
label define H1ED10    3 "(3) 1st to 3rd" 4 "(4) 4th" 5 "(5) 5th" 6 "(6) 6th"
                       7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th" 10 "(10) 10th"
                       11 "(11) 11th" 12 "(12) 12th" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H1ED11    1 "(1) A" 2 "(2) B" 3 "(3) C" 4 "(4) D or lower"
                       5 "(5) Didn't take this subject"
                       6 "(6) Took subject/wasn't graded this way"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H1ED12    1 "(1) A" 2 "(2) B" 3 "(3) C" 4 "(4) D or lower"
                       5 "(5) Didn't take this subject"
                       6 "(6) Took subject/wasn't graded this way"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H1ED13    1 "(1) A" 2 "(2) B" 3 "(3) C" 4 "(4) D or lower"
                       5 "(5) Didn't take this subject"
                       6 "(6) Took subject/wasn't graded this way"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H1ED14    1 "(1) A" 2 "(2) B" 3 "(3) C" 4 "(4) D or lower"
                       5 "(5) Didn't take this subject"
                       6 "(6) Took subject/wasn't graded this way"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H1ED15    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED16    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED17    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED18    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED19    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED20    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED21    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED22    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED23    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1ED24    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1PL1     0 "(0) No (skip to Q.5)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.5)"
                       8 "(8) Don't know (skip to Q.5)" ;
label define H1PL2     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1PL3     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H1PL4     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1PL5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PL6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PL7     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PL8     0 "(0) No (skip to Q.10)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.10)"
                       7 "(7) Legitimate skip (no physical/functional limitations)"
                       8 "(8) Don't know (skip to Q.10)" ;
label define H1PL9     1 "(1) Some" 2 "(2) A lot/unable to do this"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1PL10    0 "(0) No (skip to Q.12)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.12)" 7 "(7) Legitimate skip"
                       8 "(8) Don't know (skip to Q.12)" ;
label define H1PL11    1 "(1) Some" 2 "(2) A lot" 3 "(3) Unable to do this"
                       7 "(7) Legitimate skip" ;
label define H1PL12    0 "(0) No (skip to Q.14)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.14)" 7 "(7) Legitimate skip"
                       8 "(8) Don't know (skip to Q.14)" ;
label define H1PL13    1 "(1) Some" 2 "(2) A lot" 3 "(3) Unable to do this"
                       7 "(7) Legitimate skip" ;
label define H1PL14    0 "(0) No (skip to Q.16)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.16)" 7 "(7) Legitimate skip"
                       8 "(8) Don't know (skip to Q.16)" ;
label define H1PL15    1 "(1) Some" 2 "(2) A lot/unable to do this"
                       7 "(7) Legitimate skip" ;
label define H1PL16    0 "(0) No (skip to Q.18)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.18)" 7 "(7) Legitimate skip"
                       8 "(8) Don't know (skip to Q.18)" ;
label define H1PL17    1 "(1) Some" 2 "(2) A lot/unable to do this"
                       7 "(7) Legitimate skip" ;
label define H1PL18    0 "(0) No (skip to Q.20)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.20)" 7 "(7) Legitimate skip"
                       8 "(8) Don't know (skip to Q.20)" ;
label define H1PL19    1 "(1) Some" 2 "(2) A lot/unable to do this"
                       7 "(7) Legitimate skip" ;
label define H1PL20    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1PL21    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1PL22    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1PL23    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1PL24    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1PL25    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1PL26    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1PL29    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1PL30    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1PL31    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1PL33    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1PL34    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1PL37    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1PL38    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1HS1     0 "(0) No (skip to Q.3)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.3)"
                       8 "(8) Don't know (skip to Q.3)" ;
label define H1HS2A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1HS2B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1HS2C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1HS2D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1HS2E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1HS3     0 "(0) No (skip to Q.5)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.5)"
                       8 "(8) Don't know (skip to Q.5)" ;
label define H1HS4A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS4B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS4C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS4D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS4E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS5     0 "(0) No (skip to Q.7)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.7)"
                       8 "(8) Don't know (skip to Q.7)" ;
label define H1HS6A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS6B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS6C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS6D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS6E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS7     0 "(0) No (skip to Q.9)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1HS8A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1HS8B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1HS8C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1HS8D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1HS8E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1HS9     0 "(0) No (skip to Q.11)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.11)"
                       8 "(8) Don't know (skip to Q.11)" ;
label define H1HS10A   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS10B   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS10C   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS10D   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS10E   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS11    0 "(0) No (skip to Q.13)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.13)"
                       7 "(7) Legitimate skip (R isn't female)"
                       8 "(8) Don't know (skip to Q.13)" ;
label define H1HS12A   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS12B   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS12C   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS12D   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1HS12E   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H1RP1     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (age<15 or unknown)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RP2     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (age<15 or unknown)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RP3     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (age<15 or unknown)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RP4     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (age<15 or unknown)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RP5     1 "(1) Almost no chance"
                       2 "(2) Some chance/but probably not"
                       3 "(3) A 50-50 chance" 4 "(4) A good chance"
                       5 "(5) Almost certain" 6 "(6) Refused"
                       7 "(7) Legitimate skip (age<15 or unknown)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RP6     1 "(1) Almost no chance"
                       2 "(2) Some chance/but probably not"
                       3 "(3) A 50-50 chance" 4 "(4) A good chance"
                       5 "(5) Almost certain" 6 "(6) Refused"
                       7 "(7) Legitimate skip (age<15 or unknown)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1SE1     1 "(1) Very sure" 2 "(2) Moderately sure"
                       3 "(3) Neither sure nor unsure"
                       4 "(4) Moderately unsure" 5 "(5) Very unsure"
                       6 "(6) I never want to use birth control"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (age<15 or unknown)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1SE2     1 "(1) Very sure" 2 "(2) Moderately sure"
                       3 "(3) Neither sure nor unsure"
                       4 "(4) Moderately unsure" 5 "(5) Very unsure"
                       6 "(6) I never want to use birth control"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (age<15 or unknown)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1SE3     1 "(1) Very sure" 2 "(2) Moderately sure"
                       3 "(3) Neither sure nor unsure"
                       4 "(4) Moderately unsure" 5 "(5) Very unsure"
                       6 "(6) I never want to use birth control"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1SE4     1 "(1) Moderately below average"
                       2 "(2) Slightly below average" 3 "(3) About average"
                       4 "(4) Slightly above average"
                       5 "(5) Moderately above average"
                       6 "(6) Extremely above average" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H1FS1     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS2     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS3     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS4     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS5     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS6     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS7     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS8     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS9     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS10    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS11    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS12    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS13    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS14    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS15    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS16    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS17    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS18    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1FS19    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1HR2A    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (respondent lives alone)"
                       8 "(8) Don't know" ;
label define H1HR3A    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       11 "(11) Father" 12 "(12) Father's wife"
                       13 "(13) Father's partner" 14 "(14) Mother"
                       15 "(15) Mother's husband" 16 "(16) Mother's partner"
                       18 "(18) Mother-in-law" 19 "(19) Grandfather"
                       20 "(20) Grandmother" 21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (respondent lives alone)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4A    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5A    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6A    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7A    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (respondent lives alone)"
                       998 "(998) Don't know" ;
label define H1HR8A    997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9A    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (respondent lives alone)"
                       8 "(8) Don't know" ;
label define H1HR10A   0 "(0) Less than a year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11A   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2B    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R live with 1/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3B    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       11 "(11) Father" 12 "(12) Father's wife"
                       13 "(13) Father's partner" 14 "(14) Mother"
                       15 "(15) Mother's husband" 16 "(16) Mother's partner"
                       17 "(17) Father-in-law" 19 "(19) Grandfather"
                       20 "(20) Grandmother" 21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 1/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4B    1 "(1) Biological son" 2 "(2) Step son"
                       7 "(7) Biological daughter" 8 "(8) Step daughter"
                       12 "(12) Other"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5B    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)"
                       98 "(98) Don't know" ;
label define H1HR6B    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7B    0 "(0) Less than a year"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R live with 1/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8B    997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9B    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R live with 1/fewer persons)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1HR10B   0 "(0) Less than a year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11B   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)"
                       98 "(98) Don't know" ;
label define H1HR2C    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R live with 2/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3C    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 17 "(17) Father-in-law"
                       18 "(18) Mother-in-law" 19 "(19) Grandfather"
                       20 "(20) Grandmother" 21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 2/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4C    1 "(1) Biological son" 6 "(6) Other"
                       7 "(7) Biological daughter" 8 "(8) Step daughter"
                       97 "(97) Legitimate skip (not son/daughter)" ;
label define H1HR5C    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6C    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 11 "(11) Foster mother"
                       97 "(97) Legitimate skip (not a father/mother)" ;
label define H1HR7C    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R live with 2/fewer persons)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H1HR8C    997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9C    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 2/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10C   0 "(0) Less than one year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11C   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2D    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R live with 3/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3D    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 3/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4D    1 "(1) Biological son" 7 "(7) Biological daughter"
                       8 "(8) Step daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5D    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6D    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       97 "(97) Legitimate skip (not a father/mother)" ;
label define H1HR7D    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R live with 3/fewer persons)"
                       998 "(998) Don't know"
                       999 "(999) Not applicable (skip to Q.9)" ;
label define H1HR8D    997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9D    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 3/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10D   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)"
                       99 "(99) Not applicable" ;
label define H1HR11D   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)"
                       98 "(98) Don't know" ;
label define H1HR2E    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R live with 4/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3E    2 "(2) Partner" 3 "(3) Son" 4 "(4) Daughter"
                       5 "(5) Brother" 6 "(6) Brother's wife"
                       7 "(7) Brother's partner" 8 "(8) Sister"
                       9 "(9) Sister's husband" 10 "(10) Sister's partner"
                       11 "(11) Father" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 17 "(17) Father-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 4/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4E    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5E    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 7 "(7) Full sister"
                       8 "(8) Half-sister" 9 "(9) Step sister"
                       10 "(10) Adoptive sister" 11 "(11) Foster sister"
                       12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6E    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother"
                       97 "(97) Legitimate skip (not a father/mother)" ;
label define H1HR7E    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R live with 4/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8E    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9E    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 4/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10E   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11E   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)"
                       98 "(98) Don't know" ;
label define H1HR2F    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 5/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3F    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       11 "(11) Father" 13 "(13) Father's partner"
                       14 "(14) Mother" 16 "(16) Mother's partner"
                       17 "(17) Father-in-law" 19 "(19) Grandfather"
                       20 "(20) Grandmother" 22 "(22) Great-grandmother"
                       23 "(23) Uncle" 24 "(24) Aunt" 25 "(25) Cousin"
                       26 "(26) Nephew" 27 "(27) Niece"
                       28 "(28) Other relative" 29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 5/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4F    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5F    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 7 "(7) Full sister"
                       8 "(8) Half-sister" 9 "(9) Step sister"
                       10 "(10) Adoptive sister" 11 "(11) Foster sister"
                       12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6F    1 "(1) Biological father" 2 "(2) Stepfather"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       11 "(11) Foster mother"
                       97 "(97) Legitimate skip (not a father/mother)" ;
label define H1HR7F    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R lives with 5/fewer persons)"
                       998 "(998) Don't know"
                       999 "(999) Not applicable (skip to Q.9)" ;
label define H1HR8F    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9F    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 5/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10F   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11F   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2G    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 6/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3G    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 6/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4G    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5G    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6G    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7G    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R lives with 6/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8G    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9G    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 6/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10G   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11G   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2H    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 7/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3H    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 7/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4H    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5H    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6H    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7H    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R lives with 7/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8H    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9H    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 7/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10H   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11H   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2I    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 8/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3I    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 8/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4I    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5I    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6I    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7I    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R lives with 8/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8I    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9I    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 8/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10I   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11I   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2J    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 9/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3J    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 17 "(17) Father-in-law"
                       18 "(18) Mother-in-law" 19 "(19) Grandfather"
                       20 "(20) Grandmother" 21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 9/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4J    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5J    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6J    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7J    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R lives with 9/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8J    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9J    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 9/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10J   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11J   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2K    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 10/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3K    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 10/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4K    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5K    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6K    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7K    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R lives with 10/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8K    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9K    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 10/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10K   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11K   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2L    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 11/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3L    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 11/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4L    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5L    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6L    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7L    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R lives with 11/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8L    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9L    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 11/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10L   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11L   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2M    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 12/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3M    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 12/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4M    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5M    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6M    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7M    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R lives with 12/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8M    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9M    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 12/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10M   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11M   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2N    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 13/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3N    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 13/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4N    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5N    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6N    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7N    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R lives with 13/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8N    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9N    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 13/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10N   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11N   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2O    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 14/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3O    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 14/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4O    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5O    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6O    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7O    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R lives with 14/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8O    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9O    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 14/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10O   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11O   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2P    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 15/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3P    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 15/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4P    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5P    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6P    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7P    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R lives with 15/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8P    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9P    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 15/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10P   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11P   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2Q    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 16/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3Q    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 16/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4Q    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5Q    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6Q    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7Q    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R lives with 16/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8Q    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9Q    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 16/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10Q   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11Q   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2R    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 17/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3R    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 17/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4R    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5R    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6R    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7R    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R lives with 17/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8R    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9R    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 17/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10R   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11R   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2S    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 18/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3S    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 18/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4S    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5S    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6S    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7S    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R lives with 18/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8S    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9S    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 18/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10S   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11S   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR2T    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 19/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR3T    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (R live with 19/fewer persons)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1HR4T    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H1HR5T    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H1HR6T    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H1HR7T    0 "(0) Less than 1y/o"
                       996 "(996) Refused (skip to Q.9)"
                       997 "(997) Legitimate skip (R lives with 19/fewer persons)"
                       998 "(998) Don't know" ;
label define H1HR8T    0 "(0) Less than a year"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H1HR9T    0 "(0) No" 1 "(1) Yes (skip to next HH member/Q.12)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R lives with 19/fewer persons)"
                       8 "(8) Don't know" ;
label define H1HR10T   0 "(0) Less than year"
                       96 "(96) Refused (skip to next HH member/Q.12)"
                       97 "(97) Legitimate skip (have always lived in same HH)"
                       98 "(98) Don't know (skip to next HH member/Q.12)" ;
label define H1HR11T   0 "(0) Less than one month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months"
                       97 "(97) Legitimate skip (number years lived together>=1)" ;
label define H1HR12    0 "(0) No one" 1 "(1) 1st household member"
                       2 "(2) 2nd household member"
                       3 "(3) 3rd household member"
                       4 "(4) 4th household member"
                       5 "(5) 5th household member"
                       6 "(6) 6th household member"
                       7 "(7) 7th household member"
                       8 "(8) 8th household member" 96 "(96) Refused"
                       97 "(97) Legitimate skip (listed a father/mother)"
                       98 "(98) Don't know" ;
label define H1HR13    0 "(0) No one" 1 "(1) 1st household member"
                       2 "(2) 2nd household member"
                       3 "(3) 3rd household member"
                       4 "(4) 4th household member"
                       5 "(5) 5th household member"
                       6 "(6) 6th household member"
                       7 "(7) 7th household member"
                       8 "(8) 8th household member" 96 "(96) Refused"
                       97 "(97) Legitimate skip (listed a father/mother)"
                       98 "(98) Don't know" ;
label define H1HR14    1 "(1) One child" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H1HR15    1 "(1) 1st child" 2 "(2) 2nd child" 3 "(3) 3rd child"
                       4 "(4) 4th child" 5 "(5) 5th child" 6 "(6) 6th child"
                       7 "(7) 7th child" 8 "(8) 8th child" 9 "(9) 9th child"
                       10 "(10) 10th child" 11 "(11) 11th child"
                       12 "(12) 12th child" 13 "(13) 13th child"
                       14 "(14) 14th child" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H1NM1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (MOM is biological mother)"
                       8 "(8) Don't know" ;
label define H1NM2     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H1NM3     1 "(1) 1 y/o or younger" 2 "(2) 2 years old"
                       3 "(3) 3 years old" 4 "(4) 4 years old"
                       5 "(5) 5 years old" 6 "(6) 6 years old"
                       7 "(7) 7 years old" 8 "(8) 8 years old"
                       9 "(9) 9 years old" 10 "(10) 10 years old"
                       11 "(11) 11 years old" 12 "(12) 12 years old"
                       13 "(13) 13 years old" 14 "(14) 14 years old"
                       15 "(15) 15 years old" 16 "(16) 16 years old"
                       17 "(17) 17 years old/older" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H1NM4     1 "(1) 8th grade or less"
                       2 "(2) >8th grade/didn't graduate high school"
                       3 "(3) Business/trade/voc. school instead high school"
                       4 "(4) High school graduate" 5 "(5) GED"
                       6 "(6) Business/trade/voc. school after high school"
                       7 "(7) College/didn't graduate"
                       8 "(8) Graduated from college/university"
                       9 "(9) Prof training beyond 4-year college/univ"
                       11 "(11) Went to school/Resp doesn't know level"
                       12 "(12) Resp doesn't know if mom went to school"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H1NM5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NM6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NM7     0 "(0) No (skip to Q.10)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.10)" 7 "(7) Legitimate skip"
                       8 "(8) Don't know (skip to Q.10)" ;
label define H1NM8     0 "(0) Less than a year (skip to Q.10)"
                       1 "(1) 1 year old (skip to Q.10)" 2 "(2) 2 years old"
                       3 "(3) 3 years old" 4 "(4) 4 years old"
                       5 "(5) 5 years old" 6 "(6) 6 years old"
                       7 "(7) 7 years old" 8 "(8) 8 years old"
                       9 "(9) 9 years old" 10 "(10) 10 years old"
                       11 "(11) 11 years old" 12 "(12) 12 years old"
                       13 "(13) 13 years old" 14 "(14) 14 years old"
                       15 "(15) 15 years old" 16 "(16) 16 years old"
                       17 "(17) 17 years old" 18 "(18) 18 years old"
                       19 "(19) 19 years old"
                       97 "(97) Legitimate skip (skip to Q.10)"
                       98 "(98) Don't know" ;
label define H1NM9     0 "(0) Less than 1 year (skip to Q.10)"
                       1 "(1) 1 year (skip to Q.10)" 2 "(2) 2 years"
                       3 "(3) 3 years" 4 "(4) 4 years" 5 "(5) 5 years"
                       6 "(6) 6 years" 7 "(7) 7 years" 8 "(8) 8 years"
                       9 "(9) 9 years" 10 "(10) 10 years" 11 "(11) 11 years"
                       12 "(12) 12 years" 13 "(13) 13 years"
                       14 "(14) 14 years" 15 "(15) 15 years"
                       16 "(16) 16 years" 17 "(17) 17 years"
                       18 "(18) 18 years" 19 "(19) 19 years"
                       97 "(97) Legitimate skip (skip to Q.10)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1NM10    0 "(0) Not at all" 1 "(1) Once or twice"
                       2 "(2) Several times" 3 "(3) About once a month"
                       4 "(4) About once a week"
                       5 "(5) More than once a week" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NM11    0 "(0) Not at all" 1 "(1) Once or twice"
                       2 "(2) Several times" 3 "(3) About once a month"
                       4 "(4) About once a week"
                       5 "(5) More than once a week" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NM12A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NM12B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NM12C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NM12D   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NM12E   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NM12F   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NM12G   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NM12H   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NM12I   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NM12J   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NM13    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NM14    1 "(1) Not close at all" 2 "(2) Not very close"
                       3 "(3) Somewhat close" 4 "(4) Quite close"
                       5 "(5) Extremely close" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (DAD is biological father)"
                       8 "(8) Don't know" ;
label define H1NF2     0 "(0) No (skip to Q.4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.4)" 7 "(7) Legitimate skip"
                       8 "(8) Don't know (skip to Q.4)" ;
label define H1NF3     0 "(0) Less than 1 year old" 1 "(1) 1 year old"
                       2 "(2) 2 years old" 3 "(3) 3 years old"
                       4 "(4) 4 years old" 5 "(5) 5 years old"
                       6 "(6) 6 years old" 7 "(7) 7 years old"
                       8 "(8) 8 years old" 9 "(9) 9 years old"
                       10 "(10) 10 years old" 11 "(11) 11 years old"
                       12 "(12) 12 years old" 13 "(13) 13 years old"
                       14 "(14) 14 years old" 15 "(15) 15 years old"
                       16 "(16) 16 years old" 17 "(17) 17 years old"
                       18 "(18) 18 years old or older"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H1NF4     1 "(1) 8th grade or less"
                       2 "(2) >8th grade/didn't graduate high school"
                       3 "(3) Business/trade/voc. school instead high school"
                       4 "(4) High school graduate" 5 "(5) GED"
                       6 "(6) Business/trade/voc. school after high school"
                       7 "(7) College/didn't graduate"
                       8 "(8) Graduated from college/university"
                       9 "(9) Prof training beyond 4-year college/univ"
                       11 "(11) Went to school/Resp doesn't know level"
                       12 "(12) Resp doesn't know if dad went to school"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H1NF5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF7     0 "(0) No (skip to Q.10)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.10)" 7 "(7) Legitimate skip"
                       8 "(8) Don't know (skip to Q.10)" ;
label define H1NF8     0 "(0) Less than 1 year old (skip to Q.10)"
                       1 "(1) 1 year old (skip to Q.10)" 2 "(2) 2 years old"
                       3 "(3) 3 years old" 4 "(4) 4 years old"
                       5 "(5) 5 years old" 6 "(6) 6 years old"
                       7 "(7) 7 years old" 8 "(8) 8 years old"
                       9 "(9) 9 years old" 10 "(10) 10 years old"
                       11 "(11) 11 years old" 12 "(12) 12 years old"
                       13 "(13) 13 years old" 14 "(14) 14 years old"
                       15 "(15) 15 years old" 16 "(16) 16 years old"
                       17 "(17) 17 years old" 18 "(18) 18 years old or older"
                       96 "(96) Refused (skip to Q.10)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q.10)" ;
label define H1NF9     0 "(0) Less than 1 year" 1 "(1) 1 year"
                       2 "(2) 2 years" 3 "(3) 3 years" 4 "(4) 4 years"
                       5 "(5) 5 years" 6 "(6) 6 years" 7 "(7) 7 years"
                       8 "(8) 8 years" 9 "(9) 9 years" 10 "(10) 10 years"
                       11 "(11) 11 years" 12 "(12) 12 years"
                       13 "(13) 13 years" 14 "(14) 14 years"
                       15 "(15) 15 years" 16 "(16) 16 years"
                       17 "(17) 17 years" 18 "(18) 18 years or longer"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H1NF10    0 "(0) Not at all" 1 "(1) Once or twice"
                       2 "(2) Several times" 3 "(3) About once a month"
                       4 "(4) About once a week"
                       5 "(5) More than once a week" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF11    0 "(0) Not at all" 1 "(1) Once or twice"
                       2 "(2) Several times" 3 "(3) About once a month"
                       4 "(4) About once a week"
                       5 "(5) More than once a week" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF12A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF12B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF12C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF12D   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF12E   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF12F   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF12G   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF12H   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF12I   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF12J   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF13    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NF14    1 "(1) Not close at all" 2 "(2) Not very close"
                       3 "(3) Somewhat close" 4 "(4) Quite close"
                       5 "(5) Extremely close" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1RM1     1 "(1) 8th grade or less"
                       2 "(2) >8th grade/didn't graduate high school"
                       3 "(3) Business/trade/voc. school instead high school"
                       4 "(4) High school graduate" 5 "(5) GED"
                       6 "(6) Business/trade/voc. school after high school"
                       7 "(7) College/didn't graduate"
                       8 "(8) Graduated from college/university"
                       9 "(9) Prof training beyond 4-year college/university"
                       10 "(10) She never went to school"
                       11 "(11) Went to school/Resp doesn't know level"
                       12 "(12) Resp doesn't know if she went to school"
                       96 "(96) Refused" 97 "(97) Legitimate skip (no MOM)"
                       98 "(98) Don't know" ;
label define H1RM2     0 "(0) No" 1 "(1) Yes (skip to Q.4)"
                       6 "(6) Refused (skip to Q.4)"
                       7 "(7) Legitimate skip (no MOM)"
                       8 "(8) Don't know (skip to Q.4)" ;
label define H1RM3     17 "(17) Barbados" 30 "(30) Cambodia" 32 "(32) Canada"
                       37 "(37) People's Republic of China"
                       38 "(38) Colombia" 43 "(43) Cuba"
                       51 "(51) The Dominican Republic" 52 "(52) Ecuador"
                       54 "(54) El Salvador" 61 "(61) France"
                       75 "(75) Germany" 79 "(79) Guatemala" 83 "(83) Haiti"
                       84 "(84) Honduras" 87 "(87) India" 93 "(93) Italy"
                       95 "(95) Jamaica" 96 "(96) Japan"
                       102 "(102) South Korea" 105 "(105) Laos"
                       123 "(123) Mexico" 142 "(142) Nicaragua"
                       144 "(144) Nigeria" 151 "(151) Panama"
                       154 "(154) Peru" 155 "(155) The Philippines"
                       157 "(157) Portugal" 187 "(187) Taiwan"
                       190 "(190) Thailand" 193 "(193) Trinidad/Tobago"
                       202 "(202) Great Britain" 213 "(213) Hong Kong"
                       221 "(221) Puerto Rico" 222 "(222) American Samoa"
                       231 "(231) Viet-Nam" 232 "(232) Western Samoa"
                       311 "(311) Eastern/North Africa"
                       312 "(312) Central/North Africa"
                       313 "(313) Western/North Africa"
                       314 "(314) South Africa" 321 "(321) Middle East"
                       322 "(322) Central Asia" 323 "(323) Southeast Asia"
                       331 "(331) Northern/Western Europe"
                       332 "(332) British Isles"
                       333 "(333) Southern/Western Europe"
                       334 "(334) Eastern Europe"
                       335 "(335) Southern/Eastern Europe"
                       336 "(336) Southern Europe"
                       341 "(341) Oceania/Pacific Ocean Islands"
                       361 "(361) Central/Northern South America"
                       362 "(362) Southern South America"
                       372 "(372) Greater Antilles"
                       373 "(373) Lesser Antilles" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable/Other" ;
label define H1RM4     1 "(1) Professional 1/doctor/lawyer/scientist"
                       2 "(2) Professional 2/teacher/librarian/nurse"
                       3 "(3) Manager/executive/director"
                       4 "(4) Technical/computer specialist/radiologist"
                       5 "(5) Office worker/bookkeepers/clerk/secretary"
                       6 "(6) Sales worker/insurance agent/store clerk"
                       7 "(7) Restaurant worker/personal service/housekeeper"
                       8 "(8) Craftsperson/toolmaker/woodworker"
                       9 "(9) Construction worker/carpenter/crane operator"
                       10 "(10) Mechanic/electrician/plumber/machinist"
                       11 "(11) Factory worker/laborer/assembler/janitor"
                       12 "(12) Transportation/bus or taxi driver"
                       13 "(13) Military/security/police officer/soldier/fire fighter"
                       14 "(14) Farm/fishery worker" 15 "(15) Other"
                       16 "(16) None (skip to Q.6)" 96 "(96) Refused"
                       97 "(97) Legitimate skip (no MOM)"
                       98 "(98) Don't know" ;
label define H1RM5     0 "(0) No" 1 "(1) Yes (skip to Q.7)" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1RM6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1RM7     996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H1RM8     1 "(1) At home" 2 "(2) Outside home"
                       3 "(3) Both home/outside home" 7 "(7) Legitimate skip" ;
label define H1RM9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1RM10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H1RM11    1 "(1) Always" 2 "(2) Most of the time"
                       3 "(3) Some of the time" 4 "(4) Almost never"
                       5 "(5) Never" 6 "(6) She takes me to school"
                       96 "(96) Refused" 97 "(97) Legitimate skip (no MOM)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RM12    1 "(1) Always" 2 "(2) Most of the time"
                       3 "(3) Some of the time" 4 "(4) Almost never"
                       5 "(5) Never" 6 "(6) She brings me home from school"
                       96 "(96) Refused" 97 "(97) Legitimate skip (no MOM)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RM13    1 "(1) Always" 2 "(2) Most of the time"
                       3 "(3) Some of the time" 4 "(4) Almost never"
                       5 "(5) Never" 96 "(96) Refused"
                       97 "(97) Legitimate skip (no MOM)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RM14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H1RF1     1 "(1) 8th grade or less"
                       2 "(2) >8th grade/didn't graduate high school"
                       3 "(3) Business/trade/voc. school instead high school"
                       4 "(4) High school graduate" 5 "(5) GED"
                       6 "(6) Business/trade/voc. school after high school"
                       7 "(7) College/didn't graduate"
                       8 "(8) Graduated from college/university"
                       9 "(9) Prof training beyond 4-year college/univ"
                       10 "(10) He never went to school"
                       11 "(11) Went to school/Resp doesn't know level"
                       12 "(12) Resp doesn't know if he went to school"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RF2     0 "(0) No" 1 "(1) Yes (skip to Q.4)"
                       6 "(6) Refused (skip to Q.4)"
                       7 "(7) Legitimate skip (no DAD)"
                       8 "(8) Don't know (skip to Q.4)"
                       9 "(9) Not applicable (skip to Q.4)" ;
label define H1RF3     30 "(30) Cambodia" 32 "(32) Canada"
                       37 "(37) People's Republic of China"
                       38 "(38) Colombia" 43 "(43) Cuba"
                       51 "(51) The Dominican Republic" 52 "(52) Ecuador"
                       54 "(54) El Salvador" 75 "(75) Germany"
                       79 "(79) Guatemala" 83 "(83) Haiti" 84 "(84) Honduras"
                       87 "(87) India" 89 "(89) Iran" 93 "(93) Italy"
                       95 "(95) Jamaica" 96 "(96) Japan"
                       102 "(102) South Korea" 105 "(105) Laos"
                       123 "(123) Mexico" 142 "(142) Nicaragua"
                       144 "(144) Nigeria" 150 "(150) Pakistan"
                       151 "(151) Panama" 154 "(154) Peru"
                       155 "(155) The Philippines" 157 "(157) Portugal"
                       187 "(187) Taiwan" 193 "(193) Trinidad/Tobago"
                       202 "(202) Great Britain" 213 "(213) Hong Kong"
                       221 "(221) Puerto Rico" 231 "(231) Viet-Nam"
                       232 "(232) Western Samoa"
                       311 "(311) Eastern/North Africa"
                       312 "(312) Central/North Africa"
                       313 "(313) Western/North Africa"
                       314 "(314) South Africa" 321 "(321) Middle East"
                       322 "(322) Central Asia" 323 "(323) Southeast Asia"
                       331 "(331) Northern/Western Europe"
                       332 "(332) British Isles"
                       333 "(333) Southern/Western Europe"
                       334 "(334) Eastern Europe"
                       335 "(335) Southern/Eastern Europe"
                       336 "(336) Southern Europe"
                       341 "(341) Oceania/Pacific Ocean Islands"
                       361 "(361) Central/Northern South America"
                       362 "(362) Southern South America"
                       371 "(371) Greater and Lesser Antilles"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know"
                       999 "(999) Not applicable/Other" ;
label define H1RF4     1 "(1) Professional 1/doctor/lawyer/scientist"
                       2 "(2) Professional 2/teacher/librarian/nurse"
                       3 "(3) Manager/executive/director"
                       4 "(4) Technical/computer specialist/radiologist"
                       5 "(5) Office worker/bookkeepers/clerk/secretary"
                       6 "(6) Sales worker/insurance agent/store clerk"
                       7 "(7) Restaurant worker/personal service/housekeeper"
                       8 "(8) Craftsperson/toolmaker/woodworker"
                       9 "(9) Construction worker/carpenter/crane operator"
                       10 "(10) Mechanic/electrician/plumber/machinist"
                       11 "(11) Factory worker/laborer/assembler/janitor"
                       12 "(12) Transportation/bus or taxi driver"
                       13 "(13) Military/security/police officer/soldier/fire fighter"
                       14 "(14) Farm/fishery worker" 15 "(15) Other"
                       16 "(16) None (skip to Q.6)" 96 "(96) Refused"
                       97 "(97) Legitimate skip (no DAD)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RF5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1RF6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1RF7     996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H1RF8     1 "(1) At home" 2 "(2) Outside home"
                       3 "(3) Both home/outside home" 7 "(7) Legitimate skip" ;
label define H1RF9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1RF10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1RF11    1 "(1) Always" 2 "(2) Most of the time"
                       3 "(3) Some of the time" 4 "(4) Almost never"
                       5 "(5) Never" 6 "(6) He takes me to school"
                       96 "(96) Refused" 97 "(97) Legitimate skip (no DAD)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RF12    1 "(1) Always" 2 "(2) Most of the time"
                       3 "(3) Some of the time" 4 "(4) Almost never"
                       5 "(5) Never" 6 "(6) He brings me home from school"
                       96 "(96) Refused" 97 "(97) Legitimate skip (no DAD)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RF13    1 "(1) Always" 2 "(2) Most of the time"
                       3 "(3) Some of the time" 4 "(4) Almost never"
                       5 "(5) Never" 96 "(96) Refused"
                       97 "(97) Legitimate skip (no DAD)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RF14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1WP1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM/DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1WP2     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM/DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1WP3     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM/DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1WP4     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM/DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1WP5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM/DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1WP6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM/DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1WP7     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM/DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1WP8     0 "(0) No days" 1 "(1) 1 day" 2 "(2) 2 days"
                       3 "(3) 3 days" 4 "(4) 4 days" 5 "(5) 5 days"
                       6 "(6) 6 days" 7 "(7) 7 days" 96 "(96) Refused"
                       97 "(97) Legitimate skip (no MOM/DAD)"
                       98 "(98) Don't know" ;
label define H1WP9     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (no MOM)"
                       8 "(8) Don't know" ;
label define H1WP10    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (no MOM)"
                       8 "(8) Don't know" ;
label define H1WP11    1 "(1) Low" 5 "(5) High" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1WP12    1 "(1) Low" 5 "(5) High" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1WP13    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (no DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1WP14    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (no DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1WP15    1 "(1) Low" 5 "(5) High" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1WP16    1 "(1) Low" 5 "(5) High" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1WP17A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H1WP17B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H1WP17C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H1WP17D   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H1WP17E   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H1WP17F   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H1WP17G   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H1WP17H   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H1WP17I   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H1WP17J   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H1WP17K   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H1WP18A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1WP18B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1WP18C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1WP18D   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1WP18E   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1WP18F   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1WP18G   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1WP18H   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1WP18I   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1WP18J   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1WP18K   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1MO1     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MO2     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MO3     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MO4     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15/no MOM)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MO5     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MO6     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MO7     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MO8     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MO9     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MO10    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MO11    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MO12    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MO13    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MO14    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF1     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF2     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF3     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF4     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF5     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF6     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF7     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF8     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF9     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF10    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF11    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF12    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF13    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF14    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF15    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF16    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF17    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF18    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF19    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF20    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF21    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF22    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF23    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF24    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF25    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF26    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PF27    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF28    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF29    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF30    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF31    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF32    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF33    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF34    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF35    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1PF36    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1KQ1A    1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ1B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ2A    1 "(1) True <the correct answer>" 2 "(2) False"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ2B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ3A    1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ3B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ4A    1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ4B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ5A    1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ5B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ6A    1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ6B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ7A    1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ7B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ8A    1 "(1) True <the correct answer>" 2 "(2) False"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ8B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ9A    1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ9B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ10A   1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1KQ10B   1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define FR_FLAG   0 "(0) Asked nominate up to 5 male/female friends"
                       1 "(1) Asked nominate 1 male/female friend" ;
label define H1MF2A    0 "(0) No (skip to Q.6)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.6)"
                       7 "(7) Legitimate skip (no male friend nominated)"
                       8 "(8) Don't know (skip to Q.6)" ;
label define H1MF3A    2 "(2) 1st or 2nd" 3 "(3) 3rd" 4 "(4) 4th" 5 "(5) 5th"
                       6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q.6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q.6)" ;
label define H1MF4A    0 "(0) No" 1 "(1) Yes (skip to Q.5a)"
                       7 "(7) Legitimate skip" ;
label define H1MF5A    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (goes to R's school/no sister school)" ;
label define H1MF6A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1MF7A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1MF8A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1MF9A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1MF10A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1MF2B    0 "(0) No (skip to Q.6)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.6)"
                       7 "(7) Legitimate skip (only 1 male friend nominated)" ;
label define H1MF3B    2 "(2) 1st or 2nd" 3 "(3) 3rd" 4 "(4) 4th" 5 "(5) 5th"
                       6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q.6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q.6)" ;
label define H1MF4B    0 "(0) No" 1 "(1) Yes (skip to Q.5a)"
                       7 "(7) Legitimate skip" ;
label define H1MF5B    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (goes to R's school/no sister school)" ;
label define H1MF6B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1MF7B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1MF8B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1MF9B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1MF10B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1MF2C    0 "(0) No (skip to Q.6)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (2/fewer male friends nominated)"
                       8 "(8) Don't know (skip to Q.6)" ;
label define H1MF3C    2 "(2) 1st or 2nd" 3 "(3) 3rd" 4 "(4) 4th" 5 "(5) 5th"
                       6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q.6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q.6)" ;
label define H1MF4C    0 "(0) No" 1 "(1) Yes (skip to Q.5a)"
                       7 "(7) Legitimate skip" ;
label define H1MF5C    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (goes to R's school/no sister school)" ;
label define H1MF6C    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1MF7C    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1MF8C    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1MF9C    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1MF10C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1MF2D    0 "(0) No (skip to Q.6)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.6)"
                       7 "(7) Legitimate skip (3/fewer male friends nominated)"
                       8 "(8) Don't know (skip to Q.6)" ;
label define H1MF3D    2 "(2) 1st or 2nd" 3 "(3) 3rd" 4 "(4) 4th" 5 "(5) 5th"
                       6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q.6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q.6)" ;
label define H1MF4D    0 "(0) No" 1 "(1) Yes (skip to Q.5a)"
                       7 "(7) Legitimate skip" ;
label define H1MF5D    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (goes to R's school/no sister school)" ;
label define H1MF6D    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1MF7D    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1MF8D    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1MF9D    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1MF10D   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1MF2E    0 "(0) No (skip to Q.6)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (4/fewer male friends nominated)"
                       8 "(8) Don't know (skip to Q.6)" ;
label define H1MF3E    2 "(2) 1st or 2nd" 3 "(3) 3rd" 4 "(4) 4th" 5 "(5) 5th"
                       6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q.6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q.6)" ;
label define H1MF4E    0 "(0) No" 1 "(1) Yes (skip to Q.5a)"
                       7 "(7) Legitimate skip" ;
label define H1MF5E    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (goes to R's school/no sister school)" ;
label define H1MF6E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1MF7E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1MF8E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1MF9E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1MF10E   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FF2A    0 "(0) No (skip to Q.6)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.6)"
                       7 "(7) Legitimate skip (no female friend nominated)"
                       8 "(8) Don't know (skip to Q.6)" ;
label define H1FF3A    2 "(2) 1st or 2nd" 3 "(3) 3rd" 4 "(4) 4th" 5 "(5) 5th"
                       6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q.6)"
                       96 "(96) Refused (skip to Q.6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q.6)" ;
label define H1FF4A    0 "(0) No" 1 "(1) Yes (skip to Q.5a)" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1FF5A    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (goes to R's school/no sister school)"
                       8 "(8) Don't know" ;
label define H1FF6A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1FF7A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H1FF8A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1FF9A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1FF10A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1FF2B    0 "(0) No (skip to Q.6)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (only 1 female friend nominated)"
                       8 "(8) Don't know" ;
label define H1FF3B    2 "(2) 1st or 2nd" 3 "(3) 3rd" 4 "(4) 4th" 5 "(5) 5th"
                       6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q.6)"
                       96 "(96) Refused (skip to Q.6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q.6)" ;
label define H1FF4B    0 "(0) No" 1 "(1) Yes (skip to Q.5a)"
                       7 "(7) Legitimate skip" ;
label define H1FF5B    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (goes to R's school/no sister school)" ;
label define H1FF6B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1FF7B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1FF8B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1FF9B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1FF10B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1FF2C    0 "(0) No (skip to Q.6)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (2/fewer female friends nominated)"
                       8 "(8) Don't know (skip to Q.6)" ;
label define H1FF3C    2 "(2) 1st or 2nd" 3 "(3) 3rd" 4 "(4) 4th" 5 "(5) 5th"
                       6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q.6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q.6)" ;
label define H1FF4C    0 "(0) No" 1 "(1) Yes (skip to Q.6)"
                       7 "(7) Legitimate skip" ;
label define H1FF5C    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (goes to R's school/no sister school)"
                       8 "(8) Don't know" ;
label define H1FF6C    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FF7C    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FF8C    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FF9C    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FF10C   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FF2D    0 "(0) No (skip to Q.6)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (3/fewer female friends nominated)" ;
label define H1FF3D    2 "(2) 1st or 2nd" 3 "(3) 3rd" 4 "(4) 4th" 5 "(5) 5th"
                       6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q.6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q.6)"
                       99 "(99) Not applicable (skip to Q.6)" ;
label define H1FF4D    0 "(0) No" 1 "(1) Yes (skip to Q.5a)"
                       7 "(7) Legitimate skip" ;
label define H1FF5D    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (goes to R's school/no sister school)" ;
label define H1FF6D    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H1FF7D    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H1FF8D    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H1FF9D    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H1FF10D   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H1FF2E    0 "(0) No (skip to Q.6)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (4/fewer female friends nominated)" ;
label define H1FF3E    2 "(2) 1st or 2nd" 3 "(3) 3rd" 4 "(4) 4th" 5 "(5) 5th"
                       6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q.6)"
                       97 "(97) Legitimate skip" ;
label define H1FF4E    0 "(0) No" 1 "(1) Yes (skip to Q.5a)"
                       7 "(7) Legitimate skip" ;
label define H1FF5E    0 "(0) No (skip to Q.6)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (goes to R's school/no sister school)"
                       8 "(8) Don't know" ;
label define H1FF6E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FF7E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FF8E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FF9E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FF10E   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1ID1A    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1B    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1C    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1D    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1E    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1F    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1G    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1H    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1I    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1J    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1K    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1L    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1M    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1N    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1O    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1P    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1Q    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID1R    1 "(1) Card kept" 2 "(2) Card rejected"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1ID2_1   1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_2   1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_3   1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_4   1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_5   1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_6   1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_7   1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_8   1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_9   1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_10  1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_11  1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_12  1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_13  1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_14  1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_15  1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_16  1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID2_17  1 "(1) We would go out together in a group"
                       2 "(2) I would meet my partner's parents"
                       3 "(3) I would tell other people that we were a couple"
                       4 "(4) See less of other friends/could spend more time w/partne"
                       5 "(5) We would go out together alone"
                       6 "(6) We would hold hands"
                       7 "(7) I would give my partner a present"
                       8 "(8) My partner would give me a present"
                       9 "(9) I would tell my partner that I loved him or her"
                       10 "(10) My partner would tell me that he or she loved me"
                       11 "(11) We would think of ourselves as a couple"
                       12 "(12) Would talk about contraception or STDs"
                       13 "(13) We would kiss."
                       14 "(14) Would touch each other under clothing/with no clothes o"
                       15 "(15) We would have sex"
                       16 "(16) My partner or I would get pregnant"
                       17 "(17) We would get married"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (all remaining cards rejected/refused)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1ID5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (currently married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1ID6     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (currently married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RR1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know"
                       9 "(9) Not applicable (skip to next section)" ;
label define RR_FLAG   0 "(0) Skips followed correctly"
                       1 "(1) Skips NOT followed correctly" ;
label define H1LR1     0 "(0) No (skip to next section)" 1 "(1) Yes"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip ('yes' to romantic relationship)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1LR2     0 "(0) No (skip to next section)" 1 "(1) Yes"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1LR3     0 "(0) No (skip to next section)" 1 "(1) Yes"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1LR4     0 "(0) No (skip to next section)"
                       1 "(1) Yes (asked to give initials)"
                       6 "(6) Refused (asked to give initials)"
                       7 "(7) Legitimate skip"
                       8 "(8) Don't know (asked to give initials)"
                       9 "(9) Not applicable (asked to give initials)" ;
label define H1CO1     0 "(0) No (skip to next section)" 1 "(1) Yes"
                       6 "(6) Refused (skip to next section)"
                       8 "(8) Don't know"
                       9 "(9) Not applicable (skip to next section)" ;
label define H1CO2M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't had intercourse)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1CO2Y    77 "(77) 1976-1977" 81 "(81) 1980-1981"
                       83 "(83) 1982-1983" 84 "(84) 1984" 85 "(85) 1985"
                       86 "(86) 1986" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't had intercourse)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1CO3     0 "(0) No (skip to Q.5)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.5)"
                       7 "(7) Legitimate skip (hasn't had intercourse)"
                       8 "(8) Don't know (skip to Q.5)" ;
label define H1CO4A    1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method"
                       14 "(14) No other method (skip to Q.5)"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know (skip to Q.5)" ;
label define H1CO4B    1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method"
                       14 "(14) No other method (skip to Q.5)"
                       96 "(96) Refused (skip to Q.5)"
                       97 "(97) Legitimate skip (didn't use birth control/refused to an"
                       98 "(98) Don't know (skip to Q.5)"
                       99 "(99) Not applicable" ;
label define H1CO4C    1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (didn't use birth control/used one meth"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1CO5M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't had intercourse)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1CO5Y    80 "(80) 1976-1980" 86 "(86) 1981-1986"
                       88 "(88) 1987-1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't had intercourse)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1CO6     0 "(0) No (skip to Q.8)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.8)"
                       7 "(7) Legitimate skip (hasn't had intercourse)"
                       8 "(8) Don't know (skip to Q.8)" ;
label define H1CO7A    1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused (skip to Q.8)"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know (skip to Q.8)"
                       99 "(99) Not applicable" ;
label define H1CO7B    1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method"
                       14 "(14) No other method (skip to Q.8)"
                       96 "(96) Refused (skip to Q.8)"
                       97 "(97) Legitimate skip (didn't use birth control/refused to an"
                       98 "(98) Don't know (skip to Q.8)"
                       99 "(99) Not applicable" ;
label define H1CO7C    1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (didn't use birth control/used one meth"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1CO8     0 "(0) No (skip to Q.10)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.10)"
                       7 "(7) Legitimate skip (hasn't had intercourse/used condom)"
                       8 "(8) Don't know (skip to Q.10)" ;
label define H1CO9     1 "(1) None of the time" 2 "(2) Some of the time"
                       3 "(3) Half of the time" 4 "(4) Most of the time"
                       5 "(5) All of the time" 6 "(6) Refused"
                       7 "(7) Legitimate skip (have never used condom)" ;
label define H1CO10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't had intercourse)"
                       8 "(8) Don't know" ;
label define H1CO11    0 "(0) No (skip to Q.16)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't had intercourse)" ;
label define H1CO12A   1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused (skip to Q.13)"
                       97 "(97) Legit skip (hasn't received birth control from Dr./clin"
                       98 "(98) Don't know (skip to Q.13)" ;
label define H1CO12B   1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method"
                       14 "(14) No other method (skip to Q.13)"
                       96 "(96) Refused (skip to Q.13)"
                       97 "(97) Legit skip (hasn't received birth control from Dr./clin"
                       98 "(98) Don't know (skip to Q.13)" ;
label define H1CO12C   1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused (skip to Q.13)"
                       97 "(97) Legit skip(hasn't receive birth con/only 1 from Dr./cli"
                       98 "(98) Don't know (skip to Q.13)" ;
label define H1CO13    0 "(0) No (skip to Q.16)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.16)"
                       7 "(7) Legit skip (hasn't received birth control from Dr./clini"
                       8 "(8) Don't know (skip to Q.16)" ;
label define H1CO14M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip(never taken birth control pills regular"
                       98 "(98) Don't know" ;
label define H1CO14Y   89 "(89) 1989 and before" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip(never taken birth control pills regular"
                       98 "(98) Don't know" ;
label define H1CO15    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip(never taken birth control pills regularl" ;
label define H1CO16A   0 "(0) No" 1 "(1) Yes (ask Q.17A)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't had intercourse)"
                       8 "(8) Don't know" ;
label define H1CO16B   0 "(0) No" 1 "(1) Yes (ask Q.17B)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't had intercourse)"
                       8 "(8) Don't know" ;
label define H1CO16C   0 "(0) No" 1 "(1) Yes (ask Q.17C)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't had intercourse)"
                       8 "(8) Don't know" ;
label define H1CO16D   0 "(0) No" 1 "(1) Yes (ask Q.17D)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't had intercourse)"
                       8 "(8) Don't know" ;
label define H1CO16E   0 "(0) No" 1 "(1) Yes (ask Q.17E)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't had intercourse)"
                       8 "(8) Don't know" ;
label define H1CO16F   0 "(0) No" 1 "(1) Yes (ask Q.17F)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't had intercourse)"
                       8 "(8) Don't know" ;
label define H1CO16G   0 "(0) No" 1 "(1) Yes (ask Q.17G)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't had intercourse)"
                       8 "(8) Don't know" ;
label define H1CO16H   0 "(0) No" 1 "(1) Yes (ask Q.17H)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't had intercourse)"
                       8 "(8) Don't know" ;
label define H1CO16I   0 "(0) No" 1 "(1) Yes (ask Q.17I)"
                       7 "(7) Legitimate skip (hasn't had intercourse)"
                       8 "(8) Don't know" ;
label define H1CO16J   0 "(0) No" 1 "(1) Yes (ask Q.17J)"
                       7 "(7) Legitimate skip (hasn't had intercourse or male)"
                       8 "(8) Don't know" ;
label define H1CO17A   1 "(1) Less than 1 year ago" 2 "(2) 1-2 years ago"
                       3 "(3) More than 2 years ago" 6 "(6) Refused"
                       7 "(7) Legitimate skip (have never been told had chlamydia)" ;
label define H1CO17B   1 "(1) Less than 1 year ago" 2 "(2) 1-2 years ago"
                       3 "(3) More than 2 years ago" 6 "(6) Refused"
                       7 "(7) Legitimate skip (have never been told had syphilis)" ;
label define H1CO17C   1 "(1) Less than 1 year ago" 2 "(2) 1-2 years ago"
                       3 "(3) More than 2 years ago" 6 "(6) Refused"
                       7 "(7) Legitimate skip (have never been told had gonorrhea)" ;
label define H1CO17D   2 "(2) 1 or more years ago" 6 "(6) Refused"
                       7 "(7) Legitimate skip (have never been told had HIV/AIDS)" ;
label define H1CO17E   1 "(1) Less than 1 year ago"
                       2 "(2) 1 or more years ago"
                       7 "(7) Legitimate skip (have never been told had genital herpes" ;
label define H1CO17F   1 "(1) Less than 1 year ago" 2 "(2) 1-2 years ago"
                       3 "(3) More than 2 years ago" 6 "(6) Refused"
                       7 "(7) Legitimate skip (have never been told had genital warts)" ;
label define H1CO17G   1 "(1) Less than 1 year ago"
                       2 "(2) 1 or more years ago"
                       7 "(7) Legitimate skip (have never been told trichomoniasis)" ;
label define H1CO17H   1 "(1) Less than 1 year ago"
                       2 "(2) 1 or more years ago" 6 "(6) Refused"
                       7 "(7) Legitimate skip (have never been told hepatitis B)" ;
label define H1CO17I   1 "(1) Less than 1 year ago"
                       2 "(2) 1 or more years ago"
                       7 "(7) Legitimate skip (have never been told bacterial vaginosi" ;
label define H1CO17J   1 "(1) Less than 1 year ago"
                       2 "(2) 1 or more years ago"
                       7 "(7) Legit skip(have never been told non-gonococcal vaginitis" ;
label define H1RI1M_1  0 "(0) Don't consider this person special friend"
                       1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R doesn't have special friend)"
                       98 "(98) Don't know/don't remember"
                       99 "(99) Not applicable" ;
label define H1RI1Y_1  0 "(0) Don't consider this person special friend"
                       77 "(77) 1977" 78 "(78) 1978" 79 "(79) 1979"
                       80 "(80) 1980" 81 "(81) 1981" 84 "(84) 1984"
                       85 "(85) 1985" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (R doesn't have special friend)"
                       98 "(98) Don't know/don't remember"
                       99 "(99) Not applicable" ;
label define H1RI2_1   80 "(80) 1980" 85 "(85) 1985" 86 "(86) 1986"
                       87 "(87) 1987" 88 "(88) 1988" 89 "(89) 1989"
                       90 "(90) 1990" 91 "(91) 1991" 92 "(92) 1992"
                       93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (month/year given)"
                       98 "(98) Don't know" ;
label define H1RI3_1   96 "(96) Refused"
                       97 "(97) Legitimate skip (R doesn't have special friend)"
                       98 "(98) Don't know" ;
label define H1RI4_1   96 "(96) Refused"
                       97 "(97) Legitimate skip(no special friend/age special friend gi"
                       98 "(98) Don't know" ;
label define H1RI5A_1  2 "(2) 1st or 2nd" 3 "(3) 3rd" 4 "(4) 4th" 5 "(5) 5th"
                       6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond 12th grade (skip to Q.7)"
                       14 "(14) {INITIALS} wasn't in school (skip to Q.7)"
                       15 "(15) {INITIALS} was in school/don't know what grade"
                       16 "(16) Don't know whether {INITIALS} was in school"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R doesn't have special friend)"
                       98 "(98) Don't know" ;
label define H1RI6_1   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (No special friend/friend not in school)"
                       8 "(8) Don't know" ;
label define H1RI7_1   1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" ;
label define H1RI8A_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" ;
label define H1RI8B_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" ;
label define H1RI8C_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" ;
label define H1RI8D_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" ;
label define H1RI8E_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" ;
label define H1RI8F_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" ;
label define H1RI8G_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" ;
label define H1RI8H_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" ;
label define H1RI9_1   1 "(1) All of them" 2 "(2) Most of them"
                       3 "(3) A few of them" 4 "(4) One of them"
                       5 "(5) None of them"
                       6 "(6) When relationship w/{INITIALS} began/no close friends"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R doesn't have special friend)"
                       98 "(98) Don't know" ;
label define H1RI10_1  0 "(0) No" 1 "(1) Yes (skip to Q.14)"
                       6 "(6) Refused (skip to Q.14)"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know (skip to Q.14)" ;
label define H1RI11M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (no special friend/relationship on-goin"
                       98 "(98) Don't know" ;
label define H1RI11Y1  75 "(75) 1975" 78 "(78) 1978" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (no special friend/relationship on-goin"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI12_1  74 "(74) 1974" 85 "(85) 1985" 87 "(87) 1987"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (no special friend/month ended given)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI13_1  1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no special friend/relationship on-going"
                       8 "(8) Don't know" ;
label define H1RI14_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" ;
label define H1RI15_1  1 "(1) 1st" 2 "(2) 2nd" 3 "(3) 3rd" 4 "(4) 4th"
                       5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) {INITIALS} graduated from H.S./in another kind of schoo"
                       14 "(14) {INITIALS} has graduated from high school/is out of sch"
                       15 "(15) {INITIALS} has dropped out of school"
                       16 "(16) {INITIALS} is in school/but don't know what grade"
                       17 "(17) You don't know whether {INITIALS} is in school"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R doesn't have special friend)"
                       98 "(98) Don't know" ;
label define H1RI16_1  0 "(0) No (skip to Q.18)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.18)"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know (skip to Q.18)"
                       9 "(9) Not applicable (skip to Q.18)" ;
label define H1RI17A1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI17B1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI17C1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI17D1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI17E1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI17F1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI18A1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI18B1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI18C1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI18D1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI18E1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI19A1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19B1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19C1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19D1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19E1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19F1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19G1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI20_1  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" ;
label define H1RI21A1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21B1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21C1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21D1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21E1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21F1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21G1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21H1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21I1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21J1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21K1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21L1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21M1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21N1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21O1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21P1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21Q1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21R1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R doesn't have special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI22A1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22B1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22C1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22D1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22E1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22F1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22G1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22H1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22I1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22J1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22K1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22L1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22M1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22N1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22O1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22P1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22Q1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI22R1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R doesn't have special friend)" ;
label define H1RI24A1  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       6 "(6) Refused (skip to next partner/section)"
                       7 "(7) Legitimate skip (didn't retain card O)" ;
label define H1RI25M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI25Y1  80 "(80) 1980" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI26M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI26Y1  89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI27_1  1 "(1) Once" 2 "(2) More than once (skip to Q.31)"
                       6 "(6) Refused (skip to Q.31)"
                       7 "(7) Legit skip (1st intercourse date/not recent intercourse"
                       8 "(8) Don't know (skip to Q.31)" ;
label define H1RI28_1  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (intercourse >once same month)" ;
label define H1RI29A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       13 "(13) Some other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RI29B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       11 "(11) Depo Provera" 13 "(13) Some other method"
                       14 "(14) No other method" 96 "(96) Refused"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know" ;
label define H1RI29C1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       8 "(8) IUD (intrauterine device)"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (used only one birth control method)"
                       98 "(98) Don't know" ;
label define H1RI30_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RI31_1  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       6 "(6) Refused (skip to next partner/section)"
                       7 "(7) Legitimate skip (had intercourse only once)"
                       8 "(8) Don't know (skip to next partner/section)" ;
label define H1RI32_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1RI33A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       9 "(9) Norplant" 11 "(11) Depo Provera"
                       13 "(13) Some other method"
                       96 "(96) Refused (skip to next partner/section)"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know (skip to next partner/section)" ;
label define H1RI33B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       9 "(9) Norplant" 11 "(11) Depo Provera"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know" ;
label define H1RI33C1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly"
                       11 "(11) Depo Provera" 12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (used only one birth control method)" ;
label define H1RI34_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RI35_1  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (used only one method)" ;
label define H1RI36_1  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       6 "(6) Refused (skip to next partner/section)"
                       7 "(7) Legitimate skip (intercourse in only 1 month)"
                       8 "(8) Don't know (skip to next partner/section)" ;
label define H1RI37_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1RI38A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       9 "(9) Norplant" 10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method"
                       96 "(96) Refused (skip to Q.41)"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know (skip to Q.41)" ;
label define H1RI38B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know" ;
label define H1RI38C1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       9 "(9) Norplant" 10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (used only one birth control method)"
                       98 "(98) Don't know" ;
label define H1RI39_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RI40_1  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (used only one method)"
                       8 "(8) Don't know" ;
label define H1RI41_1  9996 "(9996) Refused"
                       9997 "(9997) Legitimate skip (didn't use birth control/Q.36 not Ye"
                       9998 "(9998) Don't know" ;
label define H1RI1M_2  0 "(0) Don't consider this person special friend"
                       1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R has no/only one special friend)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI1Y_2  0 "(0) Don't consider this person special friend"
                       87 "(87) 1987" 88 "(88) 1988" 89 "(89) 1989"
                       90 "(90) 1990" 91 "(91) 1991" 92 "(92) 1992"
                       93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R has no/only one special friend)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI2_2   80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (month/year given)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI3_2   96 "(96) Refused"
                       97 "(97) Legitimate skip (R has no/only one special friend)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI4_2   96 "(96) Refused"
                       97 "(97) Legitimate skip (no 2nd spec friend/age given)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI5A_2  2 "(2) 1st or 2nd" 3 "(3) 3rd" 4 "(4) 4th" 5 "(5) 5th"
                       6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school"
                       14 "(14) {INITIALS} wasn't in school (skip to Q.7)"
                       15 "(15) {INITIALS} was in school/don't know what grade"
                       16 "(16) Don't know whether {INITIALS} was in school"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R has no/only one special friend)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI6_2   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no 2nd spec frnd/spec frnd not in schoo"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI7_2   1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI8A_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI8B_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI8C_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI8D_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI8E_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI8F_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI8G_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI8H_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI9_2   1 "(1) All of them" 2 "(2) Most of them"
                       3 "(3) A few of them" 4 "(4) One of them"
                       5 "(5) None of them"
                       6 "(6) When relationship w/{INITIALS} began/no close friends"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R has no/only one special friend)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI10_2  0 "(0) No" 1 "(1) Yes (skip to Q.14)"
                       6 "(6) Refused (skip to Q.14)"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know (skip to Q.14)"
                       9 "(9) Not applicable (skip to Q.14)" ;
label define H1RI11M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (no 2nd special friend/relationship on-"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI11Y2  90 "(90) 1990" 91 "(91) 1991" 92 "(92) 1992"
                       93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (no 2nd special friend/relationship on-"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI12_2  91 "(91) 1991" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legit skip (no 2nd spec frnd/month relationship ended g"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI13_2  1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no 2nd special friend/relationship on-g"
                       8 "(8) Don't know" ;
label define H1RI14_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI15_2  1 "(1) 1st" 2 "(2) 2nd" 3 "(3) 3rd" 4 "(4) 4th"
                       5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) {INITIALS} graduated from H.S./in another kind of schoo"
                       14 "(14) {INITIALS} has graduated from high school/is out of sch"
                       15 "(15) {INITIALS} has dropped out of school"
                       16 "(16) {INITIALS} is in school/but don't know what grade"
                       17 "(17) You don't know whether {INITIALS} is in school"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R has no/only one special friend)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1RI16_2  0 "(0) No (skip to Q.18)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.18)"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know (skip to Q.18)"
                       9 "(9) Not applicable (skip to Q.18)" ;
label define H1RI17A2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI17B2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI17C2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI17D2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI17E2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI17F2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI18A2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI18B2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI18C2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI18D2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI18E2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI19A2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19B2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19C2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19D2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19E2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19F2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19G2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI20_2  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" ;
label define H1RI21A2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21B2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21C2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21D2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21E2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21F2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21G2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21H2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21I2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21J2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21K2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21L2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21M2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21N2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21O2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21P2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21Q2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI21R2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI22A2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22B2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22C2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22D2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22E2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22F2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22G2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22H2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22I2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22J2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22K2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22L2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22M2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22N2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22O2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22P2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22Q2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI22R2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has no/only one special friend)" ;
label define H1RI24A2  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       6 "(6) Refused (skip to next partner/section)"
                       7 "(7) Legitimate skip (didn't retain card O)"
                       8 "(8) Don't know (skip to next partner/section)" ;
label define H1RI25M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RI25Y2  90 "(90) 1990" 91 "(91) 1991" 92 "(92) 1992"
                       93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RI26M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RI26Y2  90 "(90) 1990" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RI27_2  1 "(1) Once" 2 "(2) More than once (skip to Q.31)"
                       7 "(7) Legit skip (1st intercourse date/not recent intercourse"
                       8 "(8) Don't know (skip to Q.31)" ;
label define H1RI28_2  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (intercourse more than once in same mont" ;
label define H1RI29A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       11 "(11) Depo Provera"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RI29B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       6 "(6) Foam/jelly/creme/suppositories"
                       9 "(9) Norplant" 11 "(11) Depo Provera"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RI29C2  2 "(2) Withdrawal" 4 "(4) Birth control pills"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (used only one birth control method)" ;
label define H1RI30_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RI31_2  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (intercourse only once)"
                       8 "(8) Don't know( skip to next partner/section)" ;
label define H1RI32_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control" ;
label define H1RI33A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       11 "(11) Depo Provera"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RI33B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       7 "(7) Diaphragm, with/without jelly"
                       11 "(11) Depo Provera" 12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know" ;
label define H1RI33C2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly"
                       14 "(14) No other method" 96 "(96) Refused"
                       97 "(97) Legitimate skip (used only one birth control method)"
                       98 "(98) Don't know" ;
label define H1RI34_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RI35_2  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (used only one method)" ;
label define H1RI36_2  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (intercourse in only one month)" ;
label define H1RI37_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1RI38A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 11 "(11) Depo Provera"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RI38B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       9 "(9) Norplant" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RI38C2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly" 9 "(9) Norplant"
                       10 "(10) Ring" 13 "(13) Some other method"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (used only one birth control method)"
                       98 "(98) Don't know" ;
label define H1RI39_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RI40_2  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (used only one method)" ;
label define H1RI41_2  9996 "(9996) Refused"
                       9997 "(9997) Legitimate skip (didn't use birth control/Q.36 not ye"
                       9998 "(9998) Don't know" ;
label define H1RI1M_3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R has two/fewer special friends)"
                       98 "(98) Don't know" ;
label define H1RI1Y_3  90 "(90) 1990" 91 "(91) 1991" 92 "(92) 1992"
                       93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R has two/fewer special friends)"
                       98 "(98) Don't know" ;
label define H1RI2_3   89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (month/year given)"
                       98 "(98) Don't know" ;
label define H1RI3_3   96 "(96) Refused"
                       97 "(97) Legitimate skip (R has two/fewer special friends)"
                       98 "(98) Don't know" ;
label define H1RI4_3   96 "(96) Refused"
                       97 "(97) Legitimate skip (no 3rd/age special friend given)"
                       98 "(98) Don't know" ;
label define H1RI5A_3  3 "(3) 3rd" 5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th"
                       8 "(8) 8th" 9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th" 13 "(13) Beyond high school"
                       14 "(14) {INITIALS} wasn't in school (skip to Q.7)"
                       15 "(15) {INITIALS} was in school/don't know what grade"
                       16 "(16) Don't know whether{INITIALS} was in school (skip to Q.7"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R has two/fewer special friends)"
                       98 "(98) Don't know" ;
label define H1RI6_3   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no 3rd special friend/friend not in sch"
                       8 "(8) Don't know" ;
label define H1RI7_3   1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI8A_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI8B_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI8C_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI8D_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI8E_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI8F_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI8G_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI8H_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RI9_3   1 "(1) All of them" 2 "(2) Most of them"
                       3 "(3) A few of them" 4 "(4) One of them"
                       5 "(5) None of them"
                       6 "(6) When relationship w/{INITIALS} began/no close friends"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R has two/fewer special friends)"
                       98 "(98) Don't know" ;
label define H1RI10_3  0 "(0) No" 1 "(1) Yes (skip to Q.14)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI11M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (no 3rd special friend/relationship on-"
                       98 "(98) Don't know" ;
label define H1RI11Y3  93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (no 3rd special friend/relationship on-"
                       98 "(98) Don't know" ;
label define H1RI12_3  92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (no 3rd special friend/relationship on-"
                       98 "(98) Don't know" ;
label define H1RI13_3  1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood"
                       7 "(7) Legitimate skip (no 3rd special friend/relationship on-g"
                       8 "(8) Don't know" ;
label define H1RI14_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI15_3  1 "(1) 1st" 2 "(2) 2nd" 3 "(3) 3rd" 4 "(4) 4th"
                       5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) {INITIALS} graduated from H.S./in another kind of schoo"
                       14 "(14) {INITIALS} has graduated from high school/is out of sch"
                       15 "(15) {INITIALS} has dropped out of school"
                       16 "(16) {INITIALS} is in school/but don't know what grade"
                       17 "(17) You don't know whether {INITIALS} is in school"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R has two/fewer special friends)"
                       98 "(98) Don't know" ;
label define H1RI16_3  0 "(0) No (skip to Q.18)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI17A3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI17B3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI17C3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI17D3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI17E3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI17F3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RI18A3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI18B3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI18C3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI18D3  0 "(0) Not marked" 1 "(1) Marked (ask Q.19)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI18E3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know (skip to Q.20)" ;
label define H1RI19A3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19B3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19C3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19D3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19E3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19F3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI19G3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)"
                       8 "(8) Don't know" ;
label define H1RI20_3  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21A3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21B3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21C3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21D3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21E3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21F3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21G3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21H3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21I3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21J3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21K3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21L3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21M3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21N3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21O3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21P3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21Q3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI21R3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H1RI22A3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22B3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22C3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22D3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22E3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22F3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22G3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22H3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22I3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22J3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22K3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22L3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22M3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22N3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22O3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22P3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22Q3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI22R3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legitimate skip (R has two/fewer special friends)" ;
label define H1RI24A3  0 "(0) No (skip to next section)" 1 "(1) Yes"
                       6 "(6) Refused (skip to next section)"
                       7 "(7) Legitimate skip (didn't retain card O)" ;
label define H1RI25M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RI25Y3  80 "(80) 1980" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RI26M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RI26Y3  89 "(89) 1989" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RI27_3  1 "(1) Once" 2 "(2) More than once (skip to Q.31)"
                       7 "(7) Legit skip (1st intercourse date/not recent intercourse"
                       8 "(8) Don't know (skip to Q.31)" ;
label define H1RI28_3  0 "(0) No (skip to next section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (intercourse more than once in same mont" ;
label define H1RI29A3  1 "(1) Condoms (rubbers)" 4 "(4) Birth control pills"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RI29B3  2 "(2) Withdrawal"
                       6 "(6) Foam/jelly/creme/suppositories"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RI29C3  1 "(1) Condoms (rubbers)" 3 "(3) Rhythm (safe time)"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (used only one birth control method)" ;
label define H1RI30_3  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RI31_3  0 "(0) No (skip to next section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (had intercourse only once)" ;
label define H1RI32_3  0 "(0) No (skip to next section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1RI33A3  1 "(1) Condoms (rubbers)"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RI33B3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       6 "(6) Foam/jelly/creme/suppositories"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know" ;
label define H1RI33C3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 14 "(14) No other method"
                       97 "(97) Legitimate skip (used only one birth control method)" ;
label define H1RI34_3  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RI35_3  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (used only one method)" ;
label define H1RI36_3  0 "(0) No (skip to next section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (intercourse in only one month)"
                       8 "(8) Don't know (skip to next section)" ;
label define H1RI37_3  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1RI38A3  1 "(1) Condoms (rubbers)" 4 "(4) Birth control pills"
                       11 "(11) Depo Provera"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RI38B3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know" ;
label define H1RI38C3  2 "(2) Withdrawal" 3 "(3) Rhythm (safe time)"
                       4 "(4) Birth control pills" 5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly" 9 "(9) Norplant"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip (used only one birth control method)" ;
label define H1RI39_3  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RI40_3  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (used only one method)" ;
label define H1RI41_3  9996 "(9996) Refused"
                       9997 "(9997) Legitimate skip (didn't use birth control/Q.36 not=ye"
                       9998 "(9998) Don't know" ;
label define RICARD1   0 "(0) No problems with ordered sequence of cards"
                       1 "(1) Reserve code in ordered sequence/resulting in recoding"
                       2 "(2) Inconsistent data in ordered sequence/resulting in recod"
                       3 "(3) Inconsistent data/reserve code ordered seq/resulting rec"
                       4 "(4) All cards=96/98/99/system missing"
                       7 "(7) Legitimate skip/no cards ordered" ;
label define RICARD2   0 "(0) No problems with ordered sequence of cards"
                       1 "(1) Reserve code in ordered sequence/resulting in recoding"
                       2 "(2) Inconsistent data in ordered sequence/resulting in recod"
                       3 "(3) Inconsistent data/reserve code ordered seq/resulting rec"
                       4 "(4) All cards=96/98/99/system missing"
                       7 "(7) Legitimate skip/no cards ordered" ;
label define RICARD3   0 "(0) No problems with ordered sequence of cards"
                       1 "(1) Reserve code in ordered sequence/resulting in recoding"
                       2 "(2) Inconsistent data in ordered sequence/resulting in recod"
                       3 "(3) Inconsistent data/reserve code ordered seq/resulting rec"
                       4 "(4) All cards=96/98/99/system missing"
                       7 "(7) Legitimate skip/no cards ordered" ;
label define H1NR1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1NR2     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1NR3     0 "(0) No (skip to Q.5)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.5)"
                       8 "(8) Don't know (skip to Q.5)"
                       9 "(9) Not applicable (skip to Q.5)" ;
label define H1NR4     996 "(996) Refused"
                       997 "(997) Legitimate skip (never exchanged sex for drugs/money)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H1NR5     0 "(0) No (skip to Q.54)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.54)"
                       8 "(8) Don't know (skip to Q.54)"
                       9 "(9) Not applicable (skip to Q.54)" ;
label define H1NR6     996 "(996) Refused"
                       997 "(997) Legitimate skip (never had a sexual relationship)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H1NR7     996 "(996) Refused"
                       997 "(997) Legitimate skip (never had a sexual relationship)"
                       998 "(998) Don't know" ;
label define H1NR8     996 "(996) Refused"
                       997 "(997) Legitimate skip (never had a sexual relationship)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H1NR10_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)" ;
label define H1NR11_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)" ;
label define H1NR12_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)" ;
label define NRRXFLG1  1 "(1) Yes" ;
label define H1RX1M_1  0 "(0) Don't consider this person a special friend"
                       1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (No sexual relation/section questions a"
                       98 "(98) Don't know" ;
label define H1RX1Y_1  0 "(0) Don't consider this person a special friend"
                       79 "(79) 1979" 87 "(87) 1987" 89 "(89) 1989"
                       90 "(90) 1990" 91 "(91) 1991" 92 "(92) 1992"
                       93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask"
                       98 "(98) Don't know" ;
label define H1RX2_1   88 "(88) 1988" 89 "(89) 1989" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (month/year given)"
                       98 "(98) Don't know" ;
label define H1RX3_1   96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask"
                       98 "(98) Don't know" ;
label define H1RX4_1   13 "(13) 13 years old" 14 "(14) 14 years old"
                       15 "(15) 15 years old" 17 "(17) 17 years old"
                       96 "(96) Refused"
                       97 "(97) Legit skip (partner age given)"
                       98 "(98) Don't know" ;
label define H1RX5A_1  5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th" 13 "(13) Beyond high school"
                       14 "(14) {INITIALS} wasn't in school (skip to Q.7)"
                       15 "(15) {INITIALS} was in school/but don't know what grade"
                       16 "(16) Don't know whether {INITIALS} was in school (skip to Q."
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask"
                       98 "(98) Don't know" ;
label define H1RX6_1   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (partner not in school)"
                       8 "(8) Don't know" ;
label define H1RX7_1   1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX8A_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX8B_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX8C_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX8D_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX8E_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX8F_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX8G_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX8H_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX9_1   1 "(1) All of them" 2 "(2) Most of them"
                       3 "(3) A few of them" 4 "(4) One of them"
                       5 "(5) None of them"
                       6 "(6) When relationship w/{INITIALS} began/no close friends"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask"
                       98 "(98) Don't know" ;
label define H1RX10_1  0 "(0) No" 1 "(1) Yes (skip to Q.14)"
                       6 "(6) Refused (skip to Q.14)" 7 "(7) Legitimate skip"
                       8 "(8) Don't know (skip to Q.14)" ;
label define H1RX11M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H1RX11Y1  89 "(89) 1989" 91 "(91) 1991" 92 "(92) 1992"
                       93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H1RX12_1  90 "(90) 1990" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (month relationship ended given)"
                       98 "(98) Don't know" ;
label define H1RX13_1  1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (relationship still going on)"
                       8 "(8) Don't know" ;
label define H1RX14_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX15_1  5 "(5) 1st to 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) {INITIALS} graduated from H.S./in another kind of schoo"
                       14 "(14) {INITIALS} has graduated from high school/is out of sch"
                       15 "(15) {INITIALS} has dropped out of school"
                       16 "(16) {INITIALS} is in school/but don't know what grade"
                       17 "(17) You don't know whether {INITIALS} is in school"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/Section 26 questions ask"
                       98 "(98) Don't know" ;
label define H1RX16_1  0 "(0) No (skip to Q.18)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.18)"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know (skip to Q.18)" ;
label define H1RX17A1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RX17B1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RX17C1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RX17D1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RX17E1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RX17F1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1RX18A1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX18B1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX18C1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX18D1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX18E1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX19A1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19B1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19C1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19D1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19E1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19F1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19G1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX20_1  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21A1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21B1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21C1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21D1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21E1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21F1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21G1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21H1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21I1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21J1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21K1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21L1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21M1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21N1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21O1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21P1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21Q1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX21R1  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No sexual relation/section 26 questions aske"
                       8 "(8) Don't know" ;
label define H1RX22A1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22B1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22C1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22D1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22E1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22F1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22G1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22H1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22I1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22J1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22K1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22L1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22M1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22N1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22O1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22P1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22Q1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX22R1  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask" ;
label define H1RX24A1  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       6 "(6) Refused (skip to next partner/section)"
                       7 "(7) Legitimate skip (didn't retain card O)"
                       8 "(8) Don't know (skip to next partner/section)" ;
label define H1RX25M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RX25Y1  89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RX26M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RX26Y1  91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RX27_1  1 "(1) Once" 2 "(2) More than once (skip to Q.31)"
                       6 "(6) Refused (skip to Q.31)"
                       7 "(7) Legit skip (1st intercourse date/not recent intercourse" ;
label define H1RX28_1  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (had intercourse more than once/same mon" ;
label define H1RX29A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 11 "(11) Depo Provera"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX29B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 11 "(11) Depo Provera"
                       14 "(14) No other method" 96 "(96) Refused"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX29C1  12 "(12) Contraceptive film" 14 "(14) No other method"
                       97 "(97) Legitimate skip (used only one birth control method)" ;
label define H1RX30_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RX31_1  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       6 "(6) Refused (skip to next partner/section)"
                       7 "(7) Legitimate skip (had intercourse only once)" ;
label define H1RX32_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1RX33A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX33B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX33C1  1 "(1) Condoms (rubbers)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge" 9 "(9) Norplant"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (used only one birth control method)" ;
label define H1RX34_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RX35_1  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (used only one method)" ;
label define H1RX36_1  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (intercourse in only one month)" ;
label define H1RX37_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1RX38A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 11 "(11) Depo Provera"
                       13 "(13) Some other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX38B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 5 "(5) Vaginal sponge"
                       7 "(7) Diaphragm, with/without jelly" 9 "(9) Norplant"
                       11 "(11) Depo Provera" 13 "(13) Some other method"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX38C1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       6 "(6) Foam/jelly/creme/suppositories"
                       12 "(12) Contraceptive film" 14 "(14) No other method"
                       97 "(97) Legitimate skip (used only one birth control method)"
                       98 "(98) Don't know" ;
label define H1RX39_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RX40_1  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (used only one method)"
                       8 "(8) Don't know" ;
label define H1RX41_1  9996 "(9996) Refused"
                       9997 "(9997) Legitimate skip (didn't use birth control/Q.36 not=ye"
                       9998 "(9998) Don't know" ;
label define H1NR13_1
                       97 "(97) Legitimate skip (never had a sexual relationship)"
                       98 "(98) Don't know" ;
label define H1NR14_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR15_1  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)" ;
label define H1NR16_1  0 "(0) No (skip to Q.18)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.18)"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know (skip to Q.18)" ;
label define H1NR17A1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (never had a sexual relationship)" ;
label define H1NR17B1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (never had a sexual relationship)" ;
label define H1NR17C1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (never had a sexual relationship)" ;
label define H1NR17D1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (never had a sexual relationship)" ;
label define H1NR17E1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (never had a sexual relationship)" ;
label define H1NR17F1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (never had a sexual relationship)" ;
label define H1NR18A1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)" ;
label define H1NR18B1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)" ;
label define H1NR18C1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)" ;
label define H1NR18D1  0 "(0) Not marked" 1 "(1) Marked (ask Q.19)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)" ;
label define H1NR18E1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)" ;
label define H1NR19A1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19B1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19C1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19D1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19E1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19F1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19G1  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR20A1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20B1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20C1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20D1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20E1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20F1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20G1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20H1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR21_1  1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR22_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legit skip (never had sexual relationship/same sex partn" ;
label define H1NR23M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (never had a sexual relationship)"
                       98 "(98) Don't know" ;
label define H1NR23Y1  78 "(78) 1978" 79 "(79) 1979" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (never had a sexual relationship)"
                       98 "(98) Don't know" ;
label define H1NR24M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (never had a sexual relationship)"
                       98 "(98) Don't know" ;
label define H1NR24Y1  88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (never had a sexual relationship)"
                       98 "(98) Don't know" ;
label define H1NR25_1  1 "(1) Once" 2 "(2) More than once (skip to Q.29)"
                       6 "(6) Refused"
                       7 "(7) Legit skip (1st intercourse date/not=recent intercourse"
                       8 "(8) Don't know" ;
label define H1NR26_1  0 "(0) No (skip to Q.42)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't have sexual intercourse)" ;
label define H1NR27A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 9 "(9) Norplant"
                       11 "(11) Depo Provera" 13 "(13) Some other method"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know (skip to Q.28)" ;
label define H1NR27B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       11 "(11) Depo Provera" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip" ;
label define H1NR27C1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR28_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR29_1  0 "(0) No (skip to Q.42)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (had intercourse only once)" ;
label define H1NR30_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR31A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 9 "(9) Norplant"
                       11 "(11) Depo Provera" 13 "(13) Some other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR31B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       6 "(6) Foam/jelly/creme/suppositories" 10 "(10) Ring"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know" ;
label define H1NR31C1  2 "(2) Withdrawal" 4 "(4) Birth control pills"
                       6 "(6) Foam/jelly/creme/suppositories"
                       9 "(9) Norplant" 10 "(10) Ring"
                       12 "(12) Contraceptive film" 14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR32_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR33_1  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR34_1  0 "(0) No (skip to Q.42)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (intercourse in only one month)" ;
label define H1NR35_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR36A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       6 "(6) Foam/jelly/creme/suppositories"
                       9 "(9) Norplant" 11 "(11) Depo Provera"
                       13 "(13) Some other method"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know (skip to Q.42)" ;
label define H1NR36B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       8 "(8) IUD (intrauterine device)"
                       14 "(14) No other method" 96 "(96) Refused"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know" ;
label define H1NR36C1  2 "(2) Withdrawal" 3 "(3) Rhythm (safe time)"
                       4 "(4) Birth control pills" 5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories" 10 "(10) Ring"
                       11 "(11) Depo Provera" 14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR37_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR38_1  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)"
                       8 "(8) Don't know" ;
label define H1NR39_1  997 "(997) Legitimate skip (didn't use birth control)"
                       998 "(998) Don't know" ;
label define H1NR40_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (partner is female)" ;
label define H1NR41_1  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (partner is female)" ;
label define H1NR42_1  0 "(0) No (skip to Q.44)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H1NR43_1  97 "(97) Legitimate skip" ;
label define H1NR10_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR11_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR12_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define NRRXFLG2  1 "(1) Yes" ;
label define H1RX1M_2
                       0 "(0) You don't consider this person a special friend"
                       1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H1RX1Y_2
                       0 "(0) You don't consider this person a special friend"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H1RX2_2   85 "(85) 1985" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (month/year given)"
                       98 "(98) Don't know" ;
label define H1RX3_2   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H1RX4_2   15 "(15) 15 years old" 96 "(96) Refused"
                       97 "(97) Legitimate skip (age of partner given)"
                       98 "(98) Don't know" ;
label define H1RX5A_2  3 "(3) 1st to 3rd" 5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th"
                       8 "(8) 8th" 9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th" 13 "(13) Beyond high school"
                       14 "(14) {INITIALS} wasn't in school (skip to Q.7)"
                       15 "(15) {INITIALS} was in school/but don't know what grade"
                       16 "(16) Don't know whether {INITIALS} was in school (skip to Q."
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H1RX6_2   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (partner not in school)"
                       8 "(8) Don't know" ;
label define H1RX7_2   1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1RX8A_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1RX8B_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1RX8C_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1RX8D_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1RX8E_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1RX8F_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1RX8G_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1RX8H_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1RX9_2   1 "(1) All of them" 2 "(2) Most of them"
                       3 "(3) A few of them" 4 "(4) One of them"
                       5 "(5) None of them"
                       6 "(6) When relationship w/{INITIALS} began/no close friends"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions"
                       98 "(98) Don't know" ;
label define H1RX10_2  0 "(0) No" 1 "(1) Yes (skip to Q.14)" 6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX11M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H1RX11Y2  89 "(89) 1989" 91 "(91) 1991" 92 "(92) 1992"
                       93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H1RX12_2  93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (month relationship ended given)"
                       98 "(98) Don't know" ;
label define H1RX13_2  1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (relationship still going on)" ;
label define H1RX14_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX15_2  5 "(5) 1st to 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) {INITIALS} graduated from H.S./in another kind of schoo"
                       14 "(14) {INITIALS} has graduated from high school/is out of sch"
                       15 "(15) {INITIALS} has dropped out of school"
                       16 "(16) {INITIALS} is in school/but don't know what grade"
                       17 "(17) You don't know whether {INITIALS} is in school"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions"
                       98 "(98) Don't know" ;
label define H1RX16_2  0 "(0) No (skip to Q.18)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.18)"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know (skip to Q.18)" ;
label define H1RX17A2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1RX17B2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1RX17C2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1RX17D2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1RX17E2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1RX17F2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1RX18A2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX18B2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX18C2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX18D2  0 "(0) Not marked" 1 "(1) Marked (ask Q.19)"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX18E2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX19A2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19B2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19C2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19D2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19E2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19F2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19G2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX20_2  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21A2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21B2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21C2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21D2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21E2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21F2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21G2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21H2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21I2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21J2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21K2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21L2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21M2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21N2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21O2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21P2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21Q2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX21R2  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (No/one sexual relation/section 26 questions"
                       8 "(8) Don't know" ;
label define H1RX22A2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22B2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22C2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22D2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22E2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22F2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22G2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22H2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22I2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22J2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22K2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22L2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22M2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22N2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22O2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22P2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22Q2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX22R2  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (No/one sexual relation/section 26 questions" ;
label define H1RX24A2  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       6 "(6) Refused (skip to next partner/section)"
                       7 "(7) Legitimate skip (didn't retain card O)" ;
label define H1RX25M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RX25Y2  90 "(90) 1990" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RX26M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RX26Y2  92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RX27_2  1 "(1) Once" 2 "(2) More than once (skip to Q.31)"
                       6 "(6) Refused (skip to Q.31)"
                       7 "(7) Legit skip (1st intercourse date/not=recent intercourse" ;
label define H1RX28_2  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       7 "(7) Legit skip (had intercourse more than once in same month" ;
label define H1RX29A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX29B2  2 "(2) Withdrawal" 4 "(4) Birth control pills"
                       14 "(14) Not other method"
                       97 "(97) Legitimate skip (used only one birth control method)" ;
label define H1RX29C2  12 "(12) Contraceptive film"
                       14 "(14) Not other method"
                       97 "(97) Legitimate skip (used only one birth control method)" ;
label define H1RX30_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RX31_2  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       6 "(6) Refused (skip to next partner/section)"
                       7 "(7) Legitimate skip (intercourse only once in same month)" ;
label define H1RX32_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1RX33A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       11 "(11) Depo Provera"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX33B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 5 "(5) Vaginal sponge"
                       12 "(12) Contraceptive film" 14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX33C2  1 "(1) Condoms (rubbers)" 14 "(14) No other method"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (used only one birth control method)" ;
label define H1RX34_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RX35_2  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (used only one method)" ;
label define H1RX36_2  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (intercourse in only one month)"
                       8 "(8) Don't know (skip to next partner/section)" ;
label define H1RX37_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1RX38A2  1 "(1) Condoms (rubbers)" 4 "(4) Birth control pills"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX38B2  2 "(2) Withdrawal" 3 "(3) Rhythm (safe time)"
                       4 "(4) Birth control pills"
                       6 "(6) Foam/jelly/creme/suppositories"
                       12 "(12) Contraceptive film" 14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX38C2  2 "(2) Withdrawal" 4 "(4) Birth control pills"
                       7 "(7) Diaphragm, with/without jelly"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip (used only one birth control method)" ;
label define H1RX39_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RX40_2  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (used only one method)" ;
label define H1RX41_2
                       9997 "(9997) Legitimate skip (didn't use birth control/Q.36 not=ye"
                       9998 "(9998) Don't know" ;
label define H1NR13_2  96 "(96) Refused"
                       97 "(97) Legitimate skip (never had a sexual relationship)"
                       98 "(98) Don't know" ;
label define H1NR14_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR15_2  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR16_2  0 "(0) No (skip to Q.18)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.18)"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know (skip to Q.18)" ;
label define H1NR17A2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1NR17B2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1NR17C2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1NR17D2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1NR17E2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1NR17F2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)"
                       8 "(8) Don't know" ;
label define H1NR18A2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR18B2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR18C2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR18D2  0 "(0) Not marked" 1 "(1) Marked (ask Q.19)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR18E2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR19A2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19B2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19C2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19D2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19E2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19F2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19G2  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR20A2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20B2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20C2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20D2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20E2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20F2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20G2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20H2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR21_2  1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR22_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legit skip (never had sexual relationship/same sex partn"
                       8 "(8) Don't know" ;
label define H1NR23M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (never had a sexual relationship)"
                       98 "(98) Don't know" ;
label define H1NR23Y2  89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (never had a sexual relationship)"
                       98 "(98) Don't know" ;
label define H1NR24M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (never had a sexual relationship)"
                       98 "(98) Don't know" ;
label define H1NR24Y2  81 "(81) 1981" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (never had a sexual relationship)"
                       98 "(98) Don't know" ;
label define H1NR25_2  1 "(1) Once" 2 "(2) More than once (skip to Q.29)"
                       6 "(6) Refused"
                       7 "(7) Legit skip (1st intercourse date/not=recent intercourse"
                       8 "(8) Don't know" ;
label define H1NR26_2  0 "(0) No (skip to Q.42)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't have sexual intercourse)" ;
label define H1NR27A2  1 "(1) Condoms (rubbers)" 4 "(4) Birth control pills"
                       11 "(11) Depo Provera"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR27B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       6 "(6) Foam/jelly/creme/suppositories"
                       8 "(8) IUD (intrauterine device)"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR27C2  4 "(4) Birth control pills" 5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       9 "(9) Norplant" 11 "(11) Depo Provera"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR28_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR29_2  0 "(0) No (skip to Q.42)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (had intercourse only once)" ;
label define H1NR30_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR31A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR31B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 11 "(11) Depo Provera"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR31C2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 5 "(5) Vaginal sponge"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know" ;
label define H1NR32_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR33_2  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR34_2  0 "(0) No (skip to Q.39)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (intercourse in only one month)" ;
label define H1NR35_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR36A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills"
                       8 "(8) IUD (intrauterine device)"
                       13 "(13) Some other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR36B2  2 "(2) Withdrawal" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam/jelly/creme/suppositories"
                       12 "(12) Contraceptive film" 14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR36C2  1 "(1) Condoms (rubbers)" 3 "(3) Rhythm (safe time)"
                       6 "(6) Foam/jelly/creme/suppositories"
                       7 "(7) Diaphragm, with/without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR37_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR38_2  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)"
                       8 "(8) Don't know" ;
label define H1NR39_2  997 "(997) Legitimate skip (didn't use birth control)"
                       998 "(998) Don't know" ;
label define H1NR40_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (partner is female)" ;
label define H1NR41_2  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (partner is female)" ;
label define H1NR42_2  0 "(0) No (skip to Q.44)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H1NR43_2  1 "(1) 1 time" 2 "(2) 2 times" 4 "(4) 4 times"
                       97 "(97) Legitimate skip" ;
label define H1NR10_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR11_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR12_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define NRRXFLG3  0 "(0) No" 1 "(1) Yes" ;
label define H1RX1M_3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask"
                       98 "(98) Don't know" ;
label define H1RX1Y_3  89 "(89) 1989" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask"
                       98 "(98) Don't know" ;
label define H1RX2_3   93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       97 "(97) Legitimate skip (month/year given)"
                       98 "(98) Don't know" ;
label define H1RX3_3
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX4_3   97 "(97) Legitimate skip (age of partner given)" ;
label define H1RX5A_3  3 "(3) 1st to 3rd" 6 "(6) 6th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school"
                       14 "(14) {INITIALS} wasn't in school (skip to Q.7)"
                       16 "(16) You don't know whether {INITIALS} is in school (skip to"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX6_3   0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (partner not in school)" ;
label define H1RX7_3   1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX8A_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX8B_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX8C_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX8D_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX8E_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX8F_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX8G_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX8H_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX9_3   1 "(1) All of them" 2 "(2) Most of them"
                       3 "(3) A few of them" 4 "(4) One of them"
                       5 "(5) None of them"
                       6 "(6) When relationship w/{INITIALS} began/no close friends"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX10_3  0 "(0) No" 1 "(1) Yes (skip to Q.14)"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX11M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H1RX11Y3  93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H1RX12_3  93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (month relationship ended given)"
                       98 "(98) Don't know" ;
label define H1RX13_3  1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood"
                       7 "(7) Legitimate skip (relationship still going on)"
                       8 "(8) Don't know" ;
label define H1RX14_3  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1RX15_3  5 "(5) 1st to 5th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) {INITIALS} graduated from H.S./in another kind of schoo"
                       14 "(14) {INITIALS} has graduated from high school/is out of sch"
                       17 "(17) You don't know whether {INITIALS} is in school"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX16_3  0 "(0) No (skip to Q.18)" 1 "(1) Yes"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX17A3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1RX17B3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1RX17C3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1RX17D3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1RX17E3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1RX17F3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1RX18A3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX18B3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX18C3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX18D3  0 "(0) Not marked" 1 "(1) Marked (ask Q.19)"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX18E3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX19A3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19B3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19C3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19D3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19E3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19F3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX19G3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1RX20_3  1 "(1) Male" 2 "(2) Female"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H1RX21A3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21B3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21C3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21D3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21E3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21F3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21G3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21H3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21I3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21J3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21K3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21L3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21M3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21N3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21O3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21P3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21Q3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX21R3  0 "(0) Card rejected" 1 "(1) Card kept"
                       6 "(6) Refused"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske"
                       8 "(8) Don't know" ;
label define H1RX22A3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22B3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22C3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22D3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22E3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22F3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22G3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22H3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22I3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22J3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22K3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22L3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22M3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22N3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22O3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22P3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22Q3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX22R3  1 "(1) We went out together in a group"
                       2 "(2) I met my partner's parents"
                       3 "(3) I told other people that we were a couple"
                       4 "(4) Saw less of friends/so I could spend more time w/partner"
                       5 "(5) We went out together alone"
                       6 "(6) We held hands"
                       7 "(7) I gave my partner a present"
                       8 "(8) My partner game me a present"
                       9 "(9) I told my partner I loved him/her"
                       10 "(10) My partner told me that s/he loved me"
                       11 "(11) We thought of ourselves as a couple"
                       12 "(12) We talked about contraception/STDs"
                       13 "(13) We kissed"
                       14 "(14) We touched each other under clothing/with no clothes on"
                       15 "(15) We had sexual intercourse"
                       16 "(16) We touched each others' genitals (private parts)"
                       17 "(17) My partner/I got pregnant"
                       18 "(18) We got married"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H1RX24A3  0 "(0) No (skip to next section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't retain card O)" ;
label define H1RX25M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RX25Y3  89 "(89) 1989" 92 "(92) 1992" 94 "(94) 1994"
                       95 "(95) 1995"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RX26M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RX26Y3  89 "(89) 1989" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995"
                       97 "(97) Legitimate skip (intercourse not confirmed)"
                       98 "(98) Don't know" ;
label define H1RX27_3  1 "(1) Once" 2 "(2) More than once (skip to Q.31)"
                       7 "(7) Legit skip (1st intercourse date/not=recent intercourse" ;
label define H1RX28_3  0 "(0) No (skip to next section)" 1 "(1) Yes"
                       7 "(7) Legit skip (had intercourse more than once in same month" ;
label define H1RX29A3  1 "(1) Condoms (rubbers)"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX29B3  14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX29C3  97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX30_3  7 "(7) Legitimate skip (used condoms)" ;
label define H1RX31_3  0 "(0) No (skip to next section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (had intercourse only once)" ;
label define H1RX32_3  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1RX33A3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 5 "(5) Vaginal sponge"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX33B3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX33C3  1 "(1) Condoms (rubbers)"
                       97 "(97) Legitimate skip (used only one birth control method)"
                       98 "(98) Don't know" ;
label define H1RX34_3  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RX35_3  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (used only one method)" ;
label define H1RX36_3  0 "(0) No (skip to next section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (intercourse in only one month)" ;
label define H1RX37_3  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1RX38A3  1 "(1) Condoms (rubbers)" 4 "(4) Birth control pills"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX38B3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1RX38C3  5 "(5) Vaginal sponge" 14 "(14) No other method"
                       97 "(97) Legitimate skip (used only one birth control method)" ;
label define H1RX39_3  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (used condoms)" ;
label define H1RX40_3  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (used only one method)" ;
label define H1RX41_3  9997 "(9997) Legitimate skip" ;
label define H1NR13_3  96 "(96) Refused"
                       97 "(97) Legitimate skip (never had a sexual relationship)"
                       98 "(98) Don't know" ;
label define H1NR14_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR15_3  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR16_3  0 "(0) No (skip to Q.18)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.18)"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know (skip to Q.18)" ;
label define H1NR17A3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1NR17B3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1NR17C3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1NR17D3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1NR17E3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1NR17F3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Hispanic)" ;
label define H1NR18A3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR18B3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR18C3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR18D3  0 "(0) Not marked" 1 "(1) Marked (ask Q.19)"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR18E3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR19A3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19B3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19C3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19D3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19E3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19F3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR19G3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define H1NR20A3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20B3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20C3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20D3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20E3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20F3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20G3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR20H3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR21_3  1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H1NR22_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legit skip (never had sexual relationship/same sex partn"
                       8 "(8) Don't know" ;
label define H1NR23M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (never had a sexual relationship)"
                       98 "(98) Don't know" ;
label define H1NR23Y3  81 "(81) 1981" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (never had a sexual relationship)"
                       98 "(98) Don't know" ;
label define H1NR24M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (never had a sexual relationship)"
                       98 "(98) Don't know" ;
label define H1NR24Y3  81 "(81) 1981" 89 "(89) 1989" 90 "(90) 1990"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) Refused"
                       97 "(97) Legitimate skip (never had a sexual relationship)"
                       98 "(98) Don't know" ;
label define H1NR25_3  1 "(1) Once" 2 "(2) More than once (skip to Q.29)"
                       6 "(6) Refused"
                       7 "(7) Legit skip (1st intercourse date/not=recent intercourse"
                       8 "(8) Don't know" ;
label define H1NR26_3  0 "(0) No (skip to Q.42)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't have sexual intercourse)" ;
label define H1NR27A3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR27B3  2 "(2) Withdrawal" 4 "(4) Birth control pills"
                       12 "(12) Contraceptive film" 14 "(14) No other method"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR27C3  1 "(1) Condoms (rubbers)" 11 "(11) Depo Provera"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know" ;
label define H1NR28_3  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR29_3  0 "(0) No (skip to Q.42)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.42)"
                       7 "(7) Legitimate skip (had intercourse only once)" ;
label define H1NR30_3  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR31A3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 9 "(9) Norplant"
                       11 "(11) Depo Provera"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR31B3  2 "(2) Withdrawal" 4 "(4) Birth control pills"
                       14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR31C3  3 "(3) Rhythm (safe time)"
                       97 "(97) Legitimate skip (didn't use birth control)"
                       98 "(98) Don't know" ;
label define H1NR32_3  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR33_3  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR34_3  0 "(0) No (skip to Q.42)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (intercourse in only one month)" ;
label define H1NR35_3  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR36A3  1 "(1) Condoms (rubbers)" 4 "(4) Birth control pills"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR36B3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR36C3  4 "(4) Birth control pills"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip (didn't use birth control)" ;
label define H1NR37_3  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR38_3  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H1NR39_3  997 "(997) Legitimate skip (didn't use birth control)" ;
label define H1NR40_3  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (partner is female)" ;
label define H1NR41_3  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (partner is female)" ;
label define H1NR42_3  0 "(0) No (skip to Q.44)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (intercourse in only one month)" ;
label define H1NR43_3  1 "(1) 1 time" 97 "(97) Legitimate skip" ;
label define H1NR44    0 "(0) No (skip to Q.54)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.54)"
                       7 "(7) Legitimate skip (didn't answer yes to Q.5)"
                       8 "(8) Don't know (skip to Q.54)" ;
label define H1NR45    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H1NR46    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H1NR47    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H1NR48    0 "(0) Never" 1 "(1) Rarely" 2 "(2) Sometimes"
                       3 "(3) Often" 4 "(4) Always" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NR49    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1NR50    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H1NR51    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1NR52    0 "(0) Never" 1 "(1) Rarely" 2 "(2) Sometimes"
                       3 "(3) Often" 4 "(4) Always" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1NR53    1 "(1) All male" 2 "(2) All female"
                       3 "(3) Some male/some female" 7 "(7) Legitimate skip" ;
label define RXCARD1   0 "(0) No problems with ordered cards"
                       1 "(1) Reserve code in ordered sequence/resulting in recoding"
                       2 "(2) Inconsistent data in ordered sequence/resulting in recod"
                       3 "(3) Inconsistent data/reserve code resulting in recoding"
                       4 "(4) All cards=96/98/99/system missing"
                       7 "(7) Legitimate skip/no cards ordered" ;
label define RXCARD2   0 "(0) No problems with ordered cards"
                       1 "(1) Reserve code in ordered sequence/resulting in recoding"
                       2 "(2) Inconsistent data in ordered sequence/resulting in recod"
                       3 "(3) Inconsistent data/reserve code resulting in recoding"
                       4 "(4) All cards=96/98/99/system missing"
                       7 "(7) Legitimate skip/no cards ordered" ;
label define RXCARD3   0 "(0) No problems with ordered cards"
                       1 "(1) Reserve code in ordered sequence/resulting in recoding"
                       2 "(2) Inconsistent data in ordered sequence/resulting in recod"
                       3 "(3) Inconsistent data/reserve code resulting in recoding"
                       4 "(4) All cards=96/98/99/system missing"
                       7 "(7) Legitimate skip/no cards ordered" ;
label define H1BC1     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1BC2     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1BC3     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1BC4     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1BC5     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1BC6     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1BC7     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1BC8     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1TO1     0 "(0) No (skip to Q.9)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.9)"
                       8 "(8) Don't know (skip to Q.9)"
                       9 "(9) Not applicable (skip to Q.9)" ;
label define H1TO2     0 "(0) Never smoked a whole cigarette (skip to Q.9)"
                       1 "(1) 1 year" 2 "(2) 2 years" 4 "(4) 3-4 years"
                       5 "(5) 5 years" 6 "(6) 6 years" 7 "(7) 7 years"
                       8 "(8) 8 years" 9 "(9) 9 years" 10 "(10) 10 years"
                       11 "(11) 11 years" 12 "(12) 12 years"
                       13 "(13) 13 years" 14 "(14) 14 years"
                       15 "(15) 15 years" 16 "(16) 16 years"
                       17 "(17) 17 years" 18 "(18) 18 years"
                       19 "(19) 19 years" 20 "(20) 20 years"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (never tried smoking cigarettes)"
                       98 "(98) Don't know" ;
label define H1TO3     0 "(0) No (skip to Q.5)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.5)"
                       7 "(7) Legitimate skip (never smoked a whole cigarette)" ;
label define H1TO4     0 "(0) Under one year" 1 "(1) 1 year" 2 "(2) 2 years"
                       5 "(5) 2-5 years" 6 "(6) 6 years" 7 "(7) 7 years"
                       8 "(8) 8 years" 9 "(9) 9 years" 10 "(10) 10 years"
                       11 "(11) 11 years" 12 "(12) 12 years"
                       13 "(13) 13 years" 14 "(14) 14 years"
                       15 "(15) 15 years" 16 "(16) 16 years"
                       17 "(17) 17 years" 18 "(18) 18 years and older"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (never smoked regular)"
                       98 "(98) Don't know" ;
label define H1TO5     0 "(0) No days" 96 "(96) Refused (skip to Q.7)"
                       97 "(97) Legitimate skip (never smoked regular)"
                       98 "(98) Don't know (skip to Q.7)" ;
label define H1TO6M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1TO6Y    77 "(77) 1976 to 1977" 79 "(79) 1978 to 1979"
                       80 "(80) 1980" 82 "(82) 1981 to 1982"
                       84 "(84) 1983 to 1984" 85 "(85) 1985" 86 "(86) 1986"
                       87 "(87) 1987" 88 "(88) 1988" 89 "(89) 1989"
                       90 "(90) 1990" 91 "(91) 1991" 92 "(92) 1992"
                       93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1TO7     0 "(0) No cigarettes" 96 "(96) Refused"
                       97 "(97) Legit skip (never smoked regularly/didn't smoke past 30"
                       98 "(98) Don't know" ;
label define H1TO8     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legit skip (never smoked regularly/didn't smoke past 30d"
                       8 "(8) Don't know" ;
label define H1TO9     0 "(0) No friends" 1 "(1) One friend"
                       2 "(2) Two friends" 3 "(3) Three friends"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1TO10    0 "(0) No days (If 0/skip to Q.12)"
                       96 "(96) Refused (skip to Q.12)"
                       97 "(97) Legit skip (skip to Q.12)"
                       98 "(98) Don't know (skip to Q.12)"
                       99 "(99) Not applicable (skip to Q.12)" ;
label define H1TO11    0 "(0) Under one year" 1 "(1) 1 year" 2 "(2) 2 years"
                       3 "(3) 3 years" 4 "(4) 4 years" 5 "(5) 5 years"
                       6 "(6) 6 years" 7 "(7) 7 years" 8 "(8) 8 years"
                       9 "(9) 9 years" 10 "(10) 10 years" 11 "(11) 11 years"
                       12 "(12) 12 years" 13 "(13) 13 years"
                       14 "(14) 14 years" 15 "(15) 15 years"
                       16 "(16) 16 years" 17 "(17) 17 years"
                       18 "(18) 18 years and older" 96 "(96) Refused"
                       97 "(97) Legitimate skip (didn't use chewing tobacco/snuff)"
                       98 "(98) Don't know" ;
label define H1TO12    0 "(0) No (skip to Q.29)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.29)"
                       8 "(8) Don't know (skip to Q.29)"
                       9 "(9) Not applicable (skip to Q.29)" ;
label define H1TO13    0 "(0) No (skip to Q.15)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (hasn't had a drink)"
                       8 "(8) Don't know (skip to Q.29)" ;
label define H1TO14    1 "(1) 1 year" 2 "(2) 2 years" 3 "(3) 3 years"
                       4 "(4) 4 years" 5 "(5) 5 years" 6 "(6) 6 years"
                       7 "(7) 7 years" 8 "(8) 8 years" 9 "(9) 9 years"
                       10 "(10) 10 years" 11 "(11) 11 years"
                       12 "(12) 12 years" 13 "(13) 13 years"
                       14 "(14) 14 years" 15 "(15) 15 years"
                       16 "(16) 16 years" 17 "(17) 17 years"
                       18 "(18) 18 years" 19 "(19) 19 years and older"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't had a drink/drunk when not with"
                       98 "(98) Don't know" ;
label define H1TO15    1 "(1) Every day/almost every day"
                       2 "(2) 3-5 days/week" 3 "(3) 1 or 2 days/week"
                       4 "(4) 2 or 3 days/month"
                       5 "(5) Once a month or less (3-12 times in past 12 months)"
                       6 "(6) 1 or 2 days in past 12 months"
                       7 "(7) Never (skip to Q.29)"
                       96 "(96) Refused (skip to Q.29)"
                       97 "(97) Legitimate skip (hasn't had a drink)"
                       98 "(98) Don't know (skip to Q.29)" ;
label define H1TO16    96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't drunk in past 12 months)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1TO17    1 "(1) Every day/almost every day"
                       2 "(2) 3-5 days/week" 3 "(3) 1 or 2 days/week"
                       4 "(4) 2 or 3 days/month"
                       5 "(5) Once a month or less (3-12 times in past 12 months)"
                       6 "(6) 1 or 2 days in past 12 months" 7 "(7) Never"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't drunk in past 12 months)"
                       98 "(98) Don't know" ;
label define H1TO18    1 "(1) Every day/almost every day"
                       2 "(2) 3-5 days/week" 3 "(3) 1 or 2 days/week"
                       4 "(4) 2 or 3 days/month"
                       5 "(5) Once a month or less (3-12 times in past 12 months)"
                       6 "(6) 1 or 2 days in past 12 months" 7 "(7) Never"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't drunk in past 12 months)"
                       98 "(98) Don't know" ;
label define H1TO19    1 "(1) Beer" 2 "(2) Wine" 3 "(3) Wine coolers"
                       4 "(4) Straight liquor" 5 "(5) Mixed drinks"
                       6 "(6) Whatever is available" 96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't drunk in past 12 months)"
                       98 "(98) Don't know" ;
label define H1TO20    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H1TO21    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       9 "(9) Not applicable" ;
label define H1TO22    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)" ;
label define H1TO23    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)" ;
label define H1TO24    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H1TO25    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H1TO26    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H1TO27    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H1TO28    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H1TO29    0 "(0) No friends" 1 "(1) One friend"
                       2 "(2) Two friends" 3 "(3) Three friends"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1TO30    0 "(0) You never tried marijuana" 1 "(1) 1 year"
                       2 "(2) 2 years" 3 "(3) 3 years" 4 "(4) 4 years"
                       5 "(5) 5 years" 6 "(6) 6 years" 7 "(7) 7 years"
                       8 "(8) 8 years" 9 "(9) 9 years" 10 "(10) 10 years"
                       11 "(11) 11 years" 12 "(12) 12 years"
                       13 "(13) 13 years" 14 "(14) 14 years"
                       15 "(15) 15 years" 16 "(16) 16 years"
                       17 "(17) 17 years" 18 "(18) 18 years and older"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H1TO31    996 "(996) Refused"
                       997 "(997) Legitimate skip (hasn't tried marijuana)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H1TO32    996 "(996) Refused"
                       997 "(997) Legitimate skip (hasn't tried marijuana)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H1TO33    0 "(0) No friends" 1 "(1) One friend"
                       2 "(2) Two friends" 3 "(3) Three friends"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1TO34    0 "(0) You never tried cocaine" 1 "(1) 1 year"
                       2 "(2) 2 years" 3 "(3) 3 years" 7 "(7) 4-7 years"
                       10 "(10) 8-10 years" 11 "(11) 11 years"
                       12 "(12) 12 years" 13 "(13) 13 years"
                       14 "(14) 14 years" 15 "(15) 15 years"
                       16 "(16) 16 years" 17 "(17) 17 years"
                       18 "(18) 18 years and older" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1TO35    996 "(996) Refused"
                       997 "(997) Legitimate skip (never tried cocaine)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H1TO36    0 "(0) No times" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 4 "(4) 4 times" 5 "(5) 5 times"
                       10 "(10) 7-10 times" 14 "(14) 11-14 times"
                       30 "(30) 15-30 times" 33 "(33) 33 or more times"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (never tried cocaine)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H1TO37    0 "(0) You never tried inhalants such as these"
                       1 "(1) 1 year" 2 "(2) 2 years" 3 "(3) 3 years"
                       4 "(4) 4 years" 5 "(5) 5 years" 6 "(6) 6 years"
                       7 "(7) 7 years" 8 "(8) 8 years" 9 "(9) 9 years"
                       10 "(10) 10 years" 11 "(11) 11 years"
                       12 "(12) 12 years" 13 "(13) 13 years"
                       14 "(14) 14 years" 15 "(15) 15 years"
                       16 "(16) 16 years" 17 "(17) 17 years"
                       18 "(18) 18 years and older" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1TO38    996 "(996) Refused"
                       997 "(997) Legitimate skip (never tried inhalants such as these)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H1TO39    996 "(996) Refused"
                       997 "(997) Legitimate skip (never tried inhalants such as these)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H1TO40    0 "(0) You never tried any other type of illegal drug"
                       1 "(1) 1 year" 3 "(3) 2-3 years" 6 "(6) 4-6 years"
                       9 "(9) 8-9 years" 11 "(11) 10-11 years"
                       12 "(12) 12 years" 13 "(13) 13 years"
                       14 "(14) 14 years" 15 "(15) 15 years"
                       16 "(16) 16 years" 17 "(17) 17 years"
                       18 "(18) 18 years and older" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1TO41    996 "(996) Refused"
                       997 "(997) Legitimate skip (never tried any other type of illegal"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H1TO42    996 "(996) Refused"
                       997 "(997) Legitimate skip (never tried any other type of illegal"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H1TO43    0 "(0) No (skip to Q.50)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never tried any other type of illegal d"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1TO44    1 "(1) Once or twice (skip to Q.50)"
                       2 "(2) A few times" 3 "(3) Many times" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never injected an illegal drug)" ;
label define H1TO45    4 "(4) 1-4 years" 11 "(11) 5-11 years"
                       14 "(14) 12-14 years" 15 "(15) 15 years and older"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H1TO46    0 "(0) Never" 1 "(1) 1 time or 2 times"
                       2 "(2) 3 or more times" 7 "(7) Legitimate skip" ;
label define H1TO47    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1TO48    0 "(0) No (skip to Q.50)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H1TO49    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1TO50    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1TO51    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1TO52    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1TO53    0 "(0) No (skip to next section)" 1 "(1) Yes"
                       6 "(6) Refused (skip to next section)"
                       8 "(8) Don't know (skip to next section)"
                       9 "(9) Not applicable (skip to next section)" ;
label define H1TO54A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (gun not available)"
                       8 "(8) Don't know" ;
label define H1TO54B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (gun not available)"
                       8 "(8) Don't know" ;
label define H1TO54C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (gun not available)"
                       8 "(8) Don't know" ;
label define H1TO54D   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (gun not available)"
                       8 "(8) Don't know" ;
label define H1DS1     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1DS2     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1DS3     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1DS4     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1DS5     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1DS6     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1DS7     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1DS8     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1DS9     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1DS10    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1DS11    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1DS12    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1DS13    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1DS14    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1DS15    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1JO1     0 "(0) No (skip to Q.3)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.3)"
                       7 "(7) Legitimate skip (sex=no or drink=no)"
                       8 "(8) Don't know (skip to Q.3)" ;
label define H1JO2     0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (hadn't been drinking at 1st intercourse" ;
label define H1JO3     0 "(0) No (skip to Q.5)" 1 "(1) Yes"
                       2 "(2) You have had sexual intercourse only once (skip to Q.5)"
                       6 "(6) Refused (skip to Q.5)"
                       7 "(7) Legitimate skip (sex=no or drink=no)"
                       8 "(8) Don't know (skip to Q.5)" ;
label define H1JO4     0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legit skip (hadn't been drinking at most recent intercou" ;
label define H1JO5     0 "(0) No (skip to Q.7)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.7)"
                       7 "(7) Legitimate skip (sex=no or drugs=no)" ;
label define H1JO6A    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hadn't been using drugs at 1st intercou"
                       8 "(8) Don't know" ;
label define H1JO6B    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hadn't been using drugs at 1st intercou"
                       8 "(8) Don't know" ;
label define H1JO6C    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hadn't been using drugs at 1st intercou"
                       8 "(8) Don't know" ;
label define H1JO6D    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hadn't been using drugs at 1st intercou"
                       8 "(8) Don't know" ;
label define H1JO6E    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hadn't been using drugs at 1st intercou"
                       8 "(8) Don't know" ;
label define H1JO7     0 "(0) No (skip to Q.9)" 1 "(1) Yes"
                       2 "(2) You have had sexual intercourse only once (skip to Q.9)"
                       6 "(6) Refused (skip to Q.9)"
                       7 "(7) Legitimate skip (sex=no or drink=no)" ;
label define H1JO8A    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legit skip (Not been using drugs at most recent intercou" ;
label define H1JO8B    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legit skip (Not been using drugs at most recent intercou" ;
label define H1JO8C    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legit skip (Not been using drugs at most recent intercou" ;
label define H1JO8D    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legit skip (Not been using drugs at most recent intercou" ;
label define H1JO8E    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legit skip (Not been using drugs at most recent intercou" ;
label define H1JO9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (drink=no)" 8 "(8) Don't know" ;
label define H1JO10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (drink=no)" 8 "(8) Don't know" ;
label define H1JO11    0 "(0) No (skip to Q.14)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.14)"
                       7 "(7) Legitimate skip (drink=no)" ;
label define H1JO12    0 "(0) No (skip to Q.14)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (fight=no)" ;
label define H1JO13    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legit skip (Not been drinking during most recent fight)" ;
label define H1JO14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (drink=no)" ;
label define H1JO15    0 "(0) No (skip to Q.17)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.17)"
                       7 "(7) Legitimate skip (drink=no)" ;
label define H1JO16    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (hasn't drunk alcohol alone)" ;
label define H1JO17    0 "(0) No (skip to Q.19)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.19)"
                       7 "(7) Legitimate skip (drink=no or drugs=no)" ;
label define H1JO18A   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk alcohol when using drugs)"
                       8 "(8) Don't know" ;
label define H1JO18B   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk alcohol when using drugs)"
                       8 "(8) Don't know" ;
label define H1JO18C   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk alcohol when using drugs)"
                       8 "(8) Don't know" ;
label define H1JO18D   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk alcohol when using drugs)"
                       8 "(8) Don't know" ;
label define H1JO18E   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk alcohol when using drugs)"
                       8 "(8) Don't know" ;
label define H1JO19    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (drugs=no)" ;
label define H1JO20    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (drugs=no)" ;
label define H1JO21    0 "(0) No (skip to Q.23)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.23)"
                       7 "(7) Legitimate skip (drugs=no)" ;
label define H1JO22A   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't gotten into fight when using dru"
                       8 "(8) Don't know" ;
label define H1JO22B   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't gotten into fight when using dru"
                       8 "(8) Don't know" ;
label define H1JO22C   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't gotten into fight when using dru"
                       8 "(8) Don't know" ;
label define H1JO22D   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't gotten into fight when using dru"
                       8 "(8) Don't know" ;
label define H1JO22E   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't gotten into fight when using dru"
                       8 "(8) Don't know" ;
label define H1JO23    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (drugs=no)" ;
label define H1JO24    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (drugs=no)" 8 "(8) Don't know" ;
label define H1JO25    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1JO26    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1FV1     0 "(0) Never" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1FV2     0 "(0) Never" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1FV3     0 "(0) Never" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1FV4     0 "(0) Never" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1FV5     0 "(0) Never" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1FV6     0 "(0) Never" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1FV7     0 "(0) Never" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1FV8     0 "(0) Never" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1FV9     0 "(0) None (skip to Q.11)" 1 "(1) 1 day"
                       2 "(2) 2 or 3 days" 3 "(3) 4 or 5 days"
                       4 "(4) 6 or more days" 6 "(6) Refused (skip to Q.11)"
                       8 "(8) Don't know (skip to Q.11)"
                       9 "(9) Not applicable (skip to Q.11)" ;
label define H1FV10    1 "(1) A handgun"
                       2 "(2) Other kind of guy-rifle/shotgun/etc."
                       3 "(3) A club/stick/bat/pipe" 4 "(4) A knife or razor"
                       5 "(5) Some other kind of weapon" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H1FV11    1 "(1) A total stranger"
                       2 "(2) A friend or someone you knew"
                       3 "(3) A {GIRLFRIEND/BOYFRIEND} or date"
                       4 "(4) A parent/brother/sister/other family member"
                       5 "(5) Someone not listed here"
                       6 "(6) More than one of the persons listed above"
                       7 "(7) Never fought (skip to next section)"
                       96 "(96) Refused (skip to next section)"
                       98 "(98) Don't know (skip to next section)"
                       99 "(99) Not applicable (skip to next section)" ;
label define H1FV12    1 "(1) At school" 2 "(2) In your neighborhood"
                       3 "(3) At home" 4 "(4) At work" 5 "(5) Someplace else"
                       6 "(6) Refused" 7 "(7) Legitimate skip (never fought)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1FV13    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H1FV14M   0 "(0) Never treated" 1 "(1) January" 2 "(2) February"
                       3 "(3) March" 4 "(4) April" 5 "(5) May" 6 "(6) June"
                       7 "(7) July" 8 "(8) August" 9 "(9) September"
                       10 "(10) October to December" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H1FV14Y   0 "(0) Never treated" 80 "(80) 1977 to 1980"
                       87 "(87) 1981 to 1987" 88 "(88) 1988" 89 "(89) 1989"
                       90 "(90) 1990" 91 "(91) 1991" 92 "(92) 1992"
                       93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1MP1     1 "(1) I have not hair at all"
                       2 "(2) I have a little hair"
                       3 "(3) I have some hair/not a lot/spread out/is thicker"
                       4 "(4) I have a lot of hair that is thick"
                       5 "(5) Have whole lot of hair that is very thick/much as grown"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (female respondent)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MP2     1 "(1) I have few scattered hair/growth isn't thick"
                       2 "(2) Hair is somewhat thick/still see a lot of skin under it"
                       3 "(3) Hair is thick/can't see much skin under it"
                       4 "(4) Hair is very thick/like grown man's facial hair"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (female respondent)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MP3     1 "(1) No/about the same as when in grade school"
                       2 "(2) Yes/a little lower as when in grade school"
                       3 "(3) Yes/somewhat lower than when in grade school"
                       4 "(4) Yes/a lot lower than when in grade school"
                       5 "(5) Yes/a whole lot lower than when in grade school"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (female respondent)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1MP4     1 "(1) I look younger than most"
                       2 "(2) I look younger than some"
                       3 "(3) I look about average"
                       4 "(4) I look older than some"
                       5 "(5) I look older than most" 6 "(6) Refused"
                       7 "(7) Legitimate skip (female respondent)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1FP1
                       1 "(1) My breasts are about the same as when in grade school"
                       2 "(2) My breasts are a little bigger than when in grade school"
                       3 "(3) My breasts are somewhat bigger than when in grade school"
                       4 "(4) My breasts are a lot bigger than when in grade school"
                       5 "(5) My breasts are a whole lot bigger than when in grade sch"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (male respondent)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1FP2
                       1 "(1) My body is about as curvy as when in grade school"
                       2 "(2) My body is a little more curvy than when in grade school"
                       3 "(3) My body is somewhat more curvy than when in grade school"
                       4 "(4) My body is a lot more curvy than when in grade school"
                       5 "(5) My body is a whole lot more curvy than when in grade sch"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (male respondent)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1FP3     0 "(0) No (skip to Q.6)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.6)"
                       7 "(7) Legitimate skip (male respondent)"
                       8 "(8) Don't know (skip to Q.6)"
                       9 "(9) Not applicable (skip to Q.6)" ;
label define H1FP4     7 "(7) 7 years old and younger" 8 "(8) 8 years old"
                       9 "(9) 9 years old" 10 "(10) 10 years old"
                       11 "(11) 11 years old" 12 "(12) 12 years old"
                       13 "(13) 13 years old" 14 "(14) 14 years old"
                       15 "(15) 15 years old" 16 "(16) 16 years old"
                       17 "(17) 17 years old and older" 96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't menstruated)"
                       98 "(98) Don't know" ;
label define H1FP5M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't menstruated)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1FP5D    96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't menstruated)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1FP6     1 "(1) I look younger than most"
                       2 "(2) I look younger than some"
                       3 "(3) I look about average"
                       4 "(4) I look older than some"
                       5 "(5) I look older than most" 6 "(6) Refused"
                       7 "(7) Legitimate skip (male respondent)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1FP7     0 "(0) No (skip to next section)" 1 "(1) Yes"
                       6 "(6) Refused (skip to next section)"
                       7 "(7) Legitimate skip (male resp/hasn't had sexual intercourse"
                       8 "(8) Don't know (skip to next section)" ;
label define H1FP8     1 "(1) 1 time" 2 "(2) 2 times" 3 "(3) 3 times"
                       4 "(4) 4 or more times"
                       97 "(97) Legitimate skip (hasn't been pregnant)"
                       98 "(98) Don't know" ;
label define H1FP9M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't been pregnant)"
                       98 "(98) Don't know" ;
label define H1FP9Y    91 "(91) 1991 and before" 92 "(92) 1992"
                       93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't been pregnant)"
                       98 "(98) Don't know" ;
label define H1FP10    0 "(0) None (skip to Q.12)" 1 "(1) 1 time"
                       2 "(2) 2 times" 3 "(3) 3 or more times"
                       7 "(7) Legitimate skip" ;
label define H1FP11M1  1 "(1) January or February" 3 "(3) March"
                       4 "(4) April or May" 6 "(6) June"
                       7 "(7) July or August" 9 "(9) September or October"
                       11 "(11) November or December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H1FP11Y1  94 "(94) 1994" 95 "(95) 1995"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H1FP12_1  0 "(0) No (skip to Q.15)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (skip to Q.15)" ;
label define H1FP13A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Birth control pills" 11 "(11) Depo Provera"
                       97 "(97) Legitimate skip" ;
label define H1FP13B1  14 "(14) No other method (skip to Q.14)"
                       97 "(97) Legitimate skip" ;
label define H1FP13C1  97 "(97) Legitimate skip" ;
label define H1FP14_1  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FP15_1  1 "(1) Definitely no" 2 "(2) Probably no"
                       3 "(3) Neither wanted/nor didn't want"
                       4 "(4) Probably yes" 5 "(5) Definitely yes"
                       7 "(7) Legitimate skip" ;
label define H1FP17_1  0 "(0) No" 1 "(1) Yes" 2 "(2) You didn't care"
                       7 "(7) Legitimate skip" ;
label define H1FP20M1  1 "(1) January to March" 4 "(4) April" 5 "(5) May"
                       6 "(6) June" 7 "(7) July" 8 "(8) August or September"
                       10 "(10) October to December"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know/pregnancy hasn't ended" ;
label define H1FP20Y1  94 "(94) 1994" 95 "(95) 1995"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know/pregnancy hasn't ended" ;
label define H1FP21_1
                       1 "(1) It hasn't ended/still pregnant (skip to next section)"
                       2 "(2) A live birth"
                       4 "(4) Still birth/miscarriage (skip to next pregnancy/section)"
                       5 "(5) An abortion (skip to next pregnancy/section)"
                       7 "(7) Legitimate skip" ;
label define H1FP22_1  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FP23A1  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FP24A1  0 "(0) No" 1 "(1) Yes (skip to Q.26)"
                       7 "(7) Legitimate skip" ;
label define H1FP11M2  1 "(1) January or February" 3 "(3) March"
                       4 "(4) April or May" 7 "(7) July or August"
                       9 "(9) September or October"
                       11 "(11) November or December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H1FP11Y2  94 "(94) 1994" 95 "(95) 1995"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H1FP12_2  0 "(0) No (skip to Q.15)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H1FP13A2  1 "(1) Condoms (rubbers)" 97 "(97) Legitimate skip" ;
label define H1FP13B2  14 "(14) No other method" 97 "(97) Legitimate skip" ;
label define H1FP13C2  97 "(97) Legitimate skip" ;
label define H1FP14_2  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FP15_2  1 "(1) Definitely no" 2 "(2) Probably no"
                       3 "(3) Neither wanted/nor didn't want"
                       4 "(4) Probably yes" 5 "(5) Definitely yes"
                       7 "(7) Legitimate skip" ;
label define H1FP17_2  0 "(0) No" 1 "(1) Yes" 2 "(2) You didn't care"
                       7 "(7) Legitimate skip" ;
label define H1FP20M2  1 "(1) January to March" 4 "(4) April" 5 "(5) May"
                       8 "(8) August or September"
                       10 "(10) October to December"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know/pregnancy hasn't ended" ;
label define H1FP20Y2  94 "(94) 1994" 95 "(95) 1995"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know/pregnancy hasn't ended" ;
label define H1FP21_2
                       1 "(1) It hasn't ended/still pregnant (skip to next section)"
                       2 "(2) A live birth"
                       4 "(4) Still birth/miscarriage (skip to next pregnancy/section)"
                       5 "(5) An abortion (skip to next pregnancy/section)"
                       7 "(7) Legitimate skip" ;
label define H1FP22_2  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FP23A2  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H1FP24A2  0 "(0) No (skip to Q.26)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H1FP11M3  11 "(11) November or December"
                       97 "(97) Legitimate skip" ;
label define H1FP11Y3  94 "(94) 1994" 97 "(97) Legitimate skip" ;
label define H1FP12_3  0 "(0) No (skip to Q.15)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H1FP13A3  97 "(97) Legitimate skip" ;
label define H1FP13B3  97 "(97) Legitimate skip" ;
label define H1FP13C3  97 "(97) Legitimate skip" ;
label define H1FP14_3  7 "(7) Legitimate skip" ;
label define H1FP15_3  1 "(1) Definitely no" 2 "(2) Probably no"
                       3 "(3) Neither wanted/nor didn't want"
                       4 "(4) Probably yes" 5 "(5) Definitely yes"
                       7 "(7) Legitimate skip" ;
label define H1FP17_3  0 "(0) No" 1 "(1) Yes" 2 "(2) You didn't care"
                       7 "(7) Legitimate skip" ;
label define H1FP20M3  97 "(97) Legitimate skip"
                       98 "(98) Don't know/pregnancy hasn't ended" ;
label define H1FP20Y3  97 "(97) Legitimate skip"
                       98 "(98) Don't know/pregnancy hasn't ended" ;
label define H1FP21_3
                       1 "(1) It hasn't ended/still pregnant (skip to next section)"
                       2 "(2) A live birth"
                       4 "(4) Still birth/miscarriage (skip to next pregnancy/section)"
                       5 "(5) An abortion (skip to next pregnancy/section)"
                       7 "(7) Legitimate skip" ;
label define H1FP22_3  7 "(7) Legitimate skip" ;
label define H1FP23A3  7 "(7) Legitimate skip" ;
label define H1FP24A3  7 "(7) Legitimate skip" ;
label define H1FP11M4  97 "(97) Legitimate skip" ;
label define H1FP11Y4  97 "(97) Legitimate skip" ;
label define H1FP12_4  7 "(7) Legitimate skip" ;
label define H1FP13A4  97 "(97) Legitimate skip" ;
label define H1FP13B4  97 "(97) Legitimate skip" ;
label define H1FP13C4  97 "(97) Legitimate skip" ;
label define H1FP14_4  7 "(7) Legitimate skip" ;
label define H1FP15_4  7 "(7) Legitimate skip" ;
label define H1FP17_4  7 "(7) Legitimate skip" ;
label define H1FP20M4  97 "(97) Legitimate skip" ;
label define H1FP20Y4  97 "(97) Legitimate skip" ;
label define H1FP21_4  7 "(7) Legitimate skip" ;
label define H1FP22_4  7 "(7) Legitimate skip" ;
label define H1FP23A4  7 "(7) Legitimate skip" ;
label define H1FP24A4  7 "(7) Legitimate skip" ;
label define H1FP11M5  97 "(97) Legitimate skip" ;
label define H1FP11Y5  97 "(97) Legitimate skip" ;
label define H1FP12_5  7 "(7) Legitimate skip" ;
label define H1FP13A5  97 "(97) Legitimate skip" ;
label define H1FP13B5  97 "(97) Legitimate skip" ;
label define H1FP13C5  97 "(97) Legitimate skip" ;
label define H1FP14_5  7 "(7) Legitimate skip" ;
label define H1FP15_5  7 "(7) Legitimate skip" ;
label define H1FP17_5  7 "(7) Legitimate skip" ;
label define H1FP20M5  97 "(97) Legitimate skip" ;
label define H1FP20Y5  97 "(97) Legitimate skip" ;
label define H1FP21_5  7 "(7) Legitimate skip" ;
label define H1FP22_5  7 "(7) Legitimate skip" ;
label define H1FP23A5  7 "(7) Legitimate skip" ;
label define H1FP24A5  7 "(7) Legitimate skip" ;
label define H1SU1     0 "(0) No (skip to Q.4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.4)"
                       8 "(8) Don't know (skip to Q.4)"
                       9 "(9) Not applicable (skip to Q.4)" ;
label define H1SU2     0 "(0) 0 times (skip to Q.4)" 1 "(1) 1 times"
                       2 "(2) 2 or 3 times" 3 "(3) 4 or 5 times"
                       4 "(4) 6 or more times" 6 "(6) Refused (skip to Q.4)"
                       7 "(7) Legit skip (didn't seriously think about committing suic"
                       8 "(8) Don't know (skip to Q.4)" ;
label define H1SU3     0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't attempt suicide)" ;
label define H1SU4     0 "(0) No (skip to Q.6)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.6)"
                       8 "(8) Don't know (skip to Q.6)"
                       9 "(9) Not applicable (skip to Q.6)" ;
label define H1SU5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no friends tried to kill themselves)"
                       8 "(8) Don't know" ;
label define H1SU6     0 "(0) No (skip to Q.8)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.8)"
                       8 "(8) Don't know (skip to Q.8)"
                       9 "(9) Not applicable (skip to Q.8)" ;
label define H1SU7     0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (no family members tried to kill themsel"
                       8 "(8) Don't know" ;
label define H1SU8     1 "(1) Not honestly at all" 2 "(2) Somewhat honestly"
                       3 "(3) Very honestly" 4 "(4) Completely honestly"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1PA1     1 "(1) Strongly disapprove" 2 "(2) Disapprove"
                       3 "(3) Neither disapprove nor approve" 4 "(4) Approve"
                       5 "(5) Strongly approve" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM or married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PA2     1 "(1) Strongly disapprove" 2 "(2) Disapprove"
                       3 "(3) Neither disapprove nor approve" 4 "(4) Approve"
                       5 "(5) Strongly approve" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM or married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PA3     1 "(1) Strongly disapprove" 2 "(2) Disapprove"
                       3 "(3) Neither disapprove nor approve" 4 "(4) Approve"
                       5 "(5) Strongly approve" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM or married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PA4     1 "(1) Strongly disapprove" 2 "(2) Disapprove"
                       3 "(3) Neither disapprove nor approve" 4 "(4) Approve"
                       5 "(5) Strongly approve" 6 "(6) Refused"
                       7 "(7) Legimate skip (no resident DAD or married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PA5     1 "(1) Strongly disapprove" 2 "(2) Disapprove"
                       3 "(3) Neither disapprove nor approve" 4 "(4) Approve"
                       5 "(5) Strongly approve" 6 "(6) Refused"
                       7 "(7) Legimate skip (no resident DAD or married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PA6     1 "(1) Strongly disapprove" 2 "(2) Disapprove"
                       3 "(3) Neither disapprove nor approve" 4 "(4) Approve"
                       5 "(5) Strongly approve" 6 "(6) Refused"
                       7 "(7) Legimate skip (no resident DAD or married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PA7     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (currently married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1PR1     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H1PR2     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H1PR3     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H1PR4     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H1PR5     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H1PR6     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H1PR7     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H1PR8     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H1NB1     1 "(1) True" 2 "(2) False" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1NB2     1 "(1) True" 2 "(2) False" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1NB3     1 "(1) True" 2 "(2) False" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1NB4     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1NB5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1NB6     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1NB7     1 "(1) Very unhappy" 2 "(2) A little happy"
                       3 "(3) Wouldn't make any difference"
                       4 "(4) A little happy" 5 "(5) Very happy"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1RE1     0 "(0) None (skip to next section)" 1 "(1) Adventist"
                       2 "(2) AME/AME Zion/CME" 3 "(3) Assemblies of God"
                       4 "(4) Baptist"
                       5 "(5) Christian Church (Disciples of Christ)"
                       6 "(6) Christian Science" 7 "(7) Congregational"
                       8 "(8) Episcopal" 9 "(9) Friends/Quaker"
                       10 "(10) Holiness" 11 "(11) Jehovah's Witness"
                       12 "(12) Later Day Saints (Mormon)" 13 "(13) Lutheran"
                       14 "(14) Methodist" 15 "(15) National Baptist"
                       16 "(16) Pentecostal" 17 "(17) Presbyterian"
                       18 "(18) United Church of Christ"
                       19 "(19) other Protestant" 20 "(20) Baha'i"
                       21 "(21) Buddhist" 22 "(22) Catholic"
                       23 "(23) Eastern Orthodox" 24 "(24) Hindu"
                       25 "(25) Islam/Moslem/Muslim"
                       26 "(26) Jewish-Conservative/Reformed/Orthodox/Reconstructionist"
                       27 "(27) Unitarian" 28 "(28) Other religion"
                       96 "(96) Refused (skip to next section)"
                       98 "(98) Don't know (skip to next section)"
                       99 "(99) Not applicable (skip to next section)" ;
label define H1RE2     1 "(1) Agree" 2 "(2) Disagree"
                       3 "(3) Religion doesn't have sacred scriptures"
                       6 "(6) Refused" 7 "(7) Legitimate skip (no religion)"
                       8 "(8) Don't know" ;
label define H1RE3     1 "(1) Once a week or more"
                       2 "(2) Once a month or more/less than once a week"
                       3 "(3) Less than once a month" 4 "(4) Never"
                       6 "(6) Refused" 7 "(7) Legitimate skip (no religion)"
                       8 "(8) Don't know" ;
label define H1RE4     1 "(1) Very important" 2 "(2) Fairly important"
                       3 "(3) Fairly unimportant"
                       4 "(4) Not important at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no religion)"
                       8 "(8) Don't know" ;
label define H1RE5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (Q.1 not=1 to 19)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1RE6     1 "(1) At least once a day"
                       2 "(2) At least once a week"
                       3 "(3) At least once a month"
                       4 "(4) Less than once a month" 5 "(5) Never"
                       6 "(6) Refused" 7 "(7) Legitimate skip (no religion)"
                       8 "(8) Don't know" ;
label define H1RE7     1 "(1) Once a week or more"
                       2 "(2) Once a month or more/less than once a week"
                       3 "(3) Less than once a month" 4 "(4) Never"
                       6 "(6) Refused" 7 "(7) Legitimate skip (no religion)"
                       8 "(8) Don't know" ;
label define H1EE1     1 "(1) Low" 5 "(5) High" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1EE2     1 "(1) Low" 5 "(5) High" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1EE3     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1EE4     0 "(0) None (skip to Q.6)" 996 "(996) Refused"
                       998 "(998) Don't know (skip to Q.6)"
                       999 "(999) Not applicable (skip to Q.6)" ;
label define H1EE5     0 "(0) None" 996 "(996) Refused"
                       997 "(997) Legitimate skip (doesn't work for pay in non-summer we"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H1EE6     0 "(0) None (skip to Q.8)" 996 "(996) Refused"
                       998 "(998) Don't know (skip to Q.8)"
                       999 "(999) Not applicable (skip to Q.8)" ;
label define H1EE7     0 "(0) None" 996 "(996) Refused"
                       997 "(997) Legitimate skip (doesn't work for pay in a summer week"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H1EE8     0 "(0) None" 96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H1EE9     0 "(0) No (skip to Q.12)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.12)"
                       8 "(8) Don't know (skip to Q.12)" ;
label define H1EE10    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (have never driven a car)" ;
label define H1EE11    1 "(1) 0/you don't drive" 2 "(2) 1-50 miles"
                       3 "(3) 51-100 miles" 4 "(4) Over 100 miles"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (have never driven a car)"
                       8 "(8) Don't know" ;
label define H1EE12    1 "(1) Almost no chance"
                       2 "(2) Some chance/probably not"
                       3 "(3) A 50-50 chance" 4 "(4) A good chance"
                       5 "(5) Almost certain" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1EE13    1 "(1) Almost no chance"
                       2 "(2) Some chance/probably not"
                       3 "(3) A 50-50 chance" 4 "(4) A good chance"
                       5 "(5) Almost certain" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1EE14    1 "(1) Almost no chance"
                       2 "(2) Some chance/probably not"
                       3 "(3) A 50-50 chance" 4 "(4) A good chance"
                       5 "(5) Almost certain" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1EE15    1 "(1) Almost no chance"
                       2 "(2) Some chance/probably not"
                       3 "(3) A 50-50 chance" 4 "(4) A good chance"
                       5 "(5) Almost certain" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define STUDSIBA  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (skip to next section)"
                       8 "(8) Don't know" ;
label define TWINA     0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       9 "(9) Not applicable" ;
label define H1WS1A    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1WS2A    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1WS3A    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1WS4A    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1WS5A    1 "(1) A lot more" 2 "(2) A little more"
                       3 "(3) The same amount" 4 "(4) A little less"
                       5 "(5) A lot less" 6 "(6) Not applicable"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (not study sib/no HH member ages 12-18)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H1WS6A    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (R's twin)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1WS7A    1 "(1) Identical" 2 "(2) Fraternal" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not R's twin)" ;
label define H1WS8A    1 "(1) Two peas" 2 "(2) Same family (skip to Q.12)"
                       7 "(7) Legitimate skip (not R's twin)"
                       8 "(8) Don't know" ;
label define H1WS9A    0 "(0) No (skip to Q.12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (look like members of the same family)"
                       8 "(8) Don't know (skip to Q.12)" ;
label define H1WS10A   0 "(0) No (skip to Q.12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (strangers never confused)" ;
label define H1WS11A   0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (teachers never confused)" ;
label define H1WS12A   1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define STUDSIBB  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (skip to next section)"
                       8 "(8) Don't know" ;
label define TWINB     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/one HH member ages 12-18)" ;
label define H1WS1B    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/one HH member ages 12-18)"
                       8 "(8) Don't know" ;
label define H1WS2B    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/one HH member ages 12-18)"
                       8 "(8) Don't know" ;
label define H1WS3B    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/one HH member ages 12-18)"
                       8 "(8) Don't know" ;
label define H1WS4B    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/one HH member ages 12-18)"
                       8 "(8) Don't know" ;
label define H1WS5B    1 "(1) A lot more" 2 "(2) A little more"
                       3 "(3) The same amount" 4 "(4) A little less"
                       5 "(5) A lot less" 6 "(6) Not applicable"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (not study sib/one HH member ages 12-18"
                       98 "(98) Don't know" ;
label define H1WS6B    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (R's twin)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1WS7B    1 "(1) Identical" 2 "(2) Fraternal" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not R's twin)" ;
label define H1WS8B    1 "(1) Two peas" 2 "(2) Same family (skip to Q.12)"
                       6 "(6) Refused" 7 "(7) Legitimate skip (not R's twin)" ;
label define H1WS9B    0 "(0) No (skip to Q.12)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.12)"
                       7 "(7) Legitimate skip (look like members of the same family)" ;
label define H1WS10B   0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (strangers never confused)" ;
label define H1WS11B   0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (teachers never confused)" ;
label define H1WS12B   1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/one HH member ages 12-18)"
                       8 "(8) Don't know" ;
label define STUDSIBC  0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (skip to next section)" ;
label define TWINC     0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legit skip (not study sib/two or fewer HH member ages 12" ;
label define H1WS1C    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/two or fewer HH member ages 12"
                       8 "(8) Don't know" ;
label define H1WS2C    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/two or fewer HH member ages 12"
                       8 "(8) Don't know" ;
label define H1WS3C    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/two or fewer HH member ages 12"
                       8 "(8) Don't know" ;
label define H1WS4C    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/two or fewer HH member ages 12"
                       8 "(8) Don't know" ;
label define H1WS5C    1 "(1) A lot more" 2 "(2) A little more"
                       3 "(3) The same amount" 4 "(4) A little less"
                       5 "(5) A lot less" 6 "(6) Not applicable"
                       96 "(96) Refused"
                       97 "(97) Legit skip (not study sib/two or fewer HH member ages 1"
                       98 "(98) Don't know" ;
label define H1WS6C    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (R's twin)"
                       8 "(8) Don't know" ;
label define H1WS7C    1 "(1) Identical" 2 "(2) Fraternal"
                       7 "(7) Legitimate skip (not R's twin)" ;
label define H1WS8C    1 "(1) Two peas"
                       7 "(7) Legitimate skip (not R's twin)" ;
label define H1WS9C    0 "(0) No (skip to Q.12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (look like members of the same family)" ;
label define H1WS10C   0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (strangers never confused)" ;
label define H1WS11C   0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (teachers never confused)" ;
label define H1WS12C   1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/two or fewer HH member ages 12"
                       8 "(8) Don't know" ;
label define STUDSIBD  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (skip to next section)"
                       8 "(8) Don't know" ;
label define TWIND     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/3 or fewer HH member ages 12-1" ;
label define H1WS1D    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/3 or fewer HH member ages 12-1" ;
label define H1WS2D    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/3 or fewer HH member ages 12-1" ;
label define H1WS3D    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/3 or fewer HH member ages 12-1" ;
label define H1WS4D    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/3 or fewer HH member ages 12-1" ;
label define H1WS5D    1 "(1) A lot more" 2 "(2) A little more"
                       3 "(3) The same amount" 4 "(4) A little less"
                       5 "(5) A lot less" 6 "(6) Not applicable"
                       96 "(96) Refused"
                       97 "(97) Legit skip (not study sib/3 or fewer HH member ages 12-" ;
label define H1WS6D    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (R's twin)" ;
label define H1WS7D    1 "(1) Identical" 2 "(2) Fraternal"
                       7 "(7) Legitimate skip (not R's twin)" ;
label define H1WS8D    7 "(7) Legitimate skip (not R's twin)" ;
label define H1WS9D
                       7 "(7) Legitimate skip (look like members of same family)" ;
label define H1WS10D   7 "(7) Legitimate skip (strangers never confused)" ;
label define H1WS11D   7 "(7) Legitimate skip (teachers never confused)" ;
label define H1WS12D   1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/3 or fewer HH member ages 12-1" ;
label define STUDSIBE  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (skip to next section)"
                       8 "(8) Don't know" ;
label define TWINE     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/4 or fewer HH member ages 12-1" ;
label define H1WS1E    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/4 or fewer HH member ages 12-1" ;
label define H1WS2E    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/4 or fewer HH member ages 12-1" ;
label define H1WS3E    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/4 or fewer HH member ages 12-1" ;
label define H1WS4E    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/4 or fewer HH member ages 12-1" ;
label define H1WS5E    1 "(1) A lot more" 2 "(2) A little more"
                       3 "(3) The same amount" 4 "(4) A little less"
                       5 "(5) A lot less" 6 "(6) Not applicable"
                       96 "(96) Refused"
                       97 "(97) Legit skip (not study sib/4 or fewer HH member ages 12-" ;
label define H1WS6E    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (R's twin)" ;
label define H1WS7E    7 "(7) Legitimate skip (not R's twin)" ;
label define H1WS8E    7 "(7) Legitimate skip (not R's twin)" ;
label define H1WS9E
                       7 "(7) Legitimate skip (look like members of same family)" ;
label define H1WS10E   7 "(7) Legitimate skip" ;
label define H1WS11E   7 "(7) Legitimate skip" ;
label define H1WS12E   1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/4 or fewer HH member ages 12-1" ;
label define STUDSIBF  7 "(7) Legitimate skip (skip to next section)" ;
label define TWINF
                       7 "(7) Legit skip (not study sib/5 or fewer HH member ages 12-1" ;
label define H1WS1F
                       7 "(7) Legit skip (not study sib/5 or fewer HH member ages 12-1" ;
label define H1WS2F
                       7 "(7) Legit skip (not study sib/5 or fewer HH member ages 12-1" ;
label define H1WS3F
                       7 "(7) Legit skip (not study sib/5 or fewer HH member ages 12-1" ;
label define H1WS4F
                       7 "(7) Legit skip (not study sib/5 or fewer HH member ages 12-1" ;
label define H1WS5F
                       7 "(7) Legit skip (not study sib/5 or fewer HH member ages 12-1" ;
label define H1WS6F
                       7 "(7) Legit skip (not study sib/5 or fewer HH member ages 12-1" ;
label define H1WS7F    7 "(7) Legitimate skip (not R's twin)" ;
label define H1WS8F    7 "(7) Legitimate skip" ;
label define H1WS9F    7 "(7) Legitimate skip" ;
label define H1WS10F   7 "(7) Legitimate skip" ;
label define H1WS11F   7 "(7) Legitimate skip" ;
label define H1WS12F
                       7 "(7) Legit skip (not study sib/5 or fewer HH member ages 12-1" ;
label define STUDSIBG  7 "(7) Legitimate skip (skip to next section)" ;
label define TWING
                       7 "(7) Legit skip (not study sib/6 or fewer HH member ages 12-1" ;
label define H1WS1G
                       7 "(7) Legit skip (not study sib/6 or fewer HH member ages 12-1" ;
label define H1WS2G
                       7 "(7) Legit skip (not study sib/6 or fewer HH member ages 12-1" ;
label define H1WS3G
                       7 "(7) Legit skip (not study sib/6 or fewer HH member ages 12-1" ;
label define H1WS4G
                       7 "(7) Legit skip (not study sib/6 or fewer HH member ages 12-1" ;
label define H1WS5G
                       97 "(97) Legit skip (not study sib/6 or fewer HH member ages 12-" ;
label define H1WS6G
                       7 "(7) Legit skip (not study sib/6 or fewer HH member ages 12-1" ;
label define H1WS7G    7 "(7) Legitimate skip (not R's twin)" ;
label define H1WS8G    7 "(7) Legitimate skip" ;
label define H1WS9G    7 "(7) Legitimate skip" ;
label define H1WS10G   7 "(7) Legitimate skip" ;
label define H1WS11G   7 "(7) Legitimate skip" ;
label define H1WS12G
                       7 "(7) Legit skip (not study sib/6 or fewer HH member ages 12-1" ;
label define H1WS13    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1IR1     1 "(1) Very unattractive" 2 "(2) Unattractive"
                       3 "(3) About average" 4 "(4) Attractive"
                       5 "(5) Very attractive" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1IR2     1 "(1) Very unattractive" 2 "(2) Unattractive"
                       3 "(3) About average" 4 "(4) Attractive"
                       5 "(5) Very attractive" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1IR3     1 "(1) Very poorly groomed" 2 "(2) Poorly groomed"
                       3 "(3) About average" 4 "(4) Well groomed"
                       5 "(5) Very well groomed" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1IR4     1 "(1) Very candid" 2 "(2) Moderately candid"
                       3 "(3) Somewhat candid" 4 "(4) Not candid"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1IR5     1 "(1) Very immature" 2 "(2) Immature"
                       3 "(3) About average" 4 "(4) Mature"
                       5 "(5) Very mature" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H1IR6     0 "(0) No (skip to Q.9)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.9)"
                       8 "(8) Don't know (skip to Q.9)" ;
label define H1IR7A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7F    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7G    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7H    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7I    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7J    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7K    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7L    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7M    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7N    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7O    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7P    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7Q    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7R    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7S    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7T    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7U    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7V    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7W    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7X    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7Y    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7Z    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7AA   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7BB   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7CC   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR7DD   0 "(0) Not marked (skip to Q.9)" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H1IR8A    0 "(0) No one under 6" 1 "(1) One person under 6"
                       2 "(2) Two people under 6"
                       3 "(3) Three people under 6"
                       4 "(4) Four people under 6"
                       7 "(7) Legitimate skip (able to determine relationship)" ;
label define H1IR8B    0 "(0) No one 6-11" 1 "(1) One person 6-11"
                       2 "(2) Two people 6-11" 3 "(3) Three people 6-11"
                       7 "(7) Legitimate skip (able to determine relationship)" ;
label define H1IR8C    0 "(0) No one 12-18" 1 "(1) One person 12-18"
                       2 "(2) Two people 12-18" 3 "(3) Three people 12-18"
                       7 "(7) Legitimate skip (able to determine relationship)" ;
label define H1IR8D    0 "(0) No one 19 and older"
                       1 "(1) One person 19 and older"
                       2 "(2) Two people 19 and older"
                       3 "(3) Three people 19 and older"
                       7 "(7) Legitimate skip (able to determine relationship)"
                       8 "(8) Don't know" ;
label define H1IR9     1 "(1) Inside respondent's house"
                       2 "(2) Immediately outside respondent's house"
                       3 "(3) In interviewer's car"
                       4 "(4) At another location" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1IR10    1 "(1) Detached single-family house"
                       2 "(2) Mobile home/trailer"
                       3 "(3) Single-family row/town house (2 or more attached units)"
                       4 "(4) Divided house"
                       5 "(5) Small apartment building (2-4 units)"
                       6 "(6) Apt building (5 or more units)/free access to housing un"
                       7 "(7) Apt building (5 or more units)/locked entry/doorman/both"
                       8 "(8) Other" ;
label define H1IR11    1 "(1) Very well kept"
                       2 "(2) Fairly well kept (needs cosmetic work)"
                       3 "(3) Poorly kept (needs minor repairs)"
                       4 "(4) Very poorly kept (needs major repairs)"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H1IR12    1 "(1) Rural (skip to Q.15)" 2 "(2) Suburban"
                       3 "(3) Urban/residential only"
                       4 "(4) 3 or more commercial properties/mostly retail"
                       5 "(5) 3 or more commercial properties/mostly wholesale/industr"
                       6 "(6) Other" 96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H1IR13    1 "(1) Detached single-family house"
                       2 "(2) Mobile home/trailer"
                       3 "(3) Single-family row/town house (2 or more attached units)"
                       4 "(4) Divided house"
                       5 "(5) Small apartment building (2-4 units)"
                       6 "(6) Apt building (5 or more units)/free access to housing un"
                       7 "(7) Apt building (5 or more units)/locked entry/doorman/both"
                       8 "(8) Other" 97 "(97) Legitimate skip (rural area)"
                       99 "(99) Not applicable" ;
label define H1IR14    1 "(1) Very well kept"
                       2 "(2) Fairly well kept (needs cosmetic work)"
                       3 "(3) Poorly kept (needs minor repairs)"
                       4 "(4) Very poorly kept (needs major repairs)"
                       6 "(6) Refused" 97 "(97) Legitimate skip (rural area)"
                       98 "(98) Don't know" ;
label define H1IR15    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1IR16    0 "(0) No interruptions (skip to Q.18)"
                       96 "(96) Refused (skip to Q.18)"
                       98 "(98) Don't know (skip to Q.18)" ;
label define H1IR17A   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (no interruptions)" ;
label define H1IR17B   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (no interruptions)" ;
label define H1IR17C   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (no interruptions)" ;
label define H1IR17D   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (no interruptions)" ;
label define H1IR17E   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (no interruptions)" ;
label define H1IR17F   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (no interruptions)" ;
label define H1IR17G   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (no interruptions)" ;
label define H1IR17H   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (no interruptions)" ;
label define H1IR17I   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (no interruptions)" ;
label define H1IR17J   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip (no interruptions)" ;
label define H1IR18    0 "(0) No" 1 "(1) Yes" 2 "(2) Perhaps" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1IR19    0 "(0) No (skip to Q.21)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.21)"
                       8 "(8) Don't know (skip to Q.21)" ;
label define H1IR20    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never bored/impatient)"
                       8 "(8) Don't know" ;
label define H1IR21    0 "(0) No (skip to Q.23)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q.23)"
                       8 "(8) Don't know (skip to Q.23)"
                       9 "(9) Not applicable (skip to Q.23)" ;
label define H1IR22A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22D   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22E   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22F   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22G   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22H   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22I   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22J   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22K   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22L   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22M   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22N   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22O   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22P   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22Q   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22R   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22S   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22T   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22U   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22V   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22W   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22X   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22Y   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22Z   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22AA  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22BB  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22CC  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22DD  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22EE  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22FF  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22GG  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22HH  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22II  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22JJ  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22KK  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22LL  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR22MM  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H1IR23    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1IR24    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H1IR25    1 "(1) English" 2 "(2) Spanish" 3 "(3) Other"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H1IR26    0 "(0) No" 1 "(1) Yes/in 1 eye"
                       2 "(2) Yes/in both eyes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1IR27    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H1IR28    1 "(1) ENTER COMMENTS" 2 "(2) NO COMMENTS"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define S1        10 "(10) 10 or younger" 19 "(19) 19 or older" ;
label define S2        1 "(1) Male" 2 "(2) Female" 9 "(9) Multiple response" ;
label define S3
                       13 "(13) My school doesn't have grade levels of this kind"
                       99 "(99) Multiple response" ;
label define S4        0 "(0) No (skip to Q.6)" 1 "(1) Yes (go to Q.5)"
                       8 "(8) I don't know (skip to Q.6)" ;
label define S5        1 "(1) Mexican/Mexican American"
                       2 "(2) Chicano/Chicana" 3 "(3) Cuban"
                       4 "(4) Puerto Rican" 5 "(5) Central/South American"
                       6 "(6) Other Hispanic" 97 "(97) Legitimate skip"
                       98 "(98) I don't know" 99 "(99) Multiple response" ;
label define S6A       0 "(0) Not marked" 1 "(1) Marked" ;
label define S6B       0 "(0) Not marked" 1 "(1) Marked" ;
label define S6C       0 "(0) Not marked" 1 "(1) Marked" ;
label define S6D       0 "(0) Not marked" 1 "(1) Marked" ;
label define S6E       0 "(0) Not marked" 1 "(1) Marked" ;
label define S7        1 "(1) Chinese" 2 "(2) Filipino" 3 "(3) Japanese"
                       4 "(4) Asian Indian" 5 "(5) Korean" 6 "(6) Vietnamese"
                       7 "(7) Other" 97 "(97) Legitimate skip"
                       99 "(99) Multiple response" ;
label define S8        0 "(0) No" 1 "(1) Yes" ;
label define S9        1 "(1) This is my first year"
                       2 "(2) This is my second year"
                       3 "(3) This is my third year"
                       4 "(4) This is my fourth year"
                       5 "(5) This is my fifth year"
                       6 "(6) I've been her more than five years" ;
label define S10       0 "(0) Not marked" 1 "(1) Marked" ;
label define S10A      1 "(1) A" 2 "(2) B" 3 "(3) C" 4 "(4) D or lower"
                       5 "(5) I didn't take this subject"
                       7 "(7) Legitimate skip" 8 "(8) I don't know"
                       9 "(9) Multiple response" ;
label define S10B      1 "(1) A" 2 "(2) B" 3 "(3) C" 4 "(4) D or lower"
                       5 "(5) I didn't take this subject"
                       7 "(7) Legitimate skip" 8 "(8) I don't know"
                       9 "(9) Multiple response" ;
label define S10C      1 "(1) A" 2 "(2) B" 3 "(3) C" 4 "(4) D or lower"
                       5 "(5) I didn't take this subject"
                       7 "(7) Legitimate skip" 8 "(8) I don't know"
                       9 "(9) Multiple response" ;
label define S10D      1 "(1) A" 2 "(2) B" 3 "(3) C" 4 "(4) D or lower"
                       5 "(5) I didn't take this subject"
                       7 "(7) Legitimate skip" 8 "(8) I don't know"
                       9 "(9) Multiple response" ;
label define S11       0 "(0) No (skip to Q.17)" 1 "(1) Yes (go to Q.12)" ;
label define S12       1 "(1) 8th grade or less"
                       2 "(2) >8th grade/didn't graduate high school"
                       3 "(3) High school graduate" 4 "(4) Completed a GED"
                       5 "(5) Business/trade/voc. school after high school"
                       6 "(6) College/didn't graduate"
                       7 "(7) Graduated from college/university"
                       8 "(8) Prof training beyond 4-year college/univ"
                       9 "(9) Went to school/but I don't know level"
                       10 "(10) She never went to school"
                       11 "(11) I don't know if she went to school"
                       97 "(97) Legitimate skip" 99 "(99) Multiple response" ;
label define S13       0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) I don't know" ;
label define S14       1 "(1) Homemaker"
                       2 "(2) Professional 1/doctor/lawyer/scientist"
                       3 "(3) Professional 2/teacher/librarian/nurse"
                       4 "(4) Manager/executive/director"
                       5 "(5) Technical/computer specialist/radiologist"
                       6 "(6) Office worker/bookkeepers/clerk/secretary"
                       7 "(7) Sales worker/insurance agent/store clerk"
                       8 "(8) Restaurant worker/personal service/waitress/housekeeper"
                       9 "(9) Craftsperson/toolmaker/woodworker"
                       10 "(10) Construction worker/carpenter/crane operator"
                       11 "(11) Mechanic/electrician/plumber/machinist"
                       12 "(12) Factory worker/laborer/assembler/janitor"
                       13 "(13) Transportation/bus or taxi driver"
                       14 "(14) Military/security/police officer/soldier/fire fighter"
                       15 "(15) Farm/fishery worker"
                       16 "(16) She doesn't work/but she isn't disabled"
                       17 "(17) She is disabled/therefore doesn't work"
                       18 "(18) She is retired"
                       19 "(19) She receives Public Assistance/welfare"
                       20 "(20) She works/but I don't know what her job is"
                       97 "(97) Legitimate skip (no MOM)"
                       99 "(99) Multiple response" ;
label define S15       0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) I don't know" 9 "(9) Multiple response" ;
label define S16       1 "(1) Not at all" 2 "(2) A little" 3 "(3) Some"
                       4 "(4) Quite a bit" 5 "(5) Very much"
                       7 "(7) Legitimate skip" 9 "(9) Multiple response" ;
label define S17       0 "(0) No (skip to Q.23)" 1 "(1) Yes (got to Q.18)"
                       9 "(9) Multiple response" ;
label define S18       1 "(1) 8th grade or less"
                       2 "(2) >8th grade/didn't graduate high school"
                       3 "(3) High school graduate" 4 "(4) Completed a GED"
                       5 "(5) Business/trade/voc. school after high school"
                       6 "(6) College/didn't graduate"
                       7 "(7) Graduated from college/university"
                       8 "(8) Prof training beyond 4-year college/univ"
                       9 "(9) Went to school/but I don't know level"
                       10 "(10) He never went to school"
                       11 "(11) I don't know if he went to school"
                       97 "(97) Legitimate skip" 99 "(99) Multiple response" ;
label define S19       0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) I don't know" ;
label define S20       1 "(1) Homemaker"
                       2 "(2) Professional 1/doctor/lawyer/scientist"
                       3 "(3) Professional 2/teacher/librarian/nurse"
                       4 "(4) Manager/executive/director"
                       5 "(5) Technical/computer specialist/radiologist"
                       6 "(6) Office worker/bookkeepers/clerk/secretary"
                       7 "(7) Sales worker/insurance agent/store clerk"
                       8 "(8) Restaurant worker/personal service/waitress/housekeeper"
                       9 "(9) Craftsperson/toolmaker/woodworker"
                       10 "(10) Construction worker/carpenter/crane operator"
                       11 "(11) Mechanic/electrician/plumber/machinist"
                       12 "(12) Factory worker/laborer/assembler/janitor"
                       13 "(13) Transportation/bus or taxi driver"
                       14 "(14) Military/security/police officer/soldier/fire fighter"
                       15 "(15) Farm/fishery worker"
                       16 "(16) He doesn't work/but he isn't disabled"
                       17 "(17) He is disabled/therefore doesn't work"
                       18 "(18) He is retired"
                       19 "(19) He receives Public Assistance/welfare"
                       20 "(20) He works/but I don't know what his job is"
                       97 "(97) Legitimate skip (no MOM)"
                       99 "(99) Multiple response" ;
label define S21       0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) I don't know" ;
label define S22       1 "(1) Not at all" 2 "(2) A little" 3 "(3) Some"
                       4 "(4) Quite a bit" 5 "(5) Very much"
                       7 "(7) Legitimate skip" 9 "(9) Multiple response" ;
label define S23       0 "(0) No (skip to Q.25)" 1 "(1) Yes (got to Q.24)" ;
label define S24       0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define S25       0 "(0) No (skip to Q.27)" 1 "(1) Yes (got to Q.26)" ;
label define S26       0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define S27
                       1 "(1) 1/I live by myself (skip to instructions on page 7)"
                       6 "(6) 6 or more"
                       7 "(7) Don't live in regular household/live in shelter/group ho"
                       99 "(99) Multiple response" ;
label define S28       0 "(0) 0 (skip to instructions on page 7)" 1 "(1) 1"
                       2 "(2) 2" 3 "(3) 3" 4 "(4) 4" 5 "(5) 5"
                       6 "(6) 6 or more" 97 "(97) Legitimate skip"
                       98 "(98) Error (If Q.28>Q.27, recoded to 98=error)"
                       99 "(99) Multiple response" ;
label define S29A      0 "(0) Not marked" 1 "(1) Marked" ;
label define S29B      0 "(0) Not marked" 1 "(1) Marked" ;
label define S29C      0 "(0) Not marked" 1 "(1) Marked" ;
label define S29D      0 "(0) Not marked" 1 "(1) Marked" ;
label define S29E      0 "(0) Not marked" 1 "(1) Marked" ;
label define S30A      0 "(0) Not marked" 1 "(1) Marked" ;
label define S30B      0 "(0) Not marked" 1 "(1) Marked" ;
label define S30C      0 "(0) Not marked" 1 "(1) Marked" ;
label define S30D      0 "(0) Not marked" 1 "(1) Marked" ;
label define S30E      0 "(0) Not marked" 1 "(1) Marked" ;
label define S31A      0 "(0) Not marked" 1 "(1) Marked" ;
label define S31B      0 "(0) Not marked" 1 "(1) Marked" ;
label define S31C      0 "(0) Not marked" 1 "(1) Marked" ;
label define S31D      0 "(0) Not marked" 1 "(1) Marked" ;
label define S31E      0 "(0) Not marked" 1 "(1) Marked" ;
label define S32A      0 "(0) Not marked" 1 "(1) Marked" ;
label define S32B      0 "(0) Not marked" 1 "(1) Marked" ;
label define S32C      0 "(0) Not marked" 1 "(1) Marked" ;
label define S32D      0 "(0) Not marked" 1 "(1) Marked" ;
label define S32E      0 "(0) Not marked" 1 "(1) Marked" ;
label define S33A      0 "(0) Not marked" 1 "(1) Marked" ;
label define S33B      0 "(0) Not marked" 1 "(1) Marked" ;
label define S33C      0 "(0) Not marked" 1 "(1) Marked" ;
label define S33D      0 "(0) Not marked" 1 "(1) Marked" ;
label define S33E      0 "(0) Not marked" 1 "(1) Marked" ;
label define S34A      0 "(0) Not marked" 1 "(1) Marked" ;
label define S34B      0 "(0) Not marked" 1 "(1) Marked" ;
label define S34C      0 "(0) Not marked" 1 "(1) Marked" ;
label define S34D      0 "(0) Not marked" 1 "(1) Marked" ;
label define S34E      0 "(0) Not marked" 1 "(1) Marked" ;
label define S35A      0 "(0) Not marked" 1 "(1) Marked" ;
label define S35B      0 "(0) Not marked" 1 "(1) Marked" ;
label define S35C      0 "(0) Not marked" 1 "(1) Marked" ;
label define S35D      0 "(0) Not marked" 1 "(1) Marked" ;
label define S35E      0 "(0) Not marked" 1 "(1) Marked" ;
label define S36A      0 "(0) Not marked" 1 "(1) Marked" ;
label define S36B      0 "(0) Not marked" 1 "(1) Marked" ;
label define S36C      0 "(0) Not marked" 1 "(1) Marked" ;
label define S36D      0 "(0) Not marked" 1 "(1) Marked" ;
label define S36E      0 "(0) Not marked" 1 "(1) Marked" ;
label define S37A      0 "(0) Not marked" 1 "(1) Marked" ;
label define S37B      0 "(0) Not marked" 1 "(1) Marked" ;
label define S37C      0 "(0) Not marked" 1 "(1) Marked" ;
label define S37D      0 "(0) Not marked" 1 "(1) Marked" ;
label define S37E      0 "(0) Not marked" 1 "(1) Marked" ;
label define S38A      0 "(0) Not marked" 1 "(1) Marked" ;
label define S38B      0 "(0) Not marked" 1 "(1) Marked" ;
label define S38C      0 "(0) Not marked" 1 "(1) Marked" ;
label define S38D      0 "(0) Not marked" 1 "(1) Marked" ;
label define S38E      0 "(0) Not marked" 1 "(1) Marked" ;
label define S39A      0 "(0) Not marked" 1 "(1) Marked" ;
label define S39B      0 "(0) Not marked" 1 "(1) Marked" ;
label define S39C      0 "(0) Not marked" 1 "(1) Marked" ;
label define S39D      0 "(0) Not marked" 1 "(1) Marked" ;
label define S39E      0 "(0) Not marked" 1 "(1) Marked" ;
label define S40A      0 "(0) Not marked" 1 "(1) Marked" ;
label define S40B      0 "(0) Not marked" 1 "(1) Marked" ;
label define S40C      0 "(0) Not marked" 1 "(1) Marked" ;
label define S40D      0 "(0) Not marked" 1 "(1) Marked" ;
label define S40E      0 "(0) Not marked" 1 "(1) Marked" ;
label define S41A      0 "(0) Not marked" 1 "(1) Marked" ;
label define S41B      0 "(0) Not marked" 1 "(1) Marked" ;
label define S41C      0 "(0) Not marked" 1 "(1) Marked" ;
label define S41D      0 "(0) Not marked" 1 "(1) Marked" ;
label define S41E      0 "(0) Not marked" 1 "(1) Marked" ;
label define S42A      0 "(0) Not marked" 1 "(1) Marked" ;
label define S42B      0 "(0) Not marked" 1 "(1) Marked" ;
label define S42C      0 "(0) Not marked" 1 "(1) Marked" ;
label define S42D      0 "(0) Not marked" 1 "(1) Marked" ;
label define S42E      0 "(0) Not marked" 1 "(1) Marked" ;
label define S43A      0 "(0) Not marked" 1 "(1) Marked" ;
label define S43B      0 "(0) Not marked" 1 "(1) Marked" ;
label define S43C      0 "(0) Not marked" 1 "(1) Marked" ;
label define S43D      0 "(0) Not marked" 1 "(1) Marked" ;
label define S43E      0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A1     0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A2     0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A3     0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A4     0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A5     0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A6     0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A7     0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A8     0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A9     0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A10    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A11    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A12    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A13    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A14    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A15    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A16    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A17    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A18    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A19    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A20    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A21    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A22    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A23    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A24    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A25    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A26    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A27    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A28    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A29    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A30    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A31    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A32    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44A33    0 "(0) Not marked" 1 "(1) Marked" ;
label define S44       0 "(0) Not marked" 1 "(1) Marked" ;
label define S45A      0 "(0) No chance" 1 "(1) 1" 2 "(2) Some chance"
                       3 "(3) 3" 4 "(4) About 50-50" 5 "(5) 5"
                       6 "(6) Pretty likely" 7 "(7) 7" 8 "(8) It will happen"
                       99 "(99) Multiple response" ;
label define S45B      0 "(0) No chance" 1 "(1) 1" 2 "(2) Some chance"
                       3 "(3) 3" 4 "(4) About 50-50" 5 "(5) 5"
                       6 "(6) Pretty likely" 7 "(7) 7" 8 "(8) It will happen"
                       99 "(99) Multiple response" ;
label define S45C      0 "(0) No chance" 1 "(1) 1" 2 "(2) Some chance"
                       3 "(3) 3" 4 "(4) About 50-50" 5 "(5) 5"
                       6 "(6) Pretty likely" 7 "(7) 7" 8 "(8) It will happen"
                       99 "(99) Multiple response" ;
label define S45D      0 "(0) No chance" 1 "(1) 1" 2 "(2) Some chance"
                       3 "(3) 3" 4 "(4) About 50-50" 5 "(5) 5"
                       6 "(6) Pretty likely" 7 "(7) 7" 8 "(8) It will happen"
                       99 "(99) Multiple response" ;
label define S45E      0 "(0) No chance" 1 "(1) 1" 2 "(2) Some chance"
                       3 "(3) 3" 4 "(4) About 50-50" 5 "(5) 5"
                       6 "(6) Pretty likely" 7 "(7) 7" 8 "(8) It will happen"
                       99 "(99) Multiple response" ;
label define S45F      0 "(0) No chance" 1 "(1) 1" 2 "(2) Some chance"
                       3 "(3) 3" 4 "(4) About 50-50" 5 "(5) 5"
                       6 "(6) Pretty likely" 7 "(7) 7" 8 "(8) It will happen"
                       99 "(99) Multiple response" ;
label define S46A      0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost everyday"
                       4 "(4) Everyday" 9 "(9) Multiple response" ;
label define S46B      0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost everyday"
                       4 "(4) Everyday" 9 "(9) Multiple response" ;
label define S46C      0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost everyday"
                       4 "(4) Everyday" 9 "(9) Multiple response" ;
label define S46D      0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost everyday"
                       4 "(4) Everyday" 9 "(9) Multiple response" ;
label define S47       0 "(0) None" 1 "(1) Less than 1 hour"
                       2 "(2) 1-2 hours" 3 "(3) 3-4 hours"
                       4 "(4) More than 4 hours" 9 "(9) Multiple response" ;
label define S48       1 "(1) I try very had to do my best"
                       2 "(2) I try hard enough/but not as hard as I could"
                       3 "(3) I don't try very hard"
                       4 "(4) I never try at all" 9 "(9) Multiple response" ;
label define S49       0 "(0) No" 1 "(1) Yes" ;
label define S50       1 "(1) Excellent" 2 "(2) Very good" 3 "(3) Good"
                       4 "(4) Fair" 5 "(5) Poor" 9 "(9) Multiple response" ;
label define S51       1 "(1) Within the last 12 months"
                       2 "(2) 1-2 years ago" 3 "(3) More than 2 years ago"
                       4 "(4) I don't remember"
                       5 "(5) I've never had a physical exam" ;
label define S52       1 "(1) Within the last 12 months"
                       2 "(2) 1-2 years ago" 3 "(3) More than 2 years ago"
                       4 "(4) I don't remember"
                       5 "(5) I've never had a dental exam" ;
label define S53       1 "(1) Within the last 12 months"
                       2 "(2) 1-2 years ago" 3 "(3) More than 2 years ago"
                       4 "(4) I don't remember"
                       5 "(5) I've never had any of these services"
                       9 "(9) Multiple response" ;
label define S54       0 "(0) No (skip to Q.56)" 1 "(1) Yes (go to Q.55)" ;
label define S55A      0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define S55B      0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define S55C      0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define S55D      0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define S56       0 "(0) No" 1 "(1) Yes" ;
label define S57       0 "(0) No" 1 "(1) Yes" ;
label define S58       0 "(0) No" 1 "(1) Yes" ;
label define S59A      0 "(0) Never" 1 "(1) Once or twice"
                       2 "(2) Once a month or less"
                       3 "(3) 2 or 3 days a month"
                       4 "(4) Once or twice a week" 5 "(5) 3-5 days a week"
                       6 "(6) Nearly everyday" 99 "(99) Multiple response" ;
label define S59B      0 "(0) Never" 1 "(1) Once or twice"
                       2 "(2) Once a month or less"
                       3 "(3) 2 or 3 days a month"
                       4 "(4) Once or twice a week" 5 "(5) 3-5 days a week"
                       6 "(6) Nearly everyday" ;
label define S59C      0 "(0) Never" 1 "(1) Once or twice"
                       2 "(2) Once a month or less"
                       3 "(3) 2 or 3 days a month"
                       4 "(4) Once or twice a week" 5 "(5) 3-5 days a week"
                       6 "(6) Nearly everyday" 99 "(99) Multiple response" ;
label define S59D      0 "(0) Never" 1 "(1) Once or twice"
                       2 "(2) Once a month or less"
                       3 "(3) 2 or 3 days a month"
                       4 "(4) Once or twice a week" 5 "(5) 3-5 days a week"
                       6 "(6) Nearly everyday" 99 "(99) Multiple response" ;
label define S59E      0 "(0) Never" 1 "(1) Once or twice"
                       2 "(2) Once a month or less"
                       3 "(3) 2 or 3 days a month"
                       4 "(4) Once or twice a week" 5 "(5) 3-5 days a week"
                       6 "(6) Nearly everyday" 99 "(99) Multiple response" ;
label define S59F      0 "(0) Never" 1 "(1) Once or twice"
                       2 "(2) Once a month or less"
                       3 "(3) 2 or 3 days a month"
                       4 "(4) Once or twice a week" 5 "(5) 3-5 days a week"
                       6 "(6) Nearly everyday" 99 "(99) Multiple response" ;
label define S59G      0 "(0) Never" 1 "(1) Once or twice"
                       2 "(2) Once a month or less"
                       3 "(3) 2 or 3 days a month"
                       4 "(4) Once or twice a week" 5 "(5) 3-5 days a week"
                       6 "(6) Nearly everyday" 99 "(99) Multiple response" ;
label define S60A      0 "(0) Never" 1 "(1) Rarely" 2 "(2) Occasionally"
                       3 "(3) Often" 4 "(4) Everyday"
                       9 "(9) Multiple response" ;
label define S60B      0 "(0) Never" 1 "(1) Rarely" 2 "(2) Occasionally"
                       3 "(3) Often" 4 "(4) Everyday"
                       9 "(9) Multiple response" ;
label define S60C      0 "(0) Never" 1 "(1) Rarely" 2 "(2) Occasionally"
                       3 "(3) Often" 4 "(4) Everyday"
                       9 "(9) Multiple response" ;
label define S60D      0 "(0) Never" 1 "(1) Rarely" 2 "(2) Occasionally"
                       3 "(3) Often" 4 "(4) Everyday"
                       9 "(9) Multiple response" ;
label define S60E      0 "(0) Never" 1 "(1) Rarely" 2 "(2) Occasionally"
                       3 "(3) Often" 4 "(4) Everyday"
                       9 "(9) Multiple response" ;
label define S60F      0 "(0) Never" 1 "(1) Rarely" 2 "(2) Occasionally"
                       3 "(3) Often" 4 "(4) Everyday"
                       9 "(9) Multiple response" ;
label define S60G      0 "(0) Never" 1 "(1) Rarely" 2 "(2) Occasionally"
                       3 "(3) Often" 4 "(4) Everyday"
                       9 "(9) Multiple response" ;
label define S60H      0 "(0) Never" 1 "(1) Rarely" 2 "(2) Occasionally"
                       3 "(3) Often" 4 "(4) Everyday"
                       9 "(9) Multiple response" ;
label define S60I      0 "(0) Never" 1 "(1) Rarely" 2 "(2) Occasionally"
                       3 "(3) Often" 4 "(4) Everyday"
                       9 "(9) Multiple response" ;
label define S60J      0 "(0) Never" 1 "(1) Rarely" 2 "(2) Occasionally"
                       3 "(3) Often" 4 "(4) Everyday"
                       9 "(9) Multiple response" ;
label define S60K      0 "(0) Never" 1 "(1) Rarely" 2 "(2) Occasionally"
                       3 "(3) Often" 4 "(4) Everyday"
                       9 "(9) Multiple response" ;
label define S60L      0 "(0) Never" 1 "(1) Rarely" 2 "(2) Occasionally"
                       3 "(3) Often" 4 "(4) Everyday"
                       9 "(9) Multiple response" ;
label define S60M      0 "(0) Never" 1 "(1) Rarely" 2 "(2) Occasionally"
                       3 "(3) Often" 4 "(4) Everyday"
                       9 "(9) Multiple response" ;
label define S60N      0 "(0) Never" 1 "(1) Rarely" 2 "(2) Occasionally"
                       3 "(3) Often" 4 "(4) Everyday"
                       9 "(9) Multiple response" ;
label define S60O      0 "(0) Never" 1 "(1) Rarely" 2 "(2) Occasionally"
                       3 "(3) Often" 4 "(4) Everyday"
                       9 "(9) Multiple response" ;
label define S61A      0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost everyday"
                       4 "(4) Everyday" 9 "(9) Multiple response" ;
label define S61B      0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost everyday"
                       4 "(4) Everyday" 9 "(9) Multiple response" ;
label define S61C      0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost everyday"
                       4 "(4) Everyday" 9 "(9) Multiple response" ;
label define S61D      0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost everyday"
                       4 "(4) Everyday" 9 "(9) Multiple response" ;
label define S61E      0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost everyday"
                       4 "(4) Everyday" 9 "(9) Multiple response" ;
label define S61F      0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost everyday"
                       4 "(4) Everyday" 9 "(9) Multiple response" ;
label define S62A      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62B      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62C      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62D      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62E      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62F      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62G      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62H      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62I      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62J      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62K      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62L      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62M      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62N      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62O      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62P      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62Q      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S62R      1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 9 "(9) Multiple response" ;
label define S63       0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 to 5 times" 3 "(3) 6 or 7 times"
                       4 "(4) More than 7 times" 9 "(9) Multiple response" ;
label define S64       0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 to 5 times" 3 "(3) 6 or 7 times"
                       4 "(4) More than 7 times" 9 "(9) Multiple response" ;
label define S65       0 "(0) No" 1 "(1) Yes" 9 "(9) Multiple response" ;
label define S66       0 "(0) Not marked" 1 "(1) Marked" ;
label define S67       0 "(0) Not marked" 1 "(1) Marked" ;
label define S68       0 "(0) Not marked" 1 "(1) Marked" ;
label define PA1       1 "(1) Male" 2 "(2) Female" ;
label define PA2       996 "(996) Respondent refused to answer" ;
label define PA3       0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA4       0 "(0) No (skip to A6)" 1 "(1) Yes (go to A5)"
                       6 "(6) Respondent refused to answer" ;
label define PA5_1     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not of Hispanic/Latino origin)" ;
label define PA5_2     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not of Hispanic/Latino origin)" ;
label define PA5_3     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not of Hispanic/Latino origin)" ;
label define PA5_4     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not of Hispanic/Latino origin)" ;
label define PA5_5     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not of Hispanic/Latino origin)" ;
label define PA5_6     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not of Hispanic/Latino origin)" ;
label define PA5_7     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not of Hispanic/Latino origin)" ;
label define PA6_1     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer" ;
label define PA6_2     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer" ;
label define PA6_3     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer" ;
label define PA6_4     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer" ;
label define PA6_5     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer" ;
label define PA7_1     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PA7_2     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PA7_3     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PA7_4     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PA7_5     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PA7_6     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PA7_7     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PA7_8     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PA8B      1 "(1) White" 2 "(2) Black/African American"
                       3 "(3) American Indian/Native American"
                       4 "(4) Asian/Pacific Islander" 5 "(5) Other"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (answered only one race)" ;
label define PA9       1 "(1) White" 2 "(2) Black/African American"
                       3 "(3) American Indian/Native American"
                       4 "(4) Asian/Pacific Islander" ;
label define PA10      1 "(1) Single/never married (go to A11)"
                       2 "(2) Married (skip to A12)"
                       3 "(3) Widowed (go to A11)"
                       4 "(4) Divorced (go to A11)"
                       5 "(5) Separated (go to A11)"
                       6 "(6) Respondent refused to answer" ;
label define PA11      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (currently married)" ;
label define PA12      1 "(1) 8th grade or less"
                       2 "(2) >8th grade/didn't graduate high school"
                       3 "(3) Business/trade/voc. school instead high school"
                       4 "(4) High school graduate" 5 "(5) Completed a GED"
                       6 "(6) Business/trade/voc. school after high school"
                       7 "(7) College/didn't graduate"
                       8 "(8) Graduated from college/university"
                       9 "(9) Prof training beyond 4-year college/univ"
                       10 "(10) Never went to school"
                       96 "(96) Respondent refused to answer" ;
label define PA13      0 "(0) No (go to A14)" 1 "(1) Yes (skip to A17)"
                       6 "(6) Respondent refused to answer" ;
label define PA14      0 "(0) No (skip to A16)" 1 "(1) Yes (go to A15)"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (works outside the home)" ;
label define PA15      0 "(0) No (skip to A16)" 1 "(1) Yes (go to A15)"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (hasn't worked outside home in past 12 months" ;
label define PA16      0 "(0) No (skip to A18)" 1 "(1) Yes (skip to A18)"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (works outside the home)" ;
label define PA17      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (doesn't work outside the home)" ;
label define PA18      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA19      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA20      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA21      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA22      1 "(1) Adventist" 2 "(2) AME/AME Zion/CME"
                       3 "(3) Assemblies of God" 5 "(5) Baptist"
                       6 "(6) Buddhist" 7 "(7) Catholic"
                       8 "(8) Christian Church (Disciples of Christ)"
                       9 "(9) Christian Science" 10 "(10) Congregational"
                       11 "(11) Eastern Orthodox" 12 "(12) Episcopal"
                       13 "(13) Friends/Quaker" 14 "(14) Hindu"
                       15 "(15) Holiness" 16 "(16) Islam/Moslem/Muslim"
                       17 "(17) Jehovah's Witness"
                       18 "(18) Jewish-Conservative/Reformed/Orthodox/Reconstructionist"
                       19 "(19) Later Day Saints (Mormon)" 20 "(20) Lutheran"
                       21 "(21) Methodist" 23 "(23) Other Protestant"
                       24 "(24) Other religion" 25 "(25) Pentecostal"
                       26 "(26) Presbyterian" 27 "(27) Unitarian"
                       28 "(28) None (skip to A27)"
                       96 "(96) Respondent refused to answer" ;
label define PA23      1 "(1) Once a week or more"
                       2 "(2) Less than once a week/at least once a month"
                       3 "(3) Less than once a month" 4 "(4) Never"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no religion)" ;
label define PA24      1 "(1) Very important" 2 "(2) Fairly important"
                       3 "(3) Fairly unimportant"
                       4 "(4) Not important at all"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no religion)" ;
label define PA25      1 "(1) At least once a day"
                       2 "(2) At least once a week"
                       3 "(3) At least once a month"
                       4 "(4) From time to time/but less than once a month"
                       5 "(5) Never" 6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no religion)" ;
label define PA26      1 "(1) Agree" 2 "(2) Disagree"
                       3 "(3) Religion has no sacred scriptures"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no religion)"
                       8 "(8) Don't know" ;
label define PA27A     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA27B     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA27C     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA27D     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA27E     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA28A     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA28B     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA28C     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA28D     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA28E     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA28F     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA28G     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA28H     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA28I     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA28J     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA30      1 "(1) Near old workplace"
                       2 "(2) Near current workplace"
                       3 "(3) Had outgrown previous housing"
                       4 "(4) Affordable good housing" 5 "(5) Less crime"
                       6 "(6) Less illegal activity by adolescents"
                       7 "(7) Close to friends/relatives"
                       8 "(8) Better schools"
                       9 "(9) Children of appropriate ages"
                       10 "(10) Born here"
                       96 "(96) Respondent refused to answer"
                       97 "(97) Legitimate skip" ;
label define PA31      1 "(1) Definitely would" 2 "(2) Probably would"
                       3 "(3) Might" 4 "(4) Probably would not"
                       5 "(5) Definitely would not"
                       6 "(6) Respondent refused to answer" ;
label define PA32      1 "(1) Definitely would" 2 "(2) Probably would"
                       3 "(3) Might" 4 "(4) Probably would not"
                       5 "(5) Definitely would not"
                       6 "(6) Respondent refused to answer" ;
label define PA33      1 "(1) No problem at all" 2 "(2) A small problem"
                       3 "(3) A big problem"
                       6 "(6) Respondent refused to answer" ;
label define PA34      1 "(1) No problem at all" 2 "(2) A small problem"
                       3 "(3) A big problem"
                       6 "(6) Respondent refused to answer" ;
label define PA35      1 "(1) Not at all" 2 "(2) Some" 3 "(3) Very much"
                       6 "(6) Respondent refused to answer" ;
label define PA36      1 "(1) To be well-behaved" 2 "(2) To be popular"
                       3 "(3) To think for himself" 4 "(4) To work hard"
                       5 "(5) To help others"
                       6 "(6) Respondent refused to answer" ;
label define PA37      1 "(1) To be well-behaved" 2 "(2) To be popular"
                       3 "(3) To think for herself" 4 "(4) To work hard"
                       5 "(5) To help others"
                       6 "(6) Respondent refused to answer" ;
label define PA38      0 "(0) No (skip to A40)" 1 "(1) Yes (go to A39)"
                       6 "(6) Respondent refused to answer" ;
label define PA39      996 "(996) Respondent refused to answer"
                       997 "(997) Legitimate skip (never married)" ;
label define PA40      0 "(0) 0 (skip to A55)" 1 "(1) 1 (go to A41)"
                       2 "(2) 2 (go to A41)" 3 "(3) 3 (go to A41)"
                       4 "(4) 4 (go to A41)" 5 "(5) 5 (go to A41)"
                       6 "(6) 6 or more (go to A41)"
                       96 "(96) Respondent refused to answer" ;
label define PA41_1    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_2    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_3    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_4    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_5    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_6    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_7    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_8    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_9    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_10   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_11   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_12   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_13   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_14   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_15   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_16   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_17   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_18   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA41_19   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA42      1 "(1) Marriage" 2 "(2) Marriage-like"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA43      0 "(0) No (go to A44)" 1 "(1) Yes (skip to A45)"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no marriage/marriage-like relation last 18yr" ;
label define PA44      1 "(1) Separation" 2 "(2) Divorce" 3 "(3) Annulment"
                       4 "(4) Death" 5 "(5) Other"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (relationship still going on)" ;
label define PA46_1    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_2    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_3    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_4    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_5    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_6    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_7    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_8    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_9    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_10   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_11   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_12   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_13   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_14   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_15   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_16   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_17   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_18   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA46_19   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA47      1 "(1) Marriage" 2 "(2) Marriage-like"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA48      0 "(0) No (go to A49)" 1 "(1) Yes (skip to A50)"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (no/only 1 marriage-like relationship last 18" ;
label define PA49      1 "(1) Separation" 2 "(2) Divorce" 3 "(3) Annulment"
                       4 "(4) Death" 5 "(5) Other"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (relationship still going on)" ;
label define PA51_1    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_2    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_3    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_4    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_5    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_6    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_7    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_8    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_9    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_10   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_11   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_12   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_13   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_14   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_15   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_16   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_17   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_18   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA51_19   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA52      1 "(1) Marriage" 2 "(2) Marriage-like"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA53      0 "(0) No (go to A49)" 1 "(1) Yes (skip to A50)"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (2/fewer marriages/-like relationship last 18" ;
label define PA54      1 "(1) Separation" 2 "(2) Divorce" 3 "(3) Annulment"
                       4 "(4) Death" 5 "(5) Other"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (relationship still going on)" ;
label define PA55      9996 "(9996) Respondent refused to answer" ;
label define PA56      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA57A     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA57B     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA57C     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA57D     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA57E     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA57F     0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PA58      1 "(1) Excellent" 2 "(2) Very good" 3 "(3) Good"
                       4 "(4) Fair" 5 "(5) Poor"
                       6 "(6) Respondent refused to answer" ;
label define PA59      1 "(1) Very easy" 2 "(2) Somewhat easy"
                       3 "(3) Somewhat hard" 4 "(4) Very hard"
                       6 "(6) Respondent refused to answer" ;
label define PA60      1 "(1) Never" 2 "(2) Rarely" 3 "(3) Sometimes"
                       4 "(4) Most of the time" 5 "(5) Always"
                       6 "(6) Respondent refused to answer" ;
label define PA61      1 "(1) Never" 2 "(2) Once a month or less"
                       3 "(3) Two or three days a month"
                       4 "(4) Once or twice a week" 5 "(5) 3-5 days a week"
                       6 "(6) Nearly everyday"
                       96 "(96) Respondent refused to answer" ;
label define PA62      1 "(1) Never" 2 "(2) Once" 3 "(3) Twice"
                       4 "(4) Three times" 5 "(5) Four times"
                       6 "(6) Five or more times"
                       96 "(96) Respondent refused to answer" ;
label define PA63      0 "(0) No (skip to Section B)" 1 "(1) Yes (go to A64)"
                       6 "(6) Respondent refused to answer" ;
label define PA64      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PB2       1 "(1) Male" 2 "(2) Female"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no current spouse/partner)" ;
label define PB3       0 "(0) No (skip to B5)" 1 "(1) Yes (go to B4)"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no current spouse/partner)"
                       8 "(8) Don't know (skip to B5)" ;
label define PB4_1     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not of Hispanic/Latino origin)" ;
label define PB4_2     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not of Hispanic/Latino origin)" ;
label define PB4_3     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not of Hispanic/Latino origin)" ;
label define PB4_4     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not of Hispanic/Latino origin)" ;
label define PB4_5     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not of Hispanic/Latino origin)" ;
label define PB4_6     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not of Hispanic/Latino origin)" ;
label define PB4_7     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not of Hispanic/Latino origin)" ;
label define PB5_1     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no current spouse/partner)" ;
label define PB5_2     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no current spouse/partner)" ;
label define PB5_3     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no current spouse/partner)" ;
label define PB5_4     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no current spouse/partner)" ;
label define PB5_5     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no current spouse/partner)" ;
label define PB6_1     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PB6_2     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PB6_3     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PB6_4     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PB6_5     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PB6_6     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PB6_7     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PB6_8     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (not Asian/Pacific Islander)" ;
label define PB7       1 "(1) Adventist" 2 "(2) AME/AME Zion/CME"
                       3 "(3) Assemblies of God" 5 "(5) Baptist"
                       6 "(6) Buddhist" 7 "(7) Catholic"
                       8 "(8) Christian Church (Disciples of Christ)"
                       9 "(9) Christian Science" 10 "(10) Congregational"
                       11 "(11) Eastern Orthodox" 12 "(12) Episcopal"
                       13 "(13) Friends/Quaker" 14 "(14) Hindu"
                       15 "(15) Holiness" 16 "(16) Islam/Moslem/Muslim"
                       17 "(17) Jehovah's Witness"
                       18 "(18) Jewish-Conservative/Reformed/Orthodox/Reconstructionist"
                       19 "(19) Later Day Saints (Mormon)" 20 "(20) Lutheran"
                       21 "(21) Methodist" 23 "(23) Other Protestant"
                       24 "(24) Other religion" 25 "(25) Pentecostal"
                       26 "(26) Presbyterian" 27 "(27) Unitarian"
                       28 "(28) None" 96 "(96) Respondent refused to answer"
                       97 "(97) Legitimate skip (no current spouse/partner)" ;
label define PB8       1 "(1) 8th grade or less"
                       2 "(2) >8th grade/didn't graduate high school"
                       3 "(3) Business/trade/voc. school instead high school"
                       4 "(4) High school graduate" 5 "(5) Completed a GED"
                       6 "(6) Business/trade/voc. school after high school"
                       7 "(7) College/didn't graduate"
                       8 "(8) Graduated from college/university"
                       9 "(9) Prof training beyond 4-year college/univ"
                       10 "(10) Never went to school"
                       11 "(11) (He/she) went to school/but doesn't know how far"
                       12 "(12) Doesn't know if (he/she) went to school"
                       96 "(96) Respondent refused to answer"
                       97 "(97) Legitimate skip (no current spouse/partner)" ;
label define PB9       0 "(0) No (go to B10)" 1 "(1) Yes (skip to B13)"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no current spouse/partner)" ;
label define PB10      0 "(0) No (skip to B12)" 1 "(1) Yes (go to B11)"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (works outside the home)" ;
label define PB11      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (hasn't worked outside home in past 12mn" ;
label define PB12      0 "(0) No (skip to B14)" 1 "(1) Yes (skip to B14)"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (works outside the home)" ;
label define PB13      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (doesn't work outside the home)" ;
label define PB14      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no current spouse/partner)" ;
label define PB15      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no current spouse/partner)" ;
label define PB16      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no current spouse/partner)" ;
label define PB17      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no current spouse/partner)" ;
label define PB18      1 "(1) Completely unhappy" 10 "(10) Completely happy"
                       96 "(96) Respondent refused to answer"
                       97 "(97) Legitimate skip (no current spouse/partner)" ;
label define PB19      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no current spouse/partner)" ;
label define PB20      1 "(1) A lot" 2 "(2) Some" 3 "(3) A little"
                       4 "(4) Not at all"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no current spouse/partner)" ;
label define PB21      1 "(1) Excellent" 2 "(2) Very good" 3 "(3) Good"
                       4 "(4) Fair" 5 "(5) Poor"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (no current spouse/partner)"
                       8 "(8) Don't know" ;
label define PB22      1 "(1) Never" 2 "(2) Once a month or less"
                       3 "(3) Two or three days a month"
                       4 "(4) Once or twice a week" 5 "(5) 3-5 days a week"
                       6 "(6) Nearly everyday"
                       96 "(96) Respondent refused to answer"
                       97 "(97) Legitimate skip (no current spouse/partner)"
                       98 "(98) Don't know" ;
label define PC1       1 "(1) Biological mother" 2 "(2) Step mother"
                       3 "(3) Adoptive mother" 4 "(4) Foster mother"
                       5 "(5) Grandmother" 6 "(6) Aunt"
                       7 "(7) Other female relative"
                       8 "(8) Other female non-relative"
                       9 "(9) Biological father" 10 "(10) Step father"
                       11 "(11) Adoptive father" 13 "(13) Grandfather"
                       14 "(14) Uncle" 15 "(15) Other male relative"
                       16 "(16) Other male non-relative"
                       96 "(96) Respondent refused to answer" ;
label define PC2       0 "(0) No (go to C3)" 1 "(1) Yes (skip to C6A)"
                       7 "(7) Legit skip (biologic mother completed parent questionnai" ;
label define PC3       0 "(0) No (skip to C5)" 1 "(1) Yes (go to C4)"
                       7 "(7) Legitimate skip (biological mother lives in household)"
                       8 "(8) Don't know (skip to C5)" ;
label define PC4       996 "(996) Respondent refused to answer"
                       997 "(997) Legit skip (adolescent never lived w/biological mother"
                       998 "(998) Don't know" ;
label define PC5       1 "(1) None" 2 "(2) $100 or less" 3 "(3) $101-$200"
                       4 "(4) $201-$500" 5 "(5) More than $500"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (biological mother lives in household)"
                       8 "(8) Don't know" ;
label define PC6B      0 "(0) No (go to C7)" 1 "(1) Yes (skip to C10"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (biologic father completed parent questionnai" ;
label define PC7       0 "(0) No (skip to C9)" 1 "(1) Yes (go to C8)"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legit skip (adolescent never lived w/biological father)"
                       8 "(8) Don't know (skip to C9)" ;
label define PC8       996 "(996) Respondent refused to answer"
                       997 "(997) Legit skip (adolescent never lived w/biological father"
                       998 "(998) Don't know" ;
label define PC9       1 "(1) None" 2 "(2) $100 or less" 3 "(3) $101-$200"
                       4 "(4) $201-$500" 5 "(5) More than $500"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (biological father lives in household)"
                       8 "(8) Don't know" ;
label define PC10      0 "(0) No" 1 "(1) Yes"
                       2 "(2) (He/she) doesn't go to school"
                       6 "(6) Respondent refused to answer" ;
label define PC11      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PC12      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PC13      1 "(1) A good influence" 2 "(2) A bad influence"
                       3 "(3) Neither a good nor a bad influence"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC14      0 "(0) No (skip to C17)" 1 "(1) Yes (go to C15)"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know (skip to C17)" ;
label define PC15      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (adolescent doesn't have girl/boyfriend)" ;
label define PC16      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (adolescent doesn't have girl/boyfriend)" ;
label define PC17      0 "(0) 0" 1 "(1) 1" 2 "(2) 2" 3 "(3) 3" 4 "(4) 4"
                       5 "(5) 5" 6 "(6) 6 or more"
                       96 "(96) Respondent refused to answer" ;
label define PC18      1 "(1) Excellent" 2 "(2) Very good" 3 "(3) Good"
                       4 "(4) Fair" 5 "(5) Poor"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC19A_P   3 "(3) Less than 4lbs" 4 "(4) 4" 5 "(5) 5" 6 "(6) 6"
                       7 "(7) 7" 8 "(8) 8" 9 "(9) 9" 10 "(10) 10"
                       11 "(11) 11" 12 "(12) 12 lbs or more"
                       98 "(98) Don't know" ;
label define PC19B_O   98 "(98) Don't know" 99 "(99) Not applicable" ;
label define PC20      1 "(1) Less than 3 months"
                       2 "(2) 3 months to less than 6 months"
                       3 "(3) 6 months to less than 9 months"
                       4 "(4) 9 months to less than 12 months"
                       5 "(5) 12 months to less than 24 months"
                       6 "(6) 24 months or more"
                       7 "(7) (He/she) was not breastfed"
                       96 "(96) Respondent refused to answer"
                       98 "(98) Don't know" ;
label define PC21_1    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer" ;
label define PC21_2    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer" ;
label define PC21_3    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer" ;
label define PC21_4    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer" ;
label define PC21_5    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer" ;
label define PC21_6    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer" ;
label define PC21_7    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer" ;
label define PC22      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (adolescent doesn't have health insuranc"
                       8 "(8) Don't know" ;
label define PC23      1 "(1) 9:00pm or earlier" 2 "(2) By 10:00pm"
                       3 "(3) By 11:00pm" 4 "(4) by 12:00 (midnight)"
                       5 "(5) By 1:00am" 6 "(6) After 1:00am"
                       7 "(7) (He/she) has not set bedtime"
                       96 "(96) Respondent refused to answer"
                       98 "(98) Don't know" ;
label define PC24      0 "(0) No (skip to C30)" 1 "(1) Yes (go to C25)"
                       6 "(6) Respondent refused to answer" ;
label define PC25      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (adolescent not in school now)" ;
label define PC26      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (adolescent not in school now)" ;
label define PC27      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (adolescent not in school now)" ;
label define PC28      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (adolescent not in school now)" ;
label define PC29A     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (adolescent not in school now)" ;
label define PC29B     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (adolescent not in school now)" ;
label define PC29C     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (adolescent not in school now)" ;
label define PC30      1 "(1) A brilliant student"
                       2 "(2) A leader in school activities"
                       3 "(3) An athletic star" 4 "(4) The most popular"
                       5 "(5) (He/she) has already graduated from high school"
                       6 "(6) Respondent refused to answer" ;
label define PC31      1 "(1) Very disappointed"
                       2 "(2) Somewhat disappointed" 3 "(3) Not disappointed"
                       6 "(6) Respondent refused to answer" ;
label define PC32      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PC33      1 "(1) Very well" 2 "(2) Fairly well"
                       3 "(3) Not so well" 4 "(4) Not well at all"
                       6 "(6) Respondent refused to answer" ;
label define PC34A     1 "(1) Always" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never"
                       6 "(6) Respondent refused to answer" ;
label define PC34B     1 "(1) Always" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never"
                       6 "(6) Respondent refused to answer" ;
label define PC34C     1 "(1) Always" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never"
                       6 "(6) Respondent refused to answer" ;
label define PC34D     1 "(1) Always" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never"
                       6 "(6) Respondent refused to answer" ;
label define PC34E     1 "(1) Always" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never"
                       6 "(6) Respondent refused to answer" ;
label define PC35      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PC36_0    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_1    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_2    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_3    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_4    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_5    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_6    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_7    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_8    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_9    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_10   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_11   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_12   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_13   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_14   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_15   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_16   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_17   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_18   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC36_19   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Refused to answer"
                       7 "(7) Legitimate skip (adolescent hasn't lived apart from R)" ;
label define PC37      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC38      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC39      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC40      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC41      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC42A     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       6 "(6) Respondent refused to answer" ;
label define PC42B     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       6 "(6) Respondent refused to answer" ;
label define PC42C     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       6 "(6) Respondent refused to answer" ;
label define PC42D     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       6 "(6) Respondent refused to answer" ;
label define PC42E     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       6 "(6) Respondent refused to answer" ;
label define PC43AA    1 "(1) Not at all" 2 "(2) Somewhat"
                       3 "(3) A moderate amount" 4 "(4) A great deal"
                       6 "(6) Respondent refused to answer" ;
label define PC43AB    1 "(1) Not at all" 2 "(2) Somewhat"
                       3 "(3) A moderate amount" 4 "(4) A great deal"
                       6 "(6) Respondent refused to answer" ;
label define PC43AC    1 "(1) Not at all" 2 "(2) Somewhat"
                       3 "(3) A moderate amount" 4 "(4) A great deal"
                       6 "(6) Respondent refused to answer" ;
label define PC43AD    1 "(1) Not at all" 2 "(2) Somewhat"
                       3 "(3) A moderate amount" 4 "(4) A great deal"
                       6 "(6) Respondent refused to answer" ;
label define PC43BA    1 "(1) Not at all" 2 "(2) Somewhat"
                       3 "(3) A moderate amount" 4 "(4) A great deal"
                       6 "(6) Respondent refused to answer" ;
label define PC43BB    1 "(1) Not at all" 2 "(2) Somewhat"
                       3 "(3) A moderate amount" 4 "(4) A great deal"
                       6 "(6) Respondent refused to answer" ;
label define PC44A     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       6 "(6) Respondent refused to answer" ;
label define PC44B     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       6 "(6) Respondent refused to answer" ;
label define PC44C     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       6 "(6) Respondent refused to answer" ;
label define PC44D     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       6 "(6) Respondent refused to answer" ;
label define PC45      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PC46      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PC47      0 "(0) No (skip to C49)" 1 "(1) Yes (go to C48)"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC48      96 "(96) Respondent refused to answer"
                       97 "(97) Legitimate skip" ;
label define PC49A_1   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49A_2   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49A_3   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49B_1   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49B_2   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49B_3   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49C_1   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49C_2   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49C_3   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49D_1   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49D_2   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49D_3   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49E_1   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49E_2   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49E_3   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49F_1   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49F_2   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC49F_3   0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know" ;
label define PC50      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PC51      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer" ;
label define PC53      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC54      0 "(0) No" 1 "(1) Yes"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define PC55      0 "(0) No (skip to C63)" 1 "(1) Yes (go to C56)"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC58      1 "(1) Accident (go to C59)"
                       2 "(2) Disease (go to C59)"
                       3 "(3) Present at birth (skip to C60)"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define PC59      96 "(96) Respondent refused to answer"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define PC60_1    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_2    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_3    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_4    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_5    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_6    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_7    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_8    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_9    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_10   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_11   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_12   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_13   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_14   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_15   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_16   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_17   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC60_18   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC61A     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC61B     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC61C     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC61D     0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC62_1    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC62_2    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC62_4    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC62_5    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC62_8    0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC62_10   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC62_11   0 "(0) Not marked" 1 "(1) Marked"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" ;
label define PC63      0 "(0) No (go to C64)" 1 "(1) Yes (skip to C69)"
                       6 "(6) Respondent refused to answer"
                       8 "(8) Don't know (go to C69)" ;
label define PC64      0 "(0) No (go to C65)" 1 "(1) Yes (skip to C66)"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip" 8 "(8) Don't know (go to C66)" ;
label define PC65_M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Respondent refused to answer"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define PC65_Y    1 "(1) 1977" 2 "(2) 1978" 3 "(3) 1979" 4 "(4) 1980"
                       5 "(5) 1981" 6 "(6) 1982" 7 "(7) 1983" 8 "(8) 1984"
                       9 "(9) 1985" 10 "(10) 1986" 11 "(11) 1987"
                       12 "(12) 1988" 13 "(13) 1989" 14 "(14) 1990"
                       15 "(15) 1991" 16 "(16) 1992" 17 "(17) 1993"
                       18 "(18) 1994-95"
                       96 "(96) Respondent refused to answer"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define PC66_M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Respondent refused to answer"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define PC66_Y    1 "(1) 1977" 2 "(2) 1978" 3 "(3) 1979" 4 "(4) 1980"
                       5 "(5) 1981" 6 "(6) 1982" 7 "(7) 1983" 8 "(8) 1984"
                       9 "(9) 1985" 10 "(10) 1986" 11 "(11) 1987"
                       12 "(12) 1988" 13 "(13) 1989" 14 "(14) 1990"
                       15 "(15) 1991" 16 "(16) 1992" 17 "(17) 1993"
                       18 "(18) 1994" 19 "(19) 1995"
                       96 "(96) Respondent refused to answer"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define PC68_M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       20 "(20) (He/she) lived there at birth"
                       96 "(96) Respondent refused to answer"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define PC68_Y    1 "(1) 1977" 2 "(2) 1978" 3 "(3) 1979" 4 "(4) 1980"
                       5 "(5) 1981" 6 "(6) 1982" 7 "(7) 1983" 8 "(8) 1984"
                       9 "(9) 1985" 10 "(10) 1986" 11 "(11) 1987"
                       12 "(12) 1988" 13 "(13) 1989" 14 "(14) 1990"
                       15 "(15) 1991" 16 "(16) 1992" 17 "(17) 1993"
                       18 "(18) 1994" 19 "(19) 1995"
                       20 "(20) (He/she) lived there at birth"
                       96 "(96) Respondent refused to answer"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define PC69      0 "(0) No (skip to D5)" 1 "(1) Yes (go to D1)" ;
label define PD2       1 "(1) Definitely identical"
                       2 "(2) Probably identical"
                       3 "(3) Definitely fraternal"
                       4 "(4) Probably fraternal"
                       7 "(7) Legitimate skip (adolescent not a twin)"
                       8 "(8) Don't know" ;
label define PD3       1 "(1) As alike as two peas in a pod"
                       2 "(2) Of a normal family likeness"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (adolescent not a twin)"
                       8 "(8) Don't know" ;
label define PD4A      1 "(1) Frequently" 2 "(2) Occasionally" 3 "(3) Never"
                       7 "(7) Legitimate skip (adolescent not a twin)"
                       8 "(8) Don't know" ;
label define PD4B      1 "(1) Frequently" 2 "(2) Occasionally" 3 "(3) Never"
                       7 "(7) Legitimate skip (adolescent not a twin)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define PD4C      1 "(1) Frequently" 2 "(2) Occasionally" 3 "(3) Never"
                       6 "(6) Respondent refused to answer"
                       7 "(7) Legitimate skip (adolescent not a twin)"
                       9 "(9) Not applicable" ;
label define PD4D      1 "(1) Frequently" 2 "(2) Occasionally" 3 "(3) Never"
                       7 "(7) Legitimate skip (adolescent not a twin)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define PD4E      1 "(1) Frequently" 2 "(2) Occasionally" 3 "(3) Never"
                       7 "(7) Legitimate skip (adolescent not a twin)"
                       8 "(8) Don't know" ;
label define PD4F      1 "(1) Frequently" 2 "(2) Occasionally" 3 "(3) Never"
                       7 "(7) Legitimate skip (adolescent not a twin)"
                       8 "(8) Don't know" ;
label define PD5       0 "(0) No" 1 "(1) Yes" ;
label define PD5A      0 "(0) No" 1 "(1) Yes" ;


#delimit cr


/***************************************************************************

 Section 5: Missing Values

 This section will replace numeric missing values (i.e., -9) with generic
 system missing ".".  By default the code in this section is commented out.
 Users wishing to apply the generic missing values should remove the comment
 at the beginning and end of this section.  Note that Stata allows you to
 specify up to 27 unique missing value codes.

****************************************************************/

/*
replace SCH_YR = . if (SCH_YR == 6)
replace BIO_SEX = . if (BIO_SEX == 6)
replace H1GI1M = . if (H1GI1M == 96)
replace H1GI1Y = . if (H1GI1Y == 96)
replace H1GI2 = . if (H1GI2 == 6 | H1GI2 == 8)
replace H1GI3 = . if (H1GI3 == 96 | H1GI3 == 98)
replace H1GI4 = . if (H1GI4 == 6 | H1GI4 == 8)
replace H1GI5A = . if (H1GI5A == 7 | H1GI5A == 8)
replace H1GI5B = . if (H1GI5B == 7 | H1GI5B == 8)
replace H1GI5C = . if (H1GI5C == 7 | H1GI5C == 8)
replace H1GI5D = . if (H1GI5D == 7 | H1GI5D == 8)
replace H1GI5E = . if (H1GI5E == 7 | H1GI5E == 8)
replace H1GI5F = . if (H1GI5F == 7 | H1GI5F == 8)
replace H1GI6A = . if (H1GI6A == 6 | H1GI6A == 8)
replace H1GI6B = . if (H1GI6B == 6 | H1GI6B == 8)
replace H1GI6C = . if (H1GI6C == 6 | H1GI6C == 8)
replace H1GI6D = . if (H1GI6D == 6 | H1GI6D == 8)
replace H1GI6E = . if (H1GI6E == 6 | H1GI6E == 8)
replace H1GI7A = . if (H1GI7A == 7 | H1GI7A == 8)
replace H1GI7B = . if (H1GI7B == 7 | H1GI7B == 8)
replace H1GI7C = . if (H1GI7C == 7 | H1GI7C == 8)
replace H1GI7D = . if (H1GI7D == 7 | H1GI7D == 8)
replace H1GI7E = . if (H1GI7E == 7 | H1GI7E == 8)
replace H1GI7F = . if (H1GI7F == 7 | H1GI7F == 8)
replace H1GI7G = . if (H1GI7G == 7 | H1GI7G == 8)
replace H1GI8 = . if (H1GI8 >= 6 & H1GI8 <= 9)
replace H1GI9 = . if (H1GI9 == 6 | H1GI9 == 8)
replace H1GI10 = . if (H1GI10 == 6 | H1GI10 == 8)
replace H1GI11 = . if (H1GI11 >= 6 & H1GI11 <= 8)
replace H1GI12 = . if (H1GI12 >= 996 & H1GI12 <= 999)
replace H1GI13M = . if (H1GI13M >= 96 & H1GI13M <= 99)
replace H1GI13Y = . if (H1GI13Y >= 96 & H1GI13Y <= 99)
replace H1GI14 = . if (H1GI14 == 7 | H1GI14 == 8)
replace H1GI15 = . if (H1GI15 >= 6 & H1GI15 <= 8)
replace H1GI16M = . if (H1GI16M == 97)
replace H1GI16Y = . if (H1GI16Y == 97)
replace H1GI18 = . if (H1GI18 == 6 | H1GI18 == 8)
replace H1GI19 = . if (H1GI19 == 7)
replace H1GI20 = . if (H1GI20 >= 96 & H1GI20 <= 99)
replace H1GI21 = . if (H1GI21 >= 96 & H1GI21 <= 98)
replace H1DA1 = . if (H1DA1 == 6 | H1DA1 == 8)
replace H1DA2 = . if (H1DA2 == 6 | H1DA2 == 8)
replace H1DA3 = . if (H1DA3 == 6 | H1DA3 == 8)
replace H1DA4 = . if (H1DA4 == 6 | H1DA4 == 8)
replace H1DA5 = . if (H1DA5 == 6 | H1DA5 == 8)
replace H1DA6 = . if (H1DA6 == 6 | H1DA6 == 8)
replace H1DA7 = . if (H1DA7 == 6 | H1DA7 == 8)
replace H1DA8 = . if (H1DA8 == 996 | H1DA8 == 998)
replace H1DA9 = . if (H1DA9 == 996 | H1DA9 == 998)
replace H1DA10 = . if (H1DA10 == 996 | H1DA10 == 998)
replace H1DA11 = . if (H1DA11 == 996 | H1DA11 == 998)
replace H1GH1 = . if (H1GH1 == 6 | H1GH1 == 8)
replace H1GH1A = . if (H1GH1A >= 6 & H1GH1A <= 8)
replace H1GH2 = . if (H1GH2 == 6 | H1GH2 == 8)
replace H1GH3 = . if (H1GH3 == 6 | H1GH3 == 8)
replace H1GH4 = . if (H1GH4 == 6 | H1GH4 == 8)
replace H1GH5 = . if (H1GH5 == 6 | H1GH5 == 8)
replace H1GH6 = . if (H1GH6 == 6 | H1GH6 == 8)
replace H1GH7 = . if (H1GH7 == 6 | H1GH7 == 8)
replace H1GH8 = . if (H1GH8 == 6 | H1GH8 == 8)
replace H1GH9 = . if (H1GH9 == 6 | H1GH9 == 8)
replace H1GH10 = . if (H1GH10 == 6 | H1GH10 == 8)
replace H1GH11 = . if (H1GH11 == 6 | H1GH11 == 8)
replace H1GH12 = . if (H1GH12 == 6 | H1GH12 == 8)
replace H1GH13 = . if (H1GH13 == 6 | H1GH13 == 8)
replace H1GH14 = . if (H1GH14 == 6 | H1GH14 == 8)
replace H1GH15 = . if (H1GH15 == 6 | H1GH15 == 8)
replace H1GH16 = . if (H1GH16 >= 6 & H1GH16 <= 8)
replace H1GH17 = . if (H1GH17 == 6 | H1GH17 == 8)
replace H1GH18 = . if (H1GH18 == 6 | H1GH18 == 8)
replace H1GH19 = . if (H1GH19 == 6 | H1GH19 == 8)
replace H1GH20 = . if (H1GH20 == 6 | H1GH20 == 8)
replace H1GH21 = . if (H1GH21 == 6 | H1GH21 == 8)
replace H1GH22 = . if (H1GH22 == 6 | H1GH22 == 8)
replace H1GH23A = . if (H1GH23A == 6 | H1GH23A == 8)
replace H1GH23B = . if (H1GH23B == 6 | H1GH23B == 8)
replace H1GH23C = . if (H1GH23C == 6 | H1GH23C == 8)
replace H1GH23D = . if (H1GH23D == 6 | H1GH23D == 8)
replace H1GH23E = . if (H1GH23E == 6 | H1GH23E == 8)
replace H1GH23F = . if (H1GH23F == 6 | H1GH23F == 8)
replace H1GH23G = . if (H1GH23G == 6 | H1GH23G == 8)
replace H1GH23H = . if (H1GH23H == 6 | H1GH23H == 8)
replace H1GH23I = . if (H1GH23I == 6 | H1GH23I == 8)
replace H1GH23J = . if (H1GH23J == 6 | H1GH23J == 8)
replace H1GH24 = . if (H1GH24 == 6 | H1GH24 == 8 | H1GH24 == 9)
replace H1GH25 = . if (H1GH25 == 6 | H1GH25 == 8 | H1GH25 == 9)
replace H1GH26 = . if (H1GH26 == 6 | H1GH26 == 8)
replace H1GH27A = . if (H1GH27A >= 6 & H1GH27A <= 8)
replace H1GH27B = . if (H1GH27B >= 6 & H1GH27B <= 8)
replace H1GH27C = . if (H1GH27C >= 6 & H1GH27C <= 8)
replace H1GH27D = . if (H1GH27D >= 6 & H1GH27D <= 8)
replace H1GH27E = . if (H1GH27E >= 6 & H1GH27E <= 8)
replace H1GH27F = . if (H1GH27F >= 6 & H1GH27F <= 8)
replace H1GH27G = . if (H1GH27G >= 6 & H1GH27G <= 8)
replace H1GH27H = . if (H1GH27H >= 6 & H1GH27H <= 8)
replace H1GH27I = . if (H1GH27I >= 6 & H1GH27I <= 8)
replace H1GH27J = . if (H1GH27J >= 6 & H1GH27J <= 8)
replace H1GH28 = . if (H1GH28 == 6 | H1GH28 == 8)
replace H1GH29 = . if (H1GH29 == 6 | H1GH29 == 8)
replace H1GH30A = . if (H1GH30A >= 6 & H1GH30A <= 8)
replace H1GH30B = . if (H1GH30B >= 6 & H1GH30B <= 8)
replace H1GH30C = . if (H1GH30C >= 6 & H1GH30C <= 8)
replace H1GH30D = . if (H1GH30D >= 6 & H1GH30D <= 8)
replace H1GH30E = . if (H1GH30E >= 6 & H1GH30E <= 8)
replace H1GH30F = . if (H1GH30F >= 6 & H1GH30F <= 8)
replace H1GH30G = . if (H1GH30G >= 6 & H1GH30G <= 8)
replace H1GH31A = . if (H1GH31A == 7)
replace H1GH31B = . if (H1GH31B == 7)
replace H1GH31C = . if (H1GH31C == 7)
replace H1GH31D = . if (H1GH31D == 7)
replace H1GH31F = . if (H1GH31F == 7)
replace H1GH31G = . if (H1GH31G == 7)
replace H1GH32 = . if (H1GH32 == 6 | H1GH32 == 8)
replace H1GH33 = . if (H1GH33 == 6 | H1GH33 == 8)
replace H1GH34 = . if (H1GH34 == 6 | H1GH34 == 8)
replace H1GH35 = . if (H1GH35 == 6 | H1GH35 == 8)
replace H1GH36 = . if (H1GH36 == 6 | H1GH36 == 8)
replace H1GH37 = . if (H1GH37 >= 6 & H1GH37 <= 8)
replace H1GH38 = . if (H1GH38 == 7 | H1GH38 == 8)
replace H1GH39 = . if (H1GH39 == 6 | H1GH39 == 8)
replace H1GH40 = . if (H1GH40 == 6 | H1GH40 == 8)
replace H1GH41 = . if (H1GH41 >= 6 & H1GH41 <= 8)
replace H1GH42 = . if (H1GH42 == 6 | H1GH42 == 8)
replace H1GH43 = . if (H1GH43 == 6 | H1GH43 == 8 | H1GH43 == 9)
replace H1GH44 = . if (H1GH44 == 6 | H1GH44 == 8)
replace H1GH46 = . if (H1GH46 == 6 | H1GH46 == 8 | H1GH46 == 9)
replace H1GH48 = . if (H1GH48 == 6 | H1GH48 == 8 | H1GH48 == 9)
replace H1GH49 = . if (H1GH49 == 6 | H1GH49 == 8)
replace H1GH50 = "" if (H1GH50 == "999996" | H1GH50 == "999998" | H1GH50 == "999999")
replace H1GH51 = . if (H1GH51 == 96 | H1GH51 == 98)
replace H1GH52 = . if (H1GH52 == 6 | H1GH52 == 8)
replace H1GH53 = . if (H1GH53 == 6 | H1GH53 == 8 | H1GH53 == 9)
replace H1GH54 = . if (H1GH54 == 6 | H1GH54 == 8 | H1GH54 == 9)
replace H1GH55 = . if (H1GH55 == 6 | H1GH55 == 8)
replace H1GH56 = . if (H1GH56 == 6 | H1GH56 == 8)
replace H1GH57 = . if (H1GH57 == 6 | H1GH57 == 8)
replace H1GH58 = . if (H1GH58 >= 6 & H1GH58 <= 8)
replace H1GH59A = . if (H1GH59A == 96 | H1GH59A == 98)
replace H1GH59B = . if (H1GH59B == 96 | H1GH59B == 98 | H1GH59B == 99)
replace H1GH60 = . if (H1GH60 == 996 | H1GH60 == 998 | H1GH60 == 999)
replace H1TS1 = . if (H1TS1 == 6 | H1TS1 == 8)
replace H1TS2 = . if (H1TS2 == 6 | H1TS2 == 8)
replace H1TS3 = . if (H1TS3 == 6 | H1TS3 == 8)
replace H1TS4 = . if (H1TS4 == 6 | H1TS4 == 8)
replace H1TS5 = . if (H1TS5 == 6 | H1TS5 == 8)
replace H1TS6 = . if (H1TS6 == 6 | H1TS6 == 8)
replace H1TS7 = . if (H1TS7 == 6 | H1TS7 == 8)
replace H1TS8 = . if (H1TS8 == 6 | H1TS8 == 8)
replace H1TS9 = . if (H1TS9 == 6 | H1TS9 == 8)
replace H1TS10 = . if (H1TS10 == 6 | H1TS10 == 8)
replace H1TS11 = . if (H1TS11 == 6 | H1TS11 == 8)
replace H1TS12 = . if (H1TS12 == 6 | H1TS12 == 8)
replace H1TS13 = . if (H1TS13 == 6 | H1TS13 == 8)
replace H1TS14 = . if (H1TS14 == 6 | H1TS14 == 8)
replace H1TS15 = . if (H1TS15 == 6 | H1TS15 == 8)
replace H1TS16 = . if (H1TS16 == 6 | H1TS16 == 8)
replace H1TS17 = . if (H1TS17 == 6 | H1TS17 == 8)
replace H1ED1 = . if (H1ED1 >= 6 & H1ED1 <= 9)
replace H1ED2 = . if (H1ED2 >= 996 & H1ED2 <= 998)
replace H1ED3 = . if (H1ED3 == 6 | H1ED3 == 8)
replace H1ED4A = . if (H1ED4A >= 6 & H1ED4A <= 8)
replace H1ED4B = . if (H1ED4B >= 6 & H1ED4B <= 8)
replace H1ED4C = . if (H1ED4C >= 6 & H1ED4C <= 8)
replace H1ED4D = . if (H1ED4D >= 6 & H1ED4D <= 8)
replace H1ED4E = . if (H1ED4E >= 6 & H1ED4E <= 8)
replace H1ED4F = . if (H1ED4F >= 6 & H1ED4F <= 8)
replace H1ED4G = . if (H1ED4G >= 6 & H1ED4G <= 8)
replace H1ED4H = . if (H1ED4H >= 6 & H1ED4H <= 8)
replace H1ED4I = . if (H1ED4I >= 6 & H1ED4I <= 8)
replace H1ED4J = . if (H1ED4J >= 6 & H1ED4J <= 8)
replace H1ED4K = . if (H1ED4K >= 6 & H1ED4K <= 8)
replace H1ED4M = . if (H1ED4M >= 6 & H1ED4M <= 8)
replace H1ED5 = . if (H1ED5 == 6 | H1ED5 == 8)
replace H1ED6A = . if (H1ED6A == 7 | H1ED6A == 8)
replace H1ED6B = . if (H1ED6B == 7 | H1ED6B == 8)
replace H1ED6C = . if (H1ED6C == 7 | H1ED6C == 8)
replace H1ED6D = . if (H1ED6D == 7 | H1ED6D == 8)
replace H1ED6E = . if (H1ED6E == 7 | H1ED6E == 8)
replace H1ED6F = . if (H1ED6F == 7 | H1ED6F == 8)
replace H1ED6G = . if (H1ED6G == 7 | H1ED6G == 8)
replace H1ED6H = . if (H1ED6H == 7 | H1ED6H == 8)
replace H1ED6I = . if (H1ED6I == 7 | H1ED6I == 8)
replace H1ED6J = . if (H1ED6J == 7 | H1ED6J == 8)
replace H1ED6K = . if (H1ED6K == 7 | H1ED6K == 8)
replace H1ED6L = . if (H1ED6L == 7 | H1ED6L == 8)
replace H1ED6M = . if (H1ED6M == 7 | H1ED6M == 8)
replace H1ED7 = . if (H1ED7 == 6 | H1ED7 == 8)
replace H1ED8 = . if (H1ED8 >= 96 & H1ED8 <= 99)
replace H1ED9 = . if (H1ED9 == 6 | H1ED9 == 8)
replace H1ED10 = . if (H1ED10 == 96 | H1ED10 == 97 | H1ED10 == 99)
replace H1ED11 = . if (H1ED11 >= 96 & H1ED11 <= 98)
replace H1ED12 = . if (H1ED12 >= 96 & H1ED12 <= 98)
replace H1ED13 = . if (H1ED13 >= 96 & H1ED13 <= 98)
replace H1ED14 = . if (H1ED14 >= 96 & H1ED14 <= 98)
replace H1ED15 = . if (H1ED15 >= 6 & H1ED15 <= 8)
replace H1ED16 = . if (H1ED16 >= 6 & H1ED16 <= 8)
replace H1ED17 = . if (H1ED17 >= 6 & H1ED17 <= 8)
replace H1ED18 = . if (H1ED18 >= 6 & H1ED18 <= 8)
replace H1ED19 = . if (H1ED19 >= 6 & H1ED19 <= 8)
replace H1ED20 = . if (H1ED20 >= 6 & H1ED20 <= 8)
replace H1ED21 = . if (H1ED21 >= 6 & H1ED21 <= 8)
replace H1ED22 = . if (H1ED22 >= 6 & H1ED22 <= 8)
replace H1ED23 = . if (H1ED23 >= 6 & H1ED23 <= 8)
replace H1ED24 = . if (H1ED24 >= 6 & H1ED24 <= 8)
replace H1PL1 = . if (H1PL1 == 6 | H1PL1 == 8)
replace H1PL2 = . if (H1PL2 == 7)
replace H1PL3 = . if (H1PL3 == 7 | H1PL3 == 8)
replace H1PL4 = . if (H1PL4 == 7)
replace H1PL5 = . if (H1PL5 == 6 | H1PL5 == 8)
replace H1PL6 = . if (H1PL6 == 6 | H1PL6 == 8)
replace H1PL7 = . if (H1PL7 == 6 | H1PL7 == 8)
replace H1PL8 = . if (H1PL8 >= 6 & H1PL8 <= 8)
replace H1PL9 = . if (H1PL9 == 7 | H1PL9 == 8)
replace H1PL10 = . if (H1PL10 >= 6 & H1PL10 <= 8)
replace H1PL11 = . if (H1PL11 == 7)
replace H1PL12 = . if (H1PL12 >= 6 & H1PL12 <= 8)
replace H1PL13 = . if (H1PL13 == 7)
replace H1PL14 = . if (H1PL14 >= 6 & H1PL14 <= 8)
replace H1PL15 = . if (H1PL15 == 7)
replace H1PL16 = . if (H1PL16 >= 6 & H1PL16 <= 8)
replace H1PL17 = . if (H1PL17 == 7)
replace H1PL18 = . if (H1PL18 >= 6 & H1PL18 <= 8)
replace H1PL19 = . if (H1PL19 == 7)
replace H1PL20 = . if (H1PL20 >= 6 & H1PL20 <= 8)
replace H1PL21 = . if (H1PL21 >= 6 & H1PL21 <= 8)
replace H1PL22 = . if (H1PL22 >= 6 & H1PL22 <= 8)
replace H1PL23 = . if (H1PL23 >= 6 & H1PL23 <= 8)
replace H1PL24 = . if (H1PL24 >= 6 & H1PL24 <= 8)
replace H1PL25 = . if (H1PL25 >= 6 & H1PL25 <= 8)
replace H1PL26 = . if (H1PL26 >= 6 & H1PL26 <= 8)
replace H1PL29 = . if (H1PL29 >= 6 & H1PL29 <= 8)
replace H1PL30 = . if (H1PL30 >= 6 & H1PL30 <= 8)
replace H1PL31 = . if (H1PL31 >= 6 & H1PL31 <= 8)
replace H1PL33 = . if (H1PL33 >= 6 & H1PL33 <= 8)
replace H1PL34 = . if (H1PL34 >= 6 & H1PL34 <= 8)
replace H1PL37 = . if (H1PL37 >= 6 & H1PL37 <= 8)
replace H1PL38 = . if (H1PL38 >= 6 & H1PL38 <= 8)
replace H1HS1 = . if (H1HS1 == 6 | H1HS1 == 8)
replace H1HS2A = . if (H1HS2A == 7 | H1HS2A == 8)
replace H1HS2B = . if (H1HS2B == 7 | H1HS2B == 8)
replace H1HS2C = . if (H1HS2C == 7 | H1HS2C == 8)
replace H1HS2D = . if (H1HS2D == 7 | H1HS2D == 8)
replace H1HS2E = . if (H1HS2E == 7 | H1HS2E == 8)
replace H1HS3 = . if (H1HS3 == 6 | H1HS3 == 8)
replace H1HS4A = . if (H1HS4A == 7)
replace H1HS4B = . if (H1HS4B == 7)
replace H1HS4C = . if (H1HS4C == 7)
replace H1HS4D = . if (H1HS4D == 7)
replace H1HS4E = . if (H1HS4E == 7)
replace H1HS5 = . if (H1HS5 == 6 | H1HS5 == 8)
replace H1HS6A = . if (H1HS6A == 7)
replace H1HS6B = . if (H1HS6B == 7)
replace H1HS6C = . if (H1HS6C == 7)
replace H1HS6D = . if (H1HS6D == 7)
replace H1HS6E = . if (H1HS6E == 7)
replace H1HS7 = . if (H1HS7 == 6 | H1HS7 == 8)
replace H1HS8A = . if (H1HS8A == 7 | H1HS8A == 8)
replace H1HS8B = . if (H1HS8B == 7 | H1HS8B == 8)
replace H1HS8C = . if (H1HS8C == 7 | H1HS8C == 8)
replace H1HS8D = . if (H1HS8D == 7 | H1HS8D == 8)
replace H1HS8E = . if (H1HS8E == 7 | H1HS8E == 8)
replace H1HS9 = . if (H1HS9 == 6 | H1HS9 == 8)
replace H1HS10A = . if (H1HS10A == 7)
replace H1HS10B = . if (H1HS10B == 7)
replace H1HS10C = . if (H1HS10C == 7)
replace H1HS10D = . if (H1HS10D == 7)
replace H1HS10E = . if (H1HS10E == 7)
replace H1HS11 = . if (H1HS11 >= 6 & H1HS11 <= 8)
replace H1HS12A = . if (H1HS12A == 7)
replace H1HS12B = . if (H1HS12B == 7)
replace H1HS12C = . if (H1HS12C == 7)
replace H1HS12D = . if (H1HS12D == 7)
replace H1HS12E = . if (H1HS12E == 7)
replace H1RP1 = . if (H1RP1 >= 6 & H1RP1 <= 9)
replace H1RP2 = . if (H1RP2 >= 6 & H1RP2 <= 9)
replace H1RP3 = . if (H1RP3 >= 6 & H1RP3 <= 9)
replace H1RP4 = . if (H1RP4 >= 6 & H1RP4 <= 9)
replace H1RP5 = . if (H1RP5 >= 6 & H1RP5 <= 9)
replace H1RP6 = . if (H1RP6 >= 6 & H1RP6 <= 9)
replace H1SE1 = . if (H1SE1 >= 96 & H1SE1 <= 99)
replace H1SE2 = . if (H1SE2 >= 96 & H1SE2 <= 99)
replace H1SE3 = . if (H1SE3 >= 96 & H1SE3 <= 99)
replace H1SE4 = . if (H1SE4 == 96 | H1SE4 == 98)
replace H1FS1 = . if (H1FS1 == 6 | H1FS1 == 8)
replace H1FS2 = . if (H1FS2 == 6 | H1FS2 == 8)
replace H1FS3 = . if (H1FS3 == 6 | H1FS3 == 8)
replace H1FS4 = . if (H1FS4 == 6 | H1FS4 == 8)
replace H1FS5 = . if (H1FS5 == 6 | H1FS5 == 8)
replace H1FS6 = . if (H1FS6 == 6 | H1FS6 == 8)
replace H1FS7 = . if (H1FS7 == 6 | H1FS7 == 8)
replace H1FS8 = . if (H1FS8 == 6 | H1FS8 == 8)
replace H1FS9 = . if (H1FS9 == 6 | H1FS9 == 8)
replace H1FS10 = . if (H1FS10 == 6 | H1FS10 == 8)
replace H1FS11 = . if (H1FS11 == 6 | H1FS11 == 8)
replace H1FS12 = . if (H1FS12 == 6 | H1FS12 == 8)
replace H1FS13 = . if (H1FS13 == 6 | H1FS13 == 8)
replace H1FS14 = . if (H1FS14 == 6 | H1FS14 == 8)
replace H1FS15 = . if (H1FS15 == 6 | H1FS15 == 8)
replace H1FS16 = . if (H1FS16 == 6 | H1FS16 == 8)
replace H1FS17 = . if (H1FS17 == 6 | H1FS17 == 8)
replace H1FS18 = . if (H1FS18 == 6 | H1FS18 == 8)
replace H1FS19 = . if (H1FS19 == 6 | H1FS19 == 8)
replace H1HR2A = . if (H1HR2A >= 6 & H1HR2A <= 8)
replace H1HR3A = . if (H1HR3A >= 96 & H1HR3A <= 98)
replace H1HR4A = . if (H1HR4A == 97)
replace H1HR5A = . if (H1HR5A == 97)
replace H1HR6A = . if (H1HR6A == 97)
replace H1HR7A = . if (H1HR7A >= 996.0 & H1HR7A <= 998.0)
replace H1HR8A = . if (H1HR8A == 997 | H1HR8A == 998)
replace H1HR9A = . if (H1HR9A >= 6 & H1HR9A <= 8)
replace H1HR10A = . if (H1HR10A >= 96 & H1HR10A <= 98)
replace H1HR11A = . if (H1HR11A == 97)
replace H1HR2B = . if (H1HR2B >= 6 & H1HR2B <= 8)
replace H1HR3B = . if (H1HR3B >= 96 & H1HR3B <= 98)
replace H1HR4B = . if (H1HR4B == 97)
replace H1HR5B = . if (H1HR5B == 97 | H1HR5B == 98)
replace H1HR6B = . if (H1HR6B == 97)
replace H1HR7B = . if (H1HR7B >= 996.0 & H1HR7B <= 998.0)
replace H1HR8B = . if (H1HR8B == 997 | H1HR8B == 998)
replace H1HR9B = . if (H1HR9B >= 6 & H1HR9B <= 9)
replace H1HR10B = . if (H1HR10B >= 96 & H1HR10B <= 98)
replace H1HR11B = . if (H1HR11B == 97 | H1HR11B == 98)
replace H1HR2C = . if (H1HR2C >= 6 & H1HR2C <= 8)
replace H1HR3C = . if (H1HR3C >= 96 & H1HR3C <= 98)
replace H1HR4C = . if (H1HR4C == 97)
replace H1HR5C = . if (H1HR5C == 97)
replace H1HR6C = . if (H1HR6C == 97)
replace H1HR7C = . if (H1HR7C >= 996 & H1HR7C <= 999)
replace H1HR8C = . if (H1HR8C == 997 | H1HR8C == 998)
replace H1HR9C = . if (H1HR9C >= 6 & H1HR9C <= 8)
replace H1HR10C = . if (H1HR10C >= 96 & H1HR10C <= 98)
replace H1HR11C = . if (H1HR11C == 97)
replace H1HR2D = . if (H1HR2D >= 6 & H1HR2D <= 8)
replace H1HR3D = . if (H1HR3D >= 96 & H1HR3D <= 98)
replace H1HR4D = . if (H1HR4D == 97)
replace H1HR5D = . if (H1HR5D == 97)
replace H1HR6D = . if (H1HR6D == 97)
replace H1HR7D = . if (H1HR7D >= 996 & H1HR7D <= 999)
replace H1HR8D = . if (H1HR8D == 997 | H1HR8D == 998)
replace H1HR9D = . if (H1HR9D >= 6 & H1HR9D <= 8)
replace H1HR10D = . if (H1HR10D >= 96 & H1HR10D <= 99)
replace H1HR11D = . if (H1HR11D == 97 | H1HR11D == 98)
replace H1HR2E = . if (H1HR2E >= 6 & H1HR2E <= 8)
replace H1HR3E = . if (H1HR3E >= 96 & H1HR3E <= 98)
replace H1HR4E = . if (H1HR4E == 97)
replace H1HR5E = . if (H1HR5E == 97)
replace H1HR6E = . if (H1HR6E == 97)
replace H1HR7E = . if (H1HR7E >= 996 & H1HR7E <= 998)
replace H1HR8E = . if (H1HR8E == 997 | H1HR8E == 998)
replace H1HR9E = . if (H1HR9E >= 6 & H1HR9E <= 8)
replace H1HR10E = . if (H1HR10E >= 96 & H1HR10E <= 98)
replace H1HR11E = . if (H1HR11E == 97 | H1HR11E == 98)
replace H1HR2F = . if (H1HR2F >= 6 & H1HR2F <= 8)
replace H1HR3F = . if (H1HR3F >= 96 & H1HR3F <= 98)
replace H1HR4F = . if (H1HR4F == 97)
replace H1HR5F = . if (H1HR5F == 97)
replace H1HR6F = . if (H1HR6F == 97)
replace H1HR7F = . if (H1HR7F >= 996 & H1HR7F <= 999)
replace H1HR8F = . if (H1HR8F == 997 | H1HR8F == 998)
replace H1HR9F = . if (H1HR9F >= 6 & H1HR9F <= 8)
replace H1HR10F = . if (H1HR10F >= 96 & H1HR10F <= 98)
replace H1HR11F = . if (H1HR11F == 97)
replace H1HR2G = . if (H1HR2G >= 6 & H1HR2G <= 8)
replace H1HR3G = . if (H1HR3G >= 96 & H1HR3G <= 98)
replace H1HR4G = . if (H1HR4G == 97)
replace H1HR5G = . if (H1HR5G == 97)
replace H1HR6G = . if (H1HR6G == 97)
replace H1HR7G = . if (H1HR7G >= 996 & H1HR7G <= 998)
replace H1HR8G = . if (H1HR8G == 997 | H1HR8G == 998)
replace H1HR9G = . if (H1HR9G >= 6 & H1HR9G <= 8)
replace H1HR10G = . if (H1HR10G >= 96 & H1HR10G <= 98)
replace H1HR11G = . if (H1HR11G == 97)
replace H1HR2H = . if (H1HR2H >= 6 & H1HR2H <= 8)
replace H1HR3H = . if (H1HR3H >= 96 & H1HR3H <= 98)
replace H1HR4H = . if (H1HR4H == 97)
replace H1HR5H = . if (H1HR5H == 97)
replace H1HR6H = . if (H1HR6H == 97)
replace H1HR7H = . if (H1HR7H >= 996 & H1HR7H <= 998)
replace H1HR8H = . if (H1HR8H == 997 | H1HR8H == 998)
replace H1HR9H = . if (H1HR9H >= 6 & H1HR9H <= 8)
replace H1HR10H = . if (H1HR10H >= 96 & H1HR10H <= 98)
replace H1HR11H = . if (H1HR11H == 97)
replace H1HR2I = . if (H1HR2I >= 6 & H1HR2I <= 8)
replace H1HR3I = . if (H1HR3I >= 96 & H1HR3I <= 98)
replace H1HR4I = . if (H1HR4I == 97)
replace H1HR5I = . if (H1HR5I == 97)
replace H1HR6I = . if (H1HR6I == 97)
replace H1HR7I = . if (H1HR7I >= 996 & H1HR7I <= 998)
replace H1HR8I = . if (H1HR8I == 997 | H1HR8I == 998)
replace H1HR9I = . if (H1HR9I >= 6 & H1HR9I <= 8)
replace H1HR10I = . if (H1HR10I >= 96 & H1HR10I <= 98)
replace H1HR11I = . if (H1HR11I == 97)
replace H1HR2J = . if (H1HR2J >= 6 & H1HR2J <= 8)
replace H1HR3J = . if (H1HR3J >= 96 & H1HR3J <= 98)
replace H1HR4J = . if (H1HR4J == 97)
replace H1HR5J = . if (H1HR5J == 97)
replace H1HR6J = . if (H1HR6J == 97)
replace H1HR7J = . if (H1HR7J >= 996 & H1HR7J <= 998)
replace H1HR8J = . if (H1HR8J == 997 | H1HR8J == 998)
replace H1HR9J = . if (H1HR9J >= 6 & H1HR9J <= 8)
replace H1HR10J = . if (H1HR10J >= 96 & H1HR10J <= 98)
replace H1HR11J = . if (H1HR11J == 97)
replace H1HR2K = . if (H1HR2K >= 6 & H1HR2K <= 8)
replace H1HR3K = . if (H1HR3K >= 96 & H1HR3K <= 98)
replace H1HR4K = . if (H1HR4K == 97)
replace H1HR5K = . if (H1HR5K == 97)
replace H1HR6K = . if (H1HR6K == 97)
replace H1HR7K = . if (H1HR7K >= 996 & H1HR7K <= 998)
replace H1HR8K = . if (H1HR8K == 997 | H1HR8K == 998)
replace H1HR9K = . if (H1HR9K >= 6 & H1HR9K <= 8)
replace H1HR10K = . if (H1HR10K >= 96 & H1HR10K <= 98)
replace H1HR11K = . if (H1HR11K == 97)
replace H1HR2L = . if (H1HR2L >= 6 & H1HR2L <= 8)
replace H1HR3L = . if (H1HR3L >= 96 & H1HR3L <= 98)
replace H1HR4L = . if (H1HR4L == 97)
replace H1HR5L = . if (H1HR5L == 97)
replace H1HR6L = . if (H1HR6L == 97)
replace H1HR7L = . if (H1HR7L >= 996 & H1HR7L <= 998)
replace H1HR8L = . if (H1HR8L == 997 | H1HR8L == 998)
replace H1HR9L = . if (H1HR9L >= 6 & H1HR9L <= 8)
replace H1HR10L = . if (H1HR10L >= 96 & H1HR10L <= 98)
replace H1HR11L = . if (H1HR11L == 97)
replace H1HR2M = . if (H1HR2M >= 6 & H1HR2M <= 8)
replace H1HR3M = . if (H1HR3M >= 96 & H1HR3M <= 98)
replace H1HR4M = . if (H1HR4M == 97)
replace H1HR5M = . if (H1HR5M == 97)
replace H1HR6M = . if (H1HR6M == 97)
replace H1HR7M = . if (H1HR7M >= 996 & H1HR7M <= 998)
replace H1HR8M = . if (H1HR8M == 997 | H1HR8M == 998)
replace H1HR9M = . if (H1HR9M >= 6 & H1HR9M <= 8)
replace H1HR10M = . if (H1HR10M >= 96 & H1HR10M <= 98)
replace H1HR11M = . if (H1HR11M == 97)
replace H1HR2N = . if (H1HR2N >= 6 & H1HR2N <= 8)
replace H1HR3N = . if (H1HR3N >= 96 & H1HR3N <= 98)
replace H1HR4N = . if (H1HR4N == 97)
replace H1HR5N = . if (H1HR5N == 97)
replace H1HR6N = . if (H1HR6N == 97)
replace H1HR7N = . if (H1HR7N >= 996 & H1HR7N <= 998)
replace H1HR8N = . if (H1HR8N == 997 | H1HR8N == 998)
replace H1HR9N = . if (H1HR9N >= 6 & H1HR9N <= 8)
replace H1HR10N = . if (H1HR10N >= 96 & H1HR10N <= 98)
replace H1HR11N = . if (H1HR11N == 97)
replace H1HR2O = . if (H1HR2O >= 6 & H1HR2O <= 8)
replace H1HR3O = . if (H1HR3O >= 96 & H1HR3O <= 98)
replace H1HR4O = . if (H1HR4O == 97)
replace H1HR5O = . if (H1HR5O == 97)
replace H1HR6O = . if (H1HR6O == 97)
replace H1HR7O = . if (H1HR7O >= 996 & H1HR7O <= 998)
replace H1HR8O = . if (H1HR8O == 997 | H1HR8O == 998)
replace H1HR9O = . if (H1HR9O >= 6 & H1HR9O <= 8)
replace H1HR10O = . if (H1HR10O >= 96 & H1HR10O <= 98)
replace H1HR11O = . if (H1HR11O == 97)
replace H1HR2P = . if (H1HR2P >= 6 & H1HR2P <= 8)
replace H1HR3P = . if (H1HR3P >= 96 & H1HR3P <= 98)
replace H1HR4P = . if (H1HR4P == 97)
replace H1HR5P = . if (H1HR5P == 97)
replace H1HR6P = . if (H1HR6P == 97)
replace H1HR7P = . if (H1HR7P >= 996 & H1HR7P <= 998)
replace H1HR8P = . if (H1HR8P == 997 | H1HR8P == 998)
replace H1HR9P = . if (H1HR9P >= 6 & H1HR9P <= 8)
replace H1HR10P = . if (H1HR10P >= 96 & H1HR10P <= 98)
replace H1HR11P = . if (H1HR11P == 97)
replace H1HR2Q = . if (H1HR2Q >= 6 & H1HR2Q <= 8)
replace H1HR3Q = . if (H1HR3Q >= 96 & H1HR3Q <= 98)
replace H1HR4Q = . if (H1HR4Q == 97)
replace H1HR5Q = . if (H1HR5Q == 97)
replace H1HR6Q = . if (H1HR6Q == 97)
replace H1HR7Q = . if (H1HR7Q >= 996 & H1HR7Q <= 998)
replace H1HR8Q = . if (H1HR8Q == 997 | H1HR8Q == 998)
replace H1HR9Q = . if (H1HR9Q >= 6 & H1HR9Q <= 8)
replace H1HR10Q = . if (H1HR10Q >= 96 & H1HR10Q <= 98)
replace H1HR11Q = . if (H1HR11Q == 97)
replace H1HR2R = . if (H1HR2R >= 6 & H1HR2R <= 8)
replace H1HR3R = . if (H1HR3R >= 96 & H1HR3R <= 98)
replace H1HR4R = . if (H1HR4R == 97)
replace H1HR5R = . if (H1HR5R == 97)
replace H1HR6R = . if (H1HR6R == 97)
replace H1HR7R = . if (H1HR7R >= 996 & H1HR7R <= 998)
replace H1HR8R = . if (H1HR8R == 997 | H1HR8R == 998)
replace H1HR9R = . if (H1HR9R >= 6 & H1HR9R <= 8)
replace H1HR10R = . if (H1HR10R >= 96 & H1HR10R <= 98)
replace H1HR11R = . if (H1HR11R == 97)
replace H1HR2S = . if (H1HR2S >= 6 & H1HR2S <= 8)
replace H1HR3S = . if (H1HR3S >= 96 & H1HR3S <= 98)
replace H1HR4S = . if (H1HR4S == 97)
replace H1HR5S = . if (H1HR5S == 97)
replace H1HR6S = . if (H1HR6S == 97)
replace H1HR7S = . if (H1HR7S >= 996 & H1HR7S <= 998)
replace H1HR8S = . if (H1HR8S == 997 | H1HR8S == 998)
replace H1HR9S = . if (H1HR9S >= 6 & H1HR9S <= 8)
replace H1HR10S = . if (H1HR10S >= 96 & H1HR10S <= 98)
replace H1HR11S = . if (H1HR11S == 97)
replace H1HR2T = . if (H1HR2T >= 6 & H1HR2T <= 8)
replace H1HR3T = . if (H1HR3T >= 96 & H1HR3T <= 98)
replace H1HR4T = . if (H1HR4T == 97)
replace H1HR5T = . if (H1HR5T == 97)
replace H1HR6T = . if (H1HR6T == 97)
replace H1HR7T = . if (H1HR7T >= 996 & H1HR7T <= 998)
replace H1HR8T = . if (H1HR8T == 997 | H1HR8T == 998)
replace H1HR9T = . if (H1HR9T >= 6 & H1HR9T <= 8)
replace H1HR10T = . if (H1HR10T >= 96 & H1HR10T <= 98)
replace H1HR11T = . if (H1HR11T == 97)
replace H1HR12 = . if (H1HR12 >= 96 & H1HR12 <= 98)
replace H1HR13 = . if (H1HR13 >= 96 & H1HR13 <= 98)
replace H1HR14 = . if (H1HR14 == 96 | H1HR14 == 98)
replace H1HR15 = . if (H1HR15 >= 96 & H1HR15 <= 98)
replace H1NM1 = . if (H1NM1 >= 6 & H1NM1 <= 8)
replace H1NM2 = . if (H1NM2 == 7 | H1NM2 == 8)
replace H1NM3 = . if (H1NM3 == 97 | H1NM3 == 98)
replace H1NM4 = . if (H1NM4 >= 96 & H1NM4 <= 98)
replace H1NM5 = . if (H1NM5 >= 6 & H1NM5 <= 8)
replace H1NM6 = . if (H1NM6 >= 6 & H1NM6 <= 8)
replace H1NM7 = . if (H1NM7 >= 6 & H1NM7 <= 8)
replace H1NM8 = . if (H1NM8 == 97 | H1NM8 == 98)
replace H1NM9 = . if (H1NM9 >= 97 & H1NM9 <= 99)
replace H1NM10 = . if (H1NM10 >= 6 & H1NM10 <= 8)
replace H1NM11 = . if (H1NM11 >= 6 & H1NM11 <= 8)
replace H1NM12A = . if (H1NM12A >= 6 & H1NM12A <= 8)
replace H1NM12B = . if (H1NM12B >= 6 & H1NM12B <= 8)
replace H1NM12C = . if (H1NM12C >= 6 & H1NM12C <= 8)
replace H1NM12D = . if (H1NM12D >= 6 & H1NM12D <= 8)
replace H1NM12E = . if (H1NM12E >= 6 & H1NM12E <= 8)
replace H1NM12F = . if (H1NM12F >= 6 & H1NM12F <= 8)
replace H1NM12G = . if (H1NM12G >= 6 & H1NM12G <= 8)
replace H1NM12H = . if (H1NM12H >= 6 & H1NM12H <= 8)
replace H1NM12I = . if (H1NM12I >= 6 & H1NM12I <= 8)
replace H1NM12J = . if (H1NM12J >= 6 & H1NM12J <= 8)
replace H1NM13 = . if (H1NM13 >= 6 & H1NM13 <= 8)
replace H1NM14 = . if (H1NM14 >= 6 & H1NM14 <= 8)
replace H1NF1 = . if (H1NF1 >= 6 & H1NF1 <= 8)
replace H1NF2 = . if (H1NF2 >= 6 & H1NF2 <= 8)
replace H1NF3 = . if (H1NF3 == 97 | H1NF3 == 98)
replace H1NF4 = . if (H1NF4 >= 96 & H1NF4 <= 98)
replace H1NF5 = . if (H1NF5 >= 6 & H1NF5 <= 8)
replace H1NF6 = . if (H1NF6 >= 6 & H1NF6 <= 8)
replace H1NF7 = . if (H1NF7 >= 6 & H1NF7 <= 8)
replace H1NF8 = . if (H1NF8 >= 96 & H1NF8 <= 98)
replace H1NF9 = . if (H1NF9 >= 97 & H1NF9 <= 99)
replace H1NF10 = . if (H1NF10 >= 6 & H1NF10 <= 8)
replace H1NF11 = . if (H1NF11 >= 6 & H1NF11 <= 8)
replace H1NF12A = . if (H1NF12A >= 6 & H1NF12A <= 8)
replace H1NF12B = . if (H1NF12B >= 6 & H1NF12B <= 8)
replace H1NF12C = . if (H1NF12C >= 6 & H1NF12C <= 8)
replace H1NF12D = . if (H1NF12D >= 6 & H1NF12D <= 8)
replace H1NF12E = . if (H1NF12E >= 6 & H1NF12E <= 8)
replace H1NF12F = . if (H1NF12F >= 6 & H1NF12F <= 8)
replace H1NF12G = . if (H1NF12G >= 6 & H1NF12G <= 8)
replace H1NF12H = . if (H1NF12H >= 6 & H1NF12H <= 8)
replace H1NF12I = . if (H1NF12I >= 6 & H1NF12I <= 8)
replace H1NF12J = . if (H1NF12J >= 6 & H1NF12J <= 8)
replace H1NF13 = . if (H1NF13 >= 6 & H1NF13 <= 8)
replace H1NF14 = . if (H1NF14 >= 6 & H1NF14 <= 8)
replace H1RM1 = . if (H1RM1 >= 96 & H1RM1 <= 98)
replace H1RM2 = . if (H1RM2 >= 6 & H1RM2 <= 8)
replace H1RM3 = . if (H1RM3 >= 996 & H1RM3 <= 999)
replace H1RM4 = . if (H1RM4 >= 96 & H1RM4 <= 98)
replace H1RM5 = . if (H1RM5 >= 6 & H1RM5 <= 8)
replace H1RM6 = . if (H1RM6 >= 6 & H1RM6 <= 8)
replace H1RM7 = . if (H1RM7 >= 996 & H1RM7 <= 998)
replace H1RM8 = . if (H1RM8 == 7)
replace H1RM9 = . if (H1RM9 >= 6 & H1RM9 <= 9)
replace H1RM10 = . if (H1RM10 >= 6 & H1RM10 <= 8)
replace H1RM11 = . if (H1RM11 >= 96 & H1RM11 <= 99)
replace H1RM12 = . if (H1RM12 >= 96 & H1RM12 <= 99)
replace H1RM13 = . if (H1RM13 >= 96 & H1RM13 <= 99)
replace H1RM14 = . if (H1RM14 >= 6 & H1RM14 <= 8)
replace H1RF1 = . if (H1RF1 >= 96 & H1RF1 <= 99)
replace H1RF2 = . if (H1RF2 >= 6 & H1RF2 <= 9)
replace H1RF3 = . if (H1RF3 >= 996 & H1RF3 <= 999)
replace H1RF4 = . if (H1RF4 >= 96 & H1RF4 <= 99)
replace H1RF5 = . if (H1RF5 >= 6 & H1RF5 <= 9)
replace H1RF6 = . if (H1RF6 >= 6 & H1RF6 <= 9)
replace H1RF7 = . if (H1RF7 >= 996 & H1RF7 <= 998)
replace H1RF8 = . if (H1RF8 == 7)
replace H1RF9 = . if (H1RF9 >= 6 & H1RF9 <= 9)
replace H1RF10 = . if (H1RF10 >= 6 & H1RF10 <= 9)
replace H1RF11 = . if (H1RF11 >= 96 & H1RF11 <= 99)
replace H1RF12 = . if (H1RF12 >= 96 & H1RF12 <= 99)
replace H1RF13 = . if (H1RF13 >= 96 & H1RF13 <= 99)
replace H1RF14 = . if (H1RF14 >= 6 & H1RF14 <= 9)
replace H1WP1 = . if (H1WP1 >= 6 & H1WP1 <= 9)
replace H1WP2 = . if (H1WP2 >= 6 & H1WP2 <= 9)
replace H1WP3 = . if (H1WP3 >= 6 & H1WP3 <= 9)
replace H1WP4 = . if (H1WP4 >= 6 & H1WP4 <= 9)
replace H1WP5 = . if (H1WP5 >= 6 & H1WP5 <= 9)
replace H1WP6 = . if (H1WP6 >= 6 & H1WP6 <= 9)
replace H1WP7 = . if (H1WP7 >= 6 & H1WP7 <= 9)
replace H1WP8 = . if (H1WP8 >= 96 & H1WP8 <= 98)
replace H1WP9 = . if (H1WP9 >= 6 & H1WP9 <= 8)
replace H1WP10 = . if (H1WP10 >= 6 & H1WP10 <= 8)
replace H1WP11 = . if (H1WP11 >= 6 & H1WP11 <= 9)
replace H1WP12 = . if (H1WP12 >= 6 & H1WP12 <= 9)
replace H1WP13 = . if (H1WP13 >= 6 & H1WP13 <= 9)
replace H1WP14 = . if (H1WP14 >= 6 & H1WP14 <= 9)
replace H1WP15 = . if (H1WP15 >= 6 & H1WP15 <= 9)
replace H1WP16 = . if (H1WP16 >= 6 & H1WP16 <= 9)
replace H1WP17A = . if (H1WP17A >= 6 & H1WP17A <= 8)
replace H1WP17B = . if (H1WP17B >= 6 & H1WP17B <= 8)
replace H1WP17C = . if (H1WP17C >= 6 & H1WP17C <= 8)
replace H1WP17D = . if (H1WP17D >= 6 & H1WP17D <= 8)
replace H1WP17E = . if (H1WP17E >= 6 & H1WP17E <= 8)
replace H1WP17F = . if (H1WP17F >= 6 & H1WP17F <= 8)
replace H1WP17G = . if (H1WP17G >= 6 & H1WP17G <= 8)
replace H1WP17H = . if (H1WP17H >= 6 & H1WP17H <= 8)
replace H1WP17I = . if (H1WP17I >= 6 & H1WP17I <= 8)
replace H1WP17J = . if (H1WP17J >= 6 & H1WP17J <= 8)
replace H1WP17K = . if (H1WP17K >= 6 & H1WP17K <= 8)
replace H1WP18A = . if (H1WP18A >= 6 & H1WP18A <= 9)
replace H1WP18B = . if (H1WP18B >= 6 & H1WP18B <= 9)
replace H1WP18C = . if (H1WP18C >= 6 & H1WP18C <= 9)
replace H1WP18D = . if (H1WP18D >= 6 & H1WP18D <= 9)
replace H1WP18E = . if (H1WP18E >= 6 & H1WP18E <= 9)
replace H1WP18F = . if (H1WP18F >= 6 & H1WP18F <= 9)
replace H1WP18G = . if (H1WP18G >= 6 & H1WP18G <= 9)
replace H1WP18H = . if (H1WP18H >= 6 & H1WP18H <= 9)
replace H1WP18I = . if (H1WP18I >= 6 & H1WP18I <= 9)
replace H1WP18J = . if (H1WP18J >= 6 & H1WP18J <= 9)
replace H1WP18K = . if (H1WP18K >= 6 & H1WP18K <= 9)
replace H1MO1 = . if (H1MO1 >= 6 & H1MO1 <= 9)
replace H1MO2 = . if (H1MO2 >= 6 & H1MO2 <= 9)
replace H1MO3 = . if (H1MO3 >= 6 & H1MO3 <= 9)
replace H1MO4 = . if (H1MO4 >= 6 & H1MO4 <= 9)
replace H1MO5 = . if (H1MO5 >= 6 & H1MO5 <= 9)
replace H1MO6 = . if (H1MO6 >= 6 & H1MO6 <= 9)
replace H1MO7 = . if (H1MO7 >= 6 & H1MO7 <= 9)
replace H1MO8 = . if (H1MO8 >= 6 & H1MO8 <= 9)
replace H1MO9 = . if (H1MO9 >= 6 & H1MO9 <= 9)
replace H1MO10 = . if (H1MO10 >= 6 & H1MO10 <= 9)
replace H1MO11 = . if (H1MO11 >= 6 & H1MO11 <= 9)
replace H1MO12 = . if (H1MO12 >= 6 & H1MO12 <= 9)
replace H1MO13 = . if (H1MO13 >= 6 & H1MO13 <= 9)
replace H1MO14 = . if (H1MO14 >= 6 & H1MO14 <= 9)
replace H1PF1 = . if (H1PF1 >= 6 & H1PF1 <= 9)
replace H1PF2 = . if (H1PF2 >= 6 & H1PF2 <= 9)
replace H1PF3 = . if (H1PF3 >= 6 & H1PF3 <= 9)
replace H1PF4 = . if (H1PF4 >= 6 & H1PF4 <= 9)
replace H1PF5 = . if (H1PF5 >= 6 & H1PF5 <= 9)
replace H1PF6 = . if (H1PF6 == 6 | H1PF6 == 8 | H1PF6 == 9)
replace H1PF7 = . if (H1PF7 == 6 | H1PF7 == 8)
replace H1PF8 = . if (H1PF8 == 6 | H1PF8 == 8)
replace H1PF9 = . if (H1PF9 == 6 | H1PF9 == 8 | H1PF9 == 9)
replace H1PF10 = . if (H1PF10 == 6 | H1PF10 == 8)
replace H1PF11 = . if (H1PF11 == 6 | H1PF11 == 8 | H1PF11 == 9)
replace H1PF12 = . if (H1PF12 == 6 | H1PF12 == 8 | H1PF12 == 9)
replace H1PF13 = . if (H1PF13 == 6 | H1PF13 == 8)
replace H1PF14 = . if (H1PF14 == 6 | H1PF14 == 8)
replace H1PF15 = . if (H1PF15 == 6 | H1PF15 == 8)
replace H1PF16 = . if (H1PF16 == 6 | H1PF16 == 8)
replace H1PF17 = . if (H1PF17 == 6 | H1PF17 == 8 | H1PF17 == 9)
replace H1PF18 = . if (H1PF18 == 6 | H1PF18 == 8 | H1PF18 == 9)
replace H1PF19 = . if (H1PF19 == 6 | H1PF19 == 8)
replace H1PF20 = . if (H1PF20 == 6 | H1PF20 == 8 | H1PF20 == 9)
replace H1PF21 = . if (H1PF21 == 6 | H1PF21 == 8 | H1PF21 == 9)
replace H1PF22 = . if (H1PF22 == 6 | H1PF22 == 8 | H1PF22 == 9)
replace H1PF23 = . if (H1PF23 >= 6 & H1PF23 <= 9)
replace H1PF24 = . if (H1PF24 >= 6 & H1PF24 <= 9)
replace H1PF25 = . if (H1PF25 >= 6 & H1PF25 <= 9)
replace H1PF26 = . if (H1PF26 == 6 | H1PF26 == 8 | H1PF26 == 9)
replace H1PF27 = . if (H1PF27 == 6 | H1PF27 == 8)
replace H1PF28 = . if (H1PF28 == 6 | H1PF28 == 8)
replace H1PF29 = . if (H1PF29 == 6 | H1PF29 == 8)
replace H1PF30 = . if (H1PF30 == 6 | H1PF30 == 8)
replace H1PF31 = . if (H1PF31 == 6 | H1PF31 == 8)
replace H1PF32 = . if (H1PF32 == 6 | H1PF32 == 8)
replace H1PF33 = . if (H1PF33 == 6 | H1PF33 == 8)
replace H1PF34 = . if (H1PF34 == 6 | H1PF34 == 8)
replace H1PF35 = . if (H1PF35 == 6 | H1PF35 == 8)
replace H1PF36 = . if (H1PF36 == 6 | H1PF36 == 8)
replace H1KQ1A = . if (H1KQ1A >= 6 & H1KQ1A <= 9)
replace H1KQ1B = . if (H1KQ1B >= 6 & H1KQ1B <= 9)
replace H1KQ2A = . if (H1KQ2A >= 6 & H1KQ2A <= 9)
replace H1KQ2B = . if (H1KQ2B >= 6 & H1KQ2B <= 9)
replace H1KQ3A = . if (H1KQ3A >= 6 & H1KQ3A <= 9)
replace H1KQ3B = . if (H1KQ3B >= 6 & H1KQ3B <= 9)
replace H1KQ4A = . if (H1KQ4A >= 6 & H1KQ4A <= 9)
replace H1KQ4B = . if (H1KQ4B >= 6 & H1KQ4B <= 9)
replace H1KQ5A = . if (H1KQ5A >= 6 & H1KQ5A <= 9)
replace H1KQ5B = . if (H1KQ5B >= 6 & H1KQ5B <= 9)
replace H1KQ6A = . if (H1KQ6A >= 6 & H1KQ6A <= 9)
replace H1KQ6B = . if (H1KQ6B >= 6 & H1KQ6B <= 9)
replace H1KQ7A = . if (H1KQ7A >= 6 & H1KQ7A <= 9)
replace H1KQ7B = . if (H1KQ7B >= 6 & H1KQ7B <= 9)
replace H1KQ8A = . if (H1KQ8A >= 6 & H1KQ8A <= 9)
replace H1KQ8B = . if (H1KQ8B >= 6 & H1KQ8B <= 9)
replace H1KQ9A = . if (H1KQ9A >= 6 & H1KQ9A <= 9)
replace H1KQ9B = . if (H1KQ9B >= 6 & H1KQ9B <= 9)
replace H1KQ10A = . if (H1KQ10A >= 6 & H1KQ10A <= 9)
replace H1KQ10B = . if (H1KQ10B >= 6 & H1KQ10B <= 9)
replace H1MF2A = . if (H1MF2A >= 6 & H1MF2A <= 8)
replace H1MF3A = . if (H1MF3A == 97 | H1MF3A == 98)
replace H1MF4A = . if (H1MF4A == 7)
replace H1MF5A = . if (H1MF5A == 7)
replace H1MF6A = . if (H1MF6A == 6 | H1MF6A == 7)
replace H1MF7A = . if (H1MF7A >= 6 & H1MF7A <= 9)
replace H1MF8A = . if (H1MF8A >= 6 & H1MF8A <= 8)
replace H1MF9A = . if (H1MF9A >= 6 & H1MF9A <= 8)
replace H1MF10A = . if (H1MF10A >= 6 & H1MF10A <= 8)
replace H1MF2B = . if (H1MF2B == 6 | H1MF2B == 7)
replace H1MF3B = . if (H1MF3B == 97 | H1MF3B == 98)
replace H1MF4B = . if (H1MF4B == 7)
replace H1MF5B = . if (H1MF5B == 7)
replace H1MF6B = . if (H1MF6B == 6 | H1MF6B == 7)
replace H1MF7B = . if (H1MF7B == 6 | H1MF7B == 7)
replace H1MF8B = . if (H1MF8B == 6 | H1MF8B == 7)
replace H1MF9B = . if (H1MF9B == 6 | H1MF9B == 7)
replace H1MF10B = . if (H1MF10B == 6 | H1MF10B == 7)
replace H1MF2C = . if (H1MF2C == 7 | H1MF2C == 8)
replace H1MF3C = . if (H1MF3C == 97 | H1MF3C == 98)
replace H1MF4C = . if (H1MF4C == 7)
replace H1MF5C = . if (H1MF5C == 7)
replace H1MF6C = . if (H1MF6C == 6 | H1MF6C == 7)
replace H1MF7C = . if (H1MF7C == 6 | H1MF7C == 7)
replace H1MF8C = . if (H1MF8C >= 6 & H1MF8C <= 8)
replace H1MF9C = . if (H1MF9C == 6 | H1MF9C == 7)
replace H1MF10C = . if (H1MF10C == 6 | H1MF10C == 7)
replace H1MF2D = . if (H1MF2D == 6 | H1MF2D == 7 | H1MF2D == 8)
replace H1MF3D = . if (H1MF3D == 97 | H1MF3D == 98)
replace H1MF4D = . if (H1MF4D == 7)
replace H1MF5D = . if (H1MF5D == 7)
replace H1MF6D = . if (H1MF6D == 6 | H1MF6D == 7)
replace H1MF7D = . if (H1MF7D == 6 | H1MF7D == 7)
replace H1MF8D = . if (H1MF8D == 6 | H1MF8D == 7)
replace H1MF9D = . if (H1MF9D == 6 | H1MF9D == 7)
replace H1MF10D = . if (H1MF10D == 6 | H1MF10D == 7)
replace H1MF2E = . if (H1MF2E == 7 | H1MF2E == 8)
replace H1MF3E = . if (H1MF3E == 97 | H1MF3E == 98)
replace H1MF4E = . if (H1MF4E == 7)
replace H1MF5E = . if (H1MF5E == 7)
replace H1MF6E = . if (H1MF6E == 7)
replace H1MF7E = . if (H1MF7E == 7)
replace H1MF8E = . if (H1MF8E == 7)
replace H1MF9E = . if (H1MF9E == 7)
replace H1MF10E = . if (H1MF10E == 7)
replace H1FF2A = . if (H1FF2A >= 6 & H1FF2A <= 8)
replace H1FF3A = . if (H1FF3A >= 96 & H1FF3A <= 98)
replace H1FF4A = . if (H1FF4A == 6 | H1FF4A == 7)
replace H1FF5A = . if (H1FF5A == 7 | H1FF5A == 8)
replace H1FF6A = . if (H1FF6A >= 6 & H1FF6A <= 8)
replace H1FF7A = . if (H1FF7A == 6 | H1FF7A == 7 | H1FF7A == 9)
replace H1FF8A = . if (H1FF8A == 6 | H1FF8A == 7)
replace H1FF9A = . if (H1FF9A == 6 | H1FF9A == 7)
replace H1FF10A = . if (H1FF10A == 6 | H1FF10A == 7)
replace H1FF2B = . if (H1FF2B >= 6 & H1FF2B <= 8)
replace H1FF3B = . if (H1FF3B >= 96 & H1FF3B <= 98)
replace H1FF4B = . if (H1FF4B == 7)
replace H1FF5B = . if (H1FF5B == 7)
replace H1FF6B = . if (H1FF6B == 6 | H1FF6B == 7)
replace H1FF7B = . if (H1FF7B == 6 | H1FF7B == 7)
replace H1FF8B = . if (H1FF8B == 6 | H1FF8B == 7)
replace H1FF9B = . if (H1FF9B == 6 | H1FF9B == 7)
replace H1FF10B = . if (H1FF10B == 6 | H1FF10B == 7)
replace H1FF2C = . if (H1FF2C == 7 | H1FF2C == 8)
replace H1FF3C = . if (H1FF3C == 97 | H1FF3C == 98)
replace H1FF4C = . if (H1FF4C == 7)
replace H1FF5C = . if (H1FF5C == 7 | H1FF5C == 8)
replace H1FF6C = . if (H1FF6C == 7)
replace H1FF7C = . if (H1FF7C == 7)
replace H1FF8C = . if (H1FF8C == 7)
replace H1FF9C = . if (H1FF9C == 7)
replace H1FF10C = . if (H1FF10C == 7)
replace H1FF2D = . if (H1FF2D == 7)
replace H1FF3D = . if (H1FF3D >= 97 & H1FF3D <= 99)
replace H1FF4D = . if (H1FF4D == 7)
replace H1FF5D = . if (H1FF5D == 7)
replace H1FF6D = . if (H1FF6D == 7 | H1FF6D == 9)
replace H1FF7D = . if (H1FF7D == 7 | H1FF7D == 9)
replace H1FF8D = . if (H1FF8D == 7 | H1FF8D == 9)
replace H1FF9D = . if (H1FF9D == 7 | H1FF9D == 9)
replace H1FF10D = . if (H1FF10D == 7 | H1FF10D == 9)
replace H1FF2E = . if (H1FF2E == 7)
replace H1FF3E = . if (H1FF3E == 97)
replace H1FF4E = . if (H1FF4E == 7)
replace H1FF5E = . if (H1FF5E == 7 | H1FF5E == 8)
replace H1FF6E = . if (H1FF6E == 7)
replace H1FF7E = . if (H1FF7E == 7)
replace H1FF8E = . if (H1FF8E == 7)
replace H1FF9E = . if (H1FF9E == 7)
replace H1FF10E = . if (H1FF10E == 7)
replace H1ID1A = . if (H1ID1A == 6 | H1ID1A == 8 | H1ID1A == 9)
replace H1ID1B = . if (H1ID1B == 6 | H1ID1B == 8 | H1ID1B == 9)
replace H1ID1C = . if (H1ID1C == 6 | H1ID1C == 8 | H1ID1C == 9)
replace H1ID1D = . if (H1ID1D == 6 | H1ID1D == 8 | H1ID1D == 9)
replace H1ID1E = . if (H1ID1E == 6 | H1ID1E == 8 | H1ID1E == 9)
replace H1ID1F = . if (H1ID1F == 6 | H1ID1F == 8 | H1ID1F == 9)
replace H1ID1G = . if (H1ID1G == 6 | H1ID1G == 8 | H1ID1G == 9)
replace H1ID1H = . if (H1ID1H == 6 | H1ID1H == 8 | H1ID1H == 9)
replace H1ID1I = . if (H1ID1I == 6 | H1ID1I == 8 | H1ID1I == 9)
replace H1ID1J = . if (H1ID1J == 6 | H1ID1J == 8 | H1ID1J == 9)
replace H1ID1K = . if (H1ID1K == 6 | H1ID1K == 8 | H1ID1K == 9)
replace H1ID1L = . if (H1ID1L == 6 | H1ID1L == 8 | H1ID1L == 9)
replace H1ID1M = . if (H1ID1M == 6 | H1ID1M == 8 | H1ID1M == 9)
replace H1ID1N = . if (H1ID1N == 6 | H1ID1N == 8 | H1ID1N == 9)
replace H1ID1O = . if (H1ID1O == 6 | H1ID1O == 8 | H1ID1O == 9)
replace H1ID1P = . if (H1ID1P == 6 | H1ID1P == 8 | H1ID1P == 9)
replace H1ID1Q = . if (H1ID1Q == 6 | H1ID1Q == 8 | H1ID1Q == 9)
replace H1ID1R = . if (H1ID1R == 6 | H1ID1R == 8 | H1ID1R == 9)
replace H1ID2_1 = . if (H1ID2_1 >= 96 & H1ID2_1 <= 99)
replace H1ID2_2 = . if (H1ID2_2 >= 96 & H1ID2_2 <= 99)
replace H1ID2_3 = . if (H1ID2_3 >= 96 & H1ID2_3 <= 99)
replace H1ID2_4 = . if (H1ID2_4 >= 96 & H1ID2_4 <= 99)
replace H1ID2_5 = . if (H1ID2_5 >= 96 & H1ID2_5 <= 99)
replace H1ID2_6 = . if (H1ID2_6 >= 96 & H1ID2_6 <= 99)
replace H1ID2_7 = . if (H1ID2_7 >= 96 & H1ID2_7 <= 99)
replace H1ID2_8 = . if (H1ID2_8 >= 96 & H1ID2_8 <= 99)
replace H1ID2_9 = . if (H1ID2_9 >= 96 & H1ID2_9 <= 99)
replace H1ID2_10 = . if (H1ID2_10 >= 96 & H1ID2_10 <= 99)
replace H1ID2_11 = . if (H1ID2_11 >= 96 & H1ID2_11 <= 99)
replace H1ID2_12 = . if (H1ID2_12 >= 96 & H1ID2_12 <= 99)
replace H1ID2_13 = . if (H1ID2_13 >= 96 & H1ID2_13 <= 99)
replace H1ID2_14 = . if (H1ID2_14 >= 96 & H1ID2_14 <= 99)
replace H1ID2_15 = . if (H1ID2_15 >= 96 & H1ID2_15 <= 99)
replace H1ID2_16 = . if (H1ID2_16 >= 96 & H1ID2_16 <= 99)
replace H1ID2_17 = . if (H1ID2_17 >= 96 & H1ID2_17 <= 99)
replace H1ID5 = . if (H1ID5 >= 6 & H1ID5 <= 9)
replace H1ID6 = . if (H1ID6 >= 6 & H1ID6 <= 9)
replace H1RR1 = . if (H1RR1 == 6 | H1RR1 == 8 | H1RR1 == 9)
replace H1LR1 = . if (H1LR1 >= 6 & H1LR1 <= 9)
replace H1LR2 = . if (H1LR2 >= 6 & H1LR2 <= 9)
replace H1LR3 = . if (H1LR3 >= 6 & H1LR3 <= 9)
replace H1LR4 = . if (H1LR4 >= 6 & H1LR4 <= 9)
replace H1CO1 = . if (H1CO1 == 6 | H1CO1 == 8 | H1CO1 == 9)
replace H1CO2M = . if (H1CO2M >= 96 & H1CO2M <= 99)
replace H1CO2Y = . if (H1CO2Y >= 96 & H1CO2Y <= 99)
replace H1CO3 = . if (H1CO3 >= 6 & H1CO3 <= 8)
replace H1CO4A = . if (H1CO4A >= 96 & H1CO4A <= 98)
replace H1CO4B = . if (H1CO4B >= 96 & H1CO4B <= 99)
replace H1CO4C = . if (H1CO4C >= 96 & H1CO4C <= 99)
replace H1CO5M = . if (H1CO5M >= 96 & H1CO5M <= 99)
replace H1CO5Y = . if (H1CO5Y >= 96 & H1CO5Y <= 99)
replace H1CO6 = . if (H1CO6 >= 6 & H1CO6 <= 8)
replace H1CO7A = . if (H1CO7A >= 96 & H1CO7A <= 99)
replace H1CO7B = . if (H1CO7B >= 96 & H1CO7B <= 99)
replace H1CO7C = . if (H1CO7C >= 96 & H1CO7C <= 99)
replace H1CO8 = . if (H1CO8 >= 6 & H1CO8 <= 8)
replace H1CO9 = . if (H1CO9 == 6 | H1CO9 == 7)
replace H1CO10 = . if (H1CO10 >= 6 & H1CO10 <= 8)
replace H1CO11 = . if (H1CO11 == 6 | H1CO11 == 7)
replace H1CO12A = . if (H1CO12A >= 96 & H1CO12A <= 98)
replace H1CO12B = . if (H1CO12B >= 96 & H1CO12B <= 98)
replace H1CO12C = . if (H1CO12C >= 96 & H1CO12C <= 98)
replace H1CO13 = . if (H1CO13 >= 6 & H1CO13 <= 8)
replace H1CO14M = . if (H1CO14M >= 96 & H1CO14M <= 98)
replace H1CO14Y = . if (H1CO14Y >= 96 & H1CO14Y <= 98)
replace H1CO15 = . if (H1CO15 == 7)
replace H1CO16A = . if (H1CO16A >= 6 & H1CO16A <= 8)
replace H1CO16B = . if (H1CO16B >= 6 & H1CO16B <= 8)
replace H1CO16C = . if (H1CO16C >= 6 & H1CO16C <= 8)
replace H1CO16D = . if (H1CO16D >= 6 & H1CO16D <= 8)
replace H1CO16E = . if (H1CO16E >= 6 & H1CO16E <= 8)
replace H1CO16F = . if (H1CO16F >= 6 & H1CO16F <= 8)
replace H1CO16G = . if (H1CO16G >= 6 & H1CO16G <= 8)
replace H1CO16H = . if (H1CO16H >= 6 & H1CO16H <= 8)
replace H1CO16I = . if (H1CO16I == 7 | H1CO16I == 8)
replace H1CO16J = . if (H1CO16J == 7 | H1CO16J == 8)
replace H1CO17A = . if (H1CO17A == 6 | H1CO17A == 7)
replace H1CO17B = . if (H1CO17B == 6 | H1CO17B == 7)
replace H1CO17C = . if (H1CO17C == 6 | H1CO17C == 7)
replace H1CO17D = . if (H1CO17D == 6 | H1CO17D == 7)
replace H1CO17E = . if (H1CO17E == 7)
replace H1CO17F = . if (H1CO17F == 6 | H1CO17F == 7)
replace H1CO17G = . if (H1CO17G == 7)
replace H1CO17H = . if (H1CO17H == 6 | H1CO17H == 7)
replace H1CO17I = . if (H1CO17I == 7)
replace H1CO17J = . if (H1CO17J == 7)
replace H1RI1M_1 = . if (H1RI1M_1 >= 96 & H1RI1M_1 <= 99)
replace H1RI1Y_1 = . if (H1RI1Y_1 >= 96 & H1RI1Y_1 <= 99)
replace H1RI2_1 = . if (H1RI2_1 >= 96 & H1RI2_1 <= 98)
replace H1RI3_1 = . if (H1RI3_1 >= 96 & H1RI3_1 <= 98)
replace H1RI4_1 = . if (H1RI4_1 >= 96 & H1RI4_1 <= 98)
replace H1RI5A_1 = . if (H1RI5A_1 >= 96 & H1RI5A_1 <= 98)
replace H1RI6_1 = . if (H1RI6_1 >= 6 & H1RI6_1 <= 8)
replace H1RI7_1 = . if (H1RI7_1 >= 6 & H1RI7_1 <= 8)
replace H1RI8A_1 = . if (H1RI8A_1 >= 6 & H1RI8A_1 <= 8)
replace H1RI8B_1 = . if (H1RI8B_1 >= 6 & H1RI8B_1 <= 8)
replace H1RI8C_1 = . if (H1RI8C_1 >= 6 & H1RI8C_1 <= 8)
replace H1RI8D_1 = . if (H1RI8D_1 >= 6 & H1RI8D_1 <= 8)
replace H1RI8E_1 = . if (H1RI8E_1 >= 6 & H1RI8E_1 <= 8)
replace H1RI8F_1 = . if (H1RI8F_1 >= 6 & H1RI8F_1 <= 8)
replace H1RI8G_1 = . if (H1RI8G_1 >= 6 & H1RI8G_1 <= 8)
replace H1RI8H_1 = . if (H1RI8H_1 >= 6 & H1RI8H_1 <= 8)
replace H1RI9_1 = . if (H1RI9_1 >= 96 & H1RI9_1 <= 98)
replace H1RI10_1 = . if (H1RI10_1 >= 6 & H1RI10_1 <= 8)
replace H1RI11M1 = . if (H1RI11M1 >= 96 & H1RI11M1 <= 98)
replace H1RI11Y1 = . if (H1RI11Y1 >= 96 & H1RI11Y1 <= 99)
replace H1RI12_1 = . if (H1RI12_1 >= 96 & H1RI12_1 <= 99)
replace H1RI13_1 = . if (H1RI13_1 >= 6 & H1RI13_1 <= 8)
replace H1RI14_1 = . if (H1RI14_1 >= 6 & H1RI14_1 <= 8)
replace H1RI15_1 = . if (H1RI15_1 >= 96 & H1RI15_1 <= 98)
replace H1RI16_1 = . if (H1RI16_1 >= 6 & H1RI16_1 <= 9)
replace H1RI17A1 = . if (H1RI17A1 >= 6 & H1RI17A1 <= 8)
replace H1RI17B1 = . if (H1RI17B1 >= 6 & H1RI17B1 <= 8)
replace H1RI17C1 = . if (H1RI17C1 >= 6 & H1RI17C1 <= 8)
replace H1RI17D1 = . if (H1RI17D1 >= 6 & H1RI17D1 <= 8)
replace H1RI17E1 = . if (H1RI17E1 >= 6 & H1RI17E1 <= 8)
replace H1RI17F1 = . if (H1RI17F1 >= 6 & H1RI17F1 <= 8)
replace H1RI18A1 = . if (H1RI18A1 >= 6 & H1RI18A1 <= 9)
replace H1RI18B1 = . if (H1RI18B1 >= 6 & H1RI18B1 <= 9)
replace H1RI18C1 = . if (H1RI18C1 >= 6 & H1RI18C1 <= 9)
replace H1RI18D1 = . if (H1RI18D1 >= 6 & H1RI18D1 <= 9)
replace H1RI18E1 = . if (H1RI18E1 >= 6 & H1RI18E1 <= 9)
replace H1RI19A1 = . if (H1RI19A1 == 7 | H1RI19A1 == 8)
replace H1RI19B1 = . if (H1RI19B1 == 7 | H1RI19B1 == 8)
replace H1RI19C1 = . if (H1RI19C1 == 7 | H1RI19C1 == 8)
replace H1RI19D1 = . if (H1RI19D1 == 7 | H1RI19D1 == 8)
replace H1RI19E1 = . if (H1RI19E1 == 7 | H1RI19E1 == 8)
replace H1RI19F1 = . if (H1RI19F1 == 7 | H1RI19F1 == 8)
replace H1RI19G1 = . if (H1RI19G1 == 7 | H1RI19G1 == 8)
replace H1RI20_1 = . if (H1RI20_1 >= 6 & H1RI20_1 <= 8)
replace H1RI21A1 = . if (H1RI21A1 >= 6 & H1RI21A1 <= 9)
replace H1RI21B1 = . if (H1RI21B1 >= 6 & H1RI21B1 <= 9)
replace H1RI21C1 = . if (H1RI21C1 >= 6 & H1RI21C1 <= 9)
replace H1RI21D1 = . if (H1RI21D1 >= 6 & H1RI21D1 <= 9)
replace H1RI21E1 = . if (H1RI21E1 >= 6 & H1RI21E1 <= 9)
replace H1RI21F1 = . if (H1RI21F1 >= 6 & H1RI21F1 <= 9)
replace H1RI21G1 = . if (H1RI21G1 >= 6 & H1RI21G1 <= 9)
replace H1RI21H1 = . if (H1RI21H1 >= 6 & H1RI21H1 <= 9)
replace H1RI21I1 = . if (H1RI21I1 >= 6 & H1RI21I1 <= 9)
replace H1RI21J1 = . if (H1RI21J1 >= 6 & H1RI21J1 <= 9)
replace H1RI21K1 = . if (H1RI21K1 >= 6 & H1RI21K1 <= 9)
replace H1RI21L1 = . if (H1RI21L1 >= 6 & H1RI21L1 <= 9)
replace H1RI21M1 = . if (H1RI21M1 >= 6 & H1RI21M1 <= 9)
replace H1RI21N1 = . if (H1RI21N1 >= 6 & H1RI21N1 <= 9)
replace H1RI21O1 = . if (H1RI21O1 >= 6 & H1RI21O1 <= 9)
replace H1RI21P1 = . if (H1RI21P1 >= 6 & H1RI21P1 <= 9)
replace H1RI21Q1 = . if (H1RI21Q1 >= 6 & H1RI21Q1 <= 9)
replace H1RI21R1 = . if (H1RI21R1 >= 6 & H1RI21R1 <= 9)
replace H1RI22A1 = . if (H1RI22A1 == 97)
replace H1RI22B1 = . if (H1RI22B1 == 97)
replace H1RI22C1 = . if (H1RI22C1 == 97)
replace H1RI22D1 = . if (H1RI22D1 == 97)
replace H1RI22E1 = . if (H1RI22E1 == 97)
replace H1RI22F1 = . if (H1RI22F1 == 97)
replace H1RI22G1 = . if (H1RI22G1 == 97)
replace H1RI22H1 = . if (H1RI22H1 == 97)
replace H1RI22I1 = . if (H1RI22I1 == 97)
replace H1RI22J1 = . if (H1RI22J1 == 97)
replace H1RI22K1 = . if (H1RI22K1 == 97)
replace H1RI22L1 = . if (H1RI22L1 == 97)
replace H1RI22M1 = . if (H1RI22M1 == 97)
replace H1RI22N1 = . if (H1RI22N1 == 97)
replace H1RI22O1 = . if (H1RI22O1 == 97)
replace H1RI22P1 = . if (H1RI22P1 == 97)
replace H1RI22Q1 = . if (H1RI22Q1 == 97)
replace H1RI22R1 = . if (H1RI22R1 == 97)
replace H1RI24A1 = . if (H1RI24A1 == 6 | H1RI24A1 == 7)
replace H1RI25M1 = . if (H1RI25M1 >= 96 & H1RI25M1 <= 99)
replace H1RI25Y1 = . if (H1RI25Y1 >= 96 & H1RI25Y1 <= 99)
replace H1RI26M1 = . if (H1RI26M1 >= 96 & H1RI26M1 <= 99)
replace H1RI26Y1 = . if (H1RI26Y1 >= 96 & H1RI26Y1 <= 99)
replace H1RI27_1 = . if (H1RI27_1 >= 6 & H1RI27_1 <= 8)
replace H1RI28_1 = . if (H1RI28_1 == 7)
replace H1RI29A1 = . if (H1RI29A1 == 97)
replace H1RI29B1 = . if (H1RI29B1 >= 96 & H1RI29B1 <= 98)
replace H1RI29C1 = . if (H1RI29C1 >= 96 & H1RI29C1 <= 98)
replace H1RI30_1 = . if (H1RI30_1 == 7)
replace H1RI31_1 = . if (H1RI31_1 >= 6 & H1RI31_1 <= 8)
replace H1RI32_1 = . if (H1RI32_1 == 7)
replace H1RI33A1 = . if (H1RI33A1 >= 96 & H1RI33A1 <= 98)
replace H1RI33B1 = . if (H1RI33B1 == 97 | H1RI33B1 == 98)
replace H1RI33C1 = . if (H1RI33C1 == 96 | H1RI33C1 == 97)
replace H1RI34_1 = . if (H1RI34_1 == 7)
replace H1RI35_1 = . if (H1RI35_1 == 6 | H1RI35_1 == 7)
replace H1RI36_1 = . if (H1RI36_1 >= 6 & H1RI36_1 <= 8)
replace H1RI37_1 = . if (H1RI37_1 == 6 | H1RI37_1 == 7)
replace H1RI38A1 = . if (H1RI38A1 >= 96 & H1RI38A1 <= 98)
replace H1RI38B1 = . if (H1RI38B1 >= 96 & H1RI38B1 <= 98)
replace H1RI38C1 = . if (H1RI38C1 >= 96 & H1RI38C1 <= 98)
replace H1RI39_1 = . if (H1RI39_1 == 7)
replace H1RI40_1 = . if (H1RI40_1 == 7 | H1RI40_1 == 8)
replace H1RI41_1 = . if (H1RI41_1 >= 9996 & H1RI41_1 <= 9998)
replace H1RI1M_2 = . if (H1RI1M_2 >= 96 & H1RI1M_2 <= 99)
replace H1RI1Y_2 = . if (H1RI1Y_2 >= 96 & H1RI1Y_2 <= 99)
replace H1RI2_2 = . if (H1RI2_2 >= 96 & H1RI2_2 <= 99)
replace H1RI3_2 = . if (H1RI3_2 >= 96 & H1RI3_2 <= 99)
replace H1RI4_2 = . if (H1RI4_2 >= 96 & H1RI4_2 <= 99)
replace H1RI5A_2 = . if (H1RI5A_2 >= 96 & H1RI5A_2 <= 99)
replace H1RI6_2 = . if (H1RI6_2 >= 6 & H1RI6_2 <= 9)
replace H1RI7_2 = . if (H1RI7_2 >= 6 & H1RI7_2 <= 9)
replace H1RI8A_2 = . if (H1RI8A_2 >= 6 & H1RI8A_2 <= 9)
replace H1RI8B_2 = . if (H1RI8B_2 >= 6 & H1RI8B_2 <= 9)
replace H1RI8C_2 = . if (H1RI8C_2 >= 6 & H1RI8C_2 <= 9)
replace H1RI8D_2 = . if (H1RI8D_2 >= 6 & H1RI8D_2 <= 9)
replace H1RI8E_2 = . if (H1RI8E_2 >= 6 & H1RI8E_2 <= 9)
replace H1RI8F_2 = . if (H1RI8F_2 >= 6 & H1RI8F_2 <= 9)
replace H1RI8G_2 = . if (H1RI8G_2 >= 6 & H1RI8G_2 <= 9)
replace H1RI8H_2 = . if (H1RI8H_2 >= 6 & H1RI8H_2 <= 9)
replace H1RI9_2 = . if (H1RI9_2 >= 96 & H1RI9_2 <= 99)
replace H1RI10_2 = . if (H1RI10_2 >= 6 & H1RI10_2 <= 9)
replace H1RI11M2 = . if (H1RI11M2 >= 96 & H1RI11M2 <= 99)
replace H1RI11Y2 = . if (H1RI11Y2 >= 96 & H1RI11Y2 <= 99)
replace H1RI12_2 = . if (H1RI12_2 >= 96 & H1RI12_2 <= 99)
replace H1RI13_2 = . if (H1RI13_2 == 7 | H1RI13_2 == 8)
replace H1RI14_2 = . if (H1RI14_2 >= 6 & H1RI14_2 <= 9)
replace H1RI15_2 = . if (H1RI15_2 >= 96 & H1RI15_2 <= 99)
replace H1RI16_2 = . if (H1RI16_2 >= 6 & H1RI16_2 <= 9)
replace H1RI17A2 = . if (H1RI17A2 == 7 | H1RI17A2 == 8)
replace H1RI17B2 = . if (H1RI17B2 == 7 | H1RI17B2 == 8)
replace H1RI17C2 = . if (H1RI17C2 == 7 | H1RI17C2 == 8)
replace H1RI17D2 = . if (H1RI17D2 == 7 | H1RI17D2 == 8)
replace H1RI17E2 = . if (H1RI17E2 == 7 | H1RI17E2 == 8)
replace H1RI17F2 = . if (H1RI17F2 == 7 | H1RI17F2 == 8)
replace H1RI18A2 = . if (H1RI18A2 >= 6 & H1RI18A2 <= 9)
replace H1RI18B2 = . if (H1RI18B2 >= 6 & H1RI18B2 <= 9)
replace H1RI18C2 = . if (H1RI18C2 >= 6 & H1RI18C2 <= 9)
replace H1RI18D2 = . if (H1RI18D2 >= 6 & H1RI18D2 <= 9)
replace H1RI18E2 = . if (H1RI18E2 >= 6 & H1RI18E2 <= 9)
replace H1RI19A2 = . if (H1RI19A2 == 7 | H1RI19A2 == 8)
replace H1RI19B2 = . if (H1RI19B2 == 7 | H1RI19B2 == 8)
replace H1RI19C2 = . if (H1RI19C2 == 7 | H1RI19C2 == 8)
replace H1RI19D2 = . if (H1RI19D2 == 7 | H1RI19D2 == 8)
replace H1RI19E2 = . if (H1RI19E2 == 7 | H1RI19E2 == 8)
replace H1RI19F2 = . if (H1RI19F2 == 7 | H1RI19F2 == 8)
replace H1RI19G2 = . if (H1RI19G2 == 7 | H1RI19G2 == 8)
replace H1RI20_2 = . if (H1RI20_2 >= 6 & H1RI20_2 <= 8)
replace H1RI21A2 = . if (H1RI21A2 >= 6 & H1RI21A2 <= 9)
replace H1RI21B2 = . if (H1RI21B2 >= 6 & H1RI21B2 <= 9)
replace H1RI21C2 = . if (H1RI21C2 >= 6 & H1RI21C2 <= 9)
replace H1RI21D2 = . if (H1RI21D2 >= 6 & H1RI21D2 <= 9)
replace H1RI21E2 = . if (H1RI21E2 >= 6 & H1RI21E2 <= 9)
replace H1RI21F2 = . if (H1RI21F2 >= 6 & H1RI21F2 <= 9)
replace H1RI21G2 = . if (H1RI21G2 >= 6 & H1RI21G2 <= 9)
replace H1RI21H2 = . if (H1RI21H2 >= 6 & H1RI21H2 <= 9)
replace H1RI21I2 = . if (H1RI21I2 >= 6 & H1RI21I2 <= 9)
replace H1RI21J2 = . if (H1RI21J2 >= 6 & H1RI21J2 <= 9)
replace H1RI21K2 = . if (H1RI21K2 >= 6 & H1RI21K2 <= 9)
replace H1RI21L2 = . if (H1RI21L2 >= 6 & H1RI21L2 <= 9)
replace H1RI21M2 = . if (H1RI21M2 >= 6 & H1RI21M2 <= 9)
replace H1RI21N2 = . if (H1RI21N2 >= 6 & H1RI21N2 <= 9)
replace H1RI21O2 = . if (H1RI21O2 >= 6 & H1RI21O2 <= 9)
replace H1RI21P2 = . if (H1RI21P2 >= 6 & H1RI21P2 <= 9)
replace H1RI21Q2 = . if (H1RI21Q2 >= 6 & H1RI21Q2 <= 9)
replace H1RI21R2 = . if (H1RI21R2 >= 6 & H1RI21R2 <= 9)
replace H1RI22A2 = . if (H1RI22A2 == 97)
replace H1RI22B2 = . if (H1RI22B2 == 97)
replace H1RI22C2 = . if (H1RI22C2 == 97)
replace H1RI22D2 = . if (H1RI22D2 == 97)
replace H1RI22E2 = . if (H1RI22E2 == 97)
replace H1RI22F2 = . if (H1RI22F2 == 97)
replace H1RI22G2 = . if (H1RI22G2 == 97)
replace H1RI22H2 = . if (H1RI22H2 == 97)
replace H1RI22I2 = . if (H1RI22I2 == 97)
replace H1RI22J2 = . if (H1RI22J2 == 97)
replace H1RI22K2 = . if (H1RI22K2 == 97)
replace H1RI22L2 = . if (H1RI22L2 == 97)
replace H1RI22M2 = . if (H1RI22M2 == 97)
replace H1RI22N2 = . if (H1RI22N2 == 97)
replace H1RI22O2 = . if (H1RI22O2 == 97)
replace H1RI22P2 = . if (H1RI22P2 == 97)
replace H1RI22Q2 = . if (H1RI22Q2 == 97)
replace H1RI22R2 = . if (H1RI22R2 == 97)
replace H1RI24A2 = . if (H1RI24A2 >= 6 & H1RI24A2 <= 8)
replace H1RI25M2 = . if (H1RI25M2 >= 96 & H1RI25M2 <= 98)
replace H1RI25Y2 = . if (H1RI25Y2 >= 96 & H1RI25Y2 <= 98)
replace H1RI26M2 = . if (H1RI26M2 >= 96 & H1RI26M2 <= 98)
replace H1RI26Y2 = . if (H1RI26Y2 >= 96 & H1RI26Y2 <= 98)
replace H1RI27_2 = . if (H1RI27_2 == 7 | H1RI27_2 == 8)
replace H1RI28_2 = . if (H1RI28_2 == 6 | H1RI28_2 == 7)
replace H1RI29A2 = . if (H1RI29A2 == 97)
replace H1RI29B2 = . if (H1RI29B2 == 97)
replace H1RI29C2 = . if (H1RI29C2 == 97)
replace H1RI30_2 = . if (H1RI30_2 == 7)
replace H1RI31_2 = . if (H1RI31_2 == 7 | H1RI31_2 == 8)
replace H1RI32_2 = . if (H1RI32_2 == 7)
replace H1RI33A2 = . if (H1RI33A2 == 97)
replace H1RI33B2 = . if (H1RI33B2 == 97 | H1RI33B2 == 98)
replace H1RI33C2 = . if (H1RI33C2 >= 96 & H1RI33C2 <= 98)
replace H1RI34_2 = . if (H1RI34_2 == 7)
replace H1RI35_2 = . if (H1RI35_2 == 7)
replace H1RI36_2 = . if (H1RI36_2 == 7)
replace H1RI37_2 = . if (H1RI37_2 == 7)
replace H1RI38A2 = . if (H1RI38A2 == 97)
replace H1RI38B2 = . if (H1RI38B2 == 96 | H1RI38B2 == 97)
replace H1RI38C2 = . if (H1RI38C2 == 97 | H1RI38C2 == 98)
replace H1RI39_2 = . if (H1RI39_2 == 7)
replace H1RI40_2 = . if (H1RI40_2 == 7)
replace H1RI41_2 = . if (H1RI41_2 >= 9996 & H1RI41_2 <= 9998)
replace H1RI1M_3 = . if (H1RI1M_3 >= 96 & H1RI1M_3 <= 98)
replace H1RI1Y_3 = . if (H1RI1Y_3 >= 96 & H1RI1Y_3 <= 98)
replace H1RI2_3 = . if (H1RI2_3 >= 96 & H1RI2_3 <= 98)
replace H1RI3_3 = . if (H1RI3_3 >= 96 & H1RI3_3 <= 98)
replace H1RI4_3 = . if (H1RI4_3 >= 96 & H1RI4_3 <= 98)
replace H1RI5A_3 = . if (H1RI5A_3 >= 96 & H1RI5A_3 <= 98)
replace H1RI6_3 = . if (H1RI6_3 >= 6 & H1RI6_3 <= 8)
replace H1RI7_3 = . if (H1RI7_3 >= 6 & H1RI7_3 <= 8)
replace H1RI8A_3 = . if (H1RI8A_3 >= 6 & H1RI8A_3 <= 8)
replace H1RI8B_3 = . if (H1RI8B_3 >= 6 & H1RI8B_3 <= 8)
replace H1RI8C_3 = . if (H1RI8C_3 >= 6 & H1RI8C_3 <= 8)
replace H1RI8D_3 = . if (H1RI8D_3 >= 6 & H1RI8D_3 <= 8)
replace H1RI8E_3 = . if (H1RI8E_3 >= 6 & H1RI8E_3 <= 8)
replace H1RI8F_3 = . if (H1RI8F_3 >= 6 & H1RI8F_3 <= 8)
replace H1RI8G_3 = . if (H1RI8G_3 >= 6 & H1RI8G_3 <= 8)
replace H1RI8H_3 = . if (H1RI8H_3 >= 6 & H1RI8H_3 <= 8)
replace H1RI9_3 = . if (H1RI9_3 >= 96 & H1RI9_3 <= 98)
replace H1RI10_3 = . if (H1RI10_3 >= 6 & H1RI10_3 <= 8)
replace H1RI11M3 = . if (H1RI11M3 >= 96 & H1RI11M3 <= 98)
replace H1RI11Y3 = . if (H1RI11Y3 >= 96 & H1RI11Y3 <= 98)
replace H1RI12_3 = . if (H1RI12_3 >= 96 & H1RI12_3 <= 98)
replace H1RI13_3 = . if (H1RI13_3 == 7 | H1RI13_3 == 8)
replace H1RI14_3 = . if (H1RI14_3 >= 6 & H1RI14_3 <= 8)
replace H1RI15_3 = . if (H1RI15_3 >= 96 & H1RI15_3 <= 98)
replace H1RI16_3 = . if (H1RI16_3 >= 6 & H1RI16_3 <= 8)
replace H1RI17A3 = . if (H1RI17A3 == 7 | H1RI17A3 == 8)
replace H1RI17B3 = . if (H1RI17B3 == 7 | H1RI17B3 == 8)
replace H1RI17C3 = . if (H1RI17C3 == 7 | H1RI17C3 == 8)
replace H1RI17D3 = . if (H1RI17D3 == 7 | H1RI17D3 == 8)
replace H1RI17E3 = . if (H1RI17E3 == 7 | H1RI17E3 == 8)
replace H1RI17F3 = . if (H1RI17F3 == 7 | H1RI17F3 == 8)
replace H1RI18A3 = . if (H1RI18A3 >= 6 & H1RI18A3 <= 8)
replace H1RI18B3 = . if (H1RI18B3 >= 6 & H1RI18B3 <= 8)
replace H1RI18C3 = . if (H1RI18C3 >= 6 & H1RI18C3 <= 8)
replace H1RI18D3 = . if (H1RI18D3 >= 6 & H1RI18D3 <= 8)
replace H1RI18E3 = . if (H1RI18E3 >= 6 & H1RI18E3 <= 8)
replace H1RI19A3 = . if (H1RI19A3 == 7 | H1RI19A3 == 8)
replace H1RI19B3 = . if (H1RI19B3 == 7 | H1RI19B3 == 8)
replace H1RI19C3 = . if (H1RI19C3 == 7 | H1RI19C3 == 8)
replace H1RI19D3 = . if (H1RI19D3 == 7 | H1RI19D3 == 8)
replace H1RI19E3 = . if (H1RI19E3 == 7 | H1RI19E3 == 8)
replace H1RI19F3 = . if (H1RI19F3 == 7 | H1RI19F3 == 8)
replace H1RI19G3 = . if (H1RI19G3 == 7 | H1RI19G3 == 8)
replace H1RI20_3 = . if (H1RI20_3 >= 6 & H1RI20_3 <= 8)
replace H1RI21A3 = . if (H1RI21A3 >= 6 & H1RI21A3 <= 8)
replace H1RI21B3 = . if (H1RI21B3 >= 6 & H1RI21B3 <= 8)
replace H1RI21C3 = . if (H1RI21C3 >= 6 & H1RI21C3 <= 8)
replace H1RI21D3 = . if (H1RI21D3 >= 6 & H1RI21D3 <= 8)
replace H1RI21E3 = . if (H1RI21E3 >= 6 & H1RI21E3 <= 8)
replace H1RI21F3 = . if (H1RI21F3 >= 6 & H1RI21F3 <= 8)
replace H1RI21G3 = . if (H1RI21G3 >= 6 & H1RI21G3 <= 8)
replace H1RI21H3 = . if (H1RI21H3 >= 6 & H1RI21H3 <= 8)
replace H1RI21I3 = . if (H1RI21I3 >= 6 & H1RI21I3 <= 8)
replace H1RI21J3 = . if (H1RI21J3 >= 6 & H1RI21J3 <= 8)
replace H1RI21K3 = . if (H1RI21K3 >= 6 & H1RI21K3 <= 8)
replace H1RI21L3 = . if (H1RI21L3 >= 6 & H1RI21L3 <= 8)
replace H1RI21M3 = . if (H1RI21M3 >= 6 & H1RI21M3 <= 8)
replace H1RI21N3 = . if (H1RI21N3 >= 6 & H1RI21N3 <= 8)
replace H1RI21O3 = . if (H1RI21O3 >= 6 & H1RI21O3 <= 8)
replace H1RI21P3 = . if (H1RI21P3 >= 6 & H1RI21P3 <= 8)
replace H1RI21Q3 = . if (H1RI21Q3 >= 6 & H1RI21Q3 <= 8)
replace H1RI21R3 = . if (H1RI21R3 >= 6 & H1RI21R3 <= 8)
replace H1RI22A3 = . if (H1RI22A3 == 97)
replace H1RI22B3 = . if (H1RI22B3 == 97)
replace H1RI22C3 = . if (H1RI22C3 == 97)
replace H1RI22D3 = . if (H1RI22D3 == 97)
replace H1RI22E3 = . if (H1RI22E3 == 97)
replace H1RI22F3 = . if (H1RI22F3 == 97)
replace H1RI22G3 = . if (H1RI22G3 == 97)
replace H1RI22H3 = . if (H1RI22H3 == 97)
replace H1RI22I3 = . if (H1RI22I3 == 97)
replace H1RI22J3 = . if (H1RI22J3 == 97)
replace H1RI22K3 = . if (H1RI22K3 == 97)
replace H1RI22L3 = . if (H1RI22L3 == 97)
replace H1RI22M3 = . if (H1RI22M3 == 97)
replace H1RI22N3 = . if (H1RI22N3 == 97)
replace H1RI22O3 = . if (H1RI22O3 == 97)
replace H1RI22P3 = . if (H1RI22P3 == 97)
replace H1RI22Q3 = . if (H1RI22Q3 == 97)
replace H1RI22R3 = . if (H1RI22R3 == 97)
replace H1RI24A3 = . if (H1RI24A3 == 6 | H1RI24A3 == 7)
replace H1RI25M3 = . if (H1RI25M3 >= 96 & H1RI25M3 <= 98)
replace H1RI25Y3 = . if (H1RI25Y3 == 97 | H1RI25Y3 == 98)
replace H1RI26M3 = . if (H1RI26M3 >= 96 & H1RI26M3 <= 98)
replace H1RI26Y3 = . if (H1RI26Y3 >= 96 & H1RI26Y3 <= 98)
replace H1RI27_3 = . if (H1RI27_3 == 7 | H1RI27_3 == 8)
replace H1RI28_3 = . if (H1RI28_3 == 7)
replace H1RI29A3 = . if (H1RI29A3 == 97)
replace H1RI29B3 = . if (H1RI29B3 == 97)
replace H1RI29C3 = . if (H1RI29C3 == 97)
replace H1RI30_3 = . if (H1RI30_3 == 7)
replace H1RI31_3 = . if (H1RI31_3 == 7)
replace H1RI32_3 = . if (H1RI32_3 == 7)
replace H1RI33A3 = . if (H1RI33A3 == 97)
replace H1RI33B3 = . if (H1RI33B3 == 97 | H1RI33B3 == 98)
replace H1RI33C3 = . if (H1RI33C3 == 97)
replace H1RI34_3 = . if (H1RI34_3 == 7)
replace H1RI35_3 = . if (H1RI35_3 == 7)
replace H1RI36_3 = . if (H1RI36_3 == 7 | H1RI36_3 == 8)
replace H1RI37_3 = . if (H1RI37_3 == 7)
replace H1RI38A3 = . if (H1RI38A3 == 97)
replace H1RI38B3 = . if (H1RI38B3 >= 96 & H1RI38B3 <= 98)
replace H1RI38C3 = . if (H1RI38C3 == 97)
replace H1RI39_3 = . if (H1RI39_3 == 7)
replace H1RI40_3 = . if (H1RI40_3 == 7)
replace H1RI41_3 = . if (H1RI41_3 >= 9996 & H1RI41_3 <= 9998)
replace RICARD1 = . if (RICARD1 == 7)
replace RICARD2 = . if (RICARD2 == 7)
replace RICARD3 = . if (RICARD3 == 7)
replace H1NR1 = . if (H1NR1 == 6 | H1NR1 == 8 | H1NR1 == 9)
replace H1NR2 = . if (H1NR2 == 6 | H1NR2 == 8 | H1NR2 == 9)
replace H1NR3 = . if (H1NR3 == 6 | H1NR3 == 8 | H1NR3 == 9)
replace H1NR4 = . if (H1NR4 >= 996 & H1NR4 <= 999)
replace H1NR5 = . if (H1NR5 == 6 | H1NR5 == 8 | H1NR5 == 9)
replace H1NR6 = . if (H1NR6 >= 996 & H1NR6 <= 999)
replace H1NR7 = . if (H1NR7 >= 996 & H1NR7 <= 998)
replace H1NR8 = . if (H1NR8 >= 996 & H1NR8 <= 999)
replace H1NR10_1 = . if (H1NR10_1 == 6 | H1NR10_1 == 7)
replace H1NR11_1 = . if (H1NR11_1 == 6 | H1NR11_1 == 7)
replace H1NR12_1 = . if (H1NR12_1 == 6 | H1NR12_1 == 7)
replace H1RX1M_1 = . if (H1RX1M_1 >= 96 & H1RX1M_1 <= 98)
replace H1RX1Y_1 = . if (H1RX1Y_1 >= 96 & H1RX1Y_1 <= 98)
replace H1RX2_1 = . if (H1RX2_1 >= 96 & H1RX2_1 <= 98)
replace H1RX3_1 = . if (H1RX3_1 >= 96 & H1RX3_1 <= 98)
replace H1RX4_1 = . if (H1RX4_1 >= 96 & H1RX4_1 <= 98)
replace H1RX5A_1 = . if (H1RX5A_1 >= 96 & H1RX5A_1 <= 98)
replace H1RX6_1 = . if (H1RX6_1 >= 6 & H1RX6_1 <= 8)
replace H1RX7_1 = . if (H1RX7_1 >= 6 & H1RX7_1 <= 8)
replace H1RX8A_1 = . if (H1RX8A_1 >= 6 & H1RX8A_1 <= 8)
replace H1RX8B_1 = . if (H1RX8B_1 >= 6 & H1RX8B_1 <= 8)
replace H1RX8C_1 = . if (H1RX8C_1 >= 6 & H1RX8C_1 <= 8)
replace H1RX8D_1 = . if (H1RX8D_1 >= 6 & H1RX8D_1 <= 8)
replace H1RX8E_1 = . if (H1RX8E_1 >= 6 & H1RX8E_1 <= 8)
replace H1RX8F_1 = . if (H1RX8F_1 >= 6 & H1RX8F_1 <= 8)
replace H1RX8G_1 = . if (H1RX8G_1 >= 6 & H1RX8G_1 <= 8)
replace H1RX8H_1 = . if (H1RX8H_1 >= 6 & H1RX8H_1 <= 8)
replace H1RX9_1 = . if (H1RX9_1 >= 96 & H1RX9_1 <= 98)
replace H1RX10_1 = . if (H1RX10_1 >= 6 & H1RX10_1 <= 8)
replace H1RX11M1 = . if (H1RX11M1 >= 96 & H1RX11M1 <= 98)
replace H1RX11Y1 = . if (H1RX11Y1 >= 96 & H1RX11Y1 <= 98)
replace H1RX12_1 = . if (H1RX12_1 >= 96 & H1RX12_1 <= 98)
replace H1RX13_1 = . if (H1RX13_1 >= 6 & H1RX13_1 <= 8)
replace H1RX14_1 = . if (H1RX14_1 >= 6 & H1RX14_1 <= 8)
replace H1RX15_1 = . if (H1RX15_1 >= 96 & H1RX15_1 <= 98)
replace H1RX16_1 = . if (H1RX16_1 >= 6 & H1RX16_1 <= 8)
replace H1RX17A1 = . if (H1RX17A1 == 7 | H1RX17A1 == 8)
replace H1RX17B1 = . if (H1RX17B1 == 7 | H1RX17B1 == 8)
replace H1RX17C1 = . if (H1RX17C1 == 7 | H1RX17C1 == 8)
replace H1RX17D1 = . if (H1RX17D1 == 7 | H1RX17D1 == 8)
replace H1RX17E1 = . if (H1RX17E1 == 7 | H1RX17E1 == 8)
replace H1RX17F1 = . if (H1RX17F1 == 7 | H1RX17F1 == 8)
replace H1RX18A1 = . if (H1RX18A1 >= 6 & H1RX18A1 <= 8)
replace H1RX18B1 = . if (H1RX18B1 >= 6 & H1RX18B1 <= 8)
replace H1RX18C1 = . if (H1RX18C1 >= 6 & H1RX18C1 <= 8)
replace H1RX18D1 = . if (H1RX18D1 >= 6 & H1RX18D1 <= 8)
replace H1RX18E1 = . if (H1RX18E1 >= 6 & H1RX18E1 <= 8)
replace H1RX19A1 = . if (H1RX19A1 == 7)
replace H1RX19B1 = . if (H1RX19B1 == 7)
replace H1RX19C1 = . if (H1RX19C1 == 7)
replace H1RX19D1 = . if (H1RX19D1 == 7)
replace H1RX19E1 = . if (H1RX19E1 == 7)
replace H1RX19F1 = . if (H1RX19F1 == 7)
replace H1RX19G1 = . if (H1RX19G1 == 7)
replace H1RX20_1 = . if (H1RX20_1 >= 6 & H1RX20_1 <= 8)
replace H1RX21A1 = . if (H1RX21A1 >= 6 & H1RX21A1 <= 8)
replace H1RX21B1 = . if (H1RX21B1 >= 6 & H1RX21B1 <= 8)
replace H1RX21C1 = . if (H1RX21C1 >= 6 & H1RX21C1 <= 8)
replace H1RX21D1 = . if (H1RX21D1 >= 6 & H1RX21D1 <= 8)
replace H1RX21E1 = . if (H1RX21E1 >= 6 & H1RX21E1 <= 8)
replace H1RX21F1 = . if (H1RX21F1 >= 6 & H1RX21F1 <= 8)
replace H1RX21G1 = . if (H1RX21G1 >= 6 & H1RX21G1 <= 8)
replace H1RX21H1 = . if (H1RX21H1 >= 6 & H1RX21H1 <= 8)
replace H1RX21I1 = . if (H1RX21I1 >= 6 & H1RX21I1 <= 8)
replace H1RX21J1 = . if (H1RX21J1 >= 6 & H1RX21J1 <= 8)
replace H1RX21K1 = . if (H1RX21K1 >= 6 & H1RX21K1 <= 8)
replace H1RX21L1 = . if (H1RX21L1 >= 6 & H1RX21L1 <= 8)
replace H1RX21M1 = . if (H1RX21M1 >= 6 & H1RX21M1 <= 8)
replace H1RX21N1 = . if (H1RX21N1 >= 6 & H1RX21N1 <= 8)
replace H1RX21O1 = . if (H1RX21O1 >= 6 & H1RX21O1 <= 8)
replace H1RX21P1 = . if (H1RX21P1 >= 6 & H1RX21P1 <= 8)
replace H1RX21Q1 = . if (H1RX21Q1 >= 6 & H1RX21Q1 <= 8)
replace H1RX21R1 = . if (H1RX21R1 >= 6 & H1RX21R1 <= 8)
replace H1RX22A1 = . if (H1RX22A1 == 97)
replace H1RX22B1 = . if (H1RX22B1 == 97)
replace H1RX22C1 = . if (H1RX22C1 == 97)
replace H1RX22D1 = . if (H1RX22D1 == 97)
replace H1RX22E1 = . if (H1RX22E1 == 97)
replace H1RX22F1 = . if (H1RX22F1 == 97)
replace H1RX22G1 = . if (H1RX22G1 == 97)
replace H1RX22H1 = . if (H1RX22H1 == 97)
replace H1RX22I1 = . if (H1RX22I1 == 97)
replace H1RX22J1 = . if (H1RX22J1 == 97)
replace H1RX22K1 = . if (H1RX22K1 == 97)
replace H1RX22L1 = . if (H1RX22L1 == 97)
replace H1RX22M1 = . if (H1RX22M1 == 97)
replace H1RX22N1 = . if (H1RX22N1 == 97)
replace H1RX22O1 = . if (H1RX22O1 == 97)
replace H1RX22P1 = . if (H1RX22P1 == 97)
replace H1RX22Q1 = . if (H1RX22Q1 == 97)
replace H1RX22R1 = . if (H1RX22R1 == 97)
replace H1RX24A1 = . if (H1RX24A1 >= 6 & H1RX24A1 <= 8)
replace H1RX25M1 = . if (H1RX25M1 >= 96 & H1RX25M1 <= 98)
replace H1RX25Y1 = . if (H1RX25Y1 >= 96 & H1RX25Y1 <= 98)
replace H1RX26M1 = . if (H1RX26M1 >= 96 & H1RX26M1 <= 98)
replace H1RX26Y1 = . if (H1RX26Y1 >= 96 & H1RX26Y1 <= 98)
replace H1RX27_1 = . if (H1RX27_1 == 6 | H1RX27_1 == 7)
replace H1RX28_1 = . if (H1RX28_1 == 7)
replace H1RX29A1 = . if (H1RX29A1 == 97)
replace H1RX29B1 = . if (H1RX29B1 == 96 | H1RX29B1 == 97)
replace H1RX29C1 = . if (H1RX29C1 == 97)
replace H1RX30_1 = . if (H1RX30_1 == 7)
replace H1RX31_1 = . if (H1RX31_1 == 6 | H1RX31_1 == 7)
replace H1RX32_1 = . if (H1RX32_1 == 7)
replace H1RX33A1 = . if (H1RX33A1 == 97)
replace H1RX33B1 = . if (H1RX33B1 == 97)
replace H1RX33C1 = . if (H1RX33C1 == 97)
replace H1RX34_1 = . if (H1RX34_1 == 7)
replace H1RX35_1 = . if (H1RX35_1 == 7)
replace H1RX36_1 = . if (H1RX36_1 == 7)
replace H1RX37_1 = . if (H1RX37_1 == 7)
replace H1RX38A1 = . if (H1RX38A1 == 97)
replace H1RX38B1 = . if (H1RX38B1 == 97)
replace H1RX38C1 = . if (H1RX38C1 == 97 | H1RX38C1 == 98)
replace H1RX39_1 = . if (H1RX39_1 == 7)
replace H1RX40_1 = . if (H1RX40_1 == 7 | H1RX40_1 == 8)
replace H1RX41_1 = . if (H1RX41_1 >= 9996 & H1RX41_1 <= 9998)
replace H1NR13_1 = . if (H1NR13_1 == 97 | H1NR13_1 == 98)
replace H1NR14_1 = . if (H1NR14_1 >= 6 & H1NR14_1 <= 8)
replace H1NR15_1 = . if (H1NR15_1 == 6 | H1NR15_1 == 7)
replace H1NR16_1 = . if (H1NR16_1 >= 6 & H1NR16_1 <= 8)
replace H1NR17A1 = . if (H1NR17A1 == 7)
replace H1NR17B1 = . if (H1NR17B1 == 7)
replace H1NR17C1 = . if (H1NR17C1 == 7)
replace H1NR17D1 = . if (H1NR17D1 == 7)
replace H1NR17E1 = . if (H1NR17E1 == 7)
replace H1NR17F1 = . if (H1NR17F1 == 7)
replace H1NR18A1 = . if (H1NR18A1 == 6 | H1NR18A1 == 7)
replace H1NR18B1 = . if (H1NR18B1 == 6 | H1NR18B1 == 7)
replace H1NR18C1 = . if (H1NR18C1 == 6 | H1NR18C1 == 7)
replace H1NR18D1 = . if (H1NR18D1 == 6 | H1NR18D1 == 7)
replace H1NR18E1 = . if (H1NR18E1 == 6 | H1NR18E1 == 7)
replace H1NR19A1 = . if (H1NR19A1 == 7)
replace H1NR19B1 = . if (H1NR19B1 == 7)
replace H1NR19C1 = . if (H1NR19C1 == 7)
replace H1NR19D1 = . if (H1NR19D1 == 7)
replace H1NR19E1 = . if (H1NR19E1 == 7)
replace H1NR19F1 = . if (H1NR19F1 == 7)
replace H1NR19G1 = . if (H1NR19G1 == 7)
replace H1NR20A1 = . if (H1NR20A1 >= 6 & H1NR20A1 <= 8)
replace H1NR20B1 = . if (H1NR20B1 >= 6 & H1NR20B1 <= 8)
replace H1NR20C1 = . if (H1NR20C1 >= 6 & H1NR20C1 <= 8)
replace H1NR20D1 = . if (H1NR20D1 >= 6 & H1NR20D1 <= 8)
replace H1NR20E1 = . if (H1NR20E1 >= 6 & H1NR20E1 <= 8)
replace H1NR20F1 = . if (H1NR20F1 >= 6 & H1NR20F1 <= 8)
replace H1NR20G1 = . if (H1NR20G1 >= 6 & H1NR20G1 <= 8)
replace H1NR20H1 = . if (H1NR20H1 >= 6 & H1NR20H1 <= 8)
replace H1NR21_1 = . if (H1NR21_1 >= 6 & H1NR21_1 <= 8)
replace H1NR22_1 = . if (H1NR22_1 == 6 | H1NR22_1 == 7)
replace H1NR23M1 = . if (H1NR23M1 >= 96 & H1NR23M1 <= 98)
replace H1NR23Y1 = . if (H1NR23Y1 >= 96 & H1NR23Y1 <= 98)
replace H1NR24M1 = . if (H1NR24M1 >= 96 & H1NR24M1 <= 98)
replace H1NR24Y1 = . if (H1NR24Y1 >= 96 & H1NR24Y1 <= 98)
replace H1NR25_1 = . if (H1NR25_1 >= 6 & H1NR25_1 <= 8)
replace H1NR26_1 = . if (H1NR26_1 == 7)
replace H1NR27A1 = . if (H1NR27A1 == 97 | H1NR27A1 == 98)
replace H1NR27B1 = . if (H1NR27B1 == 96 | H1NR27B1 == 97)
replace H1NR27C1 = . if (H1NR27C1 == 97)
replace H1NR28_1 = . if (H1NR28_1 == 7)
replace H1NR29_1 = . if (H1NR29_1 == 7)
replace H1NR30_1 = . if (H1NR30_1 == 7)
replace H1NR31A1 = . if (H1NR31A1 == 97)
replace H1NR31B1 = . if (H1NR31B1 >= 96 & H1NR31B1 <= 98)
replace H1NR31C1 = . if (H1NR31C1 == 97)
replace H1NR32_1 = . if (H1NR32_1 == 7)
replace H1NR33_1 = . if (H1NR33_1 == 7)
replace H1NR34_1 = . if (H1NR34_1 == 7)
replace H1NR35_1 = . if (H1NR35_1 == 7)
replace H1NR36A1 = . if (H1NR36A1 == 97 | H1NR36A1 == 98)
replace H1NR36B1 = . if (H1NR36B1 >= 96 & H1NR36B1 <= 98)
replace H1NR36C1 = . if (H1NR36C1 == 97)
replace H1NR37_1 = . if (H1NR37_1 == 7)
replace H1NR38_1 = . if (H1NR38_1 == 7 | H1NR38_1 == 8)
replace H1NR39_1 = . if (H1NR39_1 == 997 | H1NR39_1 == 998)
replace H1NR40_1 = . if (H1NR40_1 == 7)
replace H1NR41_1 = . if (H1NR41_1 == 7)
replace H1NR42_1 = . if (H1NR42_1 == 7)
replace H1NR43_1 = . if (H1NR43_1 == 97)
replace H1NR10_2 = . if (H1NR10_2 >= 6 & H1NR10_2 <= 8)
replace H1NR11_2 = . if (H1NR11_2 >= 6 & H1NR11_2 <= 8)
replace H1NR12_2 = . if (H1NR12_2 >= 6 & H1NR12_2 <= 8)
replace H1RX1M_2 = . if (H1RX1M_2 >= 96 & H1RX1M_2 <= 98)
replace H1RX1Y_2 = . if (H1RX1Y_2 >= 96 & H1RX1Y_2 <= 98)
replace H1RX2_2 = . if (H1RX2_2 >= 96 & H1RX2_2 <= 98)
replace H1RX3_2 = . if (H1RX3_2 >= 96 & H1RX3_2 <= 98)
replace H1RX4_2 = . if (H1RX4_2 >= 96 & H1RX4_2 <= 98)
replace H1RX5A_2 = . if (H1RX5A_2 >= 96 & H1RX5A_2 <= 98)
replace H1RX6_2 = . if (H1RX6_2 >= 6 & H1RX6_2 <= 8)
replace H1RX7_2 = . if (H1RX7_2 >= 6 & H1RX7_2 <= 8)
replace H1RX8A_2 = . if (H1RX8A_2 >= 6 & H1RX8A_2 <= 8)
replace H1RX8B_2 = . if (H1RX8B_2 >= 6 & H1RX8B_2 <= 8)
replace H1RX8C_2 = . if (H1RX8C_2 >= 6 & H1RX8C_2 <= 8)
replace H1RX8D_2 = . if (H1RX8D_2 >= 6 & H1RX8D_2 <= 8)
replace H1RX8E_2 = . if (H1RX8E_2 >= 6 & H1RX8E_2 <= 8)
replace H1RX8F_2 = . if (H1RX8F_2 >= 6 & H1RX8F_2 <= 8)
replace H1RX8G_2 = . if (H1RX8G_2 >= 6 & H1RX8G_2 <= 8)
replace H1RX8H_2 = . if (H1RX8H_2 >= 6 & H1RX8H_2 <= 8)
replace H1RX9_2 = . if (H1RX9_2 >= 96 & H1RX9_2 <= 98)
replace H1RX10_2 = . if (H1RX10_2 >= 6 & H1RX10_2 <= 8)
replace H1RX11M2 = . if (H1RX11M2 >= 96 & H1RX11M2 <= 98)
replace H1RX11Y2 = . if (H1RX11Y2 >= 96 & H1RX11Y2 <= 98)
replace H1RX12_2 = . if (H1RX12_2 >= 96 & H1RX12_2 <= 98)
replace H1RX13_2 = . if (H1RX13_2 == 6 | H1RX13_2 == 7)
replace H1RX14_2 = . if (H1RX14_2 >= 6 & H1RX14_2 <= 8)
replace H1RX15_2 = . if (H1RX15_2 >= 96 & H1RX15_2 <= 98)
replace H1RX16_2 = . if (H1RX16_2 >= 6 & H1RX16_2 <= 8)
replace H1RX17A2 = . if (H1RX17A2 == 6 | H1RX17A2 == 7)
replace H1RX17B2 = . if (H1RX17B2 == 6 | H1RX17B2 == 7)
replace H1RX17C2 = . if (H1RX17C2 == 6 | H1RX17C2 == 7)
replace H1RX17D2 = . if (H1RX17D2 == 6 | H1RX17D2 == 7)
replace H1RX17E2 = . if (H1RX17E2 == 6 | H1RX17E2 == 7)
replace H1RX17F2 = . if (H1RX17F2 == 6 | H1RX17F2 == 7)
replace H1RX18A2 = . if (H1RX18A2 >= 6 & H1RX18A2 <= 8)
replace H1RX18B2 = . if (H1RX18B2 >= 6 & H1RX18B2 <= 8)
replace H1RX18C2 = . if (H1RX18C2 >= 6 & H1RX18C2 <= 8)
replace H1RX18D2 = . if (H1RX18D2 >= 6 & H1RX18D2 <= 8)
replace H1RX18E2 = . if (H1RX18E2 >= 6 & H1RX18E2 <= 8)
replace H1RX19A2 = . if (H1RX19A2 == 7)
replace H1RX19B2 = . if (H1RX19B2 == 7)
replace H1RX19C2 = . if (H1RX19C2 == 7)
replace H1RX19D2 = . if (H1RX19D2 == 7)
replace H1RX19E2 = . if (H1RX19E2 == 7)
replace H1RX19F2 = . if (H1RX19F2 == 7)
replace H1RX19G2 = . if (H1RX19G2 == 7)
replace H1RX20_2 = . if (H1RX20_2 >= 6 & H1RX20_2 <= 8)
replace H1RX21A2 = . if (H1RX21A2 >= 6 & H1RX21A2 <= 8)
replace H1RX21B2 = . if (H1RX21B2 >= 6 & H1RX21B2 <= 8)
replace H1RX21C2 = . if (H1RX21C2 >= 6 & H1RX21C2 <= 8)
replace H1RX21D2 = . if (H1RX21D2 >= 6 & H1RX21D2 <= 8)
replace H1RX21E2 = . if (H1RX21E2 >= 6 & H1RX21E2 <= 8)
replace H1RX21F2 = . if (H1RX21F2 >= 6 & H1RX21F2 <= 8)
replace H1RX21G2 = . if (H1RX21G2 >= 6 & H1RX21G2 <= 8)
replace H1RX21H2 = . if (H1RX21H2 >= 6 & H1RX21H2 <= 8)
replace H1RX21I2 = . if (H1RX21I2 >= 6 & H1RX21I2 <= 8)
replace H1RX21J2 = . if (H1RX21J2 >= 6 & H1RX21J2 <= 8)
replace H1RX21K2 = . if (H1RX21K2 >= 6 & H1RX21K2 <= 8)
replace H1RX21L2 = . if (H1RX21L2 >= 6 & H1RX21L2 <= 8)
replace H1RX21M2 = . if (H1RX21M2 >= 6 & H1RX21M2 <= 8)
replace H1RX21N2 = . if (H1RX21N2 >= 6 & H1RX21N2 <= 8)
replace H1RX21O2 = . if (H1RX21O2 >= 6 & H1RX21O2 <= 8)
replace H1RX21P2 = . if (H1RX21P2 >= 6 & H1RX21P2 <= 8)
replace H1RX21Q2 = . if (H1RX21Q2 >= 6 & H1RX21Q2 <= 8)
replace H1RX21R2 = . if (H1RX21R2 >= 6 & H1RX21R2 <= 8)
replace H1RX22A2 = . if (H1RX22A2 == 97)
replace H1RX22B2 = . if (H1RX22B2 == 97)
replace H1RX22C2 = . if (H1RX22C2 == 97)
replace H1RX22D2 = . if (H1RX22D2 == 97)
replace H1RX22E2 = . if (H1RX22E2 == 97)
replace H1RX22F2 = . if (H1RX22F2 == 97)
replace H1RX22G2 = . if (H1RX22G2 == 97)
replace H1RX22H2 = . if (H1RX22H2 == 97)
replace H1RX22I2 = . if (H1RX22I2 == 97)
replace H1RX22J2 = . if (H1RX22J2 == 97)
replace H1RX22K2 = . if (H1RX22K2 == 97)
replace H1RX22L2 = . if (H1RX22L2 == 97)
replace H1RX22M2 = . if (H1RX22M2 == 97)
replace H1RX22N2 = . if (H1RX22N2 == 97)
replace H1RX22O2 = . if (H1RX22O2 == 97)
replace H1RX22P2 = . if (H1RX22P2 == 97)
replace H1RX22Q2 = . if (H1RX22Q2 == 97)
replace H1RX22R2 = . if (H1RX22R2 == 97)
replace H1RX24A2 = . if (H1RX24A2 == 6 | H1RX24A2 == 7)
replace H1RX25M2 = . if (H1RX25M2 >= 96 & H1RX25M2 <= 98)
replace H1RX25Y2 = . if (H1RX25Y2 >= 96 & H1RX25Y2 <= 98)
replace H1RX26M2 = . if (H1RX26M2 >= 96 & H1RX26M2 <= 98)
replace H1RX26Y2 = . if (H1RX26Y2 >= 96 & H1RX26Y2 <= 98)
replace H1RX27_2 = . if (H1RX27_2 == 6 | H1RX27_2 == 7)
replace H1RX28_2 = . if (H1RX28_2 == 7)
replace H1RX29A2 = . if (H1RX29A2 == 97)
replace H1RX29B2 = . if (H1RX29B2 == 97)
replace H1RX29C2 = . if (H1RX29C2 == 97)
replace H1RX30_2 = . if (H1RX30_2 == 7)
replace H1RX31_2 = . if (H1RX31_2 == 6 | H1RX31_2 == 7)
replace H1RX32_2 = . if (H1RX32_2 == 7)
replace H1RX33A2 = . if (H1RX33A2 == 97)
replace H1RX33B2 = . if (H1RX33B2 == 97)
replace H1RX33C2 = . if (H1RX33C2 == 96 | H1RX33C2 == 97)
replace H1RX34_2 = . if (H1RX34_2 == 7)
replace H1RX35_2 = . if (H1RX35_2 == 6 | H1RX35_2 == 7)
replace H1RX36_2 = . if (H1RX36_2 == 7 | H1RX36_2 == 8)
replace H1RX37_2 = . if (H1RX37_2 == 7)
replace H1RX38A2 = . if (H1RX38A2 == 97)
replace H1RX38B2 = . if (H1RX38B2 == 97)
replace H1RX38C2 = . if (H1RX38C2 == 97)
replace H1RX39_2 = . if (H1RX39_2 == 7)
replace H1RX40_2 = . if (H1RX40_2 == 7)
replace H1RX41_2 = . if (H1RX41_2 == 9997 | H1RX41_2 == 9998)
replace H1NR13_2 = . if (H1NR13_2 >= 96 & H1NR13_2 <= 98)
replace H1NR14_2 = . if (H1NR14_2 >= 6 & H1NR14_2 <= 8)
replace H1NR15_2 = . if (H1NR15_2 >= 6 & H1NR15_2 <= 8)
replace H1NR16_2 = . if (H1NR16_2 >= 6 & H1NR16_2 <= 8)
replace H1NR17A2 = . if (H1NR17A2 == 7 | H1NR17A2 == 8)
replace H1NR17B2 = . if (H1NR17B2 == 7 | H1NR17B2 == 8)
replace H1NR17C2 = . if (H1NR17C2 == 7 | H1NR17C2 == 8)
replace H1NR17D2 = . if (H1NR17D2 == 7 | H1NR17D2 == 8)
replace H1NR17E2 = . if (H1NR17E2 == 7 | H1NR17E2 == 8)
replace H1NR17F2 = . if (H1NR17F2 == 7 | H1NR17F2 == 8)
replace H1NR18A2 = . if (H1NR18A2 >= 6 & H1NR18A2 <= 8)
replace H1NR18B2 = . if (H1NR18B2 >= 6 & H1NR18B2 <= 8)
replace H1NR18C2 = . if (H1NR18C2 >= 6 & H1NR18C2 <= 8)
replace H1NR18D2 = . if (H1NR18D2 >= 6 & H1NR18D2 <= 8)
replace H1NR18E2 = . if (H1NR18E2 >= 6 & H1NR18E2 <= 8)
replace H1NR19A2 = . if (H1NR19A2 == 7)
replace H1NR19B2 = . if (H1NR19B2 == 7)
replace H1NR19C2 = . if (H1NR19C2 == 7)
replace H1NR19D2 = . if (H1NR19D2 == 7)
replace H1NR19E2 = . if (H1NR19E2 == 7)
replace H1NR19F2 = . if (H1NR19F2 == 7)
replace H1NR19G2 = . if (H1NR19G2 == 7)
replace H1NR20A2 = . if (H1NR20A2 >= 6 & H1NR20A2 <= 8)
replace H1NR20B2 = . if (H1NR20B2 >= 6 & H1NR20B2 <= 8)
replace H1NR20C2 = . if (H1NR20C2 >= 6 & H1NR20C2 <= 8)
replace H1NR20D2 = . if (H1NR20D2 >= 6 & H1NR20D2 <= 8)
replace H1NR20E2 = . if (H1NR20E2 >= 6 & H1NR20E2 <= 8)
replace H1NR20F2 = . if (H1NR20F2 >= 6 & H1NR20F2 <= 8)
replace H1NR20G2 = . if (H1NR20G2 >= 6 & H1NR20G2 <= 8)
replace H1NR20H2 = . if (H1NR20H2 >= 6 & H1NR20H2 <= 8)
replace H1NR21_2 = . if (H1NR21_2 >= 6 & H1NR21_2 <= 8)
replace H1NR22_2 = . if (H1NR22_2 >= 6 & H1NR22_2 <= 8)
replace H1NR23M2 = . if (H1NR23M2 >= 96 & H1NR23M2 <= 98)
replace H1NR23Y2 = . if (H1NR23Y2 >= 96 & H1NR23Y2 <= 98)
replace H1NR24M2 = . if (H1NR24M2 >= 96 & H1NR24M2 <= 98)
replace H1NR24Y2 = . if (H1NR24Y2 >= 96 & H1NR24Y2 <= 98)
replace H1NR25_2 = . if (H1NR25_2 >= 6 & H1NR25_2 <= 8)
replace H1NR26_2 = . if (H1NR26_2 == 7)
replace H1NR27A2 = . if (H1NR27A2 == 97)
replace H1NR27B2 = . if (H1NR27B2 == 97)
replace H1NR27C2 = . if (H1NR27C2 == 97)
replace H1NR28_2 = . if (H1NR28_2 == 7)
replace H1NR29_2 = . if (H1NR29_2 == 7)
replace H1NR30_2 = . if (H1NR30_2 == 7)
replace H1NR31A2 = . if (H1NR31A2 == 97)
replace H1NR31B2 = . if (H1NR31B2 == 97)
replace H1NR31C2 = . if (H1NR31C2 == 97 | H1NR31C2 == 98)
replace H1NR32_2 = . if (H1NR32_2 == 7)
replace H1NR33_2 = . if (H1NR33_2 == 7)
replace H1NR34_2 = . if (H1NR34_2 == 7)
replace H1NR35_2 = . if (H1NR35_2 == 7)
replace H1NR36A2 = . if (H1NR36A2 == 97)
replace H1NR36B2 = . if (H1NR36B2 == 97)
replace H1NR36C2 = . if (H1NR36C2 == 97)
replace H1NR37_2 = . if (H1NR37_2 == 7)
replace H1NR38_2 = . if (H1NR38_2 == 7 | H1NR38_2 == 8)
replace H1NR39_2 = . if (H1NR39_2 == 997 | H1NR39_2 == 998)
replace H1NR40_2 = . if (H1NR40_2 == 7)
replace H1NR41_2 = . if (H1NR41_2 == 7)
replace H1NR42_2 = . if (H1NR42_2 == 7)
replace H1NR43_2 = . if (H1NR43_2 == 97)
replace H1NR10_3 = . if (H1NR10_3 >= 6 & H1NR10_3 <= 8)
replace H1NR11_3 = . if (H1NR11_3 >= 6 & H1NR11_3 <= 8)
replace H1NR12_3 = . if (H1NR12_3 >= 6 & H1NR12_3 <= 8)
replace H1RX1M_3 = . if (H1RX1M_3 == 97 | H1RX1M_3 == 98)
replace H1RX1Y_3 = . if (H1RX1Y_3 == 97 | H1RX1Y_3 == 98)
replace H1RX2_3 = . if (H1RX2_3 == 97 | H1RX2_3 == 98)
replace H1RX3_3 = . if (H1RX3_3 == 97)
replace H1RX4_3 = . if (H1RX4_3 == 97)
replace H1RX5A_3 = . if (H1RX5A_3 == 97)
replace H1RX6_3 = . if (H1RX6_3 == 7)
replace H1RX7_3 = . if (H1RX7_3 == 7)
replace H1RX8A_3 = . if (H1RX8A_3 == 7)
replace H1RX8B_3 = . if (H1RX8B_3 == 7)
replace H1RX8C_3 = . if (H1RX8C_3 == 7)
replace H1RX8D_3 = . if (H1RX8D_3 == 7)
replace H1RX8E_3 = . if (H1RX8E_3 == 7)
replace H1RX8F_3 = . if (H1RX8F_3 == 7)
replace H1RX8G_3 = . if (H1RX8G_3 == 7)
replace H1RX8H_3 = . if (H1RX8H_3 == 7)
replace H1RX9_3 = . if (H1RX9_3 == 97)
replace H1RX10_3 = . if (H1RX10_3 == 7)
replace H1RX11M3 = . if (H1RX11M3 == 97 | H1RX11M3 == 98)
replace H1RX11Y3 = . if (H1RX11Y3 == 97 | H1RX11Y3 == 98)
replace H1RX12_3 = . if (H1RX12_3 >= 96 & H1RX12_3 <= 98)
replace H1RX13_3 = . if (H1RX13_3 == 7 | H1RX13_3 == 8)
replace H1RX14_3 = . if (H1RX14_3 == 7)
replace H1RX15_3 = . if (H1RX15_3 == 97)
replace H1RX16_3 = . if (H1RX16_3 == 7)
replace H1RX17A3 = . if (H1RX17A3 == 7)
replace H1RX17B3 = . if (H1RX17B3 == 7)
replace H1RX17C3 = . if (H1RX17C3 == 7)
replace H1RX17D3 = . if (H1RX17D3 == 7)
replace H1RX17E3 = . if (H1RX17E3 == 7)
replace H1RX17F3 = . if (H1RX17F3 == 7)
replace H1RX18A3 = . if (H1RX18A3 == 7)
replace H1RX18B3 = . if (H1RX18B3 == 7)
replace H1RX18C3 = . if (H1RX18C3 == 7)
replace H1RX18D3 = . if (H1RX18D3 == 7)
replace H1RX18E3 = . if (H1RX18E3 == 7)
replace H1RX19A3 = . if (H1RX19A3 == 7)
replace H1RX19B3 = . if (H1RX19B3 == 7)
replace H1RX19C3 = . if (H1RX19C3 == 7)
replace H1RX19D3 = . if (H1RX19D3 == 7)
replace H1RX19E3 = . if (H1RX19E3 == 7)
replace H1RX19F3 = . if (H1RX19F3 == 7)
replace H1RX19G3 = . if (H1RX19G3 == 7)
replace H1RX20_3 = . if (H1RX20_3 == 7)
replace H1RX21A3 = . if (H1RX21A3 >= 6 & H1RX21A3 <= 8)
replace H1RX21B3 = . if (H1RX21B3 >= 6 & H1RX21B3 <= 8)
replace H1RX21C3 = . if (H1RX21C3 >= 6 & H1RX21C3 <= 8)
replace H1RX21D3 = . if (H1RX21D3 >= 6 & H1RX21D3 <= 8)
replace H1RX21E3 = . if (H1RX21E3 >= 6 & H1RX21E3 <= 8)
replace H1RX21F3 = . if (H1RX21F3 >= 6 & H1RX21F3 <= 8)
replace H1RX21G3 = . if (H1RX21G3 >= 6 & H1RX21G3 <= 8)
replace H1RX21H3 = . if (H1RX21H3 >= 6 & H1RX21H3 <= 8)
replace H1RX21I3 = . if (H1RX21I3 >= 6 & H1RX21I3 <= 8)
replace H1RX21J3 = . if (H1RX21J3 >= 6 & H1RX21J3 <= 8)
replace H1RX21K3 = . if (H1RX21K3 >= 6 & H1RX21K3 <= 8)
replace H1RX21L3 = . if (H1RX21L3 >= 6 & H1RX21L3 <= 8)
replace H1RX21M3 = . if (H1RX21M3 >= 6 & H1RX21M3 <= 8)
replace H1RX21N3 = . if (H1RX21N3 >= 6 & H1RX21N3 <= 8)
replace H1RX21O3 = . if (H1RX21O3 >= 6 & H1RX21O3 <= 8)
replace H1RX21P3 = . if (H1RX21P3 >= 6 & H1RX21P3 <= 8)
replace H1RX21Q3 = . if (H1RX21Q3 >= 6 & H1RX21Q3 <= 8)
replace H1RX21R3 = . if (H1RX21R3 >= 6 & H1RX21R3 <= 8)
replace H1RX22A3 = . if (H1RX22A3 == 97)
replace H1RX22B3 = . if (H1RX22B3 == 97)
replace H1RX22C3 = . if (H1RX22C3 == 97)
replace H1RX22D3 = . if (H1RX22D3 == 97)
replace H1RX22E3 = . if (H1RX22E3 == 97)
replace H1RX22F3 = . if (H1RX22F3 == 97)
replace H1RX22G3 = . if (H1RX22G3 == 97)
replace H1RX22H3 = . if (H1RX22H3 == 97)
replace H1RX22I3 = . if (H1RX22I3 == 97)
replace H1RX22J3 = . if (H1RX22J3 == 97)
replace H1RX22K3 = . if (H1RX22K3 == 97)
replace H1RX22L3 = . if (H1RX22L3 == 97)
replace H1RX22M3 = . if (H1RX22M3 == 97)
replace H1RX22N3 = . if (H1RX22N3 == 97)
replace H1RX22O3 = . if (H1RX22O3 == 97)
replace H1RX22P3 = . if (H1RX22P3 == 97)
replace H1RX22Q3 = . if (H1RX22Q3 == 97)
replace H1RX22R3 = . if (H1RX22R3 == 97)
replace H1RX24A3 = . if (H1RX24A3 == 7)
replace H1RX25M3 = . if (H1RX25M3 == 97 | H1RX25M3 == 98)
replace H1RX25Y3 = . if (H1RX25Y3 == 97 | H1RX25Y3 == 98)
replace H1RX26M3 = . if (H1RX26M3 == 97 | H1RX26M3 == 98)
replace H1RX26Y3 = . if (H1RX26Y3 == 97 | H1RX26Y3 == 98)
replace H1RX27_3 = . if (H1RX27_3 == 7)
replace H1RX28_3 = . if (H1RX28_3 == 7)
replace H1RX29A3 = . if (H1RX29A3 == 97)
replace H1RX29B3 = . if (H1RX29B3 == 97)
replace H1RX29C3 = . if (H1RX29C3 == 97)
replace H1RX30_3 = . if (H1RX30_3 == 7)
replace H1RX31_3 = . if (H1RX31_3 == 7)
replace H1RX32_3 = . if (H1RX32_3 == 7)
replace H1RX33A3 = . if (H1RX33A3 == 97)
replace H1RX33B3 = . if (H1RX33B3 == 97)
replace H1RX33C3 = . if (H1RX33C3 == 97 | H1RX33C3 == 98)
replace H1RX34_3 = . if (H1RX34_3 == 7)
replace H1RX35_3 = . if (H1RX35_3 == 7)
replace H1RX36_3 = . if (H1RX36_3 == 7)
replace H1RX37_3 = . if (H1RX37_3 == 7)
replace H1RX38A3 = . if (H1RX38A3 == 97)
replace H1RX38B3 = . if (H1RX38B3 == 97)
replace H1RX38C3 = . if (H1RX38C3 == 97)
replace H1RX39_3 = . if (H1RX39_3 == 7)
replace H1RX40_3 = . if (H1RX40_3 == 7)
replace H1RX41_3 = . if (H1RX41_3 == 9997)
replace H1NR13_3 = . if (H1NR13_3 >= 96 & H1NR13_3 <= 98)
replace H1NR14_3 = . if (H1NR14_3 >= 6 & H1NR14_3 <= 8)
replace H1NR15_3 = . if (H1NR15_3 >= 6 & H1NR15_3 <= 8)
replace H1NR16_3 = . if (H1NR16_3 >= 6 & H1NR16_3 <= 8)
replace H1NR17A3 = . if (H1NR17A3 == 7)
replace H1NR17B3 = . if (H1NR17B3 == 7)
replace H1NR17C3 = . if (H1NR17C3 == 7)
replace H1NR17D3 = . if (H1NR17D3 == 7)
replace H1NR17E3 = . if (H1NR17E3 == 7)
replace H1NR17F3 = . if (H1NR17F3 == 7)
replace H1NR18A3 = . if (H1NR18A3 >= 6 & H1NR18A3 <= 8)
replace H1NR18B3 = . if (H1NR18B3 >= 6 & H1NR18B3 <= 8)
replace H1NR18C3 = . if (H1NR18C3 >= 6 & H1NR18C3 <= 8)
replace H1NR18D3 = . if (H1NR18D3 >= 6 & H1NR18D3 <= 8)
replace H1NR18E3 = . if (H1NR18E3 >= 6 & H1NR18E3 <= 8)
replace H1NR19A3 = . if (H1NR19A3 == 7)
replace H1NR19B3 = . if (H1NR19B3 == 7)
replace H1NR19C3 = . if (H1NR19C3 == 7)
replace H1NR19D3 = . if (H1NR19D3 == 7)
replace H1NR19E3 = . if (H1NR19E3 == 7)
replace H1NR19F3 = . if (H1NR19F3 == 7)
replace H1NR19G3 = . if (H1NR19G3 == 7)
replace H1NR20A3 = . if (H1NR20A3 >= 6 & H1NR20A3 <= 8)
replace H1NR20B3 = . if (H1NR20B3 >= 6 & H1NR20B3 <= 8)
replace H1NR20C3 = . if (H1NR20C3 >= 6 & H1NR20C3 <= 8)
replace H1NR20D3 = . if (H1NR20D3 >= 6 & H1NR20D3 <= 8)
replace H1NR20E3 = . if (H1NR20E3 >= 6 & H1NR20E3 <= 8)
replace H1NR20F3 = . if (H1NR20F3 >= 6 & H1NR20F3 <= 8)
replace H1NR20G3 = . if (H1NR20G3 >= 6 & H1NR20G3 <= 8)
replace H1NR20H3 = . if (H1NR20H3 >= 6 & H1NR20H3 <= 8)
replace H1NR21_3 = . if (H1NR21_3 >= 6 & H1NR21_3 <= 8)
replace H1NR22_3 = . if (H1NR22_3 >= 6 & H1NR22_3 <= 8)
replace H1NR23M3 = . if (H1NR23M3 >= 96 & H1NR23M3 <= 98)
replace H1NR23Y3 = . if (H1NR23Y3 >= 96 & H1NR23Y3 <= 98)
replace H1NR24M3 = . if (H1NR24M3 >= 96 & H1NR24M3 <= 98)
replace H1NR24Y3 = . if (H1NR24Y3 >= 96 & H1NR24Y3 <= 98)
replace H1NR25_3 = . if (H1NR25_3 >= 6 & H1NR25_3 <= 8)
replace H1NR26_3 = . if (H1NR26_3 == 7)
replace H1NR27A3 = . if (H1NR27A3 == 97)
replace H1NR27B3 = . if (H1NR27B3 == 96 | H1NR27B3 == 97)
replace H1NR27C3 = . if (H1NR27C3 == 97 | H1NR27C3 == 98)
replace H1NR28_3 = . if (H1NR28_3 == 7)
replace H1NR29_3 = . if (H1NR29_3 == 6 | H1NR29_3 == 7)
replace H1NR30_3 = . if (H1NR30_3 == 7)
replace H1NR31A3 = . if (H1NR31A3 == 97)
replace H1NR31B3 = . if (H1NR31B3 == 97)
replace H1NR31C3 = . if (H1NR31C3 == 97 | H1NR31C3 == 98)
replace H1NR32_3 = . if (H1NR32_3 == 7)
replace H1NR33_3 = . if (H1NR33_3 == 7)
replace H1NR34_3 = . if (H1NR34_3 == 7)
replace H1NR35_3 = . if (H1NR35_3 == 7)
replace H1NR36A3 = . if (H1NR36A3 == 97)
replace H1NR36B3 = . if (H1NR36B3 == 97)
replace H1NR36C3 = . if (H1NR36C3 == 97)
replace H1NR37_3 = . if (H1NR37_3 == 7)
replace H1NR38_3 = . if (H1NR38_3 == 7)
replace H1NR39_3 = . if (H1NR39_3 == 997)
replace H1NR40_3 = . if (H1NR40_3 == 7)
replace H1NR41_3 = . if (H1NR41_3 == 7)
replace H1NR42_3 = . if (H1NR42_3 == 6 | H1NR42_3 == 7)
replace H1NR43_3 = . if (H1NR43_3 == 97)
replace H1NR44 = . if (H1NR44 >= 6 & H1NR44 <= 8)
replace H1NR45 = . if (H1NR45 >= 96 & H1NR45 <= 98)
replace H1NR46 = . if (H1NR46 >= 96 & H1NR46 <= 98)
replace H1NR47 = . if (H1NR47 == 6 | H1NR47 == 7)
replace H1NR48 = . if (H1NR48 >= 6 & H1NR48 <= 8)
replace H1NR49 = . if (H1NR49 == 7)
replace H1NR50 = . if (H1NR50 >= 96 & H1NR50 <= 98)
replace H1NR51 = . if (H1NR51 >= 96 & H1NR51 <= 99)
replace H1NR52 = . if (H1NR52 >= 6 & H1NR52 <= 8)
replace H1NR53 = . if (H1NR53 == 7)
replace RXCARD1 = . if (RXCARD1 == 7)
replace RXCARD2 = . if (RXCARD2 == 7)
replace RXCARD3 = . if (RXCARD3 == 7)
replace H1BC1 = . if (H1BC1 >= 6 & H1BC1 <= 9)
replace H1BC2 = . if (H1BC2 >= 6 & H1BC2 <= 9)
replace H1BC3 = . if (H1BC3 >= 6 & H1BC3 <= 9)
replace H1BC4 = . if (H1BC4 >= 6 & H1BC4 <= 9)
replace H1BC5 = . if (H1BC5 >= 6 & H1BC5 <= 9)
replace H1BC6 = . if (H1BC6 >= 6 & H1BC6 <= 9)
replace H1BC7 = . if (H1BC7 >= 6 & H1BC7 <= 9)
replace H1BC8 = . if (H1BC8 >= 6 & H1BC8 <= 9)
replace H1TO1 = . if (H1TO1 == 6 | H1TO1 == 8 | H1TO1 == 9)
replace H1TO2 = . if (H1TO2 >= 96 & H1TO2 <= 98)
replace H1TO3 = . if (H1TO3 == 6 | H1TO3 == 7)
replace H1TO4 = . if (H1TO4 >= 96 & H1TO4 <= 98)
replace H1TO5 = . if (H1TO5 >= 96 & H1TO5 <= 98)
replace H1TO6M = . if (H1TO6M >= 96 & H1TO6M <= 99)
replace H1TO6Y = . if (H1TO6Y >= 96 & H1TO6Y <= 99)
replace H1TO7 = . if (H1TO7 >= 96 & H1TO7 <= 98)
replace H1TO8 = . if (H1TO8 >= 6 & H1TO8 <= 8)
replace H1TO9 = . if (H1TO9 == 6 | H1TO9 == 8 | H1TO9 == 9)
replace H1TO10 = . if (H1TO10 >= 96 & H1TO10 <= 99)
replace H1TO11 = . if (H1TO11 >= 96 & H1TO11 <= 98)
replace H1TO12 = . if (H1TO12 == 6 | H1TO12 == 8 | H1TO12 == 9)
replace H1TO13 = . if (H1TO13 == 7 | H1TO13 == 8)
replace H1TO14 = . if (H1TO14 >= 96 & H1TO14 <= 98)
replace H1TO15 = . if (H1TO15 >= 96 & H1TO15 <= 98)
replace H1TO16 = . if (H1TO16 >= 96 & H1TO16 <= 99)
replace H1TO17 = . if (H1TO17 >= 96 & H1TO17 <= 98)
replace H1TO18 = . if (H1TO18 >= 96 & H1TO18 <= 98)
replace H1TO19 = . if (H1TO19 >= 96 & H1TO19 <= 98)
replace H1TO20 = . if (H1TO20 >= 6 & H1TO20 <= 8)
replace H1TO21 = . if (H1TO21 == 6 | H1TO21 == 7 | H1TO21 == 9)
replace H1TO22 = . if (H1TO22 == 6 | H1TO22 == 7)
replace H1TO23 = . if (H1TO23 == 6 | H1TO23 == 7)
replace H1TO24 = . if (H1TO24 >= 6 & H1TO24 <= 8)
replace H1TO25 = . if (H1TO25 >= 6 & H1TO25 <= 8)
replace H1TO26 = . if (H1TO26 >= 6 & H1TO26 <= 8)
replace H1TO27 = . if (H1TO27 >= 6 & H1TO27 <= 8)
replace H1TO28 = . if (H1TO28 >= 6 & H1TO28 <= 8)
replace H1TO29 = . if (H1TO29 == 6 | H1TO29 == 8 | H1TO29 == 9)
replace H1TO30 = . if (H1TO30 == 96 | H1TO30 == 98 | H1TO30 == 99)
replace H1TO31 = . if (H1TO31 >= 996 & H1TO31 <= 999)
replace H1TO32 = . if (H1TO32 >= 996 & H1TO32 <= 999)
replace H1TO33 = . if (H1TO33 == 6 | H1TO33 == 8 | H1TO33 == 9)
replace H1TO34 = . if (H1TO34 == 96 | H1TO34 == 98 | H1TO34 == 99)
replace H1TO35 = . if (H1TO35 >= 996 & H1TO35 <= 999)
replace H1TO36 = . if (H1TO36 >= 996 & H1TO36 <= 999)
replace H1TO37 = . if (H1TO37 == 96 | H1TO37 == 98 | H1TO37 == 99)
replace H1TO38 = . if (H1TO38 >= 996 & H1TO38 <= 999)
replace H1TO39 = . if (H1TO39 >= 996 & H1TO39 <= 999)
replace H1TO40 = . if (H1TO40 == 96 | H1TO40 == 98 | H1TO40 == 99)
replace H1TO41 = . if (H1TO41 >= 996 & H1TO41 <= 999)
replace H1TO42 = . if (H1TO42 >= 996 & H1TO42 <= 999)
replace H1TO43 = . if (H1TO43 >= 6 & H1TO43 <= 9)
replace H1TO44 = . if (H1TO44 == 6 | H1TO44 == 7)
replace H1TO45 = . if (H1TO45 == 97 | H1TO45 == 98)
replace H1TO46 = . if (H1TO46 == 7)
replace H1TO47 = . if (H1TO47 == 7)
replace H1TO48 = . if (H1TO48 == 7)
replace H1TO49 = . if (H1TO49 == 7)
replace H1TO50 = . if (H1TO50 == 6 | H1TO50 == 8 | H1TO50 == 9)
replace H1TO51 = . if (H1TO51 == 6 | H1TO51 == 8 | H1TO51 == 9)
replace H1TO52 = . if (H1TO52 == 6 | H1TO52 == 8 | H1TO52 == 9)
replace H1TO53 = . if (H1TO53 == 6 | H1TO53 == 8 | H1TO53 == 9)
replace H1TO54A = . if (H1TO54A >= 6 & H1TO54A <= 8)
replace H1TO54B = . if (H1TO54B >= 6 & H1TO54B <= 8)
replace H1TO54C = . if (H1TO54C >= 6 & H1TO54C <= 8)
replace H1TO54D = . if (H1TO54D >= 6 & H1TO54D <= 8)
replace H1DS1 = . if (H1DS1 == 6 | H1DS1 == 8 | H1DS1 == 9)
replace H1DS2 = . if (H1DS2 == 6 | H1DS2 == 8 | H1DS2 == 9)
replace H1DS3 = . if (H1DS3 == 6 | H1DS3 == 8 | H1DS3 == 9)
replace H1DS4 = . if (H1DS4 == 6 | H1DS4 == 8 | H1DS4 == 9)
replace H1DS5 = . if (H1DS5 == 6 | H1DS5 == 8 | H1DS5 == 9)
replace H1DS6 = . if (H1DS6 == 6 | H1DS6 == 8 | H1DS6 == 9)
replace H1DS7 = . if (H1DS7 == 6 | H1DS7 == 8 | H1DS7 == 9)
replace H1DS8 = . if (H1DS8 == 6 | H1DS8 == 8 | H1DS8 == 9)
replace H1DS9 = . if (H1DS9 == 6 | H1DS9 == 8 | H1DS9 == 9)
replace H1DS10 = . if (H1DS10 == 6 | H1DS10 == 8 | H1DS10 == 9)
replace H1DS11 = . if (H1DS11 == 6 | H1DS11 == 8 | H1DS11 == 9)
replace H1DS12 = . if (H1DS12 == 6 | H1DS12 == 8 | H1DS12 == 9)
replace H1DS13 = . if (H1DS13 == 6 | H1DS13 == 8 | H1DS13 == 9)
replace H1DS14 = . if (H1DS14 == 6 | H1DS14 == 8 | H1DS14 == 9)
replace H1DS15 = . if (H1DS15 == 6 | H1DS15 == 8 | H1DS15 == 9)
replace H1JO1 = . if (H1JO1 >= 6 & H1JO1 <= 8)
replace H1JO2 = . if (H1JO2 == 7)
replace H1JO3 = . if (H1JO3 >= 6 & H1JO3 <= 8)
replace H1JO4 = . if (H1JO4 == 7)
replace H1JO5 = . if (H1JO5 == 6 | H1JO5 == 7)
replace H1JO6A = . if (H1JO6A >= 6 & H1JO6A <= 8)
replace H1JO6B = . if (H1JO6B >= 6 & H1JO6B <= 8)
replace H1JO6C = . if (H1JO6C >= 6 & H1JO6C <= 8)
replace H1JO6D = . if (H1JO6D >= 6 & H1JO6D <= 8)
replace H1JO6E = . if (H1JO6E >= 6 & H1JO6E <= 8)
replace H1JO7 = . if (H1JO7 == 6 | H1JO7 == 7)
replace H1JO8A = . if (H1JO8A == 7)
replace H1JO8B = . if (H1JO8B == 7)
replace H1JO8C = . if (H1JO8C == 7)
replace H1JO8D = . if (H1JO8D == 7)
replace H1JO8E = . if (H1JO8E == 7)
replace H1JO9 = . if (H1JO9 >= 6 & H1JO9 <= 8)
replace H1JO10 = . if (H1JO10 >= 6 & H1JO10 <= 8)
replace H1JO11 = . if (H1JO11 == 6 | H1JO11 == 7)
replace H1JO12 = . if (H1JO12 == 7)
replace H1JO13 = . if (H1JO13 == 7)
replace H1JO14 = . if (H1JO14 == 6 | H1JO14 == 7)
replace H1JO15 = . if (H1JO15 == 6 | H1JO15 == 7)
replace H1JO16 = . if (H1JO16 == 7)
replace H1JO17 = . if (H1JO17 == 6 | H1JO17 == 7)
replace H1JO18A = . if (H1JO18A >= 6 & H1JO18A <= 8)
replace H1JO18B = . if (H1JO18B >= 6 & H1JO18B <= 8)
replace H1JO18C = . if (H1JO18C >= 6 & H1JO18C <= 8)
replace H1JO18D = . if (H1JO18D >= 6 & H1JO18D <= 8)
replace H1JO18E = . if (H1JO18E >= 6 & H1JO18E <= 8)
replace H1JO19 = . if (H1JO19 == 6 | H1JO19 == 7)
replace H1JO20 = . if (H1JO20 == 6 | H1JO20 == 7)
replace H1JO21 = . if (H1JO21 == 6 | H1JO21 == 7)
replace H1JO22A = . if (H1JO22A >= 6 & H1JO22A <= 8)
replace H1JO22B = . if (H1JO22B >= 6 & H1JO22B <= 8)
replace H1JO22C = . if (H1JO22C >= 6 & H1JO22C <= 8)
replace H1JO22D = . if (H1JO22D >= 6 & H1JO22D <= 8)
replace H1JO22E = . if (H1JO22E >= 6 & H1JO22E <= 8)
replace H1JO23 = . if (H1JO23 == 6 | H1JO23 == 7)
replace H1JO24 = . if (H1JO24 >= 6 & H1JO24 <= 8)
replace H1JO25 = . if (H1JO25 == 6 | H1JO25 == 8 | H1JO25 == 9)
replace H1JO26 = . if (H1JO26 == 6 | H1JO26 == 8 | H1JO26 == 9)
replace H1FV1 = . if (H1FV1 == 6 | H1FV1 == 8 | H1FV1 == 9)
replace H1FV2 = . if (H1FV2 == 6 | H1FV2 == 8 | H1FV2 == 9)
replace H1FV3 = . if (H1FV3 == 6 | H1FV3 == 8 | H1FV3 == 9)
replace H1FV4 = . if (H1FV4 == 6 | H1FV4 == 8 | H1FV4 == 9)
replace H1FV5 = . if (H1FV5 == 6 | H1FV5 == 8 | H1FV5 == 9)
replace H1FV6 = . if (H1FV6 == 6 | H1FV6 == 8 | H1FV6 == 9)
replace H1FV7 = . if (H1FV7 == 6 | H1FV7 == 8 | H1FV7 == 9)
replace H1FV8 = . if (H1FV8 == 6 | H1FV8 == 8 | H1FV8 == 9)
replace H1FV9 = . if (H1FV9 == 6 | H1FV9 == 8 | H1FV9 == 9)
replace H1FV10 = . if (H1FV10 >= 6 & H1FV10 <= 8)
replace H1FV11 = . if (H1FV11 == 96 | H1FV11 == 98 | H1FV11 == 99)
replace H1FV12 = . if (H1FV12 >= 6 & H1FV12 <= 9)
replace H1FV13 = . if (H1FV13 >= 996 & H1FV13 <= 999)
replace H1FV14M = . if (H1FV14M >= 96 & H1FV14M <= 99)
replace H1FV14Y = . if (H1FV14Y >= 96 & H1FV14Y <= 99)
replace H1MP1 = . if (H1MP1 >= 6 & H1MP1 <= 9)
replace H1MP2 = . if (H1MP2 >= 6 & H1MP2 <= 9)
replace H1MP3 = . if (H1MP3 >= 6 & H1MP3 <= 9)
replace H1MP4 = . if (H1MP4 >= 6 & H1MP4 <= 9)
replace H1FP1 = . if (H1FP1 >= 6 & H1FP1 <= 9)
replace H1FP2 = . if (H1FP2 >= 6 & H1FP2 <= 9)
replace H1FP3 = . if (H1FP3 >= 6 & H1FP3 <= 9)
replace H1FP4 = . if (H1FP4 >= 96 & H1FP4 <= 98)
replace H1FP5M = . if (H1FP5M >= 96 & H1FP5M <= 99)
replace H1FP5D = . if (H1FP5D >= 96 & H1FP5D <= 99)
replace H1FP6 = . if (H1FP6 >= 6 & H1FP6 <= 9)
replace H1FP7 = . if (H1FP7 >= 6 & H1FP7 <= 8)
replace H1FP8 = . if (H1FP8 == 97 | H1FP8 == 98)
replace H1FP9M = . if (H1FP9M >= 96 & H1FP9M <= 98)
replace H1FP9Y = . if (H1FP9Y >= 96 & H1FP9Y <= 98)
replace H1FP10 = . if (H1FP10 == 7)
replace H1FP11M1 = . if (H1FP11M1 == 97 | H1FP11M1 == 98)
replace H1FP11Y1 = . if (H1FP11Y1 == 97 | H1FP11Y1 == 98)
replace H1FP12_1 = . if (H1FP12_1 == 7)
replace H1FP13A1 = . if (H1FP13A1 == 97)
replace H1FP13B1 = . if (H1FP13B1 == 97)
replace H1FP13C1 = . if (H1FP13C1 == 97)
replace H1FP14_1 = . if (H1FP14_1 == 7)
replace H1FP15_1 = . if (H1FP15_1 == 7)
replace H1FP17_1 = . if (H1FP17_1 == 7)
replace H1FP20M1 = . if (H1FP20M1 == 97 | H1FP20M1 == 98)
replace H1FP20Y1 = . if (H1FP20Y1 == 97 | H1FP20Y1 == 98)
replace H1FP21_1 = . if (H1FP21_1 == 7)
replace H1FP22_1 = . if (H1FP22_1 == 7)
replace H1FP23A1 = . if (H1FP23A1 == 7)
replace H1FP24A1 = . if (H1FP24A1 == 7)
replace H1FP11M2 = . if (H1FP11M2 == 97 | H1FP11M2 == 98)
replace H1FP11Y2 = . if (H1FP11Y2 == 97 | H1FP11Y2 == 98)
replace H1FP12_2 = . if (H1FP12_2 == 7)
replace H1FP13A2 = . if (H1FP13A2 == 97)
replace H1FP13B2 = . if (H1FP13B2 == 97)
replace H1FP13C2 = . if (H1FP13C2 == 97)
replace H1FP14_2 = . if (H1FP14_2 == 7)
replace H1FP15_2 = . if (H1FP15_2 == 7)
replace H1FP17_2 = . if (H1FP17_2 == 7)
replace H1FP20M2 = . if (H1FP20M2 == 97 | H1FP20M2 == 98)
replace H1FP20Y2 = . if (H1FP20Y2 == 97 | H1FP20Y2 == 98)
replace H1FP21_2 = . if (H1FP21_2 == 7)
replace H1FP22_2 = . if (H1FP22_2 == 7)
replace H1FP23A2 = . if (H1FP23A2 == 7)
replace H1FP24A2 = . if (H1FP24A2 == 7)
replace H1FP11M3 = . if (H1FP11M3 == 97)
replace H1FP11Y3 = . if (H1FP11Y3 == 97)
replace H1FP12_3 = . if (H1FP12_3 == 7)
replace H1FP13A3 = . if (H1FP13A3 == 97)
replace H1FP13B3 = . if (H1FP13B3 == 97)
replace H1FP13C3 = . if (H1FP13C3 == 97)
replace H1FP14_3 = . if (H1FP14_3 == 7)
replace H1FP15_3 = . if (H1FP15_3 == 7)
replace H1FP17_3 = . if (H1FP17_3 == 7)
replace H1FP20M3 = . if (H1FP20M3 == 97 | H1FP20M3 == 98)
replace H1FP20Y3 = . if (H1FP20Y3 == 97 | H1FP20Y3 == 98)
replace H1FP21_3 = . if (H1FP21_3 == 7)
replace H1FP22_3 = . if (H1FP22_3 == 7)
replace H1FP23A3 = . if (H1FP23A3 == 7)
replace H1FP24A3 = . if (H1FP24A3 == 7)
replace H1FP11M4 = . if (H1FP11M4 == 97)
replace H1FP11Y4 = . if (H1FP11Y4 == 97)
replace H1FP12_4 = . if (H1FP12_4 == 7)
replace H1FP13A4 = . if (H1FP13A4 == 97)
replace H1FP13B4 = . if (H1FP13B4 == 97)
replace H1FP13C4 = . if (H1FP13C4 == 97)
replace H1FP14_4 = . if (H1FP14_4 == 7)
replace H1FP15_4 = . if (H1FP15_4 == 7)
replace H1FP17_4 = . if (H1FP17_4 == 7)
replace H1FP20M4 = . if (H1FP20M4 == 97)
replace H1FP20Y4 = . if (H1FP20Y4 == 97)
replace H1FP21_4 = . if (H1FP21_4 == 7)
replace H1FP22_4 = . if (H1FP22_4 == 7)
replace H1FP23A4 = . if (H1FP23A4 == 7)
replace H1FP24A4 = . if (H1FP24A4 == 7)
replace H1FP11M5 = . if (H1FP11M5 == 97)
replace H1FP11Y5 = . if (H1FP11Y5 == 97)
replace H1FP12_5 = . if (H1FP12_5 == 7)
replace H1FP13A5 = . if (H1FP13A5 == 97)
replace H1FP13B5 = . if (H1FP13B5 == 97)
replace H1FP13C5 = . if (H1FP13C5 == 97)
replace H1FP14_5 = . if (H1FP14_5 == 7)
replace H1FP15_5 = . if (H1FP15_5 == 7)
replace H1FP17_5 = . if (H1FP17_5 == 7)
replace H1FP20M5 = . if (H1FP20M5 == 97)
replace H1FP20Y5 = . if (H1FP20Y5 == 97)
replace H1FP21_5 = . if (H1FP21_5 == 7)
replace H1FP22_5 = . if (H1FP22_5 == 7)
replace H1FP23A5 = . if (H1FP23A5 == 7)
replace H1FP24A5 = . if (H1FP24A5 == 7)
replace H1SU1 = . if (H1SU1 == 6 | H1SU1 == 8 | H1SU1 == 9)
replace H1SU2 = . if (H1SU2 >= 6 & H1SU2 <= 8)
replace H1SU3 = . if (H1SU3 == 7)
replace H1SU4 = . if (H1SU4 == 6 | H1SU4 == 8 | H1SU4 == 9)
replace H1SU5 = . if (H1SU5 >= 6 & H1SU5 <= 8)
replace H1SU6 = . if (H1SU6 == 6 | H1SU6 == 8 | H1SU6 == 9)
replace H1SU7 = . if (H1SU7 == 7 | H1SU7 == 8)
replace H1SU8 = . if (H1SU8 == 6 | H1SU8 == 8 | H1SU8 == 9)
replace H1PA1 = . if (H1PA1 >= 6 & H1PA1 <= 9)
replace H1PA2 = . if (H1PA2 >= 6 & H1PA2 <= 9)
replace H1PA3 = . if (H1PA3 >= 6 & H1PA3 <= 9)
replace H1PA4 = . if (H1PA4 >= 6 & H1PA4 <= 9)
replace H1PA5 = . if (H1PA5 >= 6 & H1PA5 <= 9)
replace H1PA6 = . if (H1PA6 >= 6 & H1PA6 <= 9)
replace H1PA7 = . if (H1PA7 >= 6 & H1PA7 <= 9)
replace H1PR1 = . if (H1PR1 == 96 | H1PR1 == 98)
replace H1PR2 = . if (H1PR2 == 96 | H1PR2 == 98)
replace H1PR3 = . if (H1PR3 == 96 | H1PR3 == 98)
replace H1PR4 = . if (H1PR4 == 96 | H1PR4 == 98)
replace H1PR5 = . if (H1PR5 == 96 | H1PR5 == 98)
replace H1PR6 = . if (H1PR6 == 96 | H1PR6 == 98)
replace H1PR7 = . if (H1PR7 == 96 | H1PR7 == 98)
replace H1PR8 = . if (H1PR8 == 96 | H1PR8 == 98)
replace H1NB1 = . if (H1NB1 == 6 | H1NB1 == 8 | H1NB1 == 9)
replace H1NB2 = . if (H1NB2 == 6 | H1NB2 == 8 | H1NB2 == 9)
replace H1NB3 = . if (H1NB3 == 6 | H1NB3 == 8 | H1NB3 == 9)
replace H1NB4 = . if (H1NB4 == 6 | H1NB4 == 8 | H1NB4 == 9)
replace H1NB5 = . if (H1NB5 == 6 | H1NB5 == 8)
replace H1NB6 = . if (H1NB6 == 6 | H1NB6 == 8)
replace H1NB7 = . if (H1NB7 == 6 | H1NB7 == 8)
replace H1RE1 = . if (H1RE1 == 96 | H1RE1 == 98 | H1RE1 == 99)
replace H1RE2 = . if (H1RE2 >= 6 & H1RE2 <= 8)
replace H1RE3 = . if (H1RE3 >= 6 & H1RE3 <= 8)
replace H1RE4 = . if (H1RE4 >= 6 & H1RE4 <= 8)
replace H1RE5 = . if (H1RE5 >= 6 & H1RE5 <= 9)
replace H1RE6 = . if (H1RE6 >= 6 & H1RE6 <= 8)
replace H1RE7 = . if (H1RE7 >= 6 & H1RE7 <= 8)
replace H1EE1 = . if (H1EE1 == 6 | H1EE1 == 8)
replace H1EE2 = . if (H1EE2 == 6 | H1EE2 == 8)
replace H1EE3 = . if (H1EE3 == 6 | H1EE3 == 8)
replace H1EE4 = . if (H1EE4 == 996.0 | H1EE4 == 998.0 | H1EE4 == 999.0)
replace H1EE5 = . if (H1EE5 >= 996 & H1EE5 <= 999)
replace H1EE6 = . if (H1EE6 == 996 | H1EE6 == 998 | H1EE6 == 999)
replace H1EE7 = . if (H1EE7 >= 996.0 & H1EE7 <= 999.0)
replace H1EE8 = . if (H1EE8 == 96 | H1EE8 == 98 | H1EE8 == 99)
replace H1EE9 = . if (H1EE9 == 6 | H1EE9 == 8)
replace H1EE10 = . if (H1EE10 == 7)
replace H1EE11 = . if (H1EE11 >= 6 & H1EE11 <= 8)
replace H1EE12 = . if (H1EE12 == 6 | H1EE12 == 8)
replace H1EE13 = . if (H1EE13 == 6 | H1EE13 == 8)
replace H1EE14 = . if (H1EE14 == 6 | H1EE14 == 8)
replace H1EE15 = . if (H1EE15 == 6 | H1EE15 == 8)
replace STUDSIBA = . if (STUDSIBA >= 6 & STUDSIBA <= 8)
replace TWINA = . if (TWINA == 7 | TWINA == 9)
replace H1WS1A = . if (H1WS1A >= 6 & H1WS1A <= 9)
replace H1WS2A = . if (H1WS2A >= 6 & H1WS2A <= 9)
replace H1WS3A = . if (H1WS3A >= 6 & H1WS3A <= 9)
replace H1WS4A = . if (H1WS4A >= 6 & H1WS4A <= 9)
replace H1WS5A = . if (H1WS5A >= 6 & H1WS5A <= 99)
replace H1WS6A = . if (H1WS6A >= 6 & H1WS6A <= 9)
replace H1WS7A = . if (H1WS7A == 6 | H1WS7A == 7)
replace H1WS8A = . if (H1WS8A == 7 | H1WS8A == 8)
replace H1WS9A = . if (H1WS9A == 7 | H1WS9A == 8)
replace H1WS10A = . if (H1WS10A == 7)
replace H1WS11A = . if (H1WS11A == 7)
replace H1WS12A = . if (H1WS12A >= 6 & H1WS12A <= 9)
replace STUDSIBB = . if (STUDSIBB >= 6 & STUDSIBB <= 8)
replace TWINB = . if (TWINB == 6 | TWINB == 7)
replace H1WS1B = . if (H1WS1B >= 6 & H1WS1B <= 8)
replace H1WS2B = . if (H1WS2B >= 6 & H1WS2B <= 8)
replace H1WS3B = . if (H1WS3B >= 6 & H1WS3B <= 8)
replace H1WS4B = . if (H1WS4B >= 6 & H1WS4B <= 8)
replace H1WS5B = . if (H1WS5B >= 96 & H1WS5B <= 98)
replace H1WS6B = . if (H1WS6B >= 6 & H1WS6B <= 9)
replace H1WS7B = . if (H1WS7B == 6 | H1WS7B == 7)
replace H1WS8B = . if (H1WS8B == 6 | H1WS8B == 7)
replace H1WS9B = . if (H1WS9B == 6 | H1WS9B == 7)
replace H1WS10B = . if (H1WS10B == 7)
replace H1WS11B = . if (H1WS11B == 7)
replace H1WS12B = . if (H1WS12B >= 6 & H1WS12B <= 8)
replace STUDSIBC = . if (STUDSIBC == 7)
replace TWINC = . if (TWINC == 7)
replace H1WS1C = . if (H1WS1C >= 6 & H1WS1C <= 8)
replace H1WS2C = . if (H1WS2C >= 6 & H1WS2C <= 8)
replace H1WS3C = . if (H1WS3C >= 6 & H1WS3C <= 8)
replace H1WS4C = . if (H1WS4C >= 6 & H1WS4C <= 8)
replace H1WS5C = . if (H1WS5C >= 96 & H1WS5C <= 98)
replace H1WS6C = . if (H1WS6C >= 6 & H1WS6C <= 8)
replace H1WS7C = . if (H1WS7C == 7)
replace H1WS8C = . if (H1WS8C == 7)
replace H1WS9C = . if (H1WS9C == 7)
replace H1WS10C = . if (H1WS10C == 7)
replace H1WS11C = . if (H1WS11C == 7)
replace H1WS12C = . if (H1WS12C >= 6 & H1WS12C <= 8)
replace STUDSIBD = . if (STUDSIBD >= 6 & STUDSIBD <= 8)
replace TWIND = . if (TWIND == 6 | TWIND == 7)
replace H1WS1D = . if (H1WS1D == 6 | H1WS1D == 7)
replace H1WS2D = . if (H1WS2D == 6 | H1WS2D == 7)
replace H1WS3D = . if (H1WS3D == 6 | H1WS3D == 7)
replace H1WS4D = . if (H1WS4D == 6 | H1WS4D == 7)
replace H1WS5D = . if (H1WS5D == 96 | H1WS5D == 97)
replace H1WS6D = . if (H1WS6D == 6 | H1WS6D == 7)
replace H1WS7D = . if (H1WS7D == 7)
replace H1WS8D = . if (H1WS8D == 7)
replace H1WS9D = . if (H1WS9D == 7)
replace H1WS10D = . if (H1WS10D == 7)
replace H1WS11D = . if (H1WS11D == 7)
replace H1WS12D = . if (H1WS12D == 6 | H1WS12D == 7)
replace STUDSIBE = . if (STUDSIBE >= 6 & STUDSIBE <= 8)
replace TWINE = . if (TWINE == 6 | TWINE == 7)
replace H1WS1E = . if (H1WS1E == 6 | H1WS1E == 7)
replace H1WS2E = . if (H1WS2E == 6 | H1WS2E == 7)
replace H1WS3E = . if (H1WS3E == 6 | H1WS3E == 7)
replace H1WS4E = . if (H1WS4E == 6 | H1WS4E == 7)
replace H1WS5E = . if (H1WS5E == 96 | H1WS5E == 97)
replace H1WS6E = . if (H1WS6E == 6 | H1WS6E == 7)
replace H1WS7E = . if (H1WS7E == 7)
replace H1WS8E = . if (H1WS8E == 7)
replace H1WS9E = . if (H1WS9E == 7)
replace H1WS10E = . if (H1WS10E == 7)
replace H1WS11E = . if (H1WS11E == 7)
replace H1WS12E = . if (H1WS12E == 6 | H1WS12E == 7)
replace STUDSIBF = . if (STUDSIBF == 7)
replace TWINF = . if (TWINF == 7)
replace H1WS1F = . if (H1WS1F == 7)
replace H1WS2F = . if (H1WS2F == 7)
replace H1WS3F = . if (H1WS3F == 7)
replace H1WS4F = . if (H1WS4F == 7)
replace H1WS5F = . if (H1WS5F == 7)
replace H1WS6F = . if (H1WS6F == 7)
replace H1WS7F = . if (H1WS7F == 7)
replace H1WS8F = . if (H1WS8F == 7)
replace H1WS9F = . if (H1WS9F == 7)
replace H1WS10F = . if (H1WS10F == 7)
replace H1WS11F = . if (H1WS11F == 7)
replace H1WS12F = . if (H1WS12F == 7)
replace STUDSIBG = . if (STUDSIBG == 7)
replace TWING = . if (TWING == 7)
replace H1WS1G = . if (H1WS1G == 7)
replace H1WS2G = . if (H1WS2G == 7)
replace H1WS3G = . if (H1WS3G == 7)
replace H1WS4G = . if (H1WS4G == 7)
replace H1WS5G = . if (H1WS5G == 97)
replace H1WS6G = . if (H1WS6G == 7)
replace H1WS7G = . if (H1WS7G == 7)
replace H1WS8G = . if (H1WS8G == 7)
replace H1WS9G = . if (H1WS9G == 7)
replace H1WS10G = . if (H1WS10G == 7)
replace H1WS11G = . if (H1WS11G == 7)
replace H1WS12G = . if (H1WS12G == 7)
replace H1WS13 = . if (H1WS13 == 6 | H1WS13 == 8 | H1WS13 == 9)
replace H1IR1 = . if (H1IR1 == 6 | H1IR1 == 8)
replace H1IR2 = . if (H1IR2 == 6 | H1IR2 == 8)
replace H1IR3 = . if (H1IR3 == 6 | H1IR3 == 8)
replace H1IR4 = . if (H1IR4 == 6 | H1IR4 == 8)
replace H1IR5 = . if (H1IR5 == 6 | H1IR5 == 8)
replace H1IR6 = . if (H1IR6 == 6 | H1IR6 == 8)
replace H1IR7A = . if (H1IR7A == 7)
replace H1IR7B = . if (H1IR7B == 7)
replace H1IR7C = . if (H1IR7C == 7)
replace H1IR7D = . if (H1IR7D == 7)
replace H1IR7E = . if (H1IR7E == 7)
replace H1IR7F = . if (H1IR7F == 7)
replace H1IR7G = . if (H1IR7G == 7)
replace H1IR7H = . if (H1IR7H == 7)
replace H1IR7I = . if (H1IR7I == 7)
replace H1IR7J = . if (H1IR7J == 7)
replace H1IR7K = . if (H1IR7K == 7)
replace H1IR7L = . if (H1IR7L == 7)
replace H1IR7M = . if (H1IR7M == 7)
replace H1IR7N = . if (H1IR7N == 7)
replace H1IR7O = . if (H1IR7O == 7)
replace H1IR7P = . if (H1IR7P == 7)
replace H1IR7Q = . if (H1IR7Q == 7)
replace H1IR7R = . if (H1IR7R == 7)
replace H1IR7S = . if (H1IR7S == 7)
replace H1IR7T = . if (H1IR7T == 7)
replace H1IR7U = . if (H1IR7U == 7)
replace H1IR7V = . if (H1IR7V == 7)
replace H1IR7W = . if (H1IR7W == 7)
replace H1IR7X = . if (H1IR7X == 7)
replace H1IR7Y = . if (H1IR7Y == 7)
replace H1IR7Z = . if (H1IR7Z == 7)
replace H1IR7AA = . if (H1IR7AA == 7)
replace H1IR7BB = . if (H1IR7BB == 7)
replace H1IR7CC = . if (H1IR7CC == 7)
replace H1IR7DD = . if (H1IR7DD == 7)
replace H1IR8A = . if (H1IR8A == 7)
replace H1IR8B = . if (H1IR8B == 7)
replace H1IR8C = . if (H1IR8C == 7)
replace H1IR8D = . if (H1IR8D == 7 | H1IR8D == 8)
replace H1IR9 = . if (H1IR9 == 6 | H1IR9 == 8)
replace H1IR11 = . if (H1IR11 == 6 | H1IR11 == 8 | H1IR11 == 9)
replace H1IR12 = . if (H1IR12 == 96 | H1IR12 == 98 | H1IR12 == 99)
replace H1IR13 = . if (H1IR13 == 97 | H1IR13 == 99)
replace H1IR14 = . if (H1IR14 == 6 | H1IR14 == 97 | H1IR14 == 98)
replace H1IR15 = . if (H1IR15 == 6 | H1IR15 == 8 | H1IR15 == 9)
replace H1IR16 = . if (H1IR16 == 96 | H1IR16 == 98)
replace H1IR17A = . if (H1IR17A == 7)
replace H1IR17B = . if (H1IR17B == 7)
replace H1IR17C = . if (H1IR17C == 7)
replace H1IR17D = . if (H1IR17D == 7)
replace H1IR17E = . if (H1IR17E == 7)
replace H1IR17F = . if (H1IR17F == 7)
replace H1IR17G = . if (H1IR17G == 7)
replace H1IR17H = . if (H1IR17H == 7)
replace H1IR17I = . if (H1IR17I == 7)
replace H1IR17J = . if (H1IR17J == 7)
replace H1IR18 = . if (H1IR18 == 6 | H1IR18 == 8)
replace H1IR19 = . if (H1IR19 == 6 | H1IR19 == 8)
replace H1IR20 = . if (H1IR20 >= 6 & H1IR20 <= 8)
replace H1IR21 = . if (H1IR21 == 6 | H1IR21 == 8 | H1IR21 == 9)
replace H1IR22A = . if (H1IR22A >= 6 & H1IR22A <= 8)
replace H1IR22B = . if (H1IR22B >= 6 & H1IR22B <= 8)
replace H1IR22C = . if (H1IR22C >= 6 & H1IR22C <= 8)
replace H1IR22D = . if (H1IR22D >= 6 & H1IR22D <= 8)
replace H1IR22E = . if (H1IR22E >= 6 & H1IR22E <= 8)
replace H1IR22F = . if (H1IR22F >= 6 & H1IR22F <= 8)
replace H1IR22G = . if (H1IR22G >= 6 & H1IR22G <= 8)
replace H1IR22H = . if (H1IR22H >= 6 & H1IR22H <= 8)
replace H1IR22I = . if (H1IR22I >= 6 & H1IR22I <= 8)
replace H1IR22J = . if (H1IR22J >= 6 & H1IR22J <= 8)
replace H1IR22K = . if (H1IR22K >= 6 & H1IR22K <= 8)
replace H1IR22L = . if (H1IR22L >= 6 & H1IR22L <= 8)
replace H1IR22M = . if (H1IR22M >= 6 & H1IR22M <= 8)
replace H1IR22N = . if (H1IR22N >= 6 & H1IR22N <= 8)
replace H1IR22O = . if (H1IR22O >= 6 & H1IR22O <= 8)
replace H1IR22P = . if (H1IR22P >= 6 & H1IR22P <= 8)
replace H1IR22Q = . if (H1IR22Q >= 6 & H1IR22Q <= 8)
replace H1IR22R = . if (H1IR22R >= 6 & H1IR22R <= 8)
replace H1IR22S = . if (H1IR22S >= 6 & H1IR22S <= 8)
replace H1IR22T = . if (H1IR22T >= 6 & H1IR22T <= 8)
replace H1IR22U = . if (H1IR22U >= 6 & H1IR22U <= 8)
replace H1IR22V = . if (H1IR22V >= 6 & H1IR22V <= 8)
replace H1IR22W = . if (H1IR22W >= 6 & H1IR22W <= 8)
replace H1IR22X = . if (H1IR22X >= 6 & H1IR22X <= 8)
replace H1IR22Y = . if (H1IR22Y >= 6 & H1IR22Y <= 8)
replace H1IR22Z = . if (H1IR22Z >= 6 & H1IR22Z <= 8)
replace H1IR22AA = . if (H1IR22AA >= 6 & H1IR22AA <= 8)
replace H1IR22BB = . if (H1IR22BB >= 6 & H1IR22BB <= 8)
replace H1IR22CC = . if (H1IR22CC >= 6 & H1IR22CC <= 8)
replace H1IR22DD = . if (H1IR22DD >= 6 & H1IR22DD <= 8)
replace H1IR22EE = . if (H1IR22EE >= 6 & H1IR22EE <= 8)
replace H1IR22FF = . if (H1IR22FF >= 6 & H1IR22FF <= 8)
replace H1IR22GG = . if (H1IR22GG >= 6 & H1IR22GG <= 8)
replace H1IR22HH = . if (H1IR22HH >= 6 & H1IR22HH <= 8)
replace H1IR22II = . if (H1IR22II >= 6 & H1IR22II <= 8)
replace H1IR22JJ = . if (H1IR22JJ >= 6 & H1IR22JJ <= 8)
replace H1IR22KK = . if (H1IR22KK >= 6 & H1IR22KK <= 8)
replace H1IR22LL = . if (H1IR22LL >= 6 & H1IR22LL <= 8)
replace H1IR22MM = . if (H1IR22MM >= 6 & H1IR22MM <= 8)
replace H1IR23 = . if (H1IR23 == 6 | H1IR23 == 8 | H1IR23 == 9)
replace H1IR24 = . if (H1IR24 == 6 | H1IR24 == 8 | H1IR24 == 9)
replace H1IR25 = . if (H1IR25 == 6 | H1IR25 == 8)
replace H1IR26 = . if (H1IR26 == 6 | H1IR26 == 8)
replace H1IR27 = . if (H1IR27 == 6 | H1IR27 == 8)
replace H1IR28 = . if (H1IR28 == 6 | H1IR28 == 8)
replace S2 = . if (S2 == 9)
replace S3 = . if (S3 == 13 | S3 == 99)
replace S4 = . if (S4 == 8)
replace S5 = . if (S5 >= 97 & S5 <= 99)
replace S7 = . if (S7 == 97 | S7 == 99)
replace S10A = . if (S10A >= 7 & S10A <= 9)
replace S10B = . if (S10B >= 7 & S10B <= 9)
replace S10C = . if (S10C >= 7 & S10C <= 9)
replace S10D = . if (S10D >= 7 & S10D <= 9)
replace S12 = . if (S12 == 97 | S12 == 99)
replace S13 = . if (S13 == 7 | S13 == 8)
replace S14 = . if (S14 == 97 | S14 == 99)
replace S15 = . if (S15 >= 7 & S15 <= 9)
replace S16 = . if (S16 == 7 | S16 == 9)
replace S17 = . if (S17 == 9)
replace S18 = . if (S18 == 97 | S18 == 99)
replace S19 = . if (S19 == 7 | S19 == 8)
replace S20 = . if (S20 == 97 | S20 == 99)
replace S21 = . if (S21 == 7 | S21 == 8)
replace S22 = . if (S22 == 7 | S22 == 9)
replace S24 = . if (S24 == 7)
replace S26 = . if (S26 == 7)
replace S27 = . if (S27 == 99)
replace S28 = . if (S28 >= 97 & S28 <= 99)
replace S45A = . if (S45A == 99)
replace S45B = . if (S45B == 99)
replace S45C = . if (S45C == 99)
replace S45D = . if (S45D == 99)
replace S45E = . if (S45E == 99)
replace S45F = . if (S45F == 99)
replace S46A = . if (S46A == 9)
replace S46B = . if (S46B == 9)
replace S46C = . if (S46C == 9)
replace S46D = . if (S46D == 9)
replace S47 = . if (S47 == 9)
replace S48 = . if (S48 == 9)
replace S50 = . if (S50 == 9)
replace S53 = . if (S53 == 9)
replace S55A = . if (S55A == 7)
replace S55B = . if (S55B == 7)
replace S55C = . if (S55C == 7)
replace S55D = . if (S55D == 7)
replace S59A = . if (S59A == 99)
replace S59C = . if (S59C == 99)
replace S59D = . if (S59D == 99)
replace S59E = . if (S59E == 99)
replace S59F = . if (S59F == 99)
replace S59G = . if (S59G == 99)
replace S60A = . if (S60A == 9)
replace S60B = . if (S60B == 9)
replace S60C = . if (S60C == 9)
replace S60D = . if (S60D == 9)
replace S60E = . if (S60E == 9)
replace S60F = . if (S60F == 9)
replace S60G = . if (S60G == 9)
replace S60H = . if (S60H == 9)
replace S60I = . if (S60I == 9)
replace S60J = . if (S60J == 9)
replace S60K = . if (S60K == 9)
replace S60L = . if (S60L == 9)
replace S60M = . if (S60M == 9)
replace S60N = . if (S60N == 9)
replace S60O = . if (S60O == 9)
replace S61A = . if (S61A == 9)
replace S61B = . if (S61B == 9)
replace S61C = . if (S61C == 9)
replace S61D = . if (S61D == 9)
replace S61E = . if (S61E == 9)
replace S61F = . if (S61F == 9)
replace S62A = . if (S62A == 9)
replace S62B = . if (S62B == 9)
replace S62C = . if (S62C == 9)
replace S62D = . if (S62D == 9)
replace S62E = . if (S62E == 9)
replace S62F = . if (S62F == 9)
replace S62G = . if (S62G == 9)
replace S62H = . if (S62H == 9)
replace S62I = . if (S62I == 9)
replace S62J = . if (S62J == 9)
replace S62K = . if (S62K == 9)
replace S62L = . if (S62L == 9)
replace S62M = . if (S62M == 9)
replace S62N = . if (S62N == 9)
replace S62O = . if (S62O == 9)
replace S62P = . if (S62P == 9)
replace S62Q = . if (S62Q == 9)
replace S62R = . if (S62R == 9)
replace S63 = . if (S63 == 9)
replace S64 = . if (S64 == 9)
replace S65 = . if (S65 == 9)
replace PA2 = . if (PA2 == 996)
replace PA3 = . if (PA3 == 6)
replace PA4 = . if (PA4 == 6)
replace PA5_1 = . if (PA5_1 == 6 | PA5_1 == 7)
replace PA5_2 = . if (PA5_2 == 6 | PA5_2 == 7)
replace PA5_3 = . if (PA5_3 == 6 | PA5_3 == 7)
replace PA5_4 = . if (PA5_4 == 6 | PA5_4 == 7)
replace PA5_5 = . if (PA5_5 == 6 | PA5_5 == 7)
replace PA5_6 = . if (PA5_6 == 6 | PA5_6 == 7)
replace PA5_7 = . if (PA5_7 == 6 | PA5_7 == 7)
replace PA6_1 = . if (PA6_1 == 6)
replace PA6_2 = . if (PA6_2 == 6)
replace PA6_3 = . if (PA6_3 == 6)
replace PA6_4 = . if (PA6_4 == 6)
replace PA6_5 = . if (PA6_5 == 6)
replace PA7_1 = . if (PA7_1 == 6 | PA7_1 == 7)
replace PA7_2 = . if (PA7_2 == 6 | PA7_2 == 7)
replace PA7_3 = . if (PA7_3 == 6 | PA7_3 == 7)
replace PA7_4 = . if (PA7_4 == 6 | PA7_4 == 7)
replace PA7_5 = . if (PA7_5 == 6 | PA7_5 == 7)
replace PA7_6 = . if (PA7_6 == 6 | PA7_6 == 7)
replace PA7_7 = . if (PA7_7 == 6 | PA7_7 == 7)
replace PA7_8 = . if (PA7_8 == 6 | PA7_8 == 7)
replace PA8B = . if (PA8B == 6 | PA8B == 7)
replace PA10 = . if (PA10 == 6)
replace PA11 = . if (PA11 == 6 | PA11 == 7)
replace PA12 = . if (PA12 == 96)
replace PA13 = . if (PA13 == 6)
replace PA14 = . if (PA14 == 6 | PA14 == 7)
replace PA15 = . if (PA15 == 6 | PA15 == 7)
replace PA16 = . if (PA16 == 6 | PA16 == 7)
replace PA17 = . if (PA17 == 6 | PA17 == 7)
replace PA18 = . if (PA18 == 6)
replace PA19 = . if (PA19 == 6)
replace PA20 = . if (PA20 == 6)
replace PA21 = . if (PA21 == 6)
replace PA22 = . if (PA22 == 96)
replace PA23 = . if (PA23 == 6 | PA23 == 7)
replace PA24 = . if (PA24 == 6 | PA24 == 7)
replace PA25 = . if (PA25 == 6 | PA25 == 7)
replace PA26 = . if (PA26 == 6 | PA26 == 7 | PA26 == 8)
replace PA27A = . if (PA27A == 6)
replace PA27B = . if (PA27B == 6)
replace PA27C = . if (PA27C == 6)
replace PA27D = . if (PA27D == 6)
replace PA27E = . if (PA27E == 6)
replace PA28A = . if (PA28A == 6)
replace PA28B = . if (PA28B == 6)
replace PA28C = . if (PA28C == 6)
replace PA28D = . if (PA28D == 6)
replace PA28E = . if (PA28E == 6)
replace PA28F = . if (PA28F == 6)
replace PA28G = . if (PA28G == 6)
replace PA28H = . if (PA28H == 6)
replace PA28I = . if (PA28I == 6)
replace PA28J = . if (PA28J == 6)
replace PA30 = . if (PA30 == 96 | PA30 == 97)
replace PA31 = . if (PA31 == 6)
replace PA32 = . if (PA32 == 6)
replace PA33 = . if (PA33 == 6)
replace PA34 = . if (PA34 == 6)
replace PA35 = . if (PA35 == 6)
replace PA36 = . if (PA36 == 6)
replace PA37 = . if (PA37 == 6)
replace PA38 = . if (PA38 == 6)
replace PA39 = . if (PA39 == 996 | PA39 == 997)
replace PA40 = . if (PA40 == 96)
replace PA41_1 = . if (PA41_1 == 6 | PA41_1 == 7)
replace PA41_2 = . if (PA41_2 == 6 | PA41_2 == 7)
replace PA41_3 = . if (PA41_3 == 6 | PA41_3 == 7)
replace PA41_4 = . if (PA41_4 == 6 | PA41_4 == 7)
replace PA41_5 = . if (PA41_5 == 6 | PA41_5 == 7)
replace PA41_6 = . if (PA41_6 == 6 | PA41_6 == 7)
replace PA41_7 = . if (PA41_7 == 6 | PA41_7 == 7)
replace PA41_8 = . if (PA41_8 == 6 | PA41_8 == 7)
replace PA41_9 = . if (PA41_9 == 6 | PA41_9 == 7)
replace PA41_10 = . if (PA41_10 == 6 | PA41_10 == 7)
replace PA41_11 = . if (PA41_11 == 6 | PA41_11 == 7)
replace PA41_12 = . if (PA41_12 == 6 | PA41_12 == 7)
replace PA41_13 = . if (PA41_13 == 6 | PA41_13 == 7)
replace PA41_14 = . if (PA41_14 == 6 | PA41_14 == 7)
replace PA41_15 = . if (PA41_15 == 6 | PA41_15 == 7)
replace PA41_16 = . if (PA41_16 == 6 | PA41_16 == 7)
replace PA41_17 = . if (PA41_17 == 6 | PA41_17 == 7)
replace PA41_18 = . if (PA41_18 == 6 | PA41_18 == 7)
replace PA41_19 = . if (PA41_19 == 6 | PA41_19 == 7)
replace PA42 = . if (PA42 == 6 | PA42 == 7)
replace PA43 = . if (PA43 == 6 | PA43 == 7)
replace PA44 = . if (PA44 == 6 | PA44 == 7)
replace PA46_1 = . if (PA46_1 == 6 | PA46_1 == 7)
replace PA46_2 = . if (PA46_2 == 6 | PA46_2 == 7)
replace PA46_3 = . if (PA46_3 == 6 | PA46_3 == 7)
replace PA46_4 = . if (PA46_4 == 6 | PA46_4 == 7)
replace PA46_5 = . if (PA46_5 == 6 | PA46_5 == 7)
replace PA46_6 = . if (PA46_6 == 6 | PA46_6 == 7)
replace PA46_7 = . if (PA46_7 == 6 | PA46_7 == 7)
replace PA46_8 = . if (PA46_8 == 6 | PA46_8 == 7)
replace PA46_9 = . if (PA46_9 == 6 | PA46_9 == 7)
replace PA46_10 = . if (PA46_10 == 6 | PA46_10 == 7)
replace PA46_11 = . if (PA46_11 == 6 | PA46_11 == 7)
replace PA46_12 = . if (PA46_12 == 6 | PA46_12 == 7)
replace PA46_13 = . if (PA46_13 == 6 | PA46_13 == 7)
replace PA46_14 = . if (PA46_14 == 6 | PA46_14 == 7)
replace PA46_15 = . if (PA46_15 == 6 | PA46_15 == 7)
replace PA46_16 = . if (PA46_16 == 6 | PA46_16 == 7)
replace PA46_17 = . if (PA46_17 == 6 | PA46_17 == 7)
replace PA46_18 = . if (PA46_18 == 6 | PA46_18 == 7)
replace PA46_19 = . if (PA46_19 == 6 | PA46_19 == 7)
replace PA47 = . if (PA47 == 6 | PA47 == 7)
replace PA48 = . if (PA48 == 6 | PA48 == 7)
replace PA49 = . if (PA49 == 6 | PA49 == 7)
replace PA51_1 = . if (PA51_1 == 6 | PA51_1 == 7)
replace PA51_2 = . if (PA51_2 == 6 | PA51_2 == 7)
replace PA51_3 = . if (PA51_3 == 6 | PA51_3 == 7)
replace PA51_4 = . if (PA51_4 == 6 | PA51_4 == 7)
replace PA51_5 = . if (PA51_5 == 6 | PA51_5 == 7)
replace PA51_6 = . if (PA51_6 == 6 | PA51_6 == 7)
replace PA51_7 = . if (PA51_7 == 6 | PA51_7 == 7)
replace PA51_8 = . if (PA51_8 == 6 | PA51_8 == 7)
replace PA51_9 = . if (PA51_9 == 6 | PA51_9 == 7)
replace PA51_10 = . if (PA51_10 == 6 | PA51_10 == 7)
replace PA51_11 = . if (PA51_11 == 6 | PA51_11 == 7)
replace PA51_12 = . if (PA51_12 == 6 | PA51_12 == 7)
replace PA51_13 = . if (PA51_13 == 6 | PA51_13 == 7)
replace PA51_14 = . if (PA51_14 == 6 | PA51_14 == 7)
replace PA51_15 = . if (PA51_15 == 6 | PA51_15 == 7)
replace PA51_16 = . if (PA51_16 == 6 | PA51_16 == 7)
replace PA51_17 = . if (PA51_17 == 6 | PA51_17 == 7)
replace PA51_18 = . if (PA51_18 == 6 | PA51_18 == 7)
replace PA51_19 = . if (PA51_19 == 6 | PA51_19 == 7)
replace PA52 = . if (PA52 == 6 | PA52 == 7)
replace PA53 = . if (PA53 == 6 | PA53 == 7)
replace PA54 = . if (PA54 == 6 | PA54 == 7)
replace PA55 = . if (PA55 == 9996)
replace PA56 = . if (PA56 == 6)
replace PA57A = . if (PA57A == 6)
replace PA57B = . if (PA57B == 6)
replace PA57C = . if (PA57C == 6)
replace PA57D = . if (PA57D == 6)
replace PA57E = . if (PA57E == 6)
replace PA57F = . if (PA57F == 6)
replace PA58 = . if (PA58 == 6)
replace PA59 = . if (PA59 == 6)
replace PA60 = . if (PA60 == 6)
replace PA61 = . if (PA61 == 96)
replace PA62 = . if (PA62 == 96)
replace PA63 = . if (PA63 == 6)
replace PA64 = . if (PA64 == 6 | PA64 == 7)
replace PB2 = . if (PB2 == 6 | PB2 == 7)
replace PB3 = . if (PB3 >= 6 & PB3 <= 8)
replace PB4_1 = . if (PB4_1 == 6 | PB4_1 == 7)
replace PB4_2 = . if (PB4_2 == 6 | PB4_2 == 7)
replace PB4_3 = . if (PB4_3 == 6 | PB4_3 == 7)
replace PB4_4 = . if (PB4_4 == 6 | PB4_4 == 7)
replace PB4_5 = . if (PB4_5 == 6 | PB4_5 == 7)
replace PB4_6 = . if (PB4_6 == 6 | PB4_6 == 7)
replace PB4_7 = . if (PB4_7 == 6 | PB4_7 == 7)
replace PB5_1 = . if (PB5_1 == 6 | PB5_1 == 7)
replace PB5_2 = . if (PB5_2 == 6 | PB5_2 == 7)
replace PB5_3 = . if (PB5_3 == 6 | PB5_3 == 7)
replace PB5_4 = . if (PB5_4 == 6 | PB5_4 == 7)
replace PB5_5 = . if (PB5_5 == 6 | PB5_5 == 7)
replace PB6_1 = . if (PB6_1 == 6 | PB6_1 == 7)
replace PB6_2 = . if (PB6_2 == 6 | PB6_2 == 7)
replace PB6_3 = . if (PB6_3 == 6 | PB6_3 == 7)
replace PB6_4 = . if (PB6_4 == 6 | PB6_4 == 7)
replace PB6_5 = . if (PB6_5 == 6 | PB6_5 == 7)
replace PB6_6 = . if (PB6_6 == 6 | PB6_6 == 7)
replace PB6_7 = . if (PB6_7 == 6 | PB6_7 == 7)
replace PB6_8 = . if (PB6_8 == 6 | PB6_8 == 7)
replace PB7 = . if (PB7 == 96 | PB7 == 97)
replace PB8 = . if (PB8 == 96 | PB8 == 97)
replace PB9 = . if (PB9 == 6 | PB9 == 7)
replace PB10 = . if (PB10 == 6 | PB10 == 7)
replace PB11 = . if (PB11 == 6 | PB11 == 7)
replace PB12 = . if (PB12 == 6 | PB12 == 7)
replace PB13 = . if (PB13 == 6 | PB13 == 7)
replace PB14 = . if (PB14 == 6 | PB14 == 7)
replace PB15 = . if (PB15 == 6 | PB15 == 7)
replace PB16 = . if (PB16 == 6 | PB16 == 7)
replace PB17 = . if (PB17 == 6 | PB17 == 7)
replace PB18 = . if (PB18 == 96 | PB18 == 97)
replace PB19 = . if (PB19 == 6 | PB19 == 7)
replace PB20 = . if (PB20 == 6 | PB20 == 7)
replace PB21 = . if (PB21 >= 6 & PB21 <= 8)
replace PB22 = . if (PB22 >= 96 & PB22 <= 98)
replace PC1 = . if (PC1 == 96)
replace PC2 = . if (PC2 == 7)
replace PC3 = . if (PC3 == 7 | PC3 == 8)
replace PC4 = . if (PC4 >= 996 & PC4 <= 998)
replace PC5 = . if (PC5 >= 6 & PC5 <= 8)
replace PC6B = . if (PC6B == 6 | PC6B == 7)
replace PC7 = . if (PC7 >= 6 & PC7 <= 8)
replace PC8 = . if (PC8 >= 996 & PC8 <= 998)
replace PC9 = . if (PC9 >= 6 & PC9 <= 8)
replace PC10 = . if (PC10 == 6)
replace PC11 = . if (PC11 == 6)
replace PC12 = . if (PC12 == 6)
replace PC13 = . if (PC13 == 6 | PC13 == 8)
replace PC14 = . if (PC14 == 6 | PC14 == 8)
replace PC15 = . if (PC15 == 6 | PC15 == 7)
replace PC16 = . if (PC16 == 6 | PC16 == 7)
replace PC17 = . if (PC17 == 96)
replace PC18 = . if (PC18 == 6 | PC18 == 8)
replace PC19A_P = . if (PC19A_P == 98)
replace PC19B_O = . if (PC19B_O == 98 | PC19B_O == 99)
replace PC20 = . if (PC20 == 96 | PC20 == 98)
replace PC21_1 = . if (PC21_1 == 6)
replace PC21_2 = . if (PC21_2 == 6)
replace PC21_3 = . if (PC21_3 == 6)
replace PC21_4 = . if (PC21_4 == 6)
replace PC21_5 = . if (PC21_5 == 6)
replace PC21_6 = . if (PC21_6 == 6)
replace PC21_7 = . if (PC21_7 == 6)
replace PC22 = . if (PC22 >= 6 & PC22 <= 8)
replace PC23 = . if (PC23 == 96 | PC23 == 98)
replace PC24 = . if (PC24 == 6)
replace PC25 = . if (PC25 == 6 | PC25 == 7)
replace PC26 = . if (PC26 == 6 | PC26 == 7)
replace PC27 = . if (PC27 == 6 | PC27 == 7)
replace PC28 = . if (PC28 == 6 | PC28 == 7)
replace PC29A = . if (PC29A == 6 | PC29A == 7)
replace PC29B = . if (PC29B == 6 | PC29B == 7)
replace PC29C = . if (PC29C == 6 | PC29C == 7)
replace PC30 = . if (PC30 == 6)
replace PC31 = . if (PC31 == 6)
replace PC32 = . if (PC32 == 6)
replace PC33 = . if (PC33 == 6)
replace PC34A = . if (PC34A == 6)
replace PC34B = . if (PC34B == 6)
replace PC34C = . if (PC34C == 6)
replace PC34D = . if (PC34D == 6)
replace PC34E = . if (PC34E == 6)
replace PC35 = . if (PC35 == 6)
replace PC36_0 = . if (PC36_0 == 6 | PC36_0 == 7)
replace PC36_1 = . if (PC36_1 == 6 | PC36_1 == 7)
replace PC36_2 = . if (PC36_2 == 6 | PC36_2 == 7)
replace PC36_3 = . if (PC36_3 == 6 | PC36_3 == 7)
replace PC36_4 = . if (PC36_4 == 6 | PC36_4 == 7)
replace PC36_5 = . if (PC36_5 == 6 | PC36_5 == 7)
replace PC36_6 = . if (PC36_6 == 6 | PC36_6 == 7)
replace PC36_7 = . if (PC36_7 == 6 | PC36_7 == 7)
replace PC36_8 = . if (PC36_8 == 6 | PC36_8 == 7)
replace PC36_9 = . if (PC36_9 == 6 | PC36_9 == 7)
replace PC36_10 = . if (PC36_10 == 6 | PC36_10 == 7)
replace PC36_11 = . if (PC36_11 == 6 | PC36_11 == 7)
replace PC36_12 = . if (PC36_12 == 6 | PC36_12 == 7)
replace PC36_13 = . if (PC36_13 == 6 | PC36_13 == 7)
replace PC36_14 = . if (PC36_14 == 6 | PC36_14 == 7)
replace PC36_15 = . if (PC36_15 == 6 | PC36_15 == 7)
replace PC36_16 = . if (PC36_16 == 6 | PC36_16 == 7)
replace PC36_17 = . if (PC36_17 == 6 | PC36_17 == 7)
replace PC36_18 = . if (PC36_18 == 6 | PC36_18 == 7)
replace PC36_19 = . if (PC36_19 == 6 | PC36_19 == 7)
replace PC37 = . if (PC37 == 6 | PC37 == 8)
replace PC38 = . if (PC38 == 6 | PC38 == 8)
replace PC39 = . if (PC39 == 6 | PC39 == 8)
replace PC40 = . if (PC40 == 6 | PC40 == 8)
replace PC41 = . if (PC41 == 6 | PC41 == 8)
replace PC42A = . if (PC42A == 6)
replace PC42B = . if (PC42B == 6)
replace PC42C = . if (PC42C == 6)
replace PC42D = . if (PC42D == 6)
replace PC42E = . if (PC42E == 6)
replace PC43AA = . if (PC43AA == 6)
replace PC43AB = . if (PC43AB == 6)
replace PC43AC = . if (PC43AC == 6)
replace PC43AD = . if (PC43AD == 6)
replace PC43BA = . if (PC43BA == 6)
replace PC43BB = . if (PC43BB == 6)
replace PC44A = . if (PC44A == 6)
replace PC44B = . if (PC44B == 6)
replace PC44C = . if (PC44C == 6)
replace PC44D = . if (PC44D == 6)
replace PC45 = . if (PC45 == 6)
replace PC46 = . if (PC46 == 6)
replace PC47 = . if (PC47 == 6 | PC47 == 8)
replace PC48 = . if (PC48 == 96 | PC48 == 97)
replace PC49A_1 = . if (PC49A_1 == 6 | PC49A_1 == 8)
replace PC49A_2 = . if (PC49A_2 == 6 | PC49A_2 == 8)
replace PC49A_3 = . if (PC49A_3 == 6 | PC49A_3 == 8)
replace PC49B_1 = . if (PC49B_1 == 6 | PC49B_1 == 8)
replace PC49B_2 = . if (PC49B_2 == 6 | PC49B_2 == 8)
replace PC49B_3 = . if (PC49B_3 == 6 | PC49B_3 == 8)
replace PC49C_1 = . if (PC49C_1 == 6 | PC49C_1 == 8)
replace PC49C_2 = . if (PC49C_2 == 6 | PC49C_2 == 8)
replace PC49C_3 = . if (PC49C_3 == 6 | PC49C_3 == 8)
replace PC49D_1 = . if (PC49D_1 == 6 | PC49D_1 == 8)
replace PC49D_2 = . if (PC49D_2 == 6 | PC49D_2 == 8)
replace PC49D_3 = . if (PC49D_3 == 6 | PC49D_3 == 8)
replace PC49E_1 = . if (PC49E_1 == 6 | PC49E_1 == 8)
replace PC49E_2 = . if (PC49E_2 == 6 | PC49E_2 == 8)
replace PC49E_3 = . if (PC49E_3 == 6 | PC49E_3 == 8)
replace PC49F_1 = . if (PC49F_1 == 6 | PC49F_1 == 8)
replace PC49F_2 = . if (PC49F_2 == 6 | PC49F_2 == 8)
replace PC49F_3 = . if (PC49F_3 == 6 | PC49F_3 == 8)
replace PC50 = . if (PC50 == 6)
replace PC51 = . if (PC51 == 6)
replace PC53 = . if (PC53 == 6 | PC53 == 7)
replace PC54 = . if (PC54 >= 6 & PC54 <= 8)
replace PC55 = . if (PC55 == 6 | PC55 == 7)
replace PC58 = . if (PC58 >= 6 & PC58 <= 8)
replace PC59 = . if (PC59 >= 96 & PC59 <= 98)
replace PC60_1 = . if (PC60_1 == 6 | PC60_1 == 7)
replace PC60_2 = . if (PC60_2 == 6 | PC60_2 == 7)
replace PC60_3 = . if (PC60_3 == 6 | PC60_3 == 7)
replace PC60_4 = . if (PC60_4 == 6 | PC60_4 == 7)
replace PC60_5 = . if (PC60_5 == 6 | PC60_5 == 7)
replace PC60_6 = . if (PC60_6 == 6 | PC60_6 == 7)
replace PC60_7 = . if (PC60_7 == 6 | PC60_7 == 7)
replace PC60_8 = . if (PC60_8 == 6 | PC60_8 == 7)
replace PC60_9 = . if (PC60_9 == 6 | PC60_9 == 7)
replace PC60_10 = . if (PC60_10 == 6 | PC60_10 == 7)
replace PC60_11 = . if (PC60_11 == 6 | PC60_11 == 7)
replace PC60_12 = . if (PC60_12 == 6 | PC60_12 == 7)
replace PC60_13 = . if (PC60_13 == 6 | PC60_13 == 7)
replace PC60_14 = . if (PC60_14 == 6 | PC60_14 == 7)
replace PC60_15 = . if (PC60_15 == 6 | PC60_15 == 7)
replace PC60_16 = . if (PC60_16 == 6 | PC60_16 == 7)
replace PC60_17 = . if (PC60_17 == 6 | PC60_17 == 7)
replace PC60_18 = . if (PC60_18 == 6 | PC60_18 == 7)
replace PC61A = . if (PC61A == 6 | PC61A == 7)
replace PC61B = . if (PC61B == 6 | PC61B == 7)
replace PC61C = . if (PC61C == 6 | PC61C == 7)
replace PC61D = . if (PC61D == 6 | PC61D == 7)
replace PC62_1 = . if (PC62_1 == 6 | PC62_1 == 7)
replace PC62_2 = . if (PC62_2 == 6 | PC62_2 == 7)
replace PC62_4 = . if (PC62_4 == 6 | PC62_4 == 7)
replace PC62_5 = . if (PC62_5 == 6 | PC62_5 == 7)
replace PC62_8 = . if (PC62_8 == 6 | PC62_8 == 7)
replace PC62_10 = . if (PC62_10 == 6 | PC62_10 == 7)
replace PC62_11 = . if (PC62_11 == 6 | PC62_11 == 7)
replace PC63 = . if (PC63 == 6 | PC63 == 8)
replace PC64 = . if (PC64 >= 6 & PC64 <= 8)
replace PC65_M = . if (PC65_M >= 96 & PC65_M <= 98)
replace PC65_Y = . if (PC65_Y >= 96 & PC65_Y <= 98)
replace PC66_M = . if (PC66_M >= 96 & PC66_M <= 98)
replace PC66_Y = . if (PC66_Y >= 96 & PC66_Y <= 98)
replace PC68_M = . if (PC68_M >= 96 & PC68_M <= 98)
replace PC68_Y = . if (PC68_Y >= 96 & PC68_Y <= 98)
replace PD2 = . if (PD2 == 7 | PD2 == 8)
replace PD3 = . if (PD3 >= 6 & PD3 <= 8)
replace PD4A = . if (PD4A == 7 | PD4A == 8)
replace PD4B = . if (PD4B >= 7 & PD4B <= 9)
replace PD4C = . if (PD4C == 6 | PD4C == 7 | PD4C == 9)
replace PD4D = . if (PD4D >= 7 & PD4D <= 9)
replace PD4E = . if (PD4E == 7 | PD4E == 8)
replace PD4F = . if (PD4F == 7 | PD4F == 8)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

