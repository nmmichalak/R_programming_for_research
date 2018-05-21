*-------------------------------------------------------------------------*
*                                                                          
*                     SPSS SETUP FILE FOR ICPSR 21600
*        NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
*                   (ADD HEALTH), 1994-2008 [PUBLIC USE]
*           (DATASET 0001: WAVE I: IN-HOME QUESTIONNAIRE, PUBLIC
*                               USE SAMPLE)
* 
*
*  SPSS setup sections are provided for the ASCII version of this data
*  collection.  These sections are listed below:
*
*  DATA LIST:  assigns the name, type, decimal specification (if any),
*  and specifies the beginning and ending column locations for each
*  variable in the data file. Users must replace the "data-filename"
*  in the DATA LIST statement with a filename specifying the directory
*  on the user's computer system in which the downloaded and unzipped
*  data file is physically located (e.g., "c:\temp\21600-0001-data.txt").
*
*  VARIABLE LABELS:  assigns descriptive labels to all variables.
*  Labels and variable names may be identical for some data files.
*
*  MISSING VALUES: declares user-defined missing values. Not all
*  variables in this data set necessarily have user-defined missing
*  values. These values can be treated specially in data transformations,
*  statistical calculations, and case selection.
*
*  VALUE LABELS: assigns descriptive labels to codes found in the data
*  file.  Not all codes necessarily have assigned value labels.
*
*  VARIABLE LEVEL: assigns measurement level to each variable (scale,
*  nominal, or ordinal).
*
*  NOTE:  Users should modify this setup file to suit their specific
*  needs. The MISSING VALUES section has been commented out (i.e., '*').
*  To include the MISSING VALUES section in the final SPSS setup, remove
*  the comment indicators from the desired section.
*
*  CREATING A PERMANENT SPSS DATA FILE: If users wish to create and save
*  an SPSS data file for further analysis using SPSS for Windows, the
*  necessary "SAVE OUTFILE" command is provided in the last line of
*  this file.  To activate the command, users must delete the leading
*  asterisk (*) and replace "spss-filename" with a filename specifying
*  the location on the user's computer system to which the new data file
*  will be saved (e.g., SAVE OUTFILE="c:\spsswin\data\da21600-0001.sav").
*
*-------------------------------------------------------------------------.

* SPSS FILE HANDLE AND DATA LIST COMMANDS.

FILE HANDLE DATA / NAME="data-filename" LRECL=3630.
DATA LIST FILE=DATA /
             AID 1-8 (A)             IMONTH 9-10
              IDAY 11-12             IYEAR 13-14               SCH_YR 15
              BIO_SEX 16          VERSION 17 (A)                SMP01 18
                SMP03 19            H1GI1M 20-21            H1GI1Y 22-23
                H1GI2 24             H1GI3 25-26                H1GI4 27
               H1GI5A 28               H1GI5B 29               H1GI5C 30
               H1GI5D 31               H1GI5E 32               H1GI5F 33
               H1GI6A 34               H1GI6B 35               H1GI6C 36
               H1GI6D 37               H1GI6E 38               H1GI7A 39
               H1GI7B 40               H1GI7C 41               H1GI7D 42
               H1GI7E 43               H1GI7F 44               H1GI7G 45
                H1GI8 46                H1GI9 47               H1GI10 48
               H1GI11 49            H1GI12 50-52           H1GI13M 53-54
           H1GI13Y 55-56               H1GI14 57               H1GI15 58
           H1GI16M 59-60           H1GI16Y 61-62               H1GI18 63
               H1GI19 64            H1GI20 65-66            H1GI21 67-68
                H1DA1 69                H1DA2 70                H1DA3 71
                H1DA4 72                H1DA5 73                H1DA6 74
                H1DA7 75             H1DA8 76-78             H1DA9 79-81
            H1DA10 82-84            H1DA11 85-87                H1GH1 88
               H1GH1A 89                H1GH2 90                H1GH3 91
                H1GH4 92                H1GH5 93                H1GH6 94
                H1GH7 95                H1GH8 96                H1GH9 97
               H1GH10 98               H1GH11 99              H1GH12 100
              H1GH13 101              H1GH14 102              H1GH15 103
              H1GH16 104              H1GH17 105              H1GH18 106
              H1GH19 107              H1GH20 108              H1GH21 109
              H1GH22 110             H1GH23A 111             H1GH23B 112
             H1GH23C 113             H1GH23D 114             H1GH23E 115
             H1GH23F 116             H1GH23G 117             H1GH23H 118
             H1GH23I 119             H1GH23J 120              H1GH24 121
              H1GH25 122              H1GH26 123             H1GH27A 124
             H1GH27B 125             H1GH27C 126             H1GH27D 127
             H1GH27E 128             H1GH27F 129             H1GH27G 130
             H1GH27H 131             H1GH27I 132             H1GH27J 133
              H1GH28 134              H1GH29 135             H1GH30A 136
             H1GH30B 137             H1GH30C 138             H1GH30D 139
             H1GH30E 140             H1GH30F 141             H1GH30G 142
             H1GH31A 143             H1GH31B 144             H1GH31C 145
             H1GH31D 146             H1GH31F 147             H1GH31G 148
              H1GH32 149              H1GH33 150              H1GH34 151
              H1GH35 152              H1GH36 153              H1GH37 154
              H1GH38 155              H1GH39 156              H1GH40 157
              H1GH41 158              H1GH42 159              H1GH43 160
              H1GH44 161          H1GH45 162-163              H1GH46 164
          H1GH47 165-166              H1GH48 167              H1GH49 168
      H1GH50 169-174 (A)          H1GH51 175-176              H1GH52 177
              H1GH53 178              H1GH54 179              H1GH55 180
              H1GH56 181              H1GH57 182              H1GH58 183
         H1GH59A 184-185         H1GH59B 186-187          H1GH60 188-190
               H1TS1 191               H1TS2 192               H1TS3 193
               H1TS4 194               H1TS5 195               H1TS6 196
               H1TS7 197               H1TS8 198               H1TS9 199
              H1TS10 200              H1TS11 201              H1TS12 202
              H1TS13 203              H1TS14 204              H1TS15 205
              H1TS16 206              H1TS17 207               H1ED1 208
           H1ED2 209-211               H1ED3 212              H1ED4A 213
              H1ED4B 214              H1ED4C 215              H1ED4D 216
              H1ED4E 217              H1ED4F 218              H1ED4G 219
              H1ED4H 220              H1ED4I 221              H1ED4J 222
              H1ED4K 223              H1ED4M 224               H1ED5 225
              H1ED6A 226              H1ED6B 227              H1ED6C 228
              H1ED6D 229              H1ED6E 230              H1ED6F 231
              H1ED6G 232              H1ED6H 233              H1ED6I 234
              H1ED6J 235              H1ED6K 236              H1ED6L 237
              H1ED6M 238               H1ED7 239           H1ED8 240-241
               H1ED9 242          H1ED10 243-244          H1ED11 245-246
          H1ED12 247-248          H1ED13 249-250          H1ED14 251-252
              H1ED15 253              H1ED16 254              H1ED17 255
              H1ED18 256              H1ED19 257              H1ED20 258
              H1ED21 259              H1ED22 260              H1ED23 261
              H1ED24 262               H1PL1 263               H1PL2 264
               H1PL3 265               H1PL4 266               H1PL5 267
               H1PL6 268               H1PL7 269               H1PL8 270
               H1PL9 271              H1PL10 272              H1PL11 273
              H1PL12 274              H1PL13 275              H1PL14 276
              H1PL15 277              H1PL16 278              H1PL17 279
              H1PL18 280              H1PL19 281              H1PL20 282
              H1PL21 283              H1PL22 284              H1PL23 285
              H1PL24 286              H1PL25 287              H1PL26 288
              H1PL29 289              H1PL30 290              H1PL31 291
              H1PL33 292              H1PL34 293              H1PL37 294
              H1PL38 295               H1HS1 296              H1HS2A 297
              H1HS2B 298              H1HS2C 299              H1HS2D 300
              H1HS2E 301               H1HS3 302              H1HS4A 303
              H1HS4B 304              H1HS4C 305              H1HS4D 306
              H1HS4E 307               H1HS5 308              H1HS6A 309
              H1HS6B 310              H1HS6C 311              H1HS6D 312
              H1HS6E 313               H1HS7 314              H1HS8A 315
              H1HS8B 316              H1HS8C 317              H1HS8D 318
              H1HS8E 319               H1HS9 320             H1HS10A 321
             H1HS10B 322             H1HS10C 323             H1HS10D 324
             H1HS10E 325              H1HS11 326             H1HS12A 327
             H1HS12B 328             H1HS12C 329             H1HS12D 330
             H1HS12E 331               H1RP1 332               H1RP2 333
               H1RP3 334               H1RP4 335               H1RP5 336
               H1RP6 337           H1SE1 338-339           H1SE2 340-341
           H1SE3 342-343           H1SE4 344-345               H1FS1 346
               H1FS2 347               H1FS3 348               H1FS4 349
               H1FS5 350               H1FS6 351               H1FS7 352
               H1FS8 353               H1FS9 354              H1FS10 355
              H1FS11 356              H1FS12 357              H1FS13 358
              H1FS14 359              H1FS15 360              H1FS16 361
              H1FS17 362              H1FS18 363              H1FS19 364
              H1HR2A 365          H1HR3A 366-367          H1HR4A 368-369
          H1HR5A 370-371          H1HR6A 372-373      H1HR7A 374-378 (1)
          H1HR8A 379-381              H1HR9A 382         H1HR10A 383-384
         H1HR11A 385-386              H1HR2B 387          H1HR3B 388-389
          H1HR4B 390-391          H1HR5B 392-393          H1HR6B 394-395
      H1HR7B 396-400 (1)          H1HR8B 401-403              H1HR9B 404
         H1HR10B 405-406         H1HR11B 407-408              H1HR2C 409
          H1HR3C 410-411          H1HR4C 412-413          H1HR5C 414-415
          H1HR6C 416-417          H1HR7C 418-420          H1HR8C 421-423
              H1HR9C 424         H1HR10C 425-426         H1HR11C 427-428
              H1HR2D 429          H1HR3D 430-431          H1HR4D 432-433
          H1HR5D 434-435          H1HR6D 436-437          H1HR7D 438-440
          H1HR8D 441-443              H1HR9D 444         H1HR10D 445-446
         H1HR11D 447-448              H1HR2E 449          H1HR3E 450-451
          H1HR4E 452-453          H1HR5E 454-455          H1HR6E 456-457
          H1HR7E 458-460          H1HR8E 461-463              H1HR9E 464
         H1HR10E 465-466         H1HR11E 467-468              H1HR2F 469
          H1HR3F 470-471          H1HR4F 472-473          H1HR5F 474-475
          H1HR6F 476-477          H1HR7F 478-480          H1HR8F 481-483
              H1HR9F 484         H1HR10F 485-486         H1HR11F 487-488
              H1HR2G 489          H1HR3G 490-491          H1HR4G 492-493
          H1HR5G 494-495          H1HR6G 496-497          H1HR7G 498-500
          H1HR8G 501-503              H1HR9G 504         H1HR10G 505-506
         H1HR11G 507-508              H1HR2H 509          H1HR3H 510-511
          H1HR4H 512-513          H1HR5H 514-515          H1HR6H 516-517
          H1HR7H 518-520          H1HR8H 521-523              H1HR9H 524
         H1HR10H 525-526         H1HR11H 527-528              H1HR2I 529
          H1HR3I 530-531          H1HR4I 532-533          H1HR5I 534-535
          H1HR6I 536-537          H1HR7I 538-540          H1HR8I 541-543
              H1HR9I 544         H1HR10I 545-546         H1HR11I 547-548
              H1HR2J 549          H1HR3J 550-551          H1HR4J 552-553
          H1HR5J 554-555          H1HR6J 556-557          H1HR7J 558-560
          H1HR8J 561-563              H1HR9J 564         H1HR10J 565-566
         H1HR11J 567-568              H1HR2K 569          H1HR3K 570-571
          H1HR4K 572-573          H1HR5K 574-575          H1HR6K 576-577
          H1HR7K 578-580          H1HR8K 581-583              H1HR9K 584
         H1HR10K 585-586         H1HR11K 587-588              H1HR2L 589
          H1HR3L 590-591          H1HR4L 592-593          H1HR5L 594-595
          H1HR6L 596-597          H1HR7L 598-600          H1HR8L 601-603
              H1HR9L 604         H1HR10L 605-606         H1HR11L 607-608
              H1HR2M 609          H1HR3M 610-611          H1HR4M 612-613
          H1HR5M 614-615          H1HR6M 616-617          H1HR7M 618-620
          H1HR8M 621-623              H1HR9M 624         H1HR10M 625-626
         H1HR11M 627-628              H1HR2N 629          H1HR3N 630-631
          H1HR4N 632-633          H1HR5N 634-635          H1HR6N 636-637
          H1HR7N 638-640          H1HR8N 641-643              H1HR9N 644
         H1HR10N 645-646         H1HR11N 647-648              H1HR2O 649
          H1HR3O 650-651          H1HR4O 652-653          H1HR5O 654-655
          H1HR6O 656-657          H1HR7O 658-660          H1HR8O 661-663
              H1HR9O 664         H1HR10O 665-666         H1HR11O 667-668
              H1HR2P 669          H1HR3P 670-671          H1HR4P 672-673
          H1HR5P 674-675          H1HR6P 676-677          H1HR7P 678-680
          H1HR8P 681-683              H1HR9P 684         H1HR10P 685-686
         H1HR11P 687-688              H1HR2Q 689          H1HR3Q 690-691
          H1HR4Q 692-693          H1HR5Q 694-695          H1HR6Q 696-697
          H1HR7Q 698-700          H1HR8Q 701-703              H1HR9Q 704
         H1HR10Q 705-706         H1HR11Q 707-708              H1HR2R 709
          H1HR3R 710-711          H1HR4R 712-713          H1HR5R 714-715
          H1HR6R 716-717          H1HR7R 718-720          H1HR8R 721-723
              H1HR9R 724         H1HR10R 725-726         H1HR11R 727-728
              H1HR2S 729          H1HR3S 730-731          H1HR4S 732-733
          H1HR5S 734-735          H1HR6S 736-737          H1HR7S 738-740
          H1HR8S 741-743              H1HR9S 744         H1HR10S 745-746
         H1HR11S 747-748              H1HR2T 749          H1HR3T 750-751
          H1HR4T 752-753          H1HR5T 754-755          H1HR6T 756-757
          H1HR7T 758-760          H1HR8T 761-763              H1HR9T 764
         H1HR10T 765-766         H1HR11T 767-768          H1HR12 769-770
          H1HR13 771-772          H1HR14 773-774          H1HR15 775-776
               H1NM1 777               H1NM2 778           H1NM3 779-780
           H1NM4 781-782               H1NM5 783               H1NM6 784
               H1NM7 785           H1NM8 786-787           H1NM9 788-789
              H1NM10 790              H1NM11 791             H1NM12A 792
             H1NM12B 793             H1NM12C 794             H1NM12D 795
             H1NM12E 796             H1NM12F 797             H1NM12G 798
             H1NM12H 799             H1NM12I 800             H1NM12J 801
              H1NM13 802              H1NM14 803               H1NF1 804
               H1NF2 805           H1NF3 806-807           H1NF4 808-809
               H1NF5 810               H1NF6 811               H1NF7 812
           H1NF8 813-814           H1NF9 815-816              H1NF10 817
              H1NF11 818             H1NF12A 819             H1NF12B 820
             H1NF12C 821             H1NF12D 822             H1NF12E 823
             H1NF12F 824             H1NF12G 825             H1NF12H 826
             H1NF12I 827             H1NF12J 828              H1NF13 829
              H1NF14 830           H1RM1 831-832               H1RM2 833
           H1RM3 834-836           H1RM4 837-838               H1RM5 839
               H1RM6 840           H1RM7 841-843               H1RM8 844
               H1RM9 845              H1RM10 846          H1RM11 847-848
          H1RM12 849-850          H1RM13 851-852              H1RM14 853
           H1RF1 854-855               H1RF2 856           H1RF3 857-859
           H1RF4 860-861               H1RF5 862               H1RF6 863
           H1RF7 864-866               H1RF8 867               H1RF9 868
              H1RF10 869          H1RF11 870-871          H1RF12 872-873
          H1RF13 874-875              H1RF14 876               H1WP1 877
               H1WP2 878               H1WP3 879               H1WP4 880
               H1WP5 881               H1WP6 882               H1WP7 883
           H1WP8 884-885               H1WP9 886              H1WP10 887
              H1WP11 888              H1WP12 889              H1WP13 890
              H1WP14 891              H1WP15 892              H1WP16 893
             H1WP17A 894             H1WP17B 895             H1WP17C 896
             H1WP17D 897             H1WP17E 898             H1WP17F 899
             H1WP17G 900             H1WP17H 901             H1WP17I 902
             H1WP17J 903             H1WP17K 904             H1WP18A 905
             H1WP18B 906             H1WP18C 907             H1WP18D 908
             H1WP18E 909             H1WP18F 910             H1WP18G 911
             H1WP18H 912             H1WP18I 913             H1WP18J 914
             H1WP18K 915               H1MO1 916               H1MO2 917
               H1MO3 918               H1MO4 919               H1MO5 920
               H1MO6 921               H1MO7 922               H1MO8 923
               H1MO9 924              H1MO10 925              H1MO11 926
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
              H1MF2A 987          H1MF3A 988-989              H1MF4A 990
              H1MF5A 991              H1MF6A 992              H1MF7A 993
              H1MF8A 994              H1MF9A 995             H1MF10A 996
              H1MF2B 997          H1MF3B 998-999             H1MF4B 1000
             H1MF5B 1001             H1MF6B 1002             H1MF7B 1003
             H1MF8B 1004             H1MF9B 1005            H1MF10B 1006
             H1MF2C 1007        H1MF3C 1008-1009             H1MF4C 1010
             H1MF5C 1011             H1MF6C 1012             H1MF7C 1013
             H1MF8C 1014             H1MF9C 1015            H1MF10C 1016
             H1MF2D 1017        H1MF3D 1018-1019             H1MF4D 1020
             H1MF5D 1021             H1MF6D 1022             H1MF7D 1023
             H1MF8D 1024             H1MF9D 1025            H1MF10D 1026
             H1MF2E 1027        H1MF3E 1028-1029             H1MF4E 1030
             H1MF5E 1031             H1MF6E 1032             H1MF7E 1033
             H1MF8E 1034             H1MF9E 1035            H1MF10E 1036
             H1FF2A 1037        H1FF3A 1038-1039             H1FF4A 1040
             H1FF5A 1041             H1FF6A 1042             H1FF7A 1043
             H1FF8A 1044             H1FF9A 1045            H1FF10A 1046
             H1FF2B 1047        H1FF3B 1048-1049             H1FF4B 1050
             H1FF5B 1051             H1FF6B 1052             H1FF7B 1053
             H1FF8B 1054             H1FF9B 1055            H1FF10B 1056
             H1FF2C 1057        H1FF3C 1058-1059             H1FF4C 1060
             H1FF5C 1061             H1FF6C 1062             H1FF7C 1063
             H1FF8C 1064             H1FF9C 1065            H1FF10C 1066
             H1FF2D 1067        H1FF3D 1068-1069             H1FF4D 1070
             H1FF5D 1071             H1FF6D 1072             H1FF7D 1073
             H1FF8D 1074             H1FF9D 1075            H1FF10D 1076
             H1FF2E 1077        H1FF3E 1078-1079             H1FF4E 1080
             H1FF5E 1081             H1FF6E 1082             H1FF7E 1083
             H1FF8E 1084             H1FF9E 1085            H1FF10E 1086
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
      H1ID2_16 1135-1136      H1ID2_17 1137-1138              H1ID5 1139
              H1ID6 1140              H1RR1 1141            RR_FLAG 1142
              H1LR1 1143              H1LR2 1144              H1LR3 1145
              H1LR4 1146              H1CO1 1147        H1CO2M 1148-1149
        H1CO2Y 1150-1151              H1CO3 1152        H1CO4A 1153-1154
        H1CO4B 1155-1156        H1CO4C 1157-1158        H1CO5M 1159-1160
        H1CO5Y 1161-1162              H1CO6 1163        H1CO7A 1164-1165
        H1CO7B 1166-1167        H1CO7C 1168-1169              H1CO8 1170
              H1CO9 1171             H1CO10 1172             H1CO11 1173
       H1CO12A 1174-1175       H1CO12B 1176-1177       H1CO12C 1178-1179
             H1CO13 1180       H1CO14M 1181-1182       H1CO14Y 1183-1184
             H1CO15 1185            H1CO16A 1186            H1CO16B 1187
            H1CO16C 1188            H1CO16D 1189            H1CO16E 1190
            H1CO16F 1191            H1CO16G 1192            H1CO16H 1193
            H1CO16I 1194            H1CO16J 1195            H1CO17A 1196
            H1CO17B 1197            H1CO17C 1198            H1CO17D 1199
            H1CO17E 1200            H1CO17F 1201            H1CO17G 1202
            H1CO17H 1203            H1CO17I 1204            H1CO17J 1205
      H1RI1M_1 1206-1207      H1RI1Y_1 1208-1209       H1RI2_1 1210-1211
       H1RI3_1 1212-1213       H1RI4_1 1214-1215      H1RI5A_1 1216-1217
            H1RI6_1 1218            H1RI7_1 1219           H1RI8A_1 1220
           H1RI8B_1 1221           H1RI8C_1 1222           H1RI8D_1 1223
           H1RI8E_1 1224           H1RI8F_1 1225           H1RI8G_1 1226
           H1RI8H_1 1227       H1RI9_1 1228-1229           H1RI10_1 1230
      H1RI11M1 1231-1232      H1RI11Y1 1233-1234      H1RI12_1 1235-1236
           H1RI13_1 1237           H1RI14_1 1238      H1RI15_1 1239-1240
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
           H1RI21Q1 1277           H1RI21R1 1278      H1RI22A1 1279-1280
      H1RI22B1 1281-1282      H1RI22C1 1283-1284      H1RI22D1 1285-1286
      H1RI22E1 1287-1288      H1RI22F1 1289-1290      H1RI22G1 1291-1292
      H1RI22H1 1293-1294      H1RI22I1 1295-1296      H1RI22J1 1297-1298
      H1RI22K1 1299-1300      H1RI22L1 1301-1302      H1RI22M1 1303-1304
      H1RI22N1 1305-1306      H1RI22O1 1307-1308      H1RI22P1 1309-1310
      H1RI22Q1 1311-1312      H1RI22R1 1313-1314           H1RI24A1 1315
      H1RI25M1 1316-1317      H1RI25Y1 1318-1319      H1RI26M1 1320-1321
      H1RI26Y1 1322-1323           H1RI27_1 1324           H1RI28_1 1325
      H1RI29A1 1326-1327      H1RI29B1 1328-1329      H1RI29C1 1330-1331
           H1RI30_1 1332           H1RI31_1 1333           H1RI32_1 1334
      H1RI33A1 1335-1336      H1RI33B1 1337-1338      H1RI33C1 1339-1340
           H1RI34_1 1341           H1RI35_1 1342           H1RI36_1 1343
           H1RI37_1 1344      H1RI38A1 1345-1346      H1RI38B1 1347-1348
      H1RI38C1 1349-1350           H1RI39_1 1351           H1RI40_1 1352
      H1RI41_1 1353-1356      H1RI1M_2 1357-1358      H1RI1Y_2 1359-1360
       H1RI2_2 1361-1362       H1RI3_2 1363-1364       H1RI4_2 1365-1366
      H1RI5A_2 1367-1368            H1RI6_2 1369            H1RI7_2 1370
           H1RI8A_2 1371           H1RI8B_2 1372           H1RI8C_2 1373
           H1RI8D_2 1374           H1RI8E_2 1375           H1RI8F_2 1376
           H1RI8G_2 1377           H1RI8H_2 1378       H1RI9_2 1379-1380
           H1RI10_2 1381      H1RI11M2 1382-1383      H1RI11Y2 1384-1385
      H1RI12_2 1386-1387           H1RI13_2 1388           H1RI14_2 1389
      H1RI15_2 1390-1391           H1RI16_2 1392           H1RI17A2 1393
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
           H1RI24A2 1466      H1RI25M2 1467-1468      H1RI25Y2 1469-1470
      H1RI26M2 1471-1472      H1RI26Y2 1473-1474           H1RI27_2 1475
           H1RI28_2 1476      H1RI29A2 1477-1478      H1RI29B2 1479-1480
      H1RI29C2 1481-1482           H1RI30_2 1483           H1RI31_2 1484
           H1RI32_2 1485      H1RI33A2 1486-1487      H1RI33B2 1488-1489
      H1RI33C2 1490-1491           H1RI34_2 1492           H1RI35_2 1493
           H1RI36_2 1494           H1RI37_2 1495      H1RI38A2 1496-1497
      H1RI38B2 1498-1499      H1RI38C2 1500-1501           H1RI39_2 1502
           H1RI40_2 1503      H1RI41_2 1504-1507      H1RI1M_3 1508-1509
      H1RI1Y_3 1510-1511       H1RI2_3 1512-1513       H1RI3_3 1514-1515
       H1RI4_3 1516-1517      H1RI5A_3 1518-1519            H1RI6_3 1520
            H1RI7_3 1521           H1RI8A_3 1522           H1RI8B_3 1523
           H1RI8C_3 1524           H1RI8D_3 1525           H1RI8E_3 1526
           H1RI8F_3 1527           H1RI8G_3 1528           H1RI8H_3 1529
       H1RI9_3 1530-1531           H1RI10_3 1532      H1RI11M3 1533-1534
      H1RI11Y3 1535-1536      H1RI12_3 1537-1538           H1RI13_3 1539
           H1RI14_3 1540      H1RI15_3 1541-1542           H1RI16_3 1543
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
           H1RI21R3 1580      H1RI22A3 1581-1582      H1RI22B3 1583-1584
      H1RI22C3 1585-1586      H1RI22D3 1587-1588      H1RI22E3 1589-1590
      H1RI22F3 1591-1592      H1RI22G3 1593-1594      H1RI22H3 1595-1596
      H1RI22I3 1597-1598      H1RI22J3 1599-1600      H1RI22K3 1601-1602
      H1RI22L3 1603-1604      H1RI22M3 1605-1606      H1RI22N3 1607-1608
      H1RI22O3 1609-1610      H1RI22P3 1611-1612      H1RI22Q3 1613-1614
      H1RI22R3 1615-1616           H1RI24A3 1617      H1RI25M3 1618-1619
      H1RI25Y3 1620-1621      H1RI26M3 1622-1623      H1RI26Y3 1624-1625
           H1RI27_3 1626           H1RI28_3 1627      H1RI29A3 1628-1629
      H1RI29B3 1630-1631      H1RI29C3 1632-1633           H1RI30_3 1634
           H1RI31_3 1635           H1RI32_3 1636      H1RI33A3 1637-1638
      H1RI33B3 1639-1640      H1RI33C3 1641-1642           H1RI34_3 1643
           H1RI35_3 1644           H1RI36_3 1645           H1RI37_3 1646
      H1RI38A3 1647-1648      H1RI38B3 1649-1650      H1RI38C3 1651-1652
           H1RI39_3 1653           H1RI40_3 1654      H1RI41_3 1655-1658
            RICARD1 1659            RICARD2 1660            RICARD3 1661
              H1NR1 1662              H1NR2 1663              H1NR3 1664
         H1NR4 1665-1667              H1NR5 1668         H1NR6 1669-1671
         H1NR7 1672-1674         H1NR8 1675-1677           H1NR10_1 1678
           H1NR11_1 1679           H1NR12_1 1680           NRRXFLG1 1681
      H1RX1M_1 1682-1683      H1RX1Y_1 1684-1685       H1RX2_1 1686-1687
       H1RX3_1 1688-1689       H1RX4_1 1690-1691      H1RX5A_1 1692-1693
            H1RX6_1 1694            H1RX7_1 1695           H1RX8A_1 1696
           H1RX8B_1 1697           H1RX8C_1 1698           H1RX8D_1 1699
           H1RX8E_1 1700           H1RX8F_1 1701           H1RX8G_1 1702
           H1RX8H_1 1703       H1RX9_1 1704-1705           H1RX10_1 1706
      H1RX11M1 1707-1708      H1RX11Y1 1709-1710      H1RX12_1 1711-1712
           H1RX13_1 1713           H1RX14_1 1714      H1RX15_1 1715-1716
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
           H1RX21Q1 1753           H1RX21R1 1754      H1RX22A1 1755-1756
      H1RX22B1 1757-1758      H1RX22C1 1759-1760      H1RX22D1 1761-1762
      H1RX22E1 1763-1764      H1RX22F1 1765-1766      H1RX22G1 1767-1768
      H1RX22H1 1769-1770      H1RX22I1 1771-1772      H1RX22J1 1773-1774
      H1RX22K1 1775-1776      H1RX22L1 1777-1778      H1RX22M1 1779-1780
      H1RX22N1 1781-1782      H1RX22O1 1783-1784      H1RX22P1 1785-1786
      H1RX22Q1 1787-1788      H1RX22R1 1789-1790           H1RX24A1 1791
      H1RX25M1 1792-1793      H1RX25Y1 1794-1795      H1RX26M1 1796-1797
      H1RX26Y1 1798-1799           H1RX27_1 1800           H1RX28_1 1801
      H1RX29A1 1802-1803      H1RX29B1 1804-1805      H1RX29C1 1806-1807
           H1RX30_1 1808           H1RX31_1 1809           H1RX32_1 1810
      H1RX33A1 1811-1812      H1RX33B1 1813-1814      H1RX33C1 1815-1816
           H1RX34_1 1817           H1RX35_1 1818           H1RX36_1 1819
           H1RX37_1 1820      H1RX38A1 1821-1822      H1RX38B1 1823-1824
      H1RX38C1 1825-1826           H1RX39_1 1827           H1RX40_1 1828
      H1RX41_1 1829-1832      H1NR13_1 1833-1834           H1NR14_1 1835
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
      H1NR24Y1 1872-1873           H1NR25_1 1874           H1NR26_1 1875
      H1NR27A1 1876-1877      H1NR27B1 1878-1879      H1NR27C1 1880-1881
           H1NR28_1 1882           H1NR29_1 1883           H1NR30_1 1884
      H1NR31A1 1885-1886      H1NR31B1 1887-1888      H1NR31C1 1889-1890
           H1NR32_1 1891           H1NR33_1 1892           H1NR34_1 1893
           H1NR35_1 1894      H1NR36A1 1895-1896      H1NR36B1 1897-1898
      H1NR36C1 1899-1900           H1NR37_1 1901           H1NR38_1 1902
      H1NR39_1 1903-1905           H1NR40_1 1906           H1NR41_1 1907
           H1NR42_1 1908      H1NR43_1 1909-1910           H1NR10_2 1911
           H1NR11_2 1912           H1NR12_2 1913           NRRXFLG2 1914
      H1RX1M_2 1915-1916      H1RX1Y_2 1917-1918       H1RX2_2 1919-1920
       H1RX3_2 1921-1922       H1RX4_2 1923-1924      H1RX5A_2 1925-1926
            H1RX6_2 1927            H1RX7_2 1928           H1RX8A_2 1929
           H1RX8B_2 1930           H1RX8C_2 1931           H1RX8D_2 1932
           H1RX8E_2 1933           H1RX8F_2 1934           H1RX8G_2 1935
           H1RX8H_2 1936       H1RX9_2 1937-1938           H1RX10_2 1939
      H1RX11M2 1940-1941      H1RX11Y2 1942-1943      H1RX12_2 1944-1945
           H1RX13_2 1946           H1RX14_2 1947      H1RX15_2 1948-1949
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
           H1RX21Q2 1986           H1RX21R2 1987      H1RX22A2 1988-1989
      H1RX22B2 1990-1991      H1RX22C2 1992-1993      H1RX22D2 1994-1995
      H1RX22E2 1996-1997      H1RX22F2 1998-1999      H1RX22G2 2000-2001
      H1RX22H2 2002-2003      H1RX22I2 2004-2005      H1RX22J2 2006-2007
      H1RX22K2 2008-2009      H1RX22L2 2010-2011      H1RX22M2 2012-2013
      H1RX22N2 2014-2015      H1RX22O2 2016-2017      H1RX22P2 2018-2019
      H1RX22Q2 2020-2021      H1RX22R2 2022-2023           H1RX24A2 2024
      H1RX25M2 2025-2026      H1RX25Y2 2027-2028      H1RX26M2 2029-2030
      H1RX26Y2 2031-2032           H1RX27_2 2033           H1RX28_2 2034
      H1RX29A2 2035-2036      H1RX29B2 2037-2038      H1RX29C2 2039-2040
           H1RX30_2 2041           H1RX31_2 2042           H1RX32_2 2043
      H1RX33A2 2044-2045      H1RX33B2 2046-2047      H1RX33C2 2048-2049
           H1RX34_2 2050           H1RX35_2 2051           H1RX36_2 2052
           H1RX37_2 2053      H1RX38A2 2054-2055      H1RX38B2 2056-2057
      H1RX38C2 2058-2059           H1RX39_2 2060           H1RX40_2 2061
      H1RX41_2 2062-2065      H1NR13_2 2066-2067           H1NR14_2 2068
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
      H1NR24Y2 2105-2106           H1NR25_2 2107           H1NR26_2 2108
      H1NR27A2 2109-2110      H1NR27B2 2111-2112      H1NR27C2 2113-2114
           H1NR28_2 2115           H1NR29_2 2116           H1NR30_2 2117
      H1NR31A2 2118-2119      H1NR31B2 2120-2121      H1NR31C2 2122-2123
           H1NR32_2 2124           H1NR33_2 2125           H1NR34_2 2126
           H1NR35_2 2127      H1NR36A2 2128-2129      H1NR36B2 2130-2131
      H1NR36C2 2132-2133           H1NR37_2 2134           H1NR38_2 2135
      H1NR39_2 2136-2138           H1NR40_2 2139           H1NR41_2 2140
           H1NR42_2 2141      H1NR43_2 2142-2143           H1NR10_3 2144
           H1NR11_3 2145           H1NR12_3 2146           NRRXFLG3 2147
      H1RX1M_3 2148-2149      H1RX1Y_3 2150-2151       H1RX2_3 2152-2153
       H1RX3_3 2154-2155       H1RX4_3 2156-2157      H1RX5A_3 2158-2159
            H1RX6_3 2160            H1RX7_3 2161           H1RX8A_3 2162
           H1RX8B_3 2163           H1RX8C_3 2164           H1RX8D_3 2165
           H1RX8E_3 2166           H1RX8F_3 2167           H1RX8G_3 2168
           H1RX8H_3 2169       H1RX9_3 2170-2171           H1RX10_3 2172
      H1RX11M3 2173-2174      H1RX11Y3 2175-2176      H1RX12_3 2177-2178
           H1RX13_3 2179           H1RX14_3 2180      H1RX15_3 2181-2182
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
           H1RX21Q3 2219           H1RX21R3 2220      H1RX22A3 2221-2222
      H1RX22B3 2223-2224      H1RX22C3 2225-2226      H1RX22D3 2227-2228
      H1RX22E3 2229-2230      H1RX22F3 2231-2232      H1RX22G3 2233-2234
      H1RX22H3 2235-2236      H1RX22I3 2237-2238      H1RX22J3 2239-2240
      H1RX22K3 2241-2242      H1RX22L3 2243-2244      H1RX22M3 2245-2246
      H1RX22N3 2247-2248      H1RX22O3 2249-2250      H1RX22P3 2251-2252
      H1RX22Q3 2253-2254      H1RX22R3 2255-2256           H1RX24A3 2257
      H1RX25M3 2258-2259      H1RX25Y3 2260-2261      H1RX26M3 2262-2263
      H1RX26Y3 2264-2265           H1RX27_3 2266           H1RX28_3 2267
      H1RX29A3 2268-2269      H1RX29B3 2270-2271      H1RX29C3 2272-2273
           H1RX30_3 2274           H1RX31_3 2275           H1RX32_3 2276
      H1RX33A3 2277-2278      H1RX33B3 2279-2280      H1RX33C3 2281-2282
           H1RX34_3 2283           H1RX35_3 2284           H1RX36_3 2285
           H1RX37_3 2286      H1RX38A3 2287-2288      H1RX38B3 2289-2290
      H1RX38C3 2291-2292           H1RX39_3 2293           H1RX40_3 2294
      H1RX41_3 2295-2298      H1NR13_3 2299-2300           H1NR14_3 2301
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
      H1NR24Y3 2338-2339           H1NR25_3 2340           H1NR26_3 2341
      H1NR27A3 2342-2343      H1NR27B3 2344-2345      H1NR27C3 2346-2347
           H1NR28_3 2348           H1NR29_3 2349           H1NR30_3 2350
      H1NR31A3 2351-2352      H1NR31B3 2353-2354      H1NR31C3 2355-2356
           H1NR32_3 2357           H1NR33_3 2358           H1NR34_3 2359
           H1NR35_3 2360      H1NR36A3 2361-2362      H1NR36B3 2363-2364
      H1NR36C3 2365-2366           H1NR37_3 2367           H1NR38_3 2368
      H1NR39_3 2369-2371           H1NR40_3 2372           H1NR41_3 2373
           H1NR42_3 2374      H1NR43_3 2375-2376             H1NR44 2377
        H1NR45 2378-2379        H1NR46 2380-2381             H1NR47 2382
             H1NR48 2383             H1NR49 2384        H1NR50 2385-2386
        H1NR51 2387-2388             H1NR52 2389             H1NR53 2390
            RXCARD1 2391            RXCARD2 2392            RXCARD3 2393
              H1BC1 2394              H1BC2 2395              H1BC3 2396
              H1BC4 2397              H1BC5 2398              H1BC6 2399
              H1BC7 2400              H1BC8 2401              H1TO1 2402
         H1TO2 2403-2404              H1TO3 2405         H1TO4 2406-2407
         H1TO5 2408-2409        H1TO6M 2410-2411        H1TO6Y 2412-2413
         H1TO7 2414-2415              H1TO8 2416              H1TO9 2417
        H1TO10 2418-2419        H1TO11 2420-2421             H1TO12 2422
             H1TO13 2423        H1TO14 2424-2425        H1TO15 2426-2427
        H1TO16 2428-2429        H1TO17 2430-2431        H1TO18 2432-2433
        H1TO19 2434-2435             H1TO20 2436             H1TO21 2437
             H1TO22 2438             H1TO23 2439             H1TO24 2440
             H1TO25 2441             H1TO26 2442             H1TO27 2443
             H1TO28 2444             H1TO29 2445        H1TO30 2446-2447
        H1TO31 2448-2450        H1TO32 2451-2453             H1TO33 2454
        H1TO34 2455-2456        H1TO35 2457-2459        H1TO36 2460-2462
        H1TO37 2463-2464        H1TO38 2465-2467        H1TO39 2468-2470
        H1TO40 2471-2472        H1TO41 2473-2475        H1TO42 2476-2478
             H1TO43 2479             H1TO44 2480        H1TO45 2481-2482
             H1TO46 2483             H1TO47 2484             H1TO48 2485
             H1TO49 2486             H1TO50 2487             H1TO51 2488
             H1TO52 2489             H1TO53 2490            H1TO54A 2491
            H1TO54B 2492            H1TO54C 2493            H1TO54D 2494
              H1DS1 2495              H1DS2 2496              H1DS3 2497
              H1DS4 2498              H1DS5 2499              H1DS6 2500
              H1DS7 2501              H1DS8 2502              H1DS9 2503
             H1DS10 2504             H1DS11 2505             H1DS12 2506
             H1DS13 2507             H1DS14 2508             H1DS15 2509
              H1JO1 2510              H1JO2 2511              H1JO3 2512
              H1JO4 2513              H1JO5 2514             H1JO6A 2515
             H1JO6B 2516             H1JO6C 2517             H1JO6D 2518
             H1JO6E 2519              H1JO7 2520             H1JO8A 2521
             H1JO8B 2522             H1JO8C 2523             H1JO8D 2524
             H1JO8E 2525              H1JO9 2526             H1JO10 2527
             H1JO11 2528             H1JO12 2529             H1JO13 2530
             H1JO14 2531             H1JO15 2532             H1JO16 2533
             H1JO17 2534            H1JO18A 2535            H1JO18B 2536
            H1JO18C 2537            H1JO18D 2538            H1JO18E 2539
             H1JO19 2540             H1JO20 2541             H1JO21 2542
            H1JO22A 2543            H1JO22B 2544            H1JO22C 2545
            H1JO22D 2546            H1JO22E 2547             H1JO23 2548
             H1JO24 2549             H1JO25 2550             H1JO26 2551
              H1FV1 2552              H1FV2 2553              H1FV3 2554
              H1FV4 2555              H1FV5 2556              H1FV6 2557
              H1FV7 2558              H1FV8 2559              H1FV9 2560
             H1FV10 2561        H1FV11 2562-2563             H1FV12 2564
        H1FV13 2565-2567       H1FV14M 2568-2569       H1FV14Y 2570-2571
              H1MP1 2572              H1MP2 2573              H1MP3 2574
              H1MP4 2575              H1FP1 2576              H1FP2 2577
              H1FP3 2578         H1FP4 2579-2580        H1FP5M 2581-2582
        H1FP5D 2583-2584              H1FP6 2585              H1FP7 2586
         H1FP8 2587-2588        H1FP9M 2589-2590        H1FP9Y 2591-2592
             H1FP10 2593      H1FP11M1 2594-2595      H1FP11Y1 2596-2597
           H1FP12_1 2598      H1FP13A1 2599-2600      H1FP13B1 2601-2602
      H1FP13C1 2603-2604           H1FP14_1 2605           H1FP15_1 2606
           H1FP17_1 2607      H1FP20M1 2608-2609      H1FP20Y1 2610-2611
           H1FP21_1 2612           H1FP22_1 2613           H1FP23A1 2614
           H1FP24A1 2615      H1FP11M2 2616-2617      H1FP11Y2 2618-2619
           H1FP12_2 2620      H1FP13A2 2621-2622      H1FP13B2 2623-2624
      H1FP13C2 2625-2626           H1FP14_2 2627           H1FP15_2 2628
           H1FP17_2 2629      H1FP20M2 2630-2631      H1FP20Y2 2632-2633
           H1FP21_2 2634           H1FP22_2 2635           H1FP23A2 2636
           H1FP24A2 2637      H1FP11M3 2638-2639      H1FP11Y3 2640-2641
           H1FP12_3 2642      H1FP13A3 2643-2644      H1FP13B3 2645-2646
      H1FP13C3 2647-2648           H1FP14_3 2649           H1FP15_3 2650
           H1FP17_3 2651      H1FP20M3 2652-2653      H1FP20Y3 2654-2655
           H1FP21_3 2656           H1FP22_3 2657           H1FP23A3 2658
           H1FP24A3 2659      H1FP11M4 2660-2661      H1FP11Y4 2662-2663
           H1FP12_4 2664      H1FP13A4 2665-2666      H1FP13B4 2667-2668
      H1FP13C4 2669-2670           H1FP14_4 2671           H1FP15_4 2672
           H1FP17_4 2673      H1FP20M4 2674-2675      H1FP20Y4 2676-2677
           H1FP21_4 2678           H1FP22_4 2679           H1FP23A4 2680
           H1FP24A4 2681      H1FP11M5 2682-2683      H1FP11Y5 2684-2685
           H1FP12_5 2686      H1FP13A5 2687-2688      H1FP13B5 2689-2690
      H1FP13C5 2691-2692           H1FP14_5 2693           H1FP15_5 2694
           H1FP17_5 2695      H1FP20M5 2696-2697      H1FP20Y5 2698-2699
           H1FP21_5 2700           H1FP22_5 2701           H1FP23A5 2702
           H1FP24A5 2703              H1SU1 2704              H1SU2 2705
              H1SU3 2706              H1SU4 2707              H1SU5 2708
              H1SU6 2709              H1SU7 2710              H1SU8 2711
              H1PA1 2712              H1PA2 2713              H1PA3 2714
              H1PA4 2715              H1PA5 2716              H1PA6 2717
              H1PA7 2718         H1PR1 2719-2720         H1PR2 2721-2722
         H1PR3 2723-2724         H1PR4 2725-2726         H1PR5 2727-2728
         H1PR6 2729-2730         H1PR7 2731-2732         H1PR8 2733-2734
              H1NB1 2735              H1NB2 2736              H1NB3 2737
              H1NB4 2738              H1NB5 2739              H1NB6 2740
              H1NB7 2741         H1RE1 2742-2743              H1RE2 2744
              H1RE3 2745              H1RE4 2746              H1RE5 2747
              H1RE6 2748              H1RE7 2749              H1EE1 2750
              H1EE2 2751              H1EE3 2752     H1EE4 2753-2757 (1)
         H1EE5 2758-2760         H1EE6 2761-2763     H1EE7 2764-2768 (1)
         H1EE8 2769-2770              H1EE9 2771             H1EE10 2772
             H1EE11 2773             H1EE12 2774             H1EE13 2775
             H1EE14 2776             H1EE15 2777           STUDSIBA 2778
              TWINA 2779             H1WS1A 2780             H1WS2A 2781
             H1WS3A 2782             H1WS4A 2783        H1WS5A 2784-2785
             H1WS6A 2786             H1WS7A 2787             H1WS8A 2788
             H1WS9A 2789            H1WS10A 2790            H1WS11A 2791
            H1WS12A 2792           STUDSIBB 2793              TWINB 2794
             H1WS1B 2795             H1WS2B 2796             H1WS3B 2797
             H1WS4B 2798        H1WS5B 2799-2800             H1WS6B 2801
             H1WS7B 2802             H1WS8B 2803             H1WS9B 2804
            H1WS10B 2805            H1WS11B 2806            H1WS12B 2807
           STUDSIBC 2808              TWINC 2809             H1WS1C 2810
             H1WS2C 2811             H1WS3C 2812             H1WS4C 2813
        H1WS5C 2814-2815             H1WS6C 2816             H1WS7C 2817
             H1WS8C 2818             H1WS9C 2819            H1WS10C 2820
            H1WS11C 2821            H1WS12C 2822           STUDSIBD 2823
              TWIND 2824             H1WS1D 2825             H1WS2D 2826
             H1WS3D 2827             H1WS4D 2828        H1WS5D 2829-2830
             H1WS6D 2831             H1WS7D 2832             H1WS8D 2833
             H1WS9D 2834            H1WS10D 2835            H1WS11D 2836
            H1WS12D 2837           STUDSIBE 2838              TWINE 2839
             H1WS1E 2840             H1WS2E 2841             H1WS3E 2842
             H1WS4E 2843        H1WS5E 2844-2845             H1WS6E 2846
             H1WS7E 2847             H1WS8E 2848             H1WS9E 2849
            H1WS10E 2850            H1WS11E 2851            H1WS12E 2852
           STUDSIBF 2853              TWINF 2854             H1WS1F 2855
             H1WS2F 2856             H1WS3F 2857             H1WS4F 2858
             H1WS5F 2859             H1WS6F 2860             H1WS7F 2861
             H1WS8F 2862             H1WS9F 2863            H1WS10F 2864
            H1WS11F 2865            H1WS12F 2866           STUDSIBG 2867
              TWING 2868             H1WS1G 2869             H1WS2G 2870
             H1WS3G 2871             H1WS4G 2872        H1WS5G 2873-2874
             H1WS6G 2875             H1WS7G 2876             H1WS8G 2877
             H1WS9G 2878            H1WS10G 2879            H1WS11G 2880
            H1WS12G 2881             H1WS13 2882              H1IR1 2883
              H1IR2 2884              H1IR3 2885              H1IR4 2886
              H1IR5 2887              H1IR6 2888             H1IR7A 2889
             H1IR7B 2890             H1IR7C 2891             H1IR7D 2892
             H1IR7E 2893             H1IR7F 2894             H1IR7G 2895
             H1IR7H 2896             H1IR7I 2897             H1IR7J 2898
             H1IR7K 2899             H1IR7L 2900             H1IR7M 2901
             H1IR7N 2902             H1IR7O 2903             H1IR7P 2904
             H1IR7Q 2905             H1IR7R 2906             H1IR7S 2907
             H1IR7T 2908             H1IR7U 2909             H1IR7V 2910
             H1IR7W 2911             H1IR7X 2912             H1IR7Y 2913
             H1IR7Z 2914            H1IR7AA 2915            H1IR7BB 2916
            H1IR7CC 2917            H1IR7DD 2918             H1IR8A 2919
             H1IR8B 2920             H1IR8C 2921             H1IR8D 2922
              H1IR9 2923             H1IR10 2924             H1IR11 2925
        H1IR12 2926-2927        H1IR13 2928-2929        H1IR14 2930-2931
             H1IR15 2932        H1IR16 2933-2934            H1IR17A 2935
            H1IR17B 2936            H1IR17C 2937            H1IR17D 2938
            H1IR17E 2939            H1IR17F 2940            H1IR17G 2941
            H1IR17H 2942            H1IR17I 2943            H1IR17J 2944
             H1IR18 2945             H1IR19 2946             H1IR20 2947
             H1IR21 2948            H1IR22A 2949            H1IR22B 2950
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
           H1IR22MM 2987             H1IR23 2988             H1IR24 2989
             H1IR25 2990             H1IR26 2991             H1IR27 2992
             H1IR28 2993            S1 2994-2995                 S2 2996
            S3 2997-2998                 S4 2999            S5 3000-3001
                S6A 3002                S6B 3003                S6C 3004
                S6D 3005                S6E 3006            S7 3007-3008
                 S8 3009                 S9 3010                S10 3011
               S10A 3012               S10B 3013               S10C 3014
               S10D 3015                S11 3016           S12 3017-3018
                S13 3019           S14 3020-3021                S15 3022
                S16 3023                S17 3024           S18 3025-3026
                S19 3027           S20 3028-3029                S21 3030
                S22 3031                S23 3032                S24 3033
                S25 3034                S26 3035           S27 3036-3037
           S28 3038-3039               S29A 3040               S29B 3041
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
               S43E 3114              S44A1 3115              S44A2 3116
              S44A3 3117              S44A4 3118              S44A5 3119
              S44A6 3120              S44A7 3121              S44A8 3122
              S44A9 3123             S44A10 3124             S44A11 3125
             S44A12 3126             S44A13 3127             S44A14 3128
             S44A15 3129             S44A16 3130             S44A17 3131
             S44A18 3132             S44A19 3133             S44A20 3134
             S44A21 3135             S44A22 3136             S44A23 3137
             S44A24 3138             S44A25 3139             S44A26 3140
             S44A27 3141             S44A28 3142             S44A29 3143
             S44A30 3144             S44A31 3145             S44A32 3146
             S44A33 3147                S44 3148          S45A 3149-3150
          S45B 3151-3152          S45C 3153-3154          S45D 3155-3156
          S45E 3157-3158          S45F 3159-3160               S46A 3161
               S46B 3162               S46C 3163               S46D 3164
                S47 3165                S48 3166                S49 3167
                S50 3168                S51 3169                S52 3170
                S53 3171                S54 3172               S55A 3173
               S55B 3174               S55C 3175               S55D 3176
                S56 3177                S57 3178                S58 3179
          S59A 3180-3181               S59B 3182          S59C 3183-3184
          S59D 3185-3186          S59E 3187-3188          S59F 3189-3190
          S59G 3191-3192               S60A 3193               S60B 3194
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
               S62R 3231                S63 3232                S64 3233
                S65 3234                S66 3235                S67 3236
                S68 3237                PA1 3238           PA2 3239-3241
                PA3 3242                PA4 3243              PA5_1 3244
              PA5_2 3245              PA5_3 3246              PA5_4 3247
              PA5_5 3248              PA5_6 3249              PA5_7 3250
              PA6_1 3251              PA6_2 3252              PA6_3 3253
              PA6_4 3254              PA6_5 3255              PA7_1 3256
              PA7_2 3257              PA7_3 3258              PA7_4 3259
              PA7_5 3260              PA7_6 3261              PA7_7 3262
              PA7_8 3263               PA8B 3264                PA9 3265
               PA10 3266               PA11 3267          PA12 3268-3269
               PA13 3270               PA14 3271               PA15 3272
               PA16 3273               PA17 3274               PA18 3275
               PA19 3276               PA20 3277               PA21 3278
          PA22 3279-3280               PA23 3281               PA24 3282
               PA25 3283               PA26 3284              PA27A 3285
              PA27B 3286              PA27C 3287              PA27D 3288
              PA27E 3289              PA28A 3290              PA28B 3291
              PA28C 3292              PA28D 3293              PA28E 3294
              PA28F 3295              PA28G 3296              PA28H 3297
              PA28I 3298              PA28J 3299          PA30 3300-3301
               PA31 3302               PA32 3303               PA33 3304
               PA34 3305               PA35 3306               PA36 3307
               PA37 3308               PA38 3309          PA39 3310-3312
          PA40 3313-3314             PA41_1 3315             PA41_2 3316
             PA41_3 3317             PA41_4 3318             PA41_5 3319
             PA41_6 3320             PA41_7 3321             PA41_8 3322
             PA41_9 3323            PA41_10 3324            PA41_11 3325
            PA41_12 3326            PA41_13 3327            PA41_14 3328
            PA41_15 3329            PA41_16 3330            PA41_17 3331
            PA41_18 3332            PA41_19 3333               PA42 3334
               PA43 3335               PA44 3336             PA46_1 3337
             PA46_2 3338             PA46_3 3339             PA46_4 3340
             PA46_5 3341             PA46_6 3342             PA46_7 3343
             PA46_8 3344             PA46_9 3345            PA46_10 3346
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
            PA51_19 3377               PA52 3378               PA53 3379
               PA54 3380          PA55 3381-3384               PA56 3385
              PA57A 3386              PA57B 3387              PA57C 3388
              PA57D 3389              PA57E 3390              PA57F 3391
               PA58 3392               PA59 3393               PA60 3394
          PA61 3395-3396          PA62 3397-3398               PA63 3399
               PA64 3400                PB2 3401                PB3 3402
              PB4_1 3403              PB4_2 3404              PB4_3 3405
              PB4_4 3406              PB4_5 3407              PB4_6 3408
              PB4_7 3409              PB5_1 3410              PB5_2 3411
              PB5_3 3412              PB5_4 3413              PB5_5 3414
              PB6_1 3415              PB6_2 3416              PB6_3 3417
              PB6_4 3418              PB6_5 3419              PB6_6 3420
              PB6_7 3421              PB6_8 3422           PB7 3423-3424
           PB8 3425-3426                PB9 3427               PB10 3428
               PB11 3429               PB12 3430               PB13 3431
               PB14 3432               PB15 3433               PB16 3434
               PB17 3435          PB18 3436-3437               PB19 3438
               PB20 3439               PB21 3440          PB22 3441-3442
           PC1 3443-3444                PC2 3445                PC3 3446
           PC4 3447-3449                PC5 3450               PC6B 3451
                PC7 3452           PC8 3453-3455                PC9 3456
               PC10 3457               PC11 3458               PC12 3459
               PC13 3460               PC14 3461               PC15 3462
               PC16 3463          PC17 3464-3465               PC18 3466
       PC19A_P 3467-3468       PC19B_O 3469-3470          PC20 3471-3472
             PC21_1 3473             PC21_2 3474             PC21_3 3475
             PC21_4 3476             PC21_5 3477             PC21_6 3478
             PC21_7 3479               PC22 3480          PC23 3481-3482
               PC24 3483               PC25 3484               PC26 3485
               PC27 3486               PC28 3487              PC29A 3488
              PC29B 3489              PC29C 3490               PC30 3491
               PC31 3492               PC32 3493               PC33 3494
              PC34A 3495              PC34B 3496              PC34C 3497
              PC34D 3498              PC34E 3499               PC35 3500
             PC36_0 3501             PC36_1 3502             PC36_2 3503
             PC36_3 3504             PC36_4 3505             PC36_5 3506
             PC36_6 3507             PC36_7 3508             PC36_8 3509
             PC36_9 3510            PC36_10 3511            PC36_11 3512
            PC36_12 3513            PC36_13 3514            PC36_14 3515
            PC36_15 3516            PC36_16 3517            PC36_17 3518
            PC36_18 3519            PC36_19 3520               PC37 3521
               PC38 3522               PC39 3523               PC40 3524
               PC41 3525              PC42A 3526              PC42B 3527
              PC42C 3528              PC42D 3529              PC42E 3530
             PC43AA 3531             PC43AB 3532             PC43AC 3533
             PC43AD 3534             PC43BA 3535             PC43BB 3536
              PC44A 3537              PC44B 3538              PC44C 3539
              PC44D 3540               PC45 3541               PC46 3542
               PC47 3543          PC48 3544-3545            PC49A_1 3546
            PC49A_2 3547            PC49A_3 3548            PC49B_1 3549
            PC49B_2 3550            PC49B_3 3551            PC49C_1 3552
            PC49C_2 3553            PC49C_3 3554            PC49D_1 3555
            PC49D_2 3556            PC49D_3 3557            PC49E_1 3558
            PC49E_2 3559            PC49E_3 3560            PC49F_1 3561
            PC49F_2 3562            PC49F_3 3563               PC50 3564
               PC51 3565               PC53 3566               PC54 3567
               PC55 3568               PC58 3569          PC59 3570-3571
             PC60_1 3572             PC60_2 3573             PC60_3 3574
             PC60_4 3575             PC60_5 3576             PC60_6 3577
             PC60_7 3578             PC60_8 3579             PC60_9 3580
            PC60_10 3581            PC60_11 3582            PC60_12 3583
            PC60_13 3584            PC60_14 3585            PC60_15 3586
            PC60_16 3587            PC60_17 3588            PC60_18 3589
              PC61A 3590              PC61B 3591              PC61C 3592
              PC61D 3593             PC62_1 3594             PC62_2 3595
             PC62_4 3596             PC62_5 3597             PC62_8 3598
            PC62_10 3599            PC62_11 3600               PC63 3601
               PC64 3602        PC65_M 3603-3604        PC65_Y 3605-3606
        PC66_M 3607-3608        PC66_Y 3609-3610        PC68_M 3611-3612
        PC68_Y 3613-3614               PC69 3615                PD2 3616
                PD3 3617               PD4A 3618               PD4B 3619
               PD4C 3620               PD4D 3621               PD4E 3622
               PD4F 3623                PD5 3624               PD5A 3625
        AH_PVT 3626-3628        AH_RAW 3629-3630
   .

* SPSS VARIABLE LABELS COMMAND

VARIABLE LABELS
   AID       'RESPONDENT IDENTIFIER' /
   IMONTH    'MONTH OF INTERVIEW-W1' /
   IDAY      'DAY OF INTERVIEW-W1' /
   IYEAR     'YEAR OF INTERVIEW-W1' /
   SCH_YR    '94-95 SCHOOL YEAR IN SESSION-W1' /
   BIO_SEX   'BIOLOGICAL SEX-W1' /
   VERSION   'QUESTIONNAIRE VERSION-W1' /
   SMP01     'CORE SAMPLE-W1' /
   SMP03     'HIGH EDUCATION BLACK SAMPLE-W1' /
   H1GI1M    'S1Q1 BIRTH MONTH-W1' /
   H1GI1Y    'S1Q1 BIRTH YEAR-W1' /
   H1GI2     'S1Q2 LIVE IN SAME PLACE AS IN 1990-W1' /
   H1GI3     'S1Q3 AGE MOVED TO CURRENT RESIDENCE-W1' /
   H1GI4     'S1Q4 ARE YOU OF HISPANIC ORIGIN-W1' /
   H1GI5A    'S1Q5A HISPANIC-MEXICAN-W1' /
   H1GI5B    'S1Q5B HISPANIC-CHICANO-W1' /
   H1GI5C    'S1Q5C HISPANIC-CUBAN-W1' /
   H1GI5D    'S1Q5D HISPANIC-PUERTO RICAN-W1' /
   H1GI5E    'S1Q5E HISPANIC-CENTRAL/SO AMER-W1' /
   H1GI5F    'S1Q5F HISPANIC-OTHER-W1' /
   H1GI6A    'S1Q6A RACE-WHITE-W1' /
   H1GI6B    'S1Q6B RACE-AFRICAN AMERICAN-W1' /
   H1GI6C    'S1Q6C RACE-AMERICAN INDIAN-W1' /
   H1GI6D    'S1Q6D RACE-ASIAN-W1' /
   H1GI6E    'S1Q6E RACE-OTHER-W1' /
   H1GI7A    'S1Q7A ASIAN-CHINESE-W1' /
   H1GI7B    'S1Q7B ASIAN-FILIPINO-W1' /
   H1GI7C    'S1Q7C ASIAN-JAPANESE-W1' /
   H1GI7D    'S1Q7D ASIAN-ASIAN INDIAN-W1' /
   H1GI7E    'S1Q7E ASIAN-KOREAN-W1' /
   H1GI7F    'S1Q7F ASIAN-VIETNAMESE-W1' /
   H1GI7G    'S1Q7G ASIAN-OTHER-W1' /
   H1GI8     'S1Q8 RACE-SINGLE CATEGORY-W1' /
   H1GI9     'S1Q9 RACE-INTERVIEWER OBSERVATION-W1' /
   H1GI10    'S1Q10 LANGUAGE SPOKEN AT HOME-W1' /
   H1GI11    'S1Q11 BORN IN THE UNITED STATES-W1' /
   H1GI12    'S1Q12 COUNTRY OF BIRTH-W1' /
   H1GI13M   'S1Q13 MONTH MOVED TO THE US-W1' /
   H1GI13Y   'S1Q13 YEAR MOVED TO THE US-W1' /
   H1GI14    'S1Q14 BORN A US CITIZEN-W1' /
   H1GI15    'S1Q15 HAVE YOU EVER BEEN MARRIED-W1' /
   H1GI16M   'S1Q16 MONTH MARRIED THE FIRST TIME-W1' /
   H1GI16Y   'S1Q16 YEAR MARRIED THE FIRST TIME-W1' /
   H1GI18    'S1Q18 CURRENTLY IN SCHOOL-W1' /
   H1GI19    'S1Q19 ATTENDING [SAMPLE SCHOOL]-W1' /
   H1GI20    'S1Q20 GRADE-W1' /
   H1GI21    'S1Q21 WHY NOT IN SCHOOL-W1' /
   H1DA1     'S2Q1 WORK AROUND THE HOUSE-W1' /
   H1DA2     'S2Q2 HOBBIES-W1' /
   H1DA3     'S2Q3 WATCH TV/VIDEOS-W1' /
   H1DA4     'S2Q4 ROLLER-BLADING/CYCLING-W1' /
   H1DA5     'S2Q5 PLAY AN ACTIVE SPORT-W1' /
   H1DA6     'S2Q6 EXERCISE-W1' /
   H1DA7     'S2Q7 HANG OUT WITH FRIENDS-W1' /
   H1DA8     'S2Q8 HRS/WK WATCH TV-W1' /
   H1DA9     'S2Q9 HRS/WK WATCH VIDEOS-W1' /
   H1DA10    'S2Q10 HRS/WK PLAY COMPUTER GAMES-W1' /
   H1DA11    'S2Q11 HRS/WK LISTEN TO RADIO-W1' /
   H1GH1     'S3Q1 GENERAL HEALTH-W1' /
   H1GH1A    'S3Q1A DIFFICULTY USING LIMBS >12 MOS-W1' /
   H1GH2     'S3Q2 FREQ-HEADACHES-W1' /
   H1GH3     'S3Q3 FREQ-FEELING HOT-W1' /
   H1GH4     'S3Q4 FREQ-STOMACHACHE-W1' /
   H1GH5     'S3Q5 FREQ-COLD SWEATS-W1' /
   H1GH6     'S3Q6 FREQ-FEELING PHYSICALLY WEAK-W1' /
   H1GH7     'S3Q7 FREQ-SORE THROAT/COUGH-W1' /
   H1GH8     'S3Q8 FREQ-VERY TIRED FOR NO REASON-W1' /
   H1GH9     'S3Q9 FREQ-PAINFUL/OFTEN URINATION-W1' /
   H1GH10    'S3Q10 FREQ-FEELING VERY SICK-W1' /
   H1GH11    'S3Q11 FREQ-WAKE UP FEELING TIRED-W1' /
   H1GH12    'S3Q12 FREQ-SKIN PROBLEMS, ACNE-W1' /
   H1GH13    'S3Q13 FREQ-DIZZINESS-W1' /
   H1GH14    'S3Q14 FREQ-CHEST PAINS-W1' /
   H1GH15    'S3Q15 FREQ-MUSCLE/JOINT ACHES/PAINS-W1' /
   H1GH16    'S3Q16 FREQ-MENSTRUAL CRAMPS-W1' /
   H1GH17    'S3Q17 FREQ-POOR APPETITE-W1' /
   H1GH18    'S3Q18 FREQ-INSOMNIA-W1' /
   H1GH19    'S3Q19 FREQ-TROUBLE RELAXING-W1' /
   H1GH20    'S3Q20 FREQ-MOODINESS-W1' /
   H1GH21    'S3Q21 FREQ-FREQUENT CRYING-W1' /
   H1GH22    'S3Q22 FREQ-FEARFULNESS-W1' /
   H1GH23A   'S3Q23A HAVE FOR BREAKFAST-MILK-W1' /
   H1GH23B   'S3Q23B HAVE FOR BREAKFAST-COFFEE/TEA-W1' /
   H1GH23C   'S3Q23C HAVE FOR BREAKFAST-CEREAL-W1' /
   H1GH23D   'S3Q23D HAVE FOR BREAKFAST-FRUIT/JUICE-W1' /
   H1GH23E   'S3Q23E HAVE FOR BREAKFAST-EGGS-W1' /
   H1GH23F   'S3Q23F HAVE FOR BREAKFAST-MEAT-W1' /
   H1GH23G   'S3Q23G HAVE FOR BREAKFAST-SNACK FOODS-W1' /
   H1GH23H   'S3Q23H HAVE FOR BREAKFAST-BREAD/TOAST-W1' /
   H1GH23I   'S3Q23I HAVE FOR BREAKFAST-OTHER-W1' /
   H1GH23J   'S3Q23J HAVE FOR BREAKFAST-NOTHING-W1' /
   H1GH24    'S3Q24 LAST PHYSICAL EXAM-W1' /
   H1GH25    'S3Q25 LAST DENTAL EXAM-W1' /
   H1GH26    'S3Q26 NEEDED BUT NOT GET MEDICAL CARE-W1' /
   H1GH27A   'S3Q27A WHY-DIDNOT KNOW WHO TO SEE-W1' /
   H1GH27B   'S3Q27B WHY-NO TRANSPORTATION-W1' /
   H1GH27C   'S3Q27C WHY-NO ONE TO GO ALONG-W1' /
   H1GH27D   'S3Q27D WHY-PARENT WOULD NOT GO-W1' /
   H1GH27E   'S3Q27E WHY-PARENTS NOT TO KNOW-W1' /
   H1GH27F   'S3Q27F WHY-HARD TO MAKE APPOINTMENT-W1' /
   H1GH27G   'S3Q27G WHY-AFRAID WHAT DR WILL DO-W1' /
   H1GH27H   'S3Q27H WHY- PROB WILL GO AWAY-W1' /
   H1GH27I   'S3Q27I WHY-COULD NOT PAY-W1' /
   H1GH27J   'S3Q27J WHY-OTHER-W1' /
   H1GH28    'S3Q28 WEIGHT IMAGE-W1' /
   H1GH29    'S3Q29 TO GAIN/LOSE/MAINTAIN WEIGHT-W1' /
   H1GH30A   'S3Q30A WEIGHT LOSS METHOD-DIET-W1' /
   H1GH30B   'S3Q30B WEIGHT LOSS METHOD-EXERCISE-W1' /
   H1GH30C   'S3Q30C WEIGHT LOSS METHOD-VOMIT-W1' /
   H1GH30D   'S3Q30D WEIGHT LOSS METHOD-DIET PILLS-W1' /
   H1GH30E   'S3Q30E WEIGHT LOSS METHOD-LAXATIVE-W1' /
   H1GH30F   'S3Q30F WEIGHT LOSS METHOD-OTHER-W1' /
   H1GH30G   'S3Q30G WEIGHT LOSS METHOD-NONE-W1' /
   H1GH31A   'S3Q31A WEIGHT GAIN METHOD-DIET-W1' /
   H1GH31B   'S3Q31B WEIGHT GAIN METHOD-EXERCISE-W1' /
   H1GH31C   'S3Q31C WEIGHT GAIN METHOD-LIFT WEIGHT-W1' /
   H1GH31D   'S3Q31D WEIGHT GAIN METHOD-FOOD SUPPLT-W1' /
   H1GH31F   'S3Q31F WEIGHT GAIN METHOD-OTHER-W1' /
   H1GH31G   'S3Q31G WEIGHT GAIN METHOD-NONE-W1' /
   H1GH32    'S3Q32 ATE YESTERDAY-DAIRY PRODUCTS-W1' /
   H1GH33    'S3Q33 ATE YESTERDAY-FRUIT/FRUIT JUICE-W1' /
   H1GH34    'S3Q34 ATE YESTERDAY-VEGETABLES-W1' /
   H1GH35    'S3Q35 ATE YESTERDAY-BREAD/PASTA/RICE-W1' /
   H1GH36    'S3Q36 ATE YESTERDAY-PASTERY PRODUCTS-W1' /
   H1GH37    'S3Q37 DAYS/WK OF PHYS ED CLASSES-W1' /
   H1GH38    'S3Q38 MINUTES OF ACTIVITY IN PHYS ED-W1' /
   H1GH39    'S3Q39 WEAR HELMET WHILE CYCLING-W1' /
   H1GH40    'S3Q40 FREQ-RIDE A MOTORCYCLE-W1' /
   H1GH41    'S3Q41 FREQ-WEAR MOTORCYCLE HELMET-W1' /
   H1GH42    'S3Q42 FREQ-WEAR SEAT BELT IN CAR-W1' /
   H1GH43    'S3Q43 FREQ-DRINK ALCOHOL AND DRIVE-W1' /
   H1GH44    'S3Q44 CHANCES OF GETTING AIDS-W1' /
   H1GH45    'S3Q45 NO OF ACQUAINTANCES WITH AIDS-W1' /
   H1GH46    'S3Q46 CHANGES OF GETTING OTHER STDS-W1' /
   H1GH47    'S3Q47 NO OF ACQUAINTANCES WITH STDS-W1' /
   H1GH48    'S3Q48 HEALTH CAUSE SCHOOL ABSENCE-W1' /
   H1GH49    'S3Q49 HEALTH CAUSE SOCIAL ABSENCE-W1' /
   H1GH50    'S3Q50 USUAL BEDTIME ON WEEKNIGHTS-W1' /
   H1GH51    'S3Q51 TYPICAL HOURS OF SLEEP-W1' /
   H1GH52    'S3Q52 DO YOU GET ENOUGH SLEEP-W1' /
   H1GH53    'S3Q53 NIGHT FROM HOME W/O PERMISS-W1' /
   H1GH54    'S3Q54 EXTENT OF WORST INJURY-W1' /
   H1GH55    'S3Q55 DO YOU HAVE A PERMANENT TATOO-W1' /
   H1GH56    'S3Q56 DO YOU HAVE PIERCED EAR(S)-W1' /
   H1GH57    'S3Q57 BRACES ON YOUR TEETH-W1' /
   H1GH58    'S3Q58 HAVE YOU EVER WORN BRACES-W1' /
   H1GH59A   'S3Q59A HEIGHT-FEET-W1' /
   H1GH59B   'S3Q59B HEIGHT-INCHES-W1' /
   H1GH60    'S3Q60 WEIGHT-W1' /
   H1TS1     'S4Q1 LEARNED-PROPER DIET-W1' /
   H1TS2     'S4Q2 LEARNED-IMPORTANCE OF EXERCISE-W1' /
   H1TS3     'S4Q3 LEARNED-SMOKING-W1' /
   H1TS4     'S4Q4 LEARNED-HEALTH PROBS OF OBESITY-W1' /
   H1TS5     'S4Q5 LEARNED-DRINKING-W1' /
   H1TS6     'S4Q6 LEARNED-DRUG ABUSE-W1' /
   H1TS7     'S4Q7 LEARNED-PREGNANCY-W1' /
   H1TS8     'S4Q8 LEARNED-AIDS-W1' /
   H1TS9     'S4Q9 LEARNED-STRANGER APPROACH-W1' /
   H1TS10    'S4Q10 LEARNED-DENTAL CARE-W1' /
   H1TS11    'S4Q11 LEARNED-HEIMLICH MANEUVER-W1' /
   H1TS12    'S4Q12 LEARNED-SAFETY AT HOME/PLAY-W1' /
   H1TS13    'S4Q13 LEARNED-STRESS-W1' /
   H1TS14    'S4Q14 LEARNED-HANDLE CONFLICT-W1' /
   H1TS15    'S4Q15 LEARNED-GET MEDICAL ATTENTION-W1' /
   H1TS16    'S4Q16 LEARNED-PROBLEMS OF UNDERWEIGHT-W1' /
   H1TS17    'S4Q17 LEARNED-SUICIDE-W1' /
   H1ED1     'S5Q1 FREQ-EXCUSED ABSENCE FROM SCHOOL-W1' /
   H1ED2     'S5Q2 FREQ-SKIPPED SCHOOL-W1' /
   H1ED3     'S5Q3 HAVE YOU EVER SKIPPED A GRADE-W1' /
   H1ED4A    'S5Q4A SKIPPED GRADE 1-W1' /
   H1ED4B    'S5Q4B SKIPPED GRADE 2-W1' /
   H1ED4C    'S5Q4C SKIPPED GRADE 3-W1' /
   H1ED4D    'S5Q4D SKIPPED GRADE 4-W1' /
   H1ED4E    'S5Q4E SKIPPED GRADE 5-W1' /
   H1ED4F    'S5Q4F SKIPPED GRADE 6-W1' /
   H1ED4G    'S5Q4G SKIPPED GRADE 7-W1' /
   H1ED4H    'S5Q4H SKIPPED GRADE 8-W1' /
   H1ED4I    'S5Q4I SKIPPED GRADE 9-W1' /
   H1ED4J    'S5Q4J SKIPPED GRADE 10-W1' /
   H1ED4K    'S5Q4K SKIPPED GRADE 11-W1' /
   H1ED4M    'S5Q4M SCHOOL NOT GRADED-W1' /
   H1ED5     'S5Q5 HAVE YOU EVER REPEATED A GRADE-W1' /
   H1ED6A    'S5Q6A REPEATED GRADE 1-W1' /
   H1ED6B    'S5Q6B REPEATED GRADE 2-W1' /
   H1ED6C    'S5Q6C REPEATED GRADE 3-W1' /
   H1ED6D    'S5Q6D REPEATED GRADE 4-W1' /
   H1ED6E    'S5Q6E REPEATED GRADE 5-W1' /
   H1ED6F    'S5Q6F REPEATED GRADE 6-W1' /
   H1ED6G    'S5Q6G REPEATED GRADE 7-W1' /
   H1ED6H    'S5Q6H REPEATED GRADE 8-W1' /
   H1ED6I    'S5Q6I REPEATED GRADE 9-W1' /
   H1ED6J    'S5Q6J REPEATED GRADE 10-W1' /
   H1ED6K    'S5Q6K REPEATED GRADE 11-W1' /
   H1ED6L    'S5Q6L REPEATED GRADE 12-W1' /
   H1ED6M    'S5Q6M SCHOOL NOT GRADED-W1' /
   H1ED7     'S5Q7 RECEIVED OUT-OF-SCHL SUSPENSION-W1' /
   H1ED8     'S5Q8 GRADE DURING SUSPENSION-W1' /
   H1ED9     'S5Q9 EXPELLED FROM SCHOOL-W1' /
   H1ED10    'S5Q10 GRADE DURING EXPULSION-W1' /
   H1ED11    'S5Q11 MOST RECENT GRADE-ENGLISH-W1' /
   H1ED12    'S5Q12 MOST RECENT GRADE-MATH-W1' /
   H1ED13    'S5Q13 MOST RECENT GRADE-HISTORY' /
   H1ED14    'S5Q14 MOST RECENT GRADE-SCIENCE-W1' /
   H1ED15    'S5Q15 TROUBLE-GETTING ALONG TEACHERS-W1' /
   H1ED16    'S5Q16 TROUBLE-PAYING ATTENTION-W1' /
   H1ED17    'S5Q17 TROUBLE-GETTING HOMEWORK DONE-W1' /
   H1ED18    'S5Q18 TROUBLE-WITH OTHER STUDENTS-W1' /
   H1ED19    'S5Q19 FEEL CLOSE TO PEOPLE AT SCHOOL-W1' /
   H1ED20    'S5Q20 FEEL PART OF YOUR SCHOOL-W1' /
   H1ED21    'S5Q21 STUDENTS AT SCHOOL PREJUDICED-W1' /
   H1ED22    'S5Q22 HAPPY AT YOUR SCHOOL-W1' /
   H1ED23    'S5Q23 TEACHERS TREAT STUDENTS FAIRLY-W1' /
   H1ED24    'S5Q24 FEEL SAFE IN YOUR SCHOOL-W1' /
   H1PL1     'S6Q1 DIFFICULTY USING HANDS/FT/LIMBS-W1' /
   H1PL2     'S6Q2 PHYS COND INVOLVES HEART PROB-W1' /
   H1PL3     'S6Q3 PHYS COND INVOLVES ASTHMA-W1' /
   H1PL4     'S6Q4 PHYS COND INVOLVES BREATHING-W1' /
   H1PL5     'S6Q5 USE WALKING AID DEVICE-W1' /
   H1PL6     'S6Q6 WEAR BRACE ON ARMS OR LEG-W1' /
   H1PL7     'S6Q7 USE ARTIFICIAL LIMB-W1' /
   H1PL8     'S6Q8 DIFFICULTY-WALKING UP 10 STEPS-W1' /
   H1PL9     'S6Q9 HOW DIFFICULT TO WALK UP STEPS-W1' /
   H1PL10    'S6Q10 DIFFICULTY-WALKING 1/4 MILE-W1' /
   H1PL11    'S6Q11 HOW DIFFICULT TO WALK 1/4 MILE-W1' /
   H1PL12    'S6Q12 DIFFICULTY-STANDING 20 MINUTES-W1' /
   H1PL13    'S6Q13 HOW DIFFICULT TO STAND 20 MIN-W1' /
   H1PL14    'S6Q14 DIFFICULTY-EXTENDING YOUR ARM-W1' /
   H1PL15    'S6Q15 HOW DIFFICULT IS EXTENDING ARM-W1' /
   H1PL16    'S6Q16 DIFFICULTY-GRASPING WITH HAND-W1' /
   H1PL17    'S6Q17 HOW DIFFICULT TO GRASP-W1' /
   H1PL18    'S6Q18 DIFFICULTY-HOLDING A PENCIL-W1' /
   H1PL19    'S6Q19 HOW DIFFICULT TO HOLD A PENCIL-W1' /
   H1PL20    'S6Q20 DIFFICULTY-EATING-W1' /
   H1PL21    'S6Q21 DIFFICULTY-BATHING-W1' /
   H1PL22    'S6Q22 DIFFICULTY-DRESSING-W1' /
   H1PL23    'S6Q23 DIFFICULTY-TOILET-W1' /
   H1PL24    'S6Q24 USE AID TO SHOP-W1' /
   H1PL25    'S6Q25 USE AID TO EAT,DRESS,TOILET-W1' /
   H1PL26    'S6Q26 USE AID TO BATH-W1' /
   H1PL29    'S6Q29 USE AID TO SHOP-W1' /
   H1PL30    'S6Q30 USE CANE-W1' /
   H1PL31    'S6Q31 USE CRUTCHES OR WALKER-W1' /
   H1PL33    'S6Q33 USE MEDICALLY PRESCRIBED SHOES-W1' /
   H1PL34    'S6Q34 USE WHEELCHAIR OR SCOOTER-W1' /
   H1PL37    'S6Q37 CONSIDER SELF WITH DISABILITY-W1' /
   H1PL38    'S6Q38 OTHERS CONSIDER WITH DISABILITY-W1' /
   H1HS1     'S7Q1 ROUTINE PHYSICAL EXAM-W1' /
   H1HS2A    'S7Q2A LOCATION - PRIVATE DR-W1' /
   H1HS2B    'S7Q2B LOCATION - HEALTH CLINIC-W1' /
   H1HS2C    'S7Q2C LOCATION - SCHOOL-W1' /
   H1HS2D    'S7Q2D LOCATION - HOSPITAL-W1' /
   H1HS2E    'S7Q2E LOCATION - OTHER-W1' /
   H1HS3     'S7Q3 PSYCHOLOGICAL COUNSELING-W1' /
   H1HS4A    'S7Q4A LOCATION - PRIVATE DR-W1' /
   H1HS4B    'S7Q4B LOCATION - HEALTH CLINIC-W1' /
   H1HS4C    'S7Q4C LOCATION - SCHOOL-W1' /
   H1HS4D    'S7Q4D LOCATION - HOSPITAL-W1' /
   H1HS4E    'S7Q4E LOCATION - OTHER-W1' /
   H1HS5     'S7Q5 SUBSTANCE ABUSE PROGRAM-W1' /
   H1HS6A    'S7Q6A LOCATION  - PRIVATE DR-W1' /
   H1HS6B    'S7Q6B LOCATION  - HEALTH CLINIC-W1' /
   H1HS6C    'S7Q6C LOCATION  - SCHOOL-W1' /
   H1HS6D    'S7Q6D LOCATION  - HOSPITAL-W1' /
   H1HS6E    'S7Q6E LOCATION  - OTHER-W1' /
   H1HS7     'S7Q7 FAMILY PLANNING SERVICES-W1' /
   H1HS8A    'S7Q8A LOCATION  - PRIVATE DR-W1' /
   H1HS8B    'S7Q8B LOCATION  - HEALTH CLINIC-W1' /
   H1HS8C    'S7Q8C LOCATION  - SCHOOL-W1' /
   H1HS8D    'S7Q8D LOCATION  - HOSPITAL-W1' /
   H1HS8E    'S7Q8E LOCATION  - OTHER-W1' /
   H1HS9     'S7Q9 TESTING/TREATMENT FOR STDS-W1' /
   H1HS10A   'S7Q10A LOCATION  - PRIVATE DR-W1' /
   H1HS10B   'S7Q10B LOCATION  - HEALTH CLINIC-W1' /
   H1HS10C   'S7Q10C LOCATION  - SCHOOL-W1' /
   H1HS10D   'S7Q10D LOCATION  - HOSPITAL-W1' /
   H1HS10E   'S7Q10E LOCATION  - OTHER-W1' /
   H1HS11    'S7Q11 PRENATAL/POST PARTUM CARE-W1' /
   H1HS12A   'S7Q12A LOCATION  - PRIVATE DR-W1' /
   H1HS12B   'S7Q12B LOCATION  - HEALTH CLINIC-W1' /
   H1HS12C   'S7Q12C LOCATION  - SCHOOL-W1' /
   H1HS12D   'S7Q12D LOCATION  - HOSPITAL-W1' /
   H1HS12E   'S7Q12E LOCATION  - OTHER-W1' /
   H1RP1     'S8Q1 PREGNANT NOW ONE OF THE WORST-W1' /
   H1RP2     'S8Q2 PREGNANT NOW NOT SO BAD-W1' /
   H1RP3     'S8Q3 WILL SUFFER IF HIV POSITIVE-W1' /
   H1RP4     'S8Q4 PROTECTION A BIG HASSLE-W1' /
   H1RP5     'S8Q5 RISK OF PREGNANCY W/O PROTECTION-W1' /
   H1RP6     'S8Q6 RISK OF AIDS W/O PROTECTION-W1' /
   H1SE1     'S9Q1 USE BIRTH CONTROL IF AROUSED-W1' /
   H1SE2     'S9Q2 BIRTHCONTROL-ADVANCED PLANNING-W1' /
   H1SE3     'S9Q3 RESIST SEX IF NO BIRTH CONTROL-W1' /
   H1SE4     'S9Q4 YOUR INTELLIGENCE-W1' /
   H1FS1     'S10Q1 BOTHERED BY THINGS-W1' /
   H1FS2     'S10Q2 POOR APPETITE-W1' /
   H1FS3     'S10Q3 HAD THE BLUES-W1' /
   H1FS4     'S10Q4 JUST AS GOOD AS OTHER PEOPLE-W1' /
   H1FS5     'S10Q5 TROUBLE KEEPING MIND FOCUSED-W1' /
   H1FS6     'S10Q6 FELT DEPRESSED-W1' /
   H1FS7     'S10Q7 TOO TIRED TO DO THINGS-W1' /
   H1FS8     'S10Q8 HOPEFUL ABOUT THE FUTURE-W1' /
   H1FS9     'S10Q9 LIFE HAD BEEN A FAILURE-W1' /
   H1FS10    'S10Q10 FEARFUL-W1' /
   H1FS11    'S10Q11 HAPPY-W1' /
   H1FS12    'S10Q12 TALKED LESS THAN USUAL-W1' /
   H1FS13    'S10Q13 FELT LONELY-W1' /
   H1FS14    'S10Q14 PEOPLE UNFRIENDLY TO YOU-W1' /
   H1FS15    'S10Q15 ENJOYED LIFE-W1' /
   H1FS16    'S10Q16 FELT SAD-W1' /
   H1FS17    'S10Q17 FELT PEOPLE DISLIKE YOU-W1' /
   H1FS18    'S10Q18 HARD TO START DOING THINGS-W1' /
   H1FS19    'S10Q19 LIFE NOT WORTH LIVING-W1' /
   H1HR2A    'S11Q2A HH MEMBER 1-GENDER-W1' /
   H1HR3A    'S11Q3A HH MEMBER 1-RELATION TO YOU-W1' /
   H1HR4A    'S11Q4A HH MEMBER 1-OFFSPRING-W1' /
   H1HR5A    'S11Q5A HH MEMBER 1-SIBLING-W1' /
   H1HR6A    'S11Q6A HH MEMBER 1-PARENT-W1' /
   H1HR7A    'S11Q7A HH MEMBER 1-AGE-W1' /
   H1HR8A    'S11Q8A HH MEMBER 1-APPROXIMATE AGE-W1' /
   H1HR9A    'S11Q9A HH MEMBER 1-SAME HH-W1' /
   H1HR10A   'S11Q10A HH MEMBER 1-YRS IN SAME HH-W1' /
   H1HR11A   'S11Q11A HH MEMBER 1-MOS IN SAME HH-W1' /
   H1HR2B    'S11Q2B HH MEMBER 2-GENDER-W1' /
   H1HR3B    'S11Q3B HH MEMBER 2-RELATION TO YOU-W1' /
   H1HR4B    'S11Q4B HH MEMBER 2-OFFSPRING-W1' /
   H1HR5B    'S11Q5B HH MEMBER 2-SIBLING-W1' /
   H1HR6B    'S11Q6B HH MEMBER 2-PARENT-W1' /
   H1HR7B    'S11Q7B HH MEMBER 2-AGE-W1' /
   H1HR8B    'S11Q8B HH MEMBER 2-APPROXIMATE AGE-W1' /
   H1HR9B    'S11Q9B HH MEMBER 2-SAME HH-W1' /
   H1HR10B   'S11Q10B HH MEMBER 2-YRS IN SAME HH-W1' /
   H1HR11B   'S11Q11B HH MEMBER 2-MOS IN SAME HH-W1' /
   H1HR2C    'S11Q2C HH MEMBER 3-GENDER-W1' /
   H1HR3C    'S11Q3C HH MEMBER 3-RELATION TO YOU-W1' /
   H1HR4C    'S11Q4C HH MEMBER 3-OFFSPRING-W1' /
   H1HR5C    'S11Q5C HH MEMBER 3-SIBLING-W1' /
   H1HR6C    'S11Q6C HH MEMBER 3-PARENT-W1' /
   H1HR7C    'S11Q7C HH MEMBER 3-AGE-W1' /
   H1HR8C    'S11Q8C HH MEMBER 3-APPROXIMATE AGE-W1' /
   H1HR9C    'S11Q9C HH MEMBER 3-SAME HH-W1' /
   H1HR10C   'S11Q10C HH MEMBER 3-YRS IN SAME HH-W1' /
   H1HR11C   'S11Q11C HH MEMBER 3-MOS IN SAME HH-W1' /
   H1HR2D    'S11Q2D HH MEMBER 4-GENDER-W1' /
   H1HR3D    'S11Q3D HH MEMBER 4-RELATION TO YOU-W1' /
   H1HR4D    'S11Q4D HH MEMBER 4-OFFSPRING-W1' /
   H1HR5D    'S11Q5D HH MEMBER 4-SIBLING-W1' /
   H1HR6D    'S11Q6D HH MEMBER 4-PARENT-W1' /
   H1HR7D    'S11Q7D HH MEMBER 4-AGE-W1' /
   H1HR8D    'S11Q8D HH MEMBER 4-APPROXIMATE AGE-W1' /
   H1HR9D    'S11Q9D HH MEMBER 4-SAME HH-W1' /
   H1HR10D   'S11Q10D HH MEMBER 4-YRS IN SAME HH-W1' /
   H1HR11D   'S11Q211D HH MEMBER 4-MOS IN SAME HH-W1' /
   H1HR2E    'S11Q2E HH MEMBER 5-GENDER-W1' /
   H1HR3E    'S11Q3E HH MEMBER 5-RELATION TO YOU-W1' /
   H1HR4E    'S11Q4E HH MEMBER 5-OFFSPRING-W1' /
   H1HR5E    'S11Q5E HH MEMBER 5-SIBLING-W1' /
   H1HR6E    'S11Q6E HH MEMBER 5-PARENT-W1' /
   H1HR7E    'S11Q7E HH MEMBER 5-AGE-W1' /
   H1HR8E    'S11Q8E HH MEMBER 5-APPROXIMATE AGE-W1' /
   H1HR9E    'S11Q9E HH MEMBER 5-SAME HH-W1' /
   H1HR10E   'S11Q10E HH MEMBER 5-YRS IN SAME HH-W1' /
   H1HR11E   'S11Q211E HH MEMBER 5-MOS IN SAME HH-W1' /
   H1HR2F    'S11Q2F HH MEMBER 6-GENDER-W1' /
   H1HR3F    'S11Q3F HH MEMBER 6-RELATION TO YOU-W1' /
   H1HR4F    'S11Q4F HH MEMBER 6-OFFSPRING-W1' /
   H1HR5F    'S11Q5F HH MEMBER 6-SIBLING-W1' /
   H1HR6F    'S11Q6F HH MEMBER 6-PARENT-W1' /
   H1HR7F    'S11Q7F HH MEMBER 6-AGE-W1' /
   H1HR8F    'S11Q8F HH MEMBER 6-APPROXIMATE AGE-W1' /
   H1HR9F    'S11Q9F HH MEMBER 6-SAME HH-W1' /
   H1HR10F   'S11Q10F HH MEMBER 6-YRS IN SAME HH-W1' /
   H1HR11F   'S11Q211F HH MEMBER 6-MOS IN SAME HH-W1' /
   H1HR2G    'S11Q2G HH MEMBER 7-GENDER-W1' /
   H1HR3G    'S11Q3G HH MEMBER 7-RELATION TO YOU-W1' /
   H1HR4G    'S11Q4G HH MEMBER 7-OFFSPRING-W1' /
   H1HR5G    'S11Q5G HH MEMBER 7-SIBLING-W1' /
   H1HR6G    'S11Q6G HH MEMBER 7-PARENT-W1' /
   H1HR7G    'S11Q7G HH MEMBER 7-AGE-W1' /
   H1HR8G    'S11Q8G HH MEMBER 7-APPROXIMATE AGE-W1' /
   H1HR9G    'S11Q9G HH MEMBER 7-SAME HH-W1' /
   H1HR10G   'S11Q10G HH MEMBER 7-YRS IN SAME HH-W1' /
   H1HR11G   'S11Q211G HH MEMBER 7-MOS IN SAME HH-W1' /
   H1HR2H    'S11Q2H HH MEMBER 8-GENDER-W1' /
   H1HR3H    'S11Q3H HH MEMBER 8-RELATION TO YOU-W1' /
   H1HR4H    'S11Q4H HH MEMBER 8-OFFSPRING-W1' /
   H1HR5H    'S11Q5H HH MEMBER 8-SIBLING-W1' /
   H1HR6H    'S11Q6H HH MEMBER 8-PARENT-W1' /
   H1HR7H    'S11Q7H HH MEMBER 8-AGE-W1' /
   H1HR8H    'S11Q8H HH MEMBER 8-APPROXIMATE AGE-W1' /
   H1HR9H    'S11Q9H HH MEMBER 8-SAME HH-W1' /
   H1HR10H   'S11Q10H HH MEMBER 8-YRS IN SAME HH-W1' /
   H1HR11H   'S11Q211H HH MEMBER 8-MOS IN SAME HH-W1' /
   H1HR2I    'S11Q2I HH MEMBER 9-GENDER-W1' /
   H1HR3I    'S11Q3I HH MEMBER 9-RELATION TO YOU-W1' /
   H1HR4I    'S11Q4I HH MEMBER 9-OFFSPRING-W1' /
   H1HR5I    'S11Q5I HH MEMBER 9-SIBLING-W1' /
   H1HR6I    'S11Q6I HH MEMBER 9-PARENT-W1' /
   H1HR7I    'S11Q7I HH MEMBER 9-AGE-W1' /
   H1HR8I    'S11Q8I HH MEMBER 9-APPROXIMATE AGE-W1' /
   H1HR9I    'S11Q9I HH MEMBER 9-SAME HH-W1' /
   H1HR10I   'S11Q10I HH MEMBER 9-YRS IN SAME HH-W1' /
   H1HR11I   'S11Q211I HH MEMBER 9-MOS IN SAME HH-W1' /
   H1HR2J    'S11Q2J HH MEMBER 10-GENDER-W1' /
   H1HR3J    'S11Q3J HH MEMBER 10-RELATION TO YOU-W1' /
   H1HR4J    'S11Q4J HH MEMBER 10-OFFSPRING-W1' /
   H1HR5J    'S11Q5J HH MEMBER 10-SIBLING-W1' /
   H1HR6J    'S11Q6J HH MEMBER 10-PARENT-W1' /
   H1HR7J    'S11Q7J HH MEMBER 10-AGE-W1' /
   H1HR8J    'S11Q8J HH MEMBER 10-APPROXIMATE AGE-W1' /
   H1HR9J    'S11Q9J HH MEMBER 10-SAME HH-W1' /
   H1HR10J   'S11Q10J HH MEMBER 10-YRS IN SAME HH-W1' /
   H1HR11J   'S11Q211J HH MEMBER 10-MOS IN SAME HH-W1' /
   H1HR2K    'S11Q2K HH MEMBER 11-GENDER-W1' /
   H1HR3K    'S11Q3K HH MEMBER 11-RELATION TO YOU-W1' /
   H1HR4K    'S11Q4K HH MEMBER 11-OFFSPRING-W1' /
   H1HR5K    'S11Q5K HH MEMBER 11-SIBLING-W1' /
   H1HR6K    'S11Q6K HH MEMBER 11-PARENT-W1' /
   H1HR7K    'S11Q7K HH MEMBER 11-AGE-W1' /
   H1HR8K    'S11Q8K HH MEMBER 11-APPROXIMATE AGE-W1' /
   H1HR9K    'S11Q9K HH MEMBER 11-SAME HH-W1' /
   H1HR10K   'S11Q10K HH MEMBER 11-YRS IN SAME HH-W1' /
   H1HR11K   'S11Q211K HH MEMBER 11-MOS IN SAME HH-W1' /
   H1HR2L    'S11Q2L HH MEMBER 12-GENDER-W1' /
   H1HR3L    'S11Q3L HH MEMBER 12-RELATION TO YOU-W1' /
   H1HR4L    'S11Q4L HH MEMBER 12-OFFSPRING-W1' /
   H1HR5L    'S11Q5L HH MEMBER 12-SIBLING-W1' /
   H1HR6L    'S11Q6L HH MEMBER 12-PARENT-W1' /
   H1HR7L    'S11Q7L HH MEMBER 12-AGE-W1' /
   H1HR8L    'S11Q8L HH MEMBER 12-APPROXIMATE AGE-W1' /
   H1HR9L    'S11Q9L HH MEMBER 12-SAME HH-W1' /
   H1HR10L   'S11Q10L HH MEMBER 12-YRS IN SAME HH-W1' /
   H1HR11L   'S11Q211L HH MEMBER 12-MOS IN SAME HH-W1' /
   H1HR2M    'S11Q2M HH MEMBER 13-GENDER-W1' /
   H1HR3M    'S11Q3M HH MEMBER 13-RELATION TO YOU-W1' /
   H1HR4M    'S11Q4M HH MEMBER 13-OFFSPRING-W1' /
   H1HR5M    'S11Q5M HH MEMBER 13-SIBLING-W1' /
   H1HR6M    'S11Q6M HH MEMBER 13-PARENT-W1' /
   H1HR7M    'S11Q7M HH MEMBER 13-AGE-W1' /
   H1HR8M    'S11Q8M HH MEMBER 13-APPROXIMATE AGE-W1' /
   H1HR9M    'S11Q9M HH MEMBER 13-SAME HH-W1' /
   H1HR10M   'S11Q10M HH MEMBER 13-YRS IN SAME HH-W1' /
   H1HR11M   'S11Q211M HH MEMBER 13-MOS IN SAME HH-W1' /
   H1HR2N    'S11Q2N HH MEMBER 14-GENDER-W1' /
   H1HR3N    'S11Q3N HH MEMBER 14-RELATION TO YOU-W1' /
   H1HR4N    'S11Q4N HH MEMBER 14-OFFSPRING-W1' /
   H1HR5N    'S11Q5N HH MEMBER 14-SIBLING-W1' /
   H1HR6N    'S11Q6N HH MEMBER 14-PARENT-W1' /
   H1HR7N    'S11Q7N HH MEMBER 14-AGE-W1' /
   H1HR8N    'S11Q8N HH MEMBER 14-APPROXIMATE AGE-W1' /
   H1HR9N    'S11Q9N HH MEMBER 14-SAME HH-W1' /
   H1HR10N   'S11Q10N HH MEMBER 14-YRS IN SAME HH-W1' /
   H1HR11N   'S11Q211N HH MEMBER 14-MOS IN SAME HH-W1' /
   H1HR2O    'S11Q2O HH MEMBER 15-GENDER-W1' /
   H1HR3O    'S11Q3O HH MEMBER 15-RELATION TO YOU-W1' /
   H1HR4O    'S11Q4O HH MEMBER 15-OFFSPRING-W1' /
   H1HR5O    'S11Q5O HH MEMBER 15-SIBLING-W1' /
   H1HR6O    'S11Q6O HH MEMBER 15-PARENT-W1' /
   H1HR7O    'S11Q7O HH MEMBER 15-AGE-W1' /
   H1HR8O    'S11Q8O HH MEMBER 15-APPROXIMATE AGE-W1' /
   H1HR9O    'S11Q9O HH MEMBER 15-SAME HH-W1' /
   H1HR10O   'S11Q10O HH MEMBER 15-YRS IN SAME HH-W1' /
   H1HR11O   'S11Q211O HH MEMBER 15-MOS IN SAME HH-W1' /
   H1HR2P    'S11Q2P HH MEMBER 16-GENDER-W1' /
   H1HR3P    'S11Q3P HH MEMBER 16-RELATION TO YOU-W1' /
   H1HR4P    'S11Q4P HH MEMBER 16-OFFSPRING-W1' /
   H1HR5P    'S11Q5P HH MEMBER 16-SIBLING-W1' /
   H1HR6P    'S11Q6P HH MEMBER 16-PARENT-W1' /
   H1HR7P    'S11Q7P HH MEMBER 16-AGE-W1' /
   H1HR8P    'S11Q8P HH MEMBER 16-APPROXIMATE AGE-W1' /
   H1HR9P    'S11Q9P HH MEMBER 16-SAME HH-W1' /
   H1HR10P   'S11Q10P HH MEMBER 16-YRS IN SAME HH-W1' /
   H1HR11P   'S11Q211P HH MEMBER 16-MOS IN SAME HH-W1' /
   H1HR2Q    'S11Q2Q HH MEMBER 17-GENDER-W1' /
   H1HR3Q    'S11Q3Q HH MEMBER 17-RELATION TO YOU-W1' /
   H1HR4Q    'S11Q4Q HH MEMBER 17-OFFSPRING-W1' /
   H1HR5Q    'S11Q5Q HH MEMBER 17-SIBLING-W1' /
   H1HR6Q    'S11Q6Q HH MEMBER 17-PARENT-W1' /
   H1HR7Q    'S11Q7Q HH MEMBER 17-AGE-W1' /
   H1HR8Q    'S11Q8Q HH MEMBER 17-APPROXIMATE AGE-W1' /
   H1HR9Q    'S11Q9Q HH MEMBER 17-SAME HH-W1' /
   H1HR10Q   'S11Q10Q HH MEMBER 17-YRS IN SAME HH-W1' /
   H1HR11Q   'S11Q211Q HH MEMBER 17-MOS IN SAME HH-W1' /
   H1HR2R    'S11Q2R HH MEMBER 18-GENDER-W1' /
   H1HR3R    'S11Q3R HH MEMBER 18-RELATION TO YOU-W1' /
   H1HR4R    'S11Q4R HH MEMBER 18-OFFSPRING-W1' /
   H1HR5R    'S11Q5R HH MEMBER 18-SIBLING-W1' /
   H1HR6R    'S11Q6R HH MEMBER 18-PARENT-W1' /
   H1HR7R    'S11Q7R HH MEMBER 18-AGE-W1' /
   H1HR8R    'S11Q8R HH MEMBER 18-APPROXIMATE AGE-W1' /
   H1HR9R    'S11Q9R HH MEMBER 18-SAME HH-W1' /
   H1HR10R   'S11Q10R HH MEMBER 18-YRS IN SAME HH-W1' /
   H1HR11R   'S11Q211R HH MEMBER 18-MOS IN SAME HH-W1' /
   H1HR2S    'S11Q2S HH MEMBER 19-GENDER-W1' /
   H1HR3S    'S11Q3S HH MEMBER 19-RELATION TO YOU-W1' /
   H1HR4S    'S11Q4S HH MEMBER 19-OFFSPRING-W1' /
   H1HR5S    'S11Q5S HH MEMBER 19-SIBLING-W1' /
   H1HR6S    'S11Q6S HH MEMBER 19-PARENT-W1' /
   H1HR7S    'S11Q7S HH MEMBER 19-AGE-W1' /
   H1HR8S    'S11Q8S HH MEMBER 19-APPROXIMATE AGE-W1' /
   H1HR9S    'S11Q9S HH MEMBER 19-SAME HH-W1' /
   H1HR10S   'S11Q10S HH MEMBER 19-YRS IN SAME HH-W1' /
   H1HR11S   'S11Q211S HH MEMBER 19-MOS IN SAME HH-W1' /
   H1HR2T    'S11Q2T HH MEMBER 20-GENDER-W1' /
   H1HR3T    'S11Q3T HH MEMBER 20-RELATION TO YOU-W1' /
   H1HR4T    'S11Q4T HH MEMBER 20-OFFSPRING-W1' /
   H1HR5T    'S11Q5T HH MEMBER 20-SIBLING-W1' /
   H1HR6T    'S11Q6T HH MEMBER 20-PARENT-W1' /
   H1HR7T    'S11Q7T HH MEMBER 20-AGE-W1' /
   H1HR8T    'S11Q8T HH MEMBER 20-APPROXIMATE AGE-W1' /
   H1HR9T    'S11Q9T HH MEMBER 20-SAME HH-W1' /
   H1HR10T   'S11Q10T HH MEMBER 20-YRS IN SAME HH-W1' /
   H1HR11T   'S11Q211T HH MEMBER 20-MOS IN SAME HH-W1' /
   H1HR12    'S11Q12 WHO ACTS AS THE MOTHER TO YOU-W1' /
   H1HR13    'S11Q13 WHO ACTS AS THE FATHER TO YOU-W1' /
   H1HR14    'S11Q14 NO OF CHILDREN FRM BIO PARENTS-W1' /
   H1HR15    'S11Q15 WHICH NUMBER ARE YOU-W1' /
   H1NM1     'S12Q1 KNOW ANYTHING ABOUT BIO MOM-W1' /
   H1NM2     'S12Q2 IS SHE STILL LIVING-W1' /
   H1NM3     'S12Q3 YOUR AGE WHEN SHE DIED-W1' /
   H1NM4     'S12Q4 EDUCATION LEVEL OF BIO MOM-W1' /
   H1NM5     'S12Q5 BIO MOM DISABLED-W1' /
   H1NM6     'S12Q6 BIO MOM BORN IN THE US-W1' /
   H1NM7     'S12Q7 EVER LIVE WITH BIO MOM-W1' /
   H1NM8     'S12Q8 YOUR AGE LAST LIVED WITH HER-W1' /
   H1NM9     'S12Q9 DURATION LIVED WITH HER-W1' /
   H1NM10    'S12Q10 FREQ-STAYED OVERNIGHT W/ HER-W1' /
   H1NM11    'S12Q11 FREQ-COMMUNICATED W/ HER-W1' /
   H1NM12A   'S12Q12A BIO MOM-WENT SHOPPING-W1' /
   H1NM12B   'S12Q12B BIO MOM-PLAYED A SPORT-W1' /
   H1NM12C   'S12Q12C BIO MOM-RELIGIOUS SERVICE-W1' /
   H1NM12D   'S12Q12D BIO MOM-DISCUSSED YOUR LIFE-W1' /
   H1NM12E   'S12Q12E BIO MOM-WENT TO MOVIE/ETC-W1' /
   H1NM12F   'S12Q12F BIO MOM-DISCUSS PERSONAL PROB-W1' /
   H1NM12G   'S12Q12G BIO MOM-ARGUED ABOUT BEHAVIOR-W1' /
   H1NM12H   'S12Q12H BIO MOM-TALKED SCH-GRADES-W1' /
   H1NM12I   'S12Q12I BIO MOM-WORKED SCH-PROJECT-W1' /
   H1NM12J   'S12Q12J BIO MOM-TALKED SCH-OTHER-W1' /
   H1NM13    'S12Q13 BIO MOM EVER SMOKED CIGARETTES-W1' /
   H1NM14    'S12Q14 HOW CLOSE TO BIO MOM-W1' /
   H1NF1     'S13Q1 KNOW ANYTHING ABOUT BIO DAD-W1' /
   H1NF2     'S13Q2 IS HE STILL LIVING-W1' /
   H1NF3     'S13Q3 YOUR AGE WHEN HE DIED-W1' /
   H1NF4     'S13Q4 EDUCATION LEVEL OF BIO DAD-W1' /
   H1NF5     'S13Q5 BIO DAD DISABLED-W1' /
   H1NF6     'S13Q6 BIO DAD BORN IN THE US-W1' /
   H1NF7     'S13Q7 EVER LIVE WITH BIO DAD-W1' /
   H1NF8     'S13Q8 YOUR AGE LAST LIVED WITH HIM-W1' /
   H1NF9     'S13Q9 DURATION LIVED WITH HIM-W1' /
   H1NF10    'S13Q10 FREQ-STAYED OVERNIGHT W/ HIM-W1' /
   H1NF11    'S13Q11 FREQ-COMMUNICATED W/ HIM-W1' /
   H1NF12A   'S13Q12A BIO DAD-WENT SHOPPING-W1' /
   H1NF12B   'S13Q12B BIO DAD-PLAYED A SPORT-W1' /
   H1NF12C   'S13Q12C BIO DAD-RELIGIOUS SERVICE-W1' /
   H1NF12D   'S13Q12D BIO DAD-DISCUSSED YOUR LIFE-W1' /
   H1NF12E   'S13Q12E BIO DAD-WENT TO MOVIE/ETC-W1' /
   H1NF12F   'S13Q12F BIO DAD-DISCUSS PERSONAL PROB-W1' /
   H1NF12G   'S13Q12G BIO DAD-ARGUED ABOUT BEHAVIOR-W1' /
   H1NF12H   'S13Q12H BIO DAD-TALKED SCH-GRADES-W1' /
   H1NF12I   'S13Q12I BIO DAD-WORKED SCH-PROJECT-W1' /
   H1NF12J   'S13Q12J BIO DAD-TALKED SCH-OTHIM-W1' /
   H1NF13    'S13Q13 BIO DAD EVER SMOKED CIGARETTES-W1' /
   H1NF14    'S13Q14 HOW CLOSE TO BIO DAD-W1' /
   H1RM1     'S14Q1 RES MOM-EDUCATION LEVEL-W1' /
   H1RM2     'S14Q2 RES MOM-BORN IN US-W1' /
   H1RM3     'S14Q3 RES MOM-COUNTRY BORN IN-W1' /
   H1RM4     'S14Q4 RES MOM-WORK-W1' /
   H1RM5     'S14Q5 RES MOM-WORK FOR PAY-W1' /
   H1RM6     'S14Q6 RES MOM-WORK LAST 12 MOS-W1' /
   H1RM7     'S14Q7 RES MOM-WORK HRS/WEEK-W1' /
   H1RM8     'S14Q8 RES MOM-WORK AT HOME/OUTSIDE-W1' /
   H1RM9     'S14Q9 RES MOM-RECEIVE PUBLIC ASSIST-W1' /
   H1RM10    'S14Q10 RES MOM-DISABLED-W1' /
   H1RM11    'S14Q11 RES MOM-AT HOME WHEN LEAVE-W1' /
   H1RM12    'S14Q12 RES MOM-AT HOME WHEN RETURN-W1' /
   H1RM13    'S14Q13 RES MOM-AT HOME WHEN BED-W1' /
   H1RM14    'S14Q14 RES MOM-EVER SMOKE-W1' /
   H1RF1     'S15Q1 RES DAD-EDUCATION LEVEL-W1' /
   H1RF2     'S15Q2 RES DAD-BORN IN US-W1' /
   H1RF3     'S15Q3 RES DAD-COUNTRY BORN IN-W1' /
   H1RF4     'S15Q4 RES DAD-WORK-W1' /
   H1RF5     'S15Q5 RES DAD-WORK FOR PAY-W1' /
   H1RF6     'S15Q6 RES DAD-WORK LAST 12 MOS-W1' /
   H1RF7     'S15Q7 RES DAD-WORK HRS/WEEK-W1' /
   H1RF8     'S15Q8 RES DAD-WORK AT HOME/OUTSIDE-W1' /
   H1RF9     'S15Q9 RES DAD-RECEIVE PUBLIC ASSIST-W1' /
   H1RF10    'S15Q10 RES DAD-DISABLED-W1' /
   H1RF11    'S15Q11 RES DAD-AT HOME WHEN LEAVE-W1' /
   H1RF12    'S15Q12 RES DAD-AT HOME WHEN RETURN-W1' /
   H1RF13    'S15Q13 RES DAD-AT HOME WHEN BED-W1' /
   H1RF14    'S15Q14 RES DAD-EVER SMOKE-W1' /
   H1WP1     'S16Q1 MAKE OWN DECISION-WKEND CURFEW-W1' /
   H1WP2     'S16Q2 MAKE OWN DECISION-FRIEND-W1' /
   H1WP3     'S16Q3 MAKE OWN DECISION-CLOTHING-W1' /
   H1WP4     'S16Q4 MAKE OWN DECISION-AMOUNT OF TV-W1' /
   H1WP5     'S16Q5 MAKE OWN DECISION-TV PROGRAMS-W1' /
   H1WP6     'S16Q6 MAKE OWN DECISION-WEEKDAY BED-W1' /
   H1WP7     'S16Q7 MAKE OWN DECISION-DIET-W1' /
   H1WP8     'S16Q8 FREQ-EAT DINNER W/ PARENT-W1' /
   H1WP9     'S16Q9 CLOSE TO MOM-W1' /
   H1WP10    'S16Q10 MOM-HOW MUCH DOES SHE CARE-W1' /
   H1WP11    'S16Q11 MOM-IF NOT COLLEGE GRADUATE-W1' /
   H1WP12    'S16Q12 MOM-IF NOT HS GRADUATE-W1' /
   H1WP13    'S16Q13 CLOSE TO DAD-W1' /
   H1WP14    'S16Q14 DAD-HOW MUCH DOES HE CARE-W1' /
   H1WP15    'S16Q15 DAD-IF NOT COLLEGE GRADUATE-W1' /
   H1WP16    'S16Q16 DAD-IF NOT HS GRADUATE-W1' /
   H1WP17A   'S16Q17A RES MOM-WENT SHOPPING-W1' /
   H1WP17B   'S16Q17B RES MOM-PLAYED A SPORT-W1' /
   H1WP17C   'S16Q17C RES MOM-RELIGIOUS SERVICE-W1' /
   H1WP17D   'S16Q17D RES MOM-TALKED ABOUT LIFE-W1' /
   H1WP17E   'S16Q17E RES MOM-WENT TO MOVIE/ETC-W1' /
   H1WP17F   'S16Q17F RES MOM-DISCUSS PERSONAL PROB-W1' /
   H1WP17G   'S16Q17G RES MOM-ARGUED ABOUT BEHAVIOR-W1' /
   H1WP17H   'S16Q17H RES MOM-TALKED SCH-GRADES-W1' /
   H1WP17I   'S16Q17I RES MOM-WORKED SCH-PROJECT-W1' /
   H1WP17J   'S16Q17J RES MOM-TALKED SCH-OTHER-W1' /
   H1WP17K   'S16Q17K RES MOM-NONE-W1' /
   H1WP18A   'S16Q18A RES DAD-WENT SHOPPING-W1' /
   H1WP18B   'S16Q18B RES DAD-PLAYED A SPORT-W1' /
   H1WP18C   'S16Q18C RES DAD-RELIGIOUS SERVICE-W1' /
   H1WP18D   'S16Q18D RES DAD-TALKED ABOUT LIFE-W1' /
   H1WP18E   'S16Q18E RES DAD-WENT TO MOVIE/ETC-W1' /
   H1WP18F   'S16Q18F RES DAD-DISCUSS PERSONAL PROB-W1' /
   H1WP18G   'S16Q18G RES DAD-ARGUED ABOUT BEHAVIOR-W1' /
   H1WP18H   'S16Q18H RES DAD-TALKED SCH-GRADES-W1' /
   H1WP18I   'S16Q18I RES DAD-WORKED SCH-PROJECT-W1' /
   H1WP18J   'S16Q18J RES DAD-TALKED SCH-OTHER-W1' /
   H1WP18K   'S16Q18K RES DAD-NONE-W1' /
   H1MO1     'S17Q1 IF SEX GAIN MORE RESPECT-W1' /
   H1MO2     'S17Q2 IF SEX LOSE PARTNER RESPECT-W1' /
   H1MO3     'S17Q3 IF SEX WOULD FEEL GUILTY-W1' /
   H1MO4     'S17Q4 IF SEX UPSET MOTHER-W1' /
   H1MO5     'S17Q5 IF SEX LOT OF PHYSICAL PLEASURE-W1' /
   H1MO6     'S17Q6 IF SEX WOULD BE RELAXING-W1' /
   H1MO7     'S17Q7 IF SEX WOULD BE MORE ATTRACTIVE-W1' /
   H1MO8     'S17Q8 IF SEX FEEL LESS LONELY-W1' /
   H1MO9     'S17Q9 IF PREGNANT EMBARRASS FAMILY-W1' /
   H1MO10    'S17Q10 IF PREGNANT EMBARRASS SELF-W1' /
   H1MO11    'S17Q11 IF PREGNANT HAVE TO QUIT SCH-W1' /
   H1MO12    'S17Q12 IF PREGNANT MARRY WRONG PERSON-W1' /
   H1MO13    'S17Q13 IF PREGNANT GROW UP TOO FAST-W1' /
   H1MO14    'S17Q14 IF PREGNANT MAKE HARD DECISION-W1' /
   H1PF1     'S18Q1 MOM-WARM AND LOVING-W1' /
   H1PF2     'S18Q2 MOM-ENCOURAGES INDEPENDENCE-W1' /
   H1PF3     'S18Q3 MOM-DISCUSSES ETHICS-W1' /
   H1PF4     'S18Q4 MOM-GOOD COMMUNICATION-W1' /
   H1PF5     'S18Q5 MOM-GOOD RELATIONSHIP-W1' /
   H1PF6     'S18Q6 KNOW HOW TO USE CONDOM-W1' /
   H1PF7     'S18Q7 NEVER ARGUE W/ ANYONE-W1' /
   H1PF8     'S18Q8 ACCOMPLISH THROUGH HARD WORK-W1' /
   H1PF9     'S18Q9 FRIENDS KNOW WITHDRAWAL METHOD-W1' /
   H1PF10    'S18Q10 NEVER GET SAD-W1' /
   H1PF11    'S18Q11 KNOW RHYTHM METHOD-W1' /
   H1PF12    'S18Q12 FRIENDS KNOW HOW TO USE CONDOM-W1' /
   H1PF13    'S18Q13 NEVER CRITICIZE OTHER PEOPLE-W1' /
   H1PF14    'S18Q14 AVOID CONFRONTING PROBLEMS-W1' /
   H1PF15    'S18Q15 UPSET BY DIFFICULT PROBLEMS-W1' /
   H1PF16    'S18Q16 RELY ON GUT FEELINGS-W1' /
   H1PF17    'S18Q17 FRIENDS KNOW RHYTHM METHOD-W1' /
   H1PF18    'S18Q18 RESEARCH SOLUTIONS TO PROB-W1' /
   H1PF19    'S18Q19 MANY APPROACHES TO PROB-W1' /
   H1PF20    'S18Q20 RATIONAL DECISION MAKING APPR-W1' /
   H1PF21    'S18Q21 EVALUATE OUTCOME OF DECISION-W1' /
   H1PF22    'S18Q22 KNOW WITHDRAWAL METHOD-W1' /
   H1PF23    'S18Q23 DAD-WARM AND LOVING-W1' /
   H1PF24    'S18Q24 DAD-GOOD COMMUNICATION-W1' /
   H1PF25    'S18Q25 DAD-GOOD RELATIONSHIP-W1' /
   H1PF26    'S18Q26 HAVE LOTS OF ENERGY-W1' /
   H1PF27    'S18Q27 SELDOM GET SICK-W1' /
   H1PF28    'S18Q28 WHEN SICK, RECOVER QUICKLY-W1' /
   H1PF29    'S18Q29 WELL COORDINATED-W1' /
   H1PF30    'S18Q30 HAVE LOTS OF GOOD QUALITIES-W1' /
   H1PF31    'S18Q31 PHYSICALLY FIT-W1' /
   H1PF32    'S18Q32 HAVE A LOT TO BE PROUD OF-W1' /
   H1PF33    'S18Q33 LIKE SELF AS ARE-W1' /
   H1PF34    'S18Q34 DO EVERYTHING JUST RIGHT-W1' /
   H1PF35    'S18Q35 FEEL SOCIALLY ACCEPTED-W1' /
   H1PF36    'S18Q36 FEEL LOVED AND WANTED-W1' /
   H1KQ1A    'S19Q1A SPERM DIES W/I 6 HOURS-W1' /
   H1KQ1B    'S19Q1B CONFIDENT 1A IS CORRECT-W1' /
   H1KQ2A    'S19Q2A CONDOM-MAN SHOULD W/D IMMED-W1' /
   H1KQ2B    'S19Q2B CONFIDENT 2A IS CORRECT-W1' /
   H1KQ3A    'S19Q3A WOMAN OVULATES 14 DAYS AFT PD-W1' /
   H1KQ3B    'S19Q3B CONFIDENT 3A IS CORRECT-W1' /
   H1KQ4A    'S19Q4A LAMBSKIN IS BETTER THAN LATEX-W1' /
   H1KQ4B    'S19Q4B CONFIDENT 4A IS CORRECT-W1' /
   H1KQ5A    'S19Q5A CONDOM SHOULD FIT TIGHTLY-W1' /
   H1KQ5B    'S19Q5B CONFIDENT 5A IS CORRECT-W1' /
   H1KQ6A    'S19Q6A VASELINE CANBE USED W/ CONDOMS-W1' /
   H1KQ6B    'S19Q6B CONFIDENT 6A IS CORRECT-W1' /
   H1KQ7A    'S19Q7A MOST FERTILE BEFORE PERIOD-W1' /
   H1KQ7B    'S19Q7B CONFIDENT 7A IS CORRECT-W1' /
   H1KQ8A    'S19Q8A PREGN POSSIBLE W/ OUTSIDE EJAC-W1' /
   H1KQ8B    'S19Q8B CONFIDENT 8A IS CORRECT-W1' /
   H1KQ9A    'S19Q9A ONLY PENIS TIP NEEDS COVERAGE-W1' /
   H1KQ9B    'S19Q9B CONFIDENT 9A IS CORRECT-W1' /
   H1KQ10A   'S19Q10A MOST FERTILE DURING PERIOD-W1' /
   H1KQ10B   'S19Q10B CONFIDENT 10A IS CORRECT-W1' /
   FR_FLAG   'NUMBER OF FRIENDS ASKED TO NOMINATE-W1' /
   H1MF2A    'S20Q1A MALE FRIEND1- SCHOOL-W1' /
   H1MF3A    'S20Q2A MALE FRIEND1-GRADE-W1' /
   H1MF4A    'S20Q3A MALE FRIEND1-SAMPLE SCHOOL-W1' /
   H1MF5A    'S20Q4A MALE FRIEND1-SISTER SCHOOL-W1' /
   H1MF6A    'S20Q6A MALE FRIEND 1-FRIENDS HOUSE-W1' /
   H1MF7A    'S20Q7A MALE FRIEND1-MEET AFTER SCHOOL-W1' /
   H1MF8A    'S20Q8A MALE FRIEND1-TIME LAST WEEKEND-W1' /
   H1MF9A    'S20Q9A MALE FRIEND1-TALK ABOUT A PROB-W1' /
   H1MF10A   'S20Q10A MALE FRIEND1-TALK ON PHONE-W1' /
   H1MF2B    'S20Q1B MALE FRIEND2- SCHOOL-W1' /
   H1MF3B    'S20Q2B MALE FRIEND2-GRADE-W1' /
   H1MF4B    'S20Q3B MALE FRIEND2- SAMPLE SCHOOL-W1' /
   H1MF5B    'S20Q4B MALE FRIEND2- SISTER SCHOOL-W1' /
   H1MF6B    'S20Q6B GO TO MALE FRIEND2 HOUSE-W1' /
   H1MF7B    'S20Q7B MALE FRIEND2-MEET AFTER SCHOOL-W1' /
   H1MF8B    'S20Q8B MALE FRIEND2-TIME LAST WEEKEND-W1' /
   H1MF9B    'S20Q9B MALE FRIEND2-TALK ABOUT A PROB-W1' /
   H1MF10B   'S20Q10B MALE FRIEND2-TALK ON PHONE-W1' /
   H1MF2C    'S20Q1C MALE FRIEND3- SCHOOL-W1' /
   H1MF3C    'S20Q2C MALE FRIEND3-GRADE-W1' /
   H1MF4C    'S20Q3C MALE FRIEND3- SAMPLE SCHOOL-W1' /
   H1MF5C    'S20Q4C MALE FRIEND3- SISTER SCHOOL-W1' /
   H1MF6C    'S20Q6C MALE FRIEND3-FRIENDS HOUSE-W1' /
   H1MF7C    'S20Q7C MALE FRIEND3-MEET AFTER SCHOOL-W1' /
   H1MF8C    'S20Q8C MALE FRIEND3-TIME LAST WEEKEND-W1' /
   H1MF9C    'S20Q9C MALE FRIEND3-TALK ABOUT A PROB-W1' /
   H1MF10C   'S20Q10C MALE FRIEND3-TALK ON PHONE-W1' /
   H1MF2D    'S20Q1D MALE FRIEND4- SCHOOL-W1' /
   H1MF3D    'S20Q2D MALE FRIEND4-GRADE-W1' /
   H1MF4D    'S20Q3D MALE FRIEND4- SAMPLE SCHOOL-W1' /
   H1MF5D    'S20Q4D MALE FRIEND4- SISTER SCHOOL-W1' /
   H1MF6D    'S20Q6D MALE FRIEND4-FRIENDS HOUSE-W1' /
   H1MF7D    'S20Q7D MALE FRIEND4-MEET AFTER SCHOOL-W1' /
   H1MF8D    'S20Q8D MALE FRIEND4-TIME LAST WEEKEND-W1' /
   H1MF9D    'S20Q9D MALE FRIEND4-TALK ABOUT A PROB-W1' /
   H1MF10D   'S20Q10D MALE FRIEND4-TALK ON PHONE-W1' /
   H1MF2E    'S20Q1E MALE FRIEND5- SCHOOL-W1' /
   H1MF3E    'S20Q2E MALE FRIEND5-GRADE-W1' /
   H1MF4E    'S20Q3E MALE FRIEND5- SAMPLE SCHOOL-W1' /
   H1MF5E    'S20Q4E MALE FRIEND5- SISTER SCHOOL-W1' /
   H1MF6E    'S20Q6E MALE FRIEND5-FRIENDS HOUSE-W1' /
   H1MF7E    'S20Q7E MALE FRIEND5-MEET AFTER SCHOOL-W1' /
   H1MF8E    'S20Q8E MALE FRIEND5-TIME LAST WEEKEND-W1' /
   H1MF9E    'S20Q9E MALE FRIEND5-TALK ABOUT A PROB-W1' /
   H1MF10E   'S20Q10E MALE FRIEND5-TALK ON PHONE-W1' /
   H1FF2A    'S20Q1A FEMALE FRIEND1- SCHOOL-W1' /
   H1FF3A    'S20Q2A FEMALE FRIEND1-GRADE-W1' /
   H1FF4A    'S20Q3A FEMALE FRIEND1-SAMPLE SCHOOL-W1' /
   H1FF5A    'S20Q4A FEMALE FRIEND1-SISTER SCHOOL-W1' /
   H1FF6A    'S20Q6A FEMALE FRIEND 1-FRIENDS HOUSE-W1' /
   H1FF7A    'S20Q7A FEMALE FRIEND1-MEET AFTER SCHL-W1' /
   H1FF8A    'S20Q8A FEMALE FRIEND1-TIME LAST WKEND-W1' /
   H1FF9A    'S20Q9A FEMALE FRIEND1-DISCUSS A PROB-W1' /
   H1FF10A   'S20Q10A FEMALE FRIEND1-TALK ON PHONE-W1' /
   H1FF2B    'S20Q1B FEMALE FRIEND2- SCHOOL-W1' /
   H1FF3B    'S20Q2B FEMALE FRIEND2-GRADE-W1' /
   H1FF4B    'S20Q3B FEMALE FRIEND2- SAMPLE SCHOOL-W1' /
   H1FF5B    'S20Q4B FEMALE FRIEND2- SISTER SCHOOL-W1' /
   H1FF6B    'S20Q6B GO TO FEMALE FRIEND2 HOUSE-W1' /
   H1FF7B    'S20Q7B FEMALE FRIEND2-MEET AFTER SCHL-W1' /
   H1FF8B    'S20Q8B FEMALE FRIEND2-TIME LAST WKEND-W1' /
   H1FF9B    'S20Q9B FEMALE FRIEND2-DISCUSS A PROB-W1' /
   H1FF10B   'S20Q10B FEMALE FRIEND2-TALK ON PHONE-W1' /
   H1FF2C    'S20Q1C FEMALE FRIEND3- SCHOOL-W1' /
   H1FF3C    'S20Q2C FEMALE FRIEND3-GRADE-W1' /
   H1FF4C    'S20Q3C FEMALE FRIEND3- SAMPLE SCHOOL-W1' /
   H1FF5C    'S20Q4C FEMALE FRIEND3- SISTER SCHOOL-W1' /
   H1FF6C    'S20Q6C FEMALE FRIEND3-FRIENDS HOUSE-W1' /
   H1FF7C    'S20Q7C FEMALE FRIEND3-MEET AFTER SCHL-W1' /
   H1FF8C    'S20Q8C FEMALE FRIEND3-TIME LAST WKEND-W1' /
   H1FF9C    'S20Q9C FEMALE FRIEND3-DISCUSS A PROB-W1' /
   H1FF10C   'S20Q10C FEMALE FRIEND3-TALK ON PHONE-W1' /
   H1FF2D    'S20Q1D FEMALE FRIEND4- SCHOOL-W1' /
   H1FF3D    'S20Q2D FEMALE FRIEND4-GRADE-W1' /
   H1FF4D    'S20Q3D FEMALE FRIEND4- SAMPLE SCHOOL-W1' /
   H1FF5D    'S20Q4D FEMALE FRIEND4- SISTER SCHOOL-W1' /
   H1FF6D    'S20Q6D FEMALE FRIEND4-FRIENDS HOUSE-W1' /
   H1FF7D    'S20Q7D FEMALE FRIEND4-MEET AFTER SCHL-W1' /
   H1FF8D    'S20Q8D FEMALE FRIEND4-TIME LAST WKEND-W1' /
   H1FF9D    'S20Q9D FEMALE FRIEND4-DISCUSS A PROB-W1' /
   H1FF10D   'S20Q10D FEMALE FRIEND4-TALK ON PHONE-W1' /
   H1FF2E    'S20Q1E FEMALE FRIEND5- SCHOOL-W1' /
   H1FF3E    'S20Q2E FEMALE FRIEND5-GRADE-W1' /
   H1FF4E    'S20Q3E FEMALE FRIEND5- SAMPLE SCHOOL-W1' /
   H1FF5E    'S20Q4E FEMALE FRIEND5- SISTER SCHOOL-W1' /
   H1FF6E    'S20Q6E FEMALE FRIEND5-FRIENDS HOUSE-W1' /
   H1FF7E    'S20Q7E FEMALE FRIEND5-MEET AFTER SCHL-W1' /
   H1FF8E    'S20Q8E FEMALE FRIEND5-TIME LAST WKEND-W1' /
   H1FF9E    'S20Q9E FEMALE FRIEND5-DISCUSS A PROB-W1' /
   H1FF10E   'S20Q10E FEMALE FRIEND5-TALK ON PHONE-W1' /
   H1ID1A    'S21Q1A GO OUT TOGETHER IN A GROUP-W1' /
   H1ID1B    'S21Q1B MEET PARENTS OF PARTNER-W1' /
   H1ID1C    'S21Q1C SAY WE ARE A COUPLE-W1' /
   H1ID1D    'S21Q1D SEE LESS OF MY FRIENDS-W1' /
   H1ID1E    'S21Q1E GO OUT TOGETHER ALONE-W1' /
   H1ID1F    'S21Q1F WE WOULD HOLD HANDS-W1' /
   H1ID1G    'S21Q1G GIVE MY PARTNER A PRESENT-W1' /
   H1ID1H    'S21Q1H PARTNER  GIVE ME A PRESENT-W1' /
   H1ID1I    'S21Q1I TELL PARTNER I LOVE HIM/HER-W1' /
   H1ID1J    'S21Q1J WOULD TELL ME HE/SHE LOVES ME-W1' /
   H1ID1K    'S21Q1K THINK OF OURSELVES AS A COUPLE-W1' /
   H1ID1L    'S21Q1L TALK ABOUT CONTRACEPTION/STDS-W1' /
   H1ID1M    'S21Q1M KISS-W1' /
   H1ID1N    'S21Q1N TOUCH EACH OTHER-W1' /
   H1ID1O    'S21Q1O HAVE SEX-W1' /
   H1ID1P    'S21Q1P GET PREGNANT-W1' /
   H1ID1Q    'S21Q1Q GET MARRIED-W1' /
   H1ID1R    'S21Q1R NO CARDS TAKEN OUT-W1' /
   H1ID2_1   'S21Q2_1 FIRST EVENT-W1' /
   H1ID2_2   'S21Q2_2 SECOND EVENT-W1' /
   H1ID2_3   'S21Q2_3 THIRD EVENT-W1' /
   H1ID2_4   'S21Q2_4 FOURTH EVENT-W1' /
   H1ID2_5   'S21Q2_5 FIFTH EVENT-W1' /
   H1ID2_6   'S21Q2_6 SIXTH EVENT-W1' /
   H1ID2_7   'S21Q2_7 SEVENTH EVENT-W1' /
   H1ID2_8   'S21Q2_8 EIGHTH EVENT-W1' /
   H1ID2_9   'S21Q2_9 NINTH EVENT-W1' /
   H1ID2_10  'S21Q2_10 TENTH EVENT-W1' /
   H1ID2_11  'S21Q2_11 ELEVENTH EVENT-W1' /
   H1ID2_12  'S21Q2_12 TWELFTH EVENT-W1' /
   H1ID2_13  'S21Q2_13 THIRTEENTH EVENT-W1' /
   H1ID2_14  'S21Q2_14 FOURTEENTH EVENT-W1' /
   H1ID2_15  'S21Q2_15 FIFTEENTH EVENT-W1' /
   H1ID2_16  'S21Q2_16 SIXTEENTH EVENT-W1' /
   H1ID2_17  'S21Q2_17 SEVENTEENTH EVENT-W1' /
   H1ID5     'S21Q5 TAKEN PLEDGE TO REMAIN VIRGIN-W1' /
   H1ID6     'S21Q6 WOULD LIKE ROMANCE IN NEXT YEAR-W1' /
   H1RR1     'S22Q1 DID YOU HAVE A ROMANCE-W1' /
   RR_FLAG   'FLAG-NO DATA FOR ROMANTIC RELATIONSHIPS' /
   H1LR1     'S23Q1 HOLD HAND W/ NONFAMILY MEMBER-W1' /
   H1LR2     'S23Q2 KISS NONFAMILY MEMBER-W1' /
   H1LR3     'S23Q3 TELL LOVE NONFAMILY MEMBER-W1' /
   H1LR4     'S23Q4 DO THESE THINGS W/ SAME PERSON-W1' /
   H1CO1     'S24Q1 EVER HAVE SEX-W1' /
   H1CO2M    'S24Q2M FIRST TIMEN SEX-MONTH-W1' /
   H1CO2Y    'S24Q2Y FIRST TIME SEX-YEAR-W1' /
   H1CO3     'S24Q3 FIRST TIME SEX-USE BIRTHCONTROL-W1' /
   H1CO4A    'S24Q4A FIRST TIME SEX-METHOD 1-W1' /
   H1CO4B    'S24Q4B FIRST TIME SEX-METHOD 2-W1' /
   H1CO4C    'S24Q4C FIRST TIME SEX-METHOD 3-W1' /
   H1CO5M    'S24Q5M MOST RECENT SEX-MONTH-W1' /
   H1CO5Y    'S24Q5Y MOST RECENT SEX-YEAR-W1' /
   H1CO6     'S24Q6 MOST RECENT SEX-BIRTHCONTROL-W1' /
   H1CO7A    'S24Q7A MOST RECENT SEX-METHOD 1-W1' /
   H1CO7B    'S24Q7B MOST RECENT SEX-METHOD 2-W1' /
   H1CO7C    'S24Q7C MOST RECENT SEX-METHOD 3-W1' /
   H1CO8     'S24Q8 EVER USE A CONDOM DURING SEX-W1' /
   H1CO9     'S24Q9 HOW OFTEN USE CONDOM-W1' /
   H1CO10    'S24Q10 FORCED SEX-W1' /
   H1CO11    'S24Q11 GET BIRTHCONTROL FR DR/CLINIC-W1' /
   H1CO12A   'S24Q12A GET METHOD 1-W1' /
   H1CO12B   'S24Q12B GET METHOD 2-W1' /
   H1CO12C   'S24Q12C GET METHOD 3-W1' /
   H1CO13    'S24Q13 EVER USE BIRTHCONTROL PILLS-W1' /
   H1CO14M   'S24Q14M FIRST BIRTHCONTROL PILL-MONTH-W1' /
   H1CO14Y   'S24Q147 FIRST BIRTHCONTROL PILL-YEAR-W1' /
   H1CO15    'S24Q15 CURRENTLY ON BIRTHCONTROL PILL-W1' /
   H1CO16A   'S24Q16A EVER DIAGNOSED-CHLAMYDIA-W1' /
   H1CO16B   'S24Q16A EVER DIAGNOSED-SYPHILIS-W1' /
   H1CO16C   'S24Q16A EVER DIAGNOSED-GONORRHEA-W1' /
   H1CO16D   'S24Q16A EVER DIAGNOSED-HIV/AIDS-W1' /
   H1CO16E   'S24Q16A EVER DIAGNOSED-GENITAL HERPES-W1' /
   H1CO16F   'S24Q16A EVER DIAGNOSED-GENITAL WARTS-W1' /
   H1CO16G   'S24Q16A EVER DIAGNOSED-TRICHOMONIASIS-W1' /
   H1CO16H   'S24Q16A EVER DIAGNOSED-HEPATITIS B-W1' /
   H1CO16I   'S24Q16A DIAGNOSED-BACTERL VAGINOSIS-W1' /
   H1CO16J   'S24Q16A DIAGNOSED-NON-GONCL VAGINITIS-W1' /
   H1CO17A   'S24Q17A WHEN TOLD-CHLAMYDIA-W1' /
   H1CO17B   'S24Q17A WHEN TOLD-SYPHILIS-W1' /
   H1CO17C   'S24Q17A WHEN TOLD-GONORRHEA-W1' /
   H1CO17D   'S24Q17A WHEN TOLD-HIV/AIDS-W1' /
   H1CO17E   'S24Q17A WHEN TOLD-GENITAL HERPES-W1' /
   H1CO17F   'S24Q17A WHEN TOLD-GENITAL WARTS-W1' /
   H1CO17G   'S24Q17A WHEN TOLD-TRICHOMONIASIS-W1' /
   H1CO17H   'S24Q17A WHEN TOLD-HEPATITIS B-W1' /
   H1CO17I   'S24Q17A WHEN TOLD-BACTERIAL VAGINOSIS-W1' /
   H1CO17J   'S24Q17A WHEN TOLD-NON-GONCL VAGINITIS-W1' /
   H1RI1M_1  'S25Q1M PARTNR1-DATE BEGAN-MONTH-W1' /
   H1RI1Y_1  'S25Q1Y PARTNR1-DATE BEGAN-YEAR-W1' /
   H1RI2_1   'S25Q2 PARTNR1-YEAR RELATION BEGAN-W1' /
   H1RI3_1   'S25Q3 PARTNR1 HIS/HER AGE WHEN MET-W1' /
   H1RI4_1   'S25Q4 PARTNR1 APPROX PARTNERS AGE-W1' /
   H1RI5A_1  'S25Q5 PARTNR1 HIS/HER GRADE WHEN MET-W1' /
   H1RI6_1   'S25Q6 PARTNR1 GO TO SAME SCHOOL-W1' /
   H1RI7_1   'S25Q7 PARTNR1 WHERE DID HE/SHE LIVE-W1' /
   H1RI8A_1  'S25Q8A PARTNR1-SAME SCHOOL-W1' /
   H1RI8B_1  'S25Q8B PARTNR1-SAME PL OF WORSHIP-W1' /
   H1RI8C_1  'S25Q8C PARTNR1-NEIGHBORS-W1' /
   H1RI8D_1  'S25Q8D PARTNR1-CASUAL ACQUAINTENCES-W1' /
   H1RI8E_1  'S25Q8E PARTNR1-FRIENDS-W1' /
   H1RI8F_1  'S25Q8F PARTNR1-SHARED MUTUAL FRIEND-W1' /
   H1RI8G_1  'S25Q8G PARTNR1-SOME OTHER WAY-W1' /
   H1RI8H_1  'S25Q8H PARTNR1-DID NOT KNOW BEFORE-W1' /
   H1RI9_1   'S25Q9 PARTNR1-HOW MANY FRIENDS KNEW-W1' /
   H1RI10_1  'S25Q10 PARTNR1-STILL GOING ON-W1' /
   H1RI11M1  'S25Q11M PARTNR1-WHEN DID IT END-MO-W1' /
   H1RI11Y1  'S25Q11Y PARTNR1-WHEN DID IT END-YR-W1' /
   H1RI12_1  'S25Q12 PARTNR1-WHAT YEAR DID IT END-W1' /
   H1RI13_1  'S25Q13 PARTNR1-WHERE LIVE AT END-W1' /
   H1RI14_1  'S25Q14 PARTNR1-SAMPLE/SISTER SCH NOW-W1' /
   H1RI15_1  'S25Q15 PARTNR1-GRADE NOW-W1' /
   H1RI16_1  'S25Q16 PARTNR1-HISPANIC/LATINO-W1' /
   H1RI17A1  'S25Q17A PARTNR1-MEXICAN-W1' /
   H1RI17B1  'S25Q17B PARTNR1-CHICANO-W1' /
   H1RI17C1  'S25Q17C PARTNR1-CUBAN-W1' /
   H1RI17D1  'S25Q17D PARTNR1-PUERTO RICAN-W1' /
   H1RI17E1  'S25Q17E PARTNR1-CENTR/SOUTH AMERICAN-W1' /
   H1RI17F1  'S25Q17F PARTNR1-OTHER HISPANIC-W1' /
   H1RI18A1  'S25Q18A PARTNR1-WHITE-W1' /
   H1RI18B1  'S25Q18B PARTNR1-AFRICAN AMERICAN-W1' /
   H1RI18C1  'S25Q18C PARTNR1-AMERICAN INDIAN-W1' /
   H1RI18D1  'S25Q18D PARTNR1-ASIAN-W1' /
   H1RI18E1  'S25Q18E PARTNR1-OTHER RACE-W1' /
   H1RI19A1  'S25Q19A PARTNR1-CHINESE-W1' /
   H1RI19B1  'S25Q19B PARTNR1-FILIPINO-W1' /
   H1RI19C1  'S25Q19C PARTNR1-JAPANESE-W1' /
   H1RI19D1  'S25Q19D PARTNR1-ASIAN INDIAN-W1' /
   H1RI19E1  'S25Q19E PARTNR1-KOREAN-W1' /
   H1RI19F1  'S25Q19F PARTNR1-VIETNAMESE-W1' /
   H1RI19G1  'S25Q19G PARTNR1-OTHER-W1' /
   H1RI20_1  'S25Q20 PARTNR1-GENDER-W1' /
   H1RI21A1  'S25Q21A PARTNR1-GROUP DATE-W1' /
   H1RI21B1  'S25Q21B PARTNR1-MET PARENTS-W1' /
   H1RI21C1  'S25Q21C PARTNR1-SAID WERE A COUPLE-W1' /
   H1RI21D1  'S25Q21D PARTNR1-SAW LESS OF FRIENDS-W1' /
   H1RI21E1  'S25Q21E PARTNR1-WENT OUT ALONE-W1' /
   H1RI21F1  'S25Q21F PARTNR1-HELD HANDS-W1' /
   H1RI21G1  'S25Q21G PARTNR1-GAVE A PRESENT-W1' /
   H1RI21H1  'S25Q21H PARTNR1-RECEIVED A PRESENT-W1' /
   H1RI21I1  'S25Q21I PARTNR1-SAID HE/SHE LOVED ME-W1' /
   H1RI21J1  'S25Q21J PARTNR1-SAID I LOVED PARTNER-W1' /
   H1RI21K1  'S25Q21K PARTNR1-CONSIDERED A COUPLE-W1' /
   H1RI21L1  'S25Q21L PARTNR1-TALKED CONTRACEPT-W1' /
   H1RI21M1  'S25Q21M PARTNR1-KISSED-W1' /
   H1RI21N1  'S25Q21N PARTNR1-TOUCHED EACH OTHER-W1' /
   H1RI21O1  'S25Q21O PARTNR1-HAD SEX-W1' /
   H1RI21P1  'S25Q21P PARTNR1-TOUCHED GENITALS-W1' /
   H1RI21Q1  'S25Q21Q PARTNR1-GOT PREGNANT-W1' /
   H1RI21R1  'S25Q21R PARTNR1-GOT MARRIED-W1' /
   H1RI22A1  'S25Q22A_1 PARTNR1-FIRST EVENT-W1' /
   H1RI22B1  'S25Q22B_1 PARTNR1-SECOND EVENT-W1' /
   H1RI22C1  'S25Q22C_1 PARTNR1-3RD EVENT-W1' /
   H1RI22D1  'S25Q22D_1 PARTNR1-4TH EVENT-W1' /
   H1RI22E1  'S25Q22E_1 PARTNR1-5TH EVENT-W1' /
   H1RI22F1  'S25Q22F_1 PARTNR1-6TH EVENT-W1' /
   H1RI22G1  'S25Q22G_1 PARTNR1-7TH EVENT-W1' /
   H1RI22H1  'S25Q22H_1 PARTNR1-8TH EVENT-W1' /
   H1RI22I1  'S25Q22I_1 PARTNR1-9TH EVENT-W1' /
   H1RI22J1  'S25Q22J_1 PARTNR1-10TH EVENT-W1' /
   H1RI22K1  'S25Q22K_1 PARTNR1-11TH EVENT-W1' /
   H1RI22L1  'S25Q22L_1 PARTNR1-12TH EVENT-W1' /
   H1RI22M1  'S25Q22M_1 PARTNR1-13TH EVENT-W1' /
   H1RI22N1  'S25Q22N_1 PARTNR1-14TH EVENT-W1' /
   H1RI22O1  'S25Q22O_1 PARTNR1-15TH EVENT-W1' /
   H1RI22P1  'S25Q22P_1 PARTNR1-16TH EVENT-W1' /
   H1RI22Q1  'S25Q22Q_1 PARTNR1-17TH EVENT-W1' /
   H1RI22R1  'S25Q22R_1 PARTNR1-18TH EVENT-W1' /
   H1RI24A1  'S25Q24A_1 PARTNR1-SEXUAL INTERCOURSE-W1' /
   H1RI25M1  'S25Q25_1M PARTNR1-FIRST TIME SEX-MO-W1' /
   H1RI25Y1  'S25Q25_1Y PARTNR1-FIRST TIME SEX-YR-W1' /
   H1RI26M1  'S25Q26_1M PARTNR1-MOST RECENT SEX-MO-W1' /
   H1RI26Y1  'S25Q26_1Y PARTNR1-MOST RECENT SEX-YR-W1' /
   H1RI27_1  'S25Q27_1 PARTNR1-SEX MORE THEN ONCE-W1' /
   H1RI28_1  'S25Q28_1 PARTNR1-USE BIRTHCONTROL-W1' /
   H1RI29A1  'S25Q29A_1 PARTNR1-METHOD 1-W1' /
   H1RI29B1  'S25Q29B_1 PARTNR1-METHOD 2-W1' /
   H1RI29C1  'S25Q29C_1 PARTNR1-METHOD 3-W1' /
   H1RI30_1  'S25Q30_1 PARTNR1-USE A CONDOM-W1' /
   H1RI31_1  'S25Q31_1 PARTNR1-USE OTHER METHOD-W1' /
   H1RI32_1  'S25Q32_1 PARTNR1-BIRTHCONTROL ALWAYS-W1' /
   H1RI33A1  'S25Q33A_1 PARTNR1-METHOD 1-W1' /
   H1RI33B1  'S25Q33B_1 PARTNR1-METHOD 2-W1' /
   H1RI33C1  'S25Q33C_1 PARTNR1-METHOD 3-W1' /
   H1RI34_1  'S25Q34_1 PARTNR1-EVER USE CONDOM-W1' /
   H1RI35_1  'S25Q35_1 PARTNR1-USE >1 METHOD-W1' /
   H1RI36_1  'S25Q35_1 PARTNR1-USE BIRTHCONTROL-W1' /
   H1RI37_1  'S25Q37_1 PARTNR1-ALWAYS BIRTHCONTROL-W1' /
   H1RI38A1  'S25Q38A_1 PARTNR1-METHOD 1-W1' /
   H1RI38B1  'S25Q38B_1 PARTNR1-METHOD 2-W1' /
   H1RI38C1  'S25Q38C_1 PARTNR1-METHOD 3-W1' /
   H1RI39_1  'S25Q39_1 PARTNR1-EVER USE CONDOM-W1' /
   H1RI40_1  'S25Q40_1 PARTNR1-USE >1 METHOD-W1' /
   H1RI41_1  'S25Q41_1 PARTNR1-NO. TIMES HAD SEX-W1' /
   H1RI1M_2  'S25Q1M PARTNR2-DATE BEGAN-MONTH-W1' /
   H1RI1Y_2  'S25Q1Y PARTNR2-DATE BEGAN-YEAR-W1' /
   H1RI2_2   'S25Q2 PARTNR2-YEAR RELATION BEGAN-W1' /
   H1RI3_2   'S25Q3 PARTNR2 HIS/HER AGE WHEN MET-W1' /
   H1RI4_2   'S25Q4 PARTNR2 APPROX PARTNERS AGE-W1' /
   H1RI5A_2  'S25Q5 PARTNR2 HIS/HER GRADE WHEN MET-W1' /
   H1RI6_2   'S25Q6 PARTNR2 GO TO SAME SCHOOL-W1' /
   H1RI7_2   'S25Q7 PARTNR2 WHERE DID HE/SHE LIVE-W1' /
   H1RI8A_2  'S25Q8A PARTNR2-SAME SCHOOL-W1' /
   H1RI8B_2  'S25Q8B PARTNR2-SAME PL OF WORSHIP-W1' /
   H1RI8C_2  'S25Q8C PARTNR2-NEIGHBORS-W1' /
   H1RI8D_2  'S25Q8D PARTNR2-CASUAL ACQUAINTENCES-W1' /
   H1RI8E_2  'S25Q8E PARTNR2-FRIENDS-W1' /
   H1RI8F_2  'S25Q8F PARTNR2-SHARED MUTUAL FRIEND-W1' /
   H1RI8G_2  'S25Q8G PARTNR2-SOME OTHER WAY-W1' /
   H1RI8H_2  'S25Q8H PARTNR2-DID NOT KNOW BEFORE-W1' /
   H1RI9_2   'S25Q9 PARTNR2-HOW MANY FRIENDS KNEW-W1' /
   H1RI10_2  'S25Q10 PARTNR2-STILL GOING ON-W1' /
   H1RI11M2  'S25Q11M PARTNR2-WHEN DID IT END-MO-W1' /
   H1RI11Y2  'S25Q11Y PARTNR2-WHEN DID IT END-YR-W1' /
   H1RI12_2  'S25Q12 PARTNR2-WHAT YEAR DID IT END-W1' /
   H1RI13_2  'S25Q13 PARTNR2-WHERE LIVE AT END-W1' /
   H1RI14_2  'S25Q14 PARTNR2-SAMPLE/SISTER SCH NOW-W1' /
   H1RI15_2  'S25Q15 PARTNR2-GRADE NOW-W1' /
   H1RI16_2  'S25Q16 PARTNR2-HISPANIC/LATINO-W1' /
   H1RI17A2  'S25Q17A PARTNR2-MEXICAN-W1' /
   H1RI17B2  'S25Q17B PARTNR2-CHICANO-W1' /
   H1RI17C2  'S25Q17C PARTNR2-CUBAN-W1' /
   H1RI17D2  'S25Q17D PARTNR2-PUERTO RICAN-W1' /
   H1RI17E2  'S25Q17E PARTNR2-CENTR/SOUTH AMERICAN-W1' /
   H1RI17F2  'S25Q17F PARTNR2-OTHER HISPANIC-W1' /
   H1RI18A2  'S25Q18A PARTNR2-WHITE-W1' /
   H1RI18B2  'S25Q18B PARTNR2-AFRICAN AMERICAN-W1' /
   H1RI18C2  'S25Q18C PARTNR2-AMERICAN INDIAN-W1' /
   H1RI18D2  'S25Q18D PARTNR2-ASIAN-W1' /
   H1RI18E2  'S25Q18E PARTNR2-OTHER RACE-W1' /
   H1RI19A2  'S25Q19A PARTNR2-CHINESE-W1' /
   H1RI19B2  'S25Q19B PARTNR2-FILIPINO-W1' /
   H1RI19C2  'S25Q19C PARTNR2-JAPANESE-W1' /
   H1RI19D2  'S25Q19D PARTNR2-ASIAN INDIAN-W1' /
   H1RI19E2  'S25Q19E PARTNR2-KOREAN-W1' /
   H1RI19F2  'S25Q19F PARTNR2-VIETNAMESE-W1' /
   H1RI19G2  'S25Q19G PARTNR2-OTHER-W1' /
   H1RI20_2  'S25Q20 PARTNR2-GENDER-W1' /
   H1RI21A2  'S25Q21A PARTNR2-GROUP DATE-W1' /
   H1RI21B2  'S25Q21B PARTNR2-MET PARENTS-W1' /
   H1RI21C2  'S25Q21C PARTNR2-SAID WERE A COUPLE-W1' /
   H1RI21D2  'S25Q21D PARTNR2-SAW LESS OF FRIENDS-W1' /
   H1RI21E2  'S25Q21E PARTNR2-WENT OUT ALONE-W1' /
   H1RI21F2  'S25Q21F PARTNR2-HELD HANDS-W1' /
   H1RI21G2  'S25Q21G PARTNR2-GAVE A PRESENT-W1' /
   H1RI21H2  'S25Q21H PARTNR2-RECEIVED A PRESENT-W1' /
   H1RI21I2  'S25Q21I PARTNR2-SAID HE/SHE LOVED ME-W1' /
   H1RI21J2  'S25Q21J PARTNR2-SAID I LOVED PARTNER-W1' /
   H1RI21K2  'S25Q21K PARTNR2-CONSIDERED A COUPLE-W1' /
   H1RI21L2  'S25Q21L PARTNR2-TALKED CONTRACEPT-W1' /
   H1RI21M2  'S25Q21M PARTNR2-KISSED-W1' /
   H1RI21N2  'S25Q21N PARTNR2-TOUCHED EACH OTHER-W1' /
   H1RI21O2  'S25Q21O PARTNR2-HAD SEX-W1' /
   H1RI21P2  'S25Q21P PARTNR2-TOUCHED GENITALS-W1' /
   H1RI21Q2  'S25Q21Q PARTNR2-GOT PREGNANT-W1' /
   H1RI21R2  'S25Q21R PARTNR2-GOT MARRIED-W1' /
   H1RI22A2  'S25Q22A_2 PARTNR2-FIRST EVENT-W1' /
   H1RI22B2  'S25Q22B_2 PARTNR2-SECOND EVENT-W1' /
   H1RI22C2  'S25Q22C_2 PARTNR2-3RD EVENT-W1' /
   H1RI22D2  'S25Q22D_2 PARTNR2-4TH EVENT-W1' /
   H1RI22E2  'S25Q22E_2 PARTNR2-5TH EVENT-W1' /
   H1RI22F2  'S25Q22F_2 PARTNR2-6TH EVENT-W1' /
   H1RI22G2  'S25Q22G_2 PARTNR2-7TH EVENT-W1' /
   H1RI22H2  'S25Q22H_2 PARTNR2-8TH EVENT-W1' /
   H1RI22I2  'S25Q22I_2 PARTNR2-9TH EVENT-W1' /
   H1RI22J2  'S25Q22J_2 PARTNR2-10TH EVENT-W1' /
   H1RI22K2  'S25Q22K_2 PARTNR2-11TH EVENT-W1' /
   H1RI22L2  'S25Q22L_2 PARTNR2-12TH EVENT-W1' /
   H1RI22M2  'S25Q22M_2 PARTNR2-13TH EVENT-W1' /
   H1RI22N2  'S25Q22N_2 PARTNR2-14TH EVENT-W1' /
   H1RI22O2  'S25Q22O_2 PARTNR2-15TH EVENT-W1' /
   H1RI22P2  'S25Q22P_2 PARTNR2-16TH EVENT-W1' /
   H1RI22Q2  'S25Q22Q_2 PARTNR2-17TH EVENT-W1' /
   H1RI22R2  'S25Q22R_2 PARTNR2-18TH EVENT-W1' /
   H1RI24A2  'S25Q24A_2 PARTNR2-SEXUAL INTERCOURSE-W1' /
   H1RI25M2  'S25Q25_2M PARTNR2-FIRST TIME SEX-MO-W1' /
   H1RI25Y2  'S25Q25_2Y PARTNR2-FIRST TIME SEX-YR-W1' /
   H1RI26M2  'S25Q26_2M PARTNR2-MOST RECENT SEX-MO-W1' /
   H1RI26Y2  'S25Q26_2Y PARTNR2-MOST RECENT SEX-YR-W1' /
   H1RI27_2  'S25Q27_2 PARTNR2-SEX MORE THEN ONCE-W1' /
   H1RI28_2  'S25Q28_2 PARTNR2-USE BIRTHCONTROL-W1' /
   H1RI29A2  'S25Q29A_2 PARTNR2-METHOD 1-W1' /
   H1RI29B2  'S25Q29B_2 PARTNR2-METHOD 2-W1' /
   H1RI29C2  'S25Q29C_2 PARTNR2-METHOD 3-W1' /
   H1RI30_2  'S25Q30_2 PARTNR2-USE A CONDOM-W1' /
   H1RI31_2  'S25Q31_2 PARTNR2-USE OTHER METHOD-W1' /
   H1RI32_2  'S25Q32_2 PARTNR2-BIRTHCONTROL ALWAYS-W1' /
   H1RI33A2  'S25Q33A_2 PARTNR2-METHOD 1-W1' /
   H1RI33B2  'S25Q33B_2 PARTNR2-METHOD 2-W1' /
   H1RI33C2  'S25Q33C_2 PARTNR2-METHOD 3-W1' /
   H1RI34_2  'S25Q34_2 PARTNR2-EVER USE CONDOM-W1' /
   H1RI35_2  'S25Q35_2 PARTNR2-USE >1 METHOD-W1' /
   H1RI36_2  'S25Q35_2 PARTNR2-USE BIRTHCONTROL-W1' /
   H1RI37_2  'S25Q37_2 PARTNR2-ALWAYS BIRTHCONTROL-W1' /
   H1RI38A2  'S25Q38A_2 PARTNR2-METHOD 1-W1' /
   H1RI38B2  'S25Q38B_2 PARTNR2-METHOD 2-W1' /
   H1RI38C2  'S25Q38C_2 PARTNR2-METHOD 3-W1' /
   H1RI39_2  'S25Q39_2 PARTNR2-EVER USE CONDOM-W1' /
   H1RI40_2  'S25Q40_2 PARTNR2-USE >1 METHOD-W1' /
   H1RI41_2  'S25Q41_2 PARTNR2-NO. TIMES HAD SEX-W1' /
   H1RI1M_3  'S25Q1M PARTNR3-DATE BEGAN-MONTH-W1' /
   H1RI1Y_3  'S25Q1Y PARTNR3-DATE BEGAN-YEAR-W1' /
   H1RI2_3   'S25Q2 PARTNR3-YEAR RELATION BEGAN-W1' /
   H1RI3_3   'S25Q3 PARTNR3 HIS/HER AGE WHEN MET-W1' /
   H1RI4_3   'S25Q4 PARTNR3 APPROX PARTNERS AGE-W1' /
   H1RI5A_3  'S25Q5 PARTNR3 HIS/HER GRADE WHEN MET-W1' /
   H1RI6_3   'S25Q6 PARTNR3 GO TO SAME SCHOOL-W1' /
   H1RI7_3   'S25Q7 PARTNR3 WHERE DID HE/SHE LIVE-W1' /
   H1RI8A_3  'S25Q8A PARTNR3-SAME SCHOOL-W1' /
   H1RI8B_3  'S25Q8B PARTNR3-SAME PL OF WORSHIP-W1' /
   H1RI8C_3  'S25Q8C PARTNR3-NEIGHBORS-W1' /
   H1RI8D_3  'S25Q8D PARTNR3-CASUAL ACQUAINTENCES-W1' /
   H1RI8E_3  'S25Q8E PARTNR3-FRIENDS-W1' /
   H1RI8F_3  'S25Q8F PARTNR3-SHARED MUTUAL FRIEND-W1' /
   H1RI8G_3  'S25Q8G PARTNR3-SOME OTHER WAY-W1' /
   H1RI8H_3  'S25Q8H PARTNR3-DID NOT KNOW BEFORE-W1' /
   H1RI9_3   'S25Q9 PARTNR3-HOW MANY FRIENDS KNEW-W1' /
   H1RI10_3  'S25Q10 PARTNR3-STILL GOING ON-W1' /
   H1RI11M3  'S25Q11M PARTNR3-WHEN DID IT END-MO-W1' /
   H1RI11Y3  'S25Q11Y PARTNR3-WHEN DID IT END-YR-W1' /
   H1RI12_3  'S25Q12 PARTNR3-WHAT YEAR DID IT END-W1' /
   H1RI13_3  'S25Q13 PARTNR3-WHERE LIVE AT END-W1' /
   H1RI14_3  'S25Q14 PARTNR3-SAMPLE/SISTER SCH NOW-W1' /
   H1RI15_3  'S25Q15 PARTNR3-GRADE NOW-W1' /
   H1RI16_3  'S25Q16 PARTNR3-HISPANIC/LATINO-W1' /
   H1RI17A3  'S25Q17A PARTNR3-MEXICAN-W1' /
   H1RI17B3  'S25Q17B PARTNR3-CHICANO-W1' /
   H1RI17C3  'S25Q17C PARTNR3-CUBAN-W1' /
   H1RI17D3  'S25Q17D PARTNR3-PUERTO RICAN-W1' /
   H1RI17E3  'S25Q17E PARTNR3-CENTR/SOUTH AMERICAN-W1' /
   H1RI17F3  'S25Q17F PARTNR3-OTHER HISPANIC-W1' /
   H1RI18A3  'S25Q18A PARTNR3-WHITE-W1' /
   H1RI18B3  'S25Q18B PARTNR3-AFRICAN AMERICAN-W1' /
   H1RI18C3  'S25Q18C PARTNR3-AMERICAN INDIAN-W1' /
   H1RI18D3  'S25Q18D PARTNR3-ASIAN-W1' /
   H1RI18E3  'S25Q18E PARTNR3-OTHER RACE-W1' /
   H1RI19A3  'S25Q19A PARTNR3-CHINESE-W1' /
   H1RI19B3  'S25Q19B PARTNR3-FILIPINO-W1' /
   H1RI19C3  'S25Q19C PARTNR3-JAPANESE-W1' /
   H1RI19D3  'S25Q19D PARTNR3-ASIAN INDIAN-W1' /
   H1RI19E3  'S25Q19E PARTNR3-KOREAN-W1' /
   H1RI19F3  'S25Q19F PARTNR3-VIETNAMESE-W1' /
   H1RI19G3  'S25Q19G PARTNR3-OTHER-W1' /
   H1RI20_3  'S25Q20 PARTNR3-GENDER-W1' /
   H1RI21A3  'S25Q21A PARTNR3-GROUP DATE-W1' /
   H1RI21B3  'S25Q21B PARTNR3-MET PARENTS-W1' /
   H1RI21C3  'S25Q21C PARTNR3-SAID WERE A COUPLE-W1' /
   H1RI21D3  'S25Q21D PARTNR3-SAW LESS OF FRIENDS-W1' /
   H1RI21E3  'S25Q21E PARTNR3-WENT OUT ALONE-W1' /
   H1RI21F3  'S25Q21F PARTNR3-HELD HANDS-W1' /
   H1RI21G3  'S25Q21G PARTNR3-GAVE A PRESENT-W1' /
   H1RI21H3  'S25Q21H PARTNR3-RECEIVED A PRESENT-W1' /
   H1RI21I3  'S25Q21I PARTNR3-SAID HE/SHE LOVED ME-W1' /
   H1RI21J3  'S25Q21J PARTNR3-SAID I LOVED PARTNER-W1' /
   H1RI21K3  'S25Q21K PARTNR3-CONSIDERED A COUPLE-W1' /
   H1RI21L3  'S25Q21L PARTNR3-TALKED CONTRACEPT-W1' /
   H1RI21M3  'S25Q21M PARTNR3-KISSED-W1' /
   H1RI21N3  'S25Q21N PARTNR3-TOUCHED EACH OTHER-W1' /
   H1RI21O3  'S25Q21O PARTNR3-HAD SEX-W1' /
   H1RI21P3  'S25Q21P PARTNR3-TOUCHED GENITALS-W1' /
   H1RI21Q3  'S25Q21Q PARTNR3-GOT PREGNANT-W1' /
   H1RI21R3  'S25Q21R PARTNR3-GOT MARRIED-W1' /
   H1RI22A3  'S25Q22A_3 PARTNR3-FIRST EVENT-W1' /
   H1RI22B3  'S25Q22B_3 PARTNR3-SECOND EVENT-W1' /
   H1RI22C3  'S25Q22C_3 PARTNR3-3RD EVENT-W1' /
   H1RI22D3  'S25Q22D_3 PARTNR3-4TH EVENT-W1' /
   H1RI22E3  'S25Q22E_3 PARTNR3-5TH EVENT-W1' /
   H1RI22F3  'S25Q22F_3 PARTNR3-6TH EVENT-W1' /
   H1RI22G3  'S25Q22G_3 PARTNR3-7TH EVENT-W1' /
   H1RI22H3  'S25Q22H_3 PARTNR3-8TH EVENT-W1' /
   H1RI22I3  'S25Q22I_3 PARTNR3-9TH EVENT-W1' /
   H1RI22J3  'S25Q22J_3 PARTNR3-10TH EVENT-W1' /
   H1RI22K3  'S25Q22K_3 PARTNR3-11TH EVENT-W1' /
   H1RI22L3  'S25Q22L_3 PARTNR3-12TH EVENT-W1' /
   H1RI22M3  'S25Q22M_3 PARTNR3-13TH EVENT-W1' /
   H1RI22N3  'S25Q22N_3 PARTNR3-14TH EVENT-W1' /
   H1RI22O3  'S25Q22O_3 PARTNR3-15TH EVENT-W1' /
   H1RI22P3  'S25Q22P_3 PARTNR3-16TH EVENT-W1' /
   H1RI22Q3  'S25Q22Q_3 PARTNR3-17TH EVENT-W1' /
   H1RI22R3  'S25Q22R_3 PARTNR3-18TH EVENT-W1' /
   H1RI24A3  'S25Q24A_3 PARTNR3-SEXUAL INTERCOURSE-W1' /
   H1RI25M3  'S25Q25_3M PARTNR3-FIRST TIME SEX-MO-W1' /
   H1RI25Y3  'S25Q25_3Y PARTNR3-FIRST TIME SEX-YR-W1' /
   H1RI26M3  'S25Q26_3M PARTNR3-MOST RECENT SEX-MO-W1' /
   H1RI26Y3  'S25Q26_3Y PARTNR3-MOST RECENT SEX-YR-W1' /
   H1RI27_3  'S25Q27_3 PARTNR3-SEX MORE THEN ONCE-W1' /
   H1RI28_3  'S25Q28_3 PARTNR3-USE BIRTHCONTROL-W1' /
   H1RI29A3  'S25Q29A_3 PARTNR3-METHOD 1-W1' /
   H1RI29B3  'S25Q29B_3 PARTNR3-METHOD 2-W1' /
   H1RI29C3  'S25Q29C_3 PARTNR3-METHOD 3-W1' /
   H1RI30_3  'S25Q30_3 PARTNR3-USE A CONDOM-W1' /
   H1RI31_3  'S25Q31_3 PARTNR3-USE OTHER METHOD-W1' /
   H1RI32_3  'S25Q32_3 PARTNR3-BIRTHCONTROL ALWAYS-W1' /
   H1RI33A3  'S25Q33A_3 PARTNR3-METHOD 1-W1' /
   H1RI33B3  'S25Q33B_3 PARTNR3-METHOD 2-W1' /
   H1RI33C3  'S25Q33C_3 PARTNR3-METHOD 3-W1' /
   H1RI34_3  'S25Q34_3 PARTNR3-EVER USE CONDOM-W1' /
   H1RI35_3  'S25Q35_3 PARTNR3-USE >1 METHOD-W1' /
   H1RI36_3  'S25Q35_3 PARTNR3-USE BIRTHCONTROL-W1' /
   H1RI37_3  'S25Q37_3 PARTNR3-ALWAYS BIRTHCONTROL-W1' /
   H1RI38A3  'S25Q38A_3 PARTNR3-METHOD 1-W1' /
   H1RI38B3  'S25Q38B_3 PARTNR3-METHOD 2-W1' /
   H1RI38C3  'S25Q38C_3 PARTNR3-METHOD 3-W1' /
   H1RI39_3  'S25Q39_3 PARTNR3-EVER USE CONDOM-W1' /
   H1RI40_3  'S25Q40_3 PARTNR3-USE >1 METHOD-W1' /
   H1RI41_3  'S25Q41_3 PARTNR3-NO. TIMES HAD SEX-W1' /
   RICARD1   'Flag indicating recoding of relationship activity card sequence for first relationship' /
   RICARD2   'Flag indicating recoding of relationship activity card sequence for second relationship' /
   RICARD3   'Flag indicating recoding of relationship activity card sequence for third relationship' /
   H1NR1     'S26Q1 EVER ATTRACTED TO A FEMALE-W1' /
   H1NR2     'S26Q2 EVER ATTRACTED TO A MALE-W1' /
   H1NR3     'S26Q3 SEX FOR DRUGS OR MONEY-W1' /
   H1NR4     'S26Q4 FREQ-SEX FOR DRUGS OR MONEY-W1' /
   H1NR5     'S26Q5 NON-ROMANCE SEX W/ ANYONE-W1' /
   H1NR6     'S26Q6 TOTAL NO OF SEX PARTNERS-W1' /
   H1NR7     'SINCE 1/94,# OF SEX RELATIONSHIPS-W1' /
   H1NR8     'SINCE 1/94,# OF NR SEX RELATIONSHIPS-W1' /
   H1NR10_1  'S26Q10_1 PARTNR1-EVER HOLD HANDS-W1' /
   H1NR11_1  'S26Q11_1 PARTNR1-EVER KISS-W1' /
   H1NR12_1  'S26Q12_1 PARTNR1-SAY LOVE HIM/HER-W1' /
   NRRXFLG1  'PARTNER 1 NR DATA IN RX SECTION-W1' /
   H1RX1M_1  'S26RX1M PARTNR1-DATE BEGAN-MONTH-W1' /
   H1RX1Y_1  'S26RX1Y PARTNR1-DATE BEGAN-YEAR-W1' /
   H1RX2_1   'S26RX2 PARTNR1-YEAR RELATION BEGAN-W1' /
   H1RX3_1   'S26RX3 PARTNR1 HIS/HER AGE WHEN MET-W1' /
   H1RX4_1   'S26RX4 PARTNR1 APPROX PARTNERS AGE-W1' /
   H1RX5A_1  'S26RX5 PARTNR1 HIS/HER GRADE WHEN MET-W1' /
   H1RX6_1   'S26RX6 PARTNR1 GO TO SAME SCHOOL-W1' /
   H1RX7_1   'S26RX7 PARTNR1 WHERE DID HE/SHE LIVE-W1' /
   H1RX8A_1  'S26RX8A PARTNR1-SAME SCHOOL-W1' /
   H1RX8B_1  'S26RX8B PARTNR1-SAME PL OF WORSHIP-W1' /
   H1RX8C_1  'S26RX8C PARTNR1-NEIGHBORS-W1' /
   H1RX8D_1  'S26RX8D PARTNR1-CASUAL ACQUAINTENCES-W1' /
   H1RX8E_1  'S26RX8E PARTNR1-FRIENDS-W1' /
   H1RX8F_1  'S26RX8F PARTNR1-SHARED MUTUAL FRIEND-W1' /
   H1RX8G_1  'S26RX8G PARTNR1-SOME OTHER WAY-W1' /
   H1RX8H_1  'S26RX8H PARTNR1-DID NOT KNOW BEFORE-W1' /
   H1RX9_1   'S26RX9 PARTNR1-HOW MANY FRIENDS KNEW-W1' /
   H1RX10_1  'S26RX10 PARTNR1-STILL GOING ON-W1' /
   H1RX11M1  'S26RX11M PARTNR1-WHEN DID IT END-MO-W1' /
   H1RX11Y1  'S26RX11Y PARTNR1-WHEN DID IT END-YR-W1' /
   H1RX12_1  'S26RX12 PARTNR1-WHAT YEAR DID IT END-W1' /
   H1RX13_1  'S26RX13 PARTNR1-WHERE LIVE AT END-W1' /
   H1RX14_1  'S26RX14 PARTNR1-SAMPLE/SISTER SCH NOW-W1' /
   H1RX15_1  'S26RX15 PARTNR1-GRADE NOW-W1' /
   H1RX16_1  'S26RX16 PARTNR1-HISPANIC/LATINO-W1' /
   H1RX17A1  'S26RX17A PARTNR1-MEXICAN-W1' /
   H1RX17B1  'S26RX17B PARTNR1-CHICANO-W1' /
   H1RX17C1  'S26RX17C PARTNR1-CUBAN-W1' /
   H1RX17D1  'S26RX17D PARTNR1-PUERTO RICAN-W1' /
   H1RX17E1  'S26RX17E PARTNR1-CENTR/SOUTH AMERICAN-W1' /
   H1RX17F1  'S26RX17F PARTNR1-OTHER HISPANIC-W1' /
   H1RX18A1  'S26RX18A PARTNR1-WHITE-W1' /
   H1RX18B1  'S26RX18B PARTNR1-AFRICAN AMERICAN-W1' /
   H1RX18C1  'S26RX18C PARTNR1-AMERICAN INDIAN-W1' /
   H1RX18D1  'S26RX18D PARTNR1-ASIAN-W1' /
   H1RX18E1  'S26RX18E PARTNR1-OTHER RACE-W1' /
   H1RX19A1  'S26RX19A PARTNR1-CHINESE-W1' /
   H1RX19B1  'S26RX19B PARTNR1-FILIPINO-W1' /
   H1RX19C1  'S26RX19C PARTNR1-JAPANESE-W1' /
   H1RX19D1  'S26RX19D PARTNR1-ASIAN INDIAN-W1' /
   H1RX19E1  'S26RX19E PARTNR1-KOREAN-W1' /
   H1RX19F1  'S26RX19F PARTNR1-VIETNAMESE-W1' /
   H1RX19G1  'S26RX19G PARTNR1-OTHER-W1' /
   H1RX20_1  'S26RX20 PARTNR1-GENDER-W1' /
   H1RX21A1  'S26RX21A PARTNR1-GROUP DATE-W1' /
   H1RX21B1  'S26RX21B PARTNR1-MET PARENTS-W1' /
   H1RX21C1  'S26RX21C PARTNR1-SAID WERE A COUPLE-W1' /
   H1RX21D1  'S26RX21D PARTNR1-SAW LESS OF FRIENDS-W1' /
   H1RX21E1  'S26RX21E PARTNR1-WENT OUT ALONE-W1' /
   H1RX21F1  'S26RX21F PARTNR1-HELD HANDS-W1' /
   H1RX21G1  'S26RX21G PARTNR1-GAVE A PRESENT-W1' /
   H1RX21H1  'S26RX21H PARTNR1-RECEIVED A PRESENT-W1' /
   H1RX21I1  'S26RX21I PARTNR1-SAID HE/SHE LOVED ME-W1' /
   H1RX21J1  'S26RX21J PARTNR1-SAID I LOVED PARTNER-W1' /
   H1RX21K1  'S26RX21K PARTNR1-CONSIDERED A COUPLE-W1' /
   H1RX21L1  'S26RX21L PARTNR1-TALKED CONTRACEPT-W1' /
   H1RX21M1  'S26RX21M PARTNR1-KISSED-W1' /
   H1RX21N1  'S26RX21N PARTNR1-TOUCHED EACH OTHER-W1' /
   H1RX21O1  'S26RX21O PARTNR1-HAD SEX-W1' /
   H1RX21P1  'S26RX21P PARTNR1-TOUCHED GENITALS-W1' /
   H1RX21Q1  'S26RX21Q PARTNR1-GOT PREGNANT-W1' /
   H1RX21R1  'S26RX21R PARTNR1-GOT MARRIED-W1' /
   H1RX22A1  'S26RX22A_1 PARTNR1-FIRST EVENT-W1' /
   H1RX22B1  'S26RX22B_1 PARTNR1-SECOND EVENT-W1' /
   H1RX22C1  'S26RX22C_1 PARTNR1-3RD EVENT-W1' /
   H1RX22D1  'S26RX22D_1 PARTNR1-4TH EVENT-W1' /
   H1RX22E1  'S26RX22E_1 PARTNR1-5TH EVENT-W1' /
   H1RX22F1  'S26RX22F_1 PARTNR1-6TH EVENT-W1' /
   H1RX22G1  'S26RX22G_1 PARTNR1-7TH EVENT-W1' /
   H1RX22H1  'S26RX22H_1 PARTNR1-8TH EVENT-W1' /
   H1RX22I1  'S26RX22I_1 PARTNR1-9TH EVENT-W1' /
   H1RX22J1  'S26RX22J_1 PARTNR1-10TH EVENT-W1' /
   H1RX22K1  'S26RX22K_1 PARTNR1-11TH EVENT-W1' /
   H1RX22L1  'S26RX22L_1 PARTNR1-12TH EVENT-W1' /
   H1RX22M1  'S26RX22M_1 PARTNR1-13TH EVENT-W1' /
   H1RX22N1  'S26RX22N_1 PARTNR1-14TH EVENT-W1' /
   H1RX22O1  'S26RX22O_1 PARTNR1-15TH EVENT-W1' /
   H1RX22P1  'S26RX22P_1 PARTNR1-16TH EVENT-W1' /
   H1RX22Q1  'S26RX22Q_1 PARTNR1-17TH EVENT-W1' /
   H1RX22R1  'S26RX22R_1 PARTNR1-18TH EVENT-W1' /
   H1RX24A1  'S26RX24A1-PARTNR1-SEXUAL INTERCOURSE-W1' /
   H1RX25M1  'S26RX25_1M PARTNR1-FIRST TIME SEX-MO-W1' /
   H1RX25Y1  'S26RX25_1Y PARTNR1-FIRST TIME SEX-YR-W1' /
   H1RX26M1  'S26RX26_1M PARTNR1-MOST RECENT SEX-MO-W1' /
   H1RX26Y1  'S26RX26_1Y PARTNR1-MOST RECENT SEX-YR-W1' /
   H1RX27_1  'S26RX27_1 PARTNR1-SEX MORE THEN ONCE-W1' /
   H1RX28_1  'S26RX28_1 PARTNR1-USE BIRTHCONTROL-W1' /
   H1RX29A1  'S26RX29A_1 PARTNR1-METHOD 1-W1' /
   H1RX29B1  'S26RX29B_1 PARTNR1-METHOD 2-W1' /
   H1RX29C1  'S26RX29C_1 PARTNR1-METHOD 3-W1' /
   H1RX30_1  'S26RX30_1 PARTNR1-USE A CONDOM-W1' /
   H1RX31_1  'S26RX31_1 PARTNR1-USE OTHER METHOD-W1' /
   H1RX32_1  'S26RX32_1 PARTNR1-BIRTHCONTROL ALWAYS-W1' /
   H1RX33A1  'S26RX33A_1 PARTNR1-METHOD 1-W1' /
   H1RX33B1  'S26RX33B_1 PARTNR1-METHOD 2-W1' /
   H1RX33C1  'S26RX33C_1 PARTNR1-METHOD 3-W1' /
   H1RX34_1  'S26RX34_1 PARTNR1-EVER USE CONDOM-W1' /
   H1RX35_1  'S26RX35_1 PARTNR1-USE >1 METHOD-W1' /
   H1RX36_1  'S26RX35_1 PARTNR1-USE BIRTHCONTROL-W1' /
   H1RX37_1  'S26RX37_1 PARTNR1-ALWAYS BIRTHCONTROL-W1' /
   H1RX38A1  'S26RX38A_1 PARTNR1-METHOD 1-W1' /
   H1RX38B1  'S26RX38B_1 PARTNR1-METHOD 2-W1' /
   H1RX38C1  'S26RX38C_1 PARTNR1-METHOD 3-W1' /
   H1RX39_1  'S26RX39_1 PARTNR1-EVER USE CONDOM-W1' /
   H1RX40_1  'S26RX40_1 PARTNR1-USE >1 METHOD-W1' /
   H1RX41_1  'S26RX41_1 PARTNR1-NO. TIMES HAD SEX-W1' /
   H1NR13_1  'S26Q13 PARTNR1-AGE-W1' /
   H1NR14_1  'S26Q14 PARTNR1-SAMPLE/SISTER SCH-W1' /
   H1NR15_1  'S26Q15 PARTNR1-GENDER-W1' /
   H1NR16_1  'S26Q16 PARTNR1-HISPANIC/LATINO-W1' /
   H1NR17A1  'S26Q17A PARTNR1-MEXICAN-W1' /
   H1NR17B1  'S26Q17B PARTNR1-CHICANO-W1' /
   H1NR17C1  'S26Q17C PARTNR1-CUBAN-W1' /
   H1NR17D1  'S26Q17D PARTNR1-PUERTO RICAN-W1' /
   H1NR17E1  'S26Q17E PARTNR1-CENTRAL/S AMERICAN-W1' /
   H1NR17F1  'S26Q17F PARTNR1-OTHER HISPANIC-W1' /
   H1NR18A1  'S26Q18A PARTNR1-WHITE-W1' /
   H1NR18B1  'S26Q18B PARTNR1-AFRICAN AMERICAN-W1' /
   H1NR18C1  'S26Q18C PARTNR1-AMERICAN INDIAN-W1' /
   H1NR18D1  'S26Q18D PARTNR1-ASIAN-W1' /
   H1NR18E1  'S26Q18E PARTNR1-OTHER-W1' /
   H1NR19A1  'S26Q19A_1 PARTNR1-CHINESE-W1' /
   H1NR19B1  'S26Q19B_1 PARTNR1-FILIPINO-W1' /
   H1NR19C1  'S26Q19C_1 PARTNR1-JAPANESE-W1' /
   H1NR19D1  'S26Q19D_1 PARTNR1-ASIAN INDIAN-W1' /
   H1NR19E1  'S26Q19E_1 PARTNR1-KOREAN-W1' /
   H1NR19F1  'S26Q19F_1 PARTNR1-VIETNAMESE-W1' /
   H1NR19G1  'S26Q19G_1 PARTNR1-OTHER-W1' /
   H1NR20A1  'S26Q20A_1 PARTNR1-SAME SCHOOL-W1' /
   H1NR20B1  'S26Q20B_1 PARTNR1-SAME CHURCH/TEMPLE-W1' /
   H1NR20C1  'S26Q20C_1 PARTNR1-NEIGHBOR-W1' /
   H1NR20D1  'S26Q20D_1 PARTNR1-CASUAL ACQUAINT-W1' /
   H1NR20E1  'S26Q20E_1 PARTNR1-FRIENDS-W1' /
   H1NR20F1  'S26Q20F_1 PARTNR1-MUTUAL FRIEND-W1' /
   H1NR20G1  'S26Q20G_1 PARTNR1-SOME OTHER WAY-W1' /
   H1NR20H1  'S26Q20H_1 PARTNR1-STRANGER BEF SEX-W1' /
   H1NR21_1  'S26Q21_1 PARTNR1-RESIDENCE LOCATION-W1' /
   H1NR22_1  'S26Q22_1 PARTNR1-HAD SEX-W1' /
   H1NR23M1  'S26Q23M_1 PARTNR1-MO FIRST HAD SEX-W1' /
   H1NR23Y1  'S26Q23Y_1 PARTNR1-YR FIRST HAD SEX-W1' /
   H1NR24M1  'S26Q24M_1 PARTNR1-MO MOST RECENT SEX-W1' /
   H1NR24Y1  'S26Q24Y_1 PARTNR1-YR MOST RECENT SEX-W1' /
   H1NR25_1  'S26Q25_1 PARTNR1-HAD SEX > 1 TIME-W1' /
   H1NR26_1  'S26Q26_1 PARTNR1-USE ANY BIRTHCONTROL-W1' /
   H1NR27A1  'S26Q27A_1 PARTNR1-METHOD 1-W1' /
   H1NR27B1  'S26Q27B_1 PARTNR1-METHOD 2-W1' /
   H1NR27C1  'S26Q27C_1 PARTNR1-METHOD 3-W1' /
   H1NR28_1  'S26Q28_1 PARTNR1-USED CONDOM-W1' /
   H1NR29_1  'S26Q29_1 PARTNR1-USE ANY BIRTHCONTROL-W1' /
   H1NR30_1  'S26Q30_1 PARTNR1-BIRTHCONTROL ALWAYS-W1' /
   H1NR31A1  'S26Q31A_1 PARTNR1-METHOD 1-W1' /
   H1NR31B1  'S26Q31B_1 PARTNR1-METHOD 2-W1' /
   H1NR31C1  'S26Q31C_1 PARTNR1-METHOD 3-W1' /
   H1NR32_1  'S26Q32_1 PARTNR1-USED CONDOM-W1' /
   H1NR33_1  'S26Q33_1 PARTNR1->1 BIRTHCONTROL-W1' /
   H1NR34_1  'S26Q34_1 PARTNR1-EVER USE B.CONTROL-W1' /
   H1NR35_1  'S26Q35_1 PARTNR1-EVER USE B.CONTROL-W1' /
   H1NR36A1  'S26Q36A_1 PARTNR1-METHOD 1-W1' /
   H1NR36B1  'S26Q36B_1 PARTNR1-METHOD 2-W1' /
   H1NR36C1  'S26Q36C_1 PARTNR1-METHOD 3-W1' /
   H1NR37_1  'S26Q37_1 PARTNR1-EVER USE A CONDOM-W1' /
   H1NR38_1  'S26Q38_1 PARTNR1->1 BIRTHCONTROL-W1' /
   H1NR39_1  'S26Q39_1 PARTNR1-FREQ SEX-W1' /
   H1NR40_1  'S26Q40_1 PARTNR1-YOU USE A CONDOM-W1' /
   H1NR41_1  'S26Q41_1 PARTNR1-HE USE A CONDOM-W1' /
   H1NR42_1  'S26Q42_1 PARTNR1-SEX FOR DRUGS/MONEY-W1' /
   H1NR43_1  'S26Q43_1 PARTNR1-FREQ-DRUGS/MONEY-W1' /
   H1NR10_2  'S26Q10_2 PARTNR2-EVER HOLD HANDS-W1' /
   H1NR11_2  'S26Q11_2 PARTNR2-EVER KISS-W1' /
   H1NR12_2  'S26Q12_2 PARTNR2-SAY LOVE HIM/HER-W1' /
   NRRXFLG2  'PARTNER 2 NR DATA IN RX SECTION-W1' /
   H1RX1M_2  'S26RX1M PARTNR2-DATE BEGAN-MONTH-W1' /
   H1RX1Y_2  'S26RX1Y PARTNR2-DATE BEGAN-YEAR-W1' /
   H1RX2_2   'S26RX2 PARTNR2-YEAR RELATION BEGAN-W1' /
   H1RX3_2   'S26RX3 PARTNR2 HIS/HER AGE WHEN MET-W1' /
   H1RX4_2   'S26RX4 PARTNR2 APPROX PARTNERS AGE-W1' /
   H1RX5A_2  'S26RX5 PARTNR2 HIS/HER GRADE WHEN MET-W1' /
   H1RX6_2   'S26RX6 PARTNR2 GO TO SAME SCHOOL-W1' /
   H1RX7_2   'S26RX7 PARTNR2 WHERE DID HE/SHE LIVE-W1' /
   H1RX8A_2  'S26RX8A PARTNR2-SAME SCHOOL-W1' /
   H1RX8B_2  'S26RX8B PARTNR2-SAME PL OF WORSHIP-W1' /
   H1RX8C_2  'S26RX8C PARTNR2-NEIGHBORS-W1' /
   H1RX8D_2  'S26RX8D PARTNR2-CASUAL ACQUAINTENCES-W1' /
   H1RX8E_2  'S26RX8E PARTNR2-FRIENDS-W1' /
   H1RX8F_2  'S26RX8F PARTNR2-SHARED MUTUAL FRIEND-W1' /
   H1RX8G_2  'S26RX8G PARTNR2-SOME OTHER WAY-W1' /
   H1RX8H_2  'S26RX8H PARTNR2-DID NOT KNOW BEFORE-W1' /
   H1RX9_2   'S26RX9 PARTNR2-HOW MANY FRIENDS KNEW-W1' /
   H1RX10_2  'S26RX10 PARTNR2-STILL GOING ON-W1' /
   H1RX11M2  'S26RX11M PARTNR2-WHEN DID IT END-MO-W1' /
   H1RX11Y2  'S26RX11Y PARTNR2-WHEN DID IT END-YR-W1' /
   H1RX12_2  'S26RX12 PARTNR2-WHAT YEAR DID IT END-W1' /
   H1RX13_2  'S26RX13 PARTNR2-WHERE LIVE AT END-W1' /
   H1RX14_2  'S26RX14 PARTNR2-SAMPLE/SISTER SCH NOW-W1' /
   H1RX15_2  'S26RX15 PARTNR2-GRADE NOW-W1' /
   H1RX16_2  'S26RX16 PARTNR2-HISPANIC/LATINO-W1' /
   H1RX17A2  'S26RX17A PARTNR2-MEXICAN-W1' /
   H1RX17B2  'S26RX17B PARTNR2-CHICANO-W1' /
   H1RX17C2  'S26RX17C PARTNR2-CUBAN-W1' /
   H1RX17D2  'S26RX17D PARTNR2-PUERTO RICAN-W1' /
   H1RX17E2  'S26RX17E PARTNR2-CENTR/SOUTH AMERICAN-W1' /
   H1RX17F2  'S26RX17F PARTNR2-OTHER HISPANIC-W1' /
   H1RX18A2  'S26RX18A PARTNR2-WHITE-W1' /
   H1RX18B2  'S26RX18B PARTNR2-AFRICAN AMERICAN-W1' /
   H1RX18C2  'S26RX18C PARTNR2-AMERICAN INDIAN-W1' /
   H1RX18D2  'S26RX18D PARTNR2-ASIAN-W1' /
   H1RX18E2  'S26RX18E PARTNR2-OTHER RACE-W1' /
   H1RX19A2  'S26RX19A PARTNR2-CHINESE-W1' /
   H1RX19B2  'S26RX19B PARTNR2-FILIPINO-W1' /
   H1RX19C2  'S26RX19C PARTNR2-JAPANESE-W1' /
   H1RX19D2  'S26RX19D PARTNR2-ASIAN INDIAN-W1' /
   H1RX19E2  'S26RX19E PARTNR2-KOREAN-W1' /
   H1RX19F2  'S26RX19F PARTNR2-VIETNAMESE-W1' /
   H1RX19G2  'S26RX19G PARTNR2-OTHER-W1' /
   H1RX20_2  'S26RX20 PARTNR2-GENDER-W1' /
   H1RX21A2  'S26RX21A PARTNR2-GROUP DATE-W1' /
   H1RX21B2  'S26RX21B PARTNR2-MET PARENTS-W1' /
   H1RX21C2  'S26RX21C PARTNR2-SAID WERE A COUPLE-W1' /
   H1RX21D2  'S26RX21D PARTNR2-SAW LESS OF FRIENDS-W1' /
   H1RX21E2  'S26RX21E PARTNR2-WENT OUT ALONE-W1' /
   H1RX21F2  'S26RX21F PARTNR2-HELD HANDS-W1' /
   H1RX21G2  'S26RX21G PARTNR2-GAVE A PRESENT-W1' /
   H1RX21H2  'S26RX21H PARTNR2-RECEIVED A PRESENT-W1' /
   H1RX21I2  'S26RX21I PARTNR2-SAID HE/SHE LOVED ME-W1' /
   H1RX21J2  'S26RX21J PARTNR2-SAID I LOVED PARTNER-W1' /
   H1RX21K2  'S26RX21K PARTNR2-CONSIDERED A COUPLE-W1' /
   H1RX21L2  'S26RX21L PARTNR2-TALKED CONTRACEPT-W1' /
   H1RX21M2  'S26RX21M PARTNR2-KISSED-W1' /
   H1RX21N2  'S26RX21N PARTNR2-TOUCHED EACH OTHER-W1' /
   H1RX21O2  'S26RX21O PARTNR2-HAD SEX-W1' /
   H1RX21P2  'S26RX21P PARTNR2-TOUCHED GENITALS-W1' /
   H1RX21Q2  'S26RX21Q PARTNR2-GOT PREGNANT-W1' /
   H1RX21R2  'S26RX21R PARTNR2-GOT MARRIED-W1' /
   H1RX22A2  'S26RX22A_2 PARTNR2-FIRST EVENT-W1' /
   H1RX22B2  'S26RX22B_2 PARTNR2-SECOND EVENT-W1' /
   H1RX22C2  'S26RX22C_2 PARTNR2-3RD EVENT-W1' /
   H1RX22D2  'S26RX22D_2 PARTNR2-4TH EVENT-W1' /
   H1RX22E2  'S26RX22E_2 PARTNR2-5TH EVENT-W1' /
   H1RX22F2  'S26RX22F_2 PARTNR2-6TH EVENT-W1' /
   H1RX22G2  'S26RX22G_2 PARTNR2-7TH EVENT-W1' /
   H1RX22H2  'S26RX22H_2 PARTNR2-8TH EVENT-W1' /
   H1RX22I2  'S26RX22I_2 PARTNR2-9TH EVENT-W1' /
   H1RX22J2  'S26RX22J_2 PARTNR2-10TH EVENT-W1' /
   H1RX22K2  'S26RX22K_2 PARTNR2-11TH EVENT-W1' /
   H1RX22L2  'S26RX22L_2 PARTNR2-12TH EVENT-W1' /
   H1RX22M2  'S26RX22M_2 PARTNR2-13TH EVENT-W1' /
   H1RX22N2  'S26RX22N_2 PARTNR2-14TH EVENT-W1' /
   H1RX22O2  'S26RX22O_2 PARTNR2-15TH EVENT-W1' /
   H1RX22P2  'S26RX22P_2 PARTNR2-16TH EVENT-W1' /
   H1RX22Q2  'S26RX22Q_2 PARTNR2-17TH EVENT-W1' /
   H1RX22R2  'S26RX22R_2 PARTNR2-18TH EVENT-W1' /
   H1RX24A2  'S26RX24A2-PARTNR2-SEXUAL INTERCOURSE-W1' /
   H1RX25M2  'S26RX25_2M PARTNR2-FIRST TIME SEX-MO-W1' /
   H1RX25Y2  'S26RX25_2Y PARTNR2-FIRST TIME SEX-YR-W1' /
   H1RX26M2  'S26RX26_2M PARTNR2-MOST RECENT SEX-MO-W1' /
   H1RX26Y2  'S26RX26_2Y PARTNR2-MOST RECENT SEX-YR-W1' /
   H1RX27_2  'S26RX27_2 PARTNR2-SEX MORE THEN ONCE-W1' /
   H1RX28_2  'S26RX28_2 PARTNR2-USE BIRTHCONTROL-W1' /
   H1RX29A2  'S26RX29A_2 PARTNR2-METHOD 1-W1' /
   H1RX29B2  'S26RX29B_2 PARTNR2-METHOD 2-W1' /
   H1RX29C2  'S26RX29C_2 PARTNR2-METHOD 3-W1' /
   H1RX30_2  'S26RX30_2 PARTNR2-USE A CONDOM-W1' /
   H1RX31_2  'S26RX31_2 PARTNR2-USE OTHER METHOD-W1' /
   H1RX32_2  'S26RX32_2 PARTNR2-BIRTHCONTROL ALWAYS-W1' /
   H1RX33A2  'S26RX33A_2 PARTNR2-METHOD 1-W1' /
   H1RX33B2  'S26RX33B_2 PARTNR2-METHOD 2-W1' /
   H1RX33C2  'S26RX33C_2 PARTNR2-METHOD 3-W1' /
   H1RX34_2  'S26RX34_2 PARTNR2-EVER USE CONDOM-W1' /
   H1RX35_2  'S26RX35_2 PARTNR2-USE >1 METHOD-W1' /
   H1RX36_2  'S26RX35_2 PARTNR2-USE BIRTHCONTROL-W1' /
   H1RX37_2  'S26RX37_2 PARTNR2-ALWAYS BIRTHCONTROL-W1' /
   H1RX38A2  'S26RX38A_2 PARTNR2-METHOD 1-W1' /
   H1RX38B2  'S26RX38B_2 PARTNR2-METHOD 2-W1' /
   H1RX38C2  'S26RX38C_2 PARTNR2-METHOD 3-W1' /
   H1RX39_2  'S26RX39_2 PARTNR2-EVER USE CONDOM-W1' /
   H1RX40_2  'S26RX40_2 PARTNR2-USE >1 METHOD-W1' /
   H1RX41_2  'S26RX41_2 PARTNR2-NO. TIMES HAD SEX-W1' /
   H1NR13_2  'S26Q13 PARTNR2-AGE-W1' /
   H1NR14_2  'S26Q14 PARTNR2-SAMPLE/SISTER SCH-W1' /
   H1NR15_2  'S26Q15 PARTNR2-GENDER-W1' /
   H1NR16_2  'S26Q16 PARTNR2-HISPANIC/LATINO-W1' /
   H1NR17A2  'S26Q17A PARTNR2-MEXICAN-W1' /
   H1NR17B2  'S26Q17B PARTNR2-CHICANO-W1' /
   H1NR17C2  'S26Q17C PARTNR2-CUBAN-W1' /
   H1NR17D2  'S26Q17D PARTNR2-PUERTO RICAN-W1' /
   H1NR17E2  'S26Q17E PARTNR2-CENTRAL/S AMERICAN-W1' /
   H1NR17F2  'S26Q17F PARTNR2-OTHER HISPANIC-W1' /
   H1NR18A2  'S26Q18A PARTNR2-WHITE-W1' /
   H1NR18B2  'S26Q18B PARTNR2-AFRICAN AMERICAN-W1' /
   H1NR18C2  'S26Q18C PARTNR2-AMERICAN INDIAN-W1' /
   H1NR18D2  'S26Q18D PARTNR2-ASIAN-W1' /
   H1NR18E2  'S26Q18E PARTNR2-OTHER-W1' /
   H1NR19A2  'S26Q19A_2 PARTNR2-CHINESE-W1' /
   H1NR19B2  'S26Q19B_2 PARTNR2-FILIPINO-W1' /
   H1NR19C2  'S26Q19C_2 PARTNR2-JAPANESE-W1' /
   H1NR19D2  'S26Q19D_2 PARTNR2-ASIAN INDIAN-W1' /
   H1NR19E2  'S26Q19E_2 PARTNR2-KOREAN-W1' /
   H1NR19F2  'S26Q19F_2 PARTNR2-VIETNAMESE-W1' /
   H1NR19G2  'S26Q19G_2 PARTNR2-OTHER-W1' /
   H1NR20A2  'S26Q20A_2 PARTNR2-SAME SCHOOL-W1' /
   H1NR20B2  'S26Q20B_2 PARTNR2-SAME CHURCH/TEMPLE-W1' /
   H1NR20C2  'S26Q20C_2 PARTNR2-NEIGHBOR-W1' /
   H1NR20D2  'S26Q20D_2 PARTNR2-CASUAL ACQUAINT-W1' /
   H1NR20E2  'S26Q20E_2 PARTNR2-FRIENDS-W1' /
   H1NR20F2  'S26Q20F_2 PARTNR2-MUTUAL FRIEND-W1' /
   H1NR20G2  'S26Q20G_2 PARTNR2-SOME OTHER WAY-W1' /
   H1NR20H2  'S26Q20H_2 PARTNR2-STRANGER BEF SEX-W1' /
   H1NR21_2  'S26Q21_2 PARTNR2-RESIDENCE LOCATION-W1' /
   H1NR22_2  'S26Q22_2 PARTNR2-HAD SEX-W1' /
   H1NR23M2  'S26Q23M_2 PARTNR2-MO FIRST HAD SEX-W1' /
   H1NR23Y2  'S26Q23Y_2 PARTNR2-YR FIRST HAD SEX-W1' /
   H1NR24M2  'S26Q24M_2 PARTNR2-MO MOST RECENT SEX-W1' /
   H1NR24Y2  'S26Q24Y_2 PARTNR2-YR MOST RECENT SEX-W1' /
   H1NR25_2  'S26Q25_2 PARTNR2-HAD SEX > 1 TIME-W1' /
   H1NR26_2  'S26Q26_2 PARTNR2-USE ANY BIRTHCONTROL-W1' /
   H1NR27A2  'S26Q27A_2 PARTNR2-METHOD 1-W1' /
   H1NR27B2  'S26Q27B_2 PARTNR2-METHOD 2-W1' /
   H1NR27C2  'S26Q27C_2 PARTNR2-METHOD 3-W1' /
   H1NR28_2  'S26Q28_2 PARTNR2-USED CONDOM-W1' /
   H1NR29_2  'S26Q29_2 PARTNR2-USE ANY BIRTHCONTROL-W1' /
   H1NR30_2  'S26Q30_2 PARTNR2-BIRTHCONTROL ALWAYS-W1' /
   H1NR31A2  'S26Q31A_2 PARTNR2-METHOD 1-W1' /
   H1NR31B2  'S26Q31B_2 PARTNR2-METHOD 2-W1' /
   H1NR31C2  'S26Q31C_2 PARTNR2-METHOD 3-W1' /
   H1NR32_2  'S26Q32_2 PARTNR2-USED CONDOM-W1' /
   H1NR33_2  'S26Q33_2 PARTNR2->1 BIRTHCONTROL-W1' /
   H1NR34_2  'S26Q34_2 PARTNR2-EVER USE B.CONTROL-W1' /
   H1NR35_2  'S26Q35_2 PARTNR2-EVER USE B.CONTROL-W1' /
   H1NR36A2  'S26Q36A_2 PARTNR2-METHOD 1-W1' /
   H1NR36B2  'S26Q36B_2 PARTNR2-METHOD 2-W1' /
   H1NR36C2  'S26Q36C_2 PARTNR2-METHOD 3-W1' /
   H1NR37_2  'S26Q37_2 PARTNR2-EVER USE A CONDOM-W1' /
   H1NR38_2  'S26Q38_2 PARTNR2->1 BIRTHCONTROL-W1' /
   H1NR39_2  'S26Q39_2 PARTNR2-FREQ SEX-W1' /
   H1NR40_2  'S26Q40_2 PARTNR2-YOU USE A CONDOM-W1' /
   H1NR41_2  'S26Q41_2 PARTNR2-HE USE A CONDOM-W1' /
   H1NR42_2  'S26Q42_2 PARTNR2-SEX FOR DRUGS/MONEY-W1' /
   H1NR43_2  'S26Q43_2 PARTNR2-FREQ-DRUGS/MONEY-W1' /
   H1NR10_3  'S26Q10_3 PARTNR3-EVER HOLD HANDS-W1' /
   H1NR11_3  'S26Q11_3 PARTNR3-EVER KISS-W1' /
   H1NR12_3  'S26Q12_3 PARTNR3-SAY LOVE HIM/HER-W1' /
   NRRXFLG3  'PARTNER 3 NR DATA IN RX SECTION-W1' /
   H1RX1M_3  'S26RX1M PARTNR3-DATE BEGAN-MONTH-W1' /
   H1RX1Y_3  'S26RX1Y PARTNR3-DATE BEGAN-YEAR-W1' /
   H1RX2_3   'S26RX2 PARTNR3-YEAR RELATION BEGAN-W1' /
   H1RX3_3   'S26RX3 PARTNR3 HIS/HER AGE WHEN MET-W1' /
   H1RX4_3   'S26RX4 PARTNR3 APPROX PARTNERS AGE-W1' /
   H1RX5A_3  'S26RX5 PARTNR3 HIS/HER GRADE WHEN MET-W1' /
   H1RX6_3   'S26RX6 PARTNR3 GO TO SAME SCHOOL-W1' /
   H1RX7_3   'S26RX7 PARTNR3 WHERE DID HE/SHE LIVE-W1' /
   H1RX8A_3  'S26RX8A PARTNR3-SAME SCHOOL-W1' /
   H1RX8B_3  'S26RX8B PARTNR3-SAME PL OF WORSHIP-W1' /
   H1RX8C_3  'S26RX8C PARTNR3-NEIGHBORS-W1' /
   H1RX8D_3  'S26RX8D PARTNR3-CASUAL ACQUAINTENCES-W1' /
   H1RX8E_3  'S26RX8E PARTNR3-FRIENDS-W1' /
   H1RX8F_3  'S26RX8F PARTNR3-SHARED MUTUAL FRIEND-W1' /
   H1RX8G_3  'S26RX8G PARTNR3-SOME OTHER WAY-W1' /
   H1RX8H_3  'S26RX8H PARTNR3-DID NOT KNOW BEFORE-W1' /
   H1RX9_3   'S26RX9 PARTNR3-HOW MANY FRIENDS KNEW-W1' /
   H1RX10_3  'S26RX10 PARTNR3-STILL GOING ON-W1' /
   H1RX11M3  'S26RX11M PARTNR3-WHEN DID IT END-MO-W1' /
   H1RX11Y3  'S26RX11Y PARTNR3-WHEN DID IT END-YR-W1' /
   H1RX12_3  'S26RX12 PARTNR3-WHAT YEAR DID IT END-W1' /
   H1RX13_3  'S26RX13 PARTNR3-WHERE LIVE AT END-W1' /
   H1RX14_3  'S26RX14 PARTNR3-SAMPLE/SISTER SCH NOW-W1' /
   H1RX15_3  'S26RX15 PARTNR3-GRADE NOW-W1' /
   H1RX16_3  'S26RX16 PARTNR3-HISPANIC/LATINO-W1' /
   H1RX17A3  'S26RX17A PARTNR3-MEXICAN-W1' /
   H1RX17B3  'S26RX17B PARTNR3-CHICANO-W1' /
   H1RX17C3  'S26RX17C PARTNR3-CUBAN-W1' /
   H1RX17D3  'S26RX17D PARTNR3-PUERTO RICAN-W1' /
   H1RX17E3  'S26RX17E PARTNR3-CENTR/SOUTH AMERICAN-W1' /
   H1RX17F3  'S26RX17F PARTNR3-OTHER HISPANIC-W1' /
   H1RX18A3  'S26RX18A PARTNR3-WHITE-W1' /
   H1RX18B3  'S26RX18B PARTNR3-AFRICAN AMERICAN-W1' /
   H1RX18C3  'S26RX18C PARTNR3-AMERICAN INDIAN-W1' /
   H1RX18D3  'S26RX18D PARTNR3-ASIAN-W1' /
   H1RX18E3  'S26RX18E PARTNR3-OTHER RACE-W1' /
   H1RX19A3  'S26RX19A PARTNR3-CHINESE-W1' /
   H1RX19B3  'S26RX19B PARTNR3-FILIPINO-W1' /
   H1RX19C3  'S26RX19C PARTNR3-JAPANESE-W1' /
   H1RX19D3  'S26RX19D PARTNR3-ASIAN INDIAN-W1' /
   H1RX19E3  'S26RX19E PARTNR3-KOREAN-W1' /
   H1RX19F3  'S26RX19F PARTNR3-VIETNAMESE-W1' /
   H1RX19G3  'S26RX19G PARTNR3-OTHER-W1' /
   H1RX20_3  'S26RX20  PARTNR3-GENDER-W1' /
   H1RX21A3  'S26RX21A PARTNR3-GROUP DATE-W1' /
   H1RX21B3  'S26RX21B PARTNR3-MET PARENTS-W1' /
   H1RX21C3  'S26RX21C PARTNR3-SAID WERE A COUPLE-W1' /
   H1RX21D3  'S26RX21D PARTNR3-SAW LESS OF FRIENDS-W1' /
   H1RX21E3  'S26RX21E PARTNR3-WENT OUT ALONE-W1' /
   H1RX21F3  'S26RX21F PARTNR3-HELD HANDS-W1' /
   H1RX21G3  'S26RX21G PARTNR3-GAVE A PRESENT-W1' /
   H1RX21H3  'S26RX21H PARTNR3-RECEIVED A PRESENT-W1' /
   H1RX21I3  'S26RX21I PARTNR3-SAID HE/SHE LOVED ME-W1' /
   H1RX21J3  'S26RX21J PARTNR3-SAID I LOVED PARTNER-W1' /
   H1RX21K3  'S26RX21K PARTNR3-CONSIDERED A COUPLE-W1' /
   H1RX21L3  'S26RX21L PARTNR3-TALKED CONTRACEPT-W1' /
   H1RX21M3  'S26RX21M PARTNR3-KISSED-W1' /
   H1RX21N3  'S26RX21N PARTNR3-TOUCHED EACH OTHER-W1' /
   H1RX21O3  'S26RX21O PARTNR3-HAD SEX-W1' /
   H1RX21P3  'S26RX21P PARTNR3-TOUCHED GENITALS-W1' /
   H1RX21Q3  'S26RX21Q PARTNR3-GOT PREGNANT-W1' /
   H1RX21R3  'S26RX21R PARTNR3-GOT MARRIED-W1' /
   H1RX22A3  'S26RX22A_3 PARTNR3-FIRST EVENT-W1' /
   H1RX22B3  'S26RX22B_3 PARTNR3-SECOND EVENT-W1' /
   H1RX22C3  'S26RX22C_3 PARTNR3-3RD EVENT-W1' /
   H1RX22D3  'S26RX22D_3 PARTNR3-4TH EVENT-W1' /
   H1RX22E3  'S26RX22E_3 PARTNR3-5TH EVENT-W1' /
   H1RX22F3  'S26RX22F_3 PARTNR3-6TH EVENT-W1' /
   H1RX22G3  'S26RX22G_3 PARTNR3-7TH EVENT-W1' /
   H1RX22H3  'S26RX22H_3 PARTNR3-8TH EVENT-W1' /
   H1RX22I3  'S26RX22I_3 PARTNR3-9TH EVENT-W1' /
   H1RX22J3  'S26RX22J_3 PARTNR3-10TH EVENT-W1' /
   H1RX22K3  'S26RX22K_3 PARTNR3-11TH EVENT-W1' /
   H1RX22L3  'S26RX22L_3 PARTNR3-12TH EVENT-W1' /
   H1RX22M3  'S26RX22M_3 PARTNR3-13TH EVENT-W1' /
   H1RX22N3  'S26RX22N_3 PARTNR3-14TH EVENT-W1' /
   H1RX22O3  'S26RX22O_3 PARTNR3-15TH EVENT-W1' /
   H1RX22P3  'S26RX22P_3 PARTNR3-16TH EVENT-W1' /
   H1RX22Q3  'S26RX22Q_3 PARTNR3-17TH EVENT-W1' /
   H1RX22R3  'S26RX22R_3 PARTNR3-18TH EVENT-W1' /
   H1RX24A3  'S26RX24A3-PARTNR3-SEXUAL INTERCOURSE-W1' /
   H1RX25M3  'S26RX25_3M PARTNR3-FIRST TIME SEX-MO-W1' /
   H1RX25Y3  'S26RX25_3Y PARTNR3-FIRST TIME SEX-YR-W1' /
   H1RX26M3  'S26RX26_3M PARTNR3-MOST RECENT SEX-MO-W1' /
   H1RX26Y3  'S26RX26_3Y PARTNR3-MOST RECENT SEX-YR-W1' /
   H1RX27_3  'S26RX27_3 PARTNR3-SEX MORE THEN ONCE-W1' /
   H1RX28_3  'S26RX28_3 PARTNR3-USE BIRTHCONTROL-W1' /
   H1RX29A3  'S26RX29A_3 PARTNR3-METHOD 1-W1' /
   H1RX29B3  'S26RX29B_3 PARTNR3-METHOD 2-W1' /
   H1RX29C3  'S26RX29C_3 PARTNR3-METHOD 3-W1' /
   H1RX30_3  'S26RX30_3 PARTNR3-USE A CONDOM-W1' /
   H1RX31_3  'S26RX31_3 PARTNR3-USE OTHER METHOD-W1' /
   H1RX32_3  'S26RX32_3 PARTNR3-BIRTHCONTROL ALWAYS-W1' /
   H1RX33A3  'S26RX33A_3 PARTNR3-METHOD 1-W1' /
   H1RX33B3  'S26RX33B_3 PARTNR3-METHOD 2-W1' /
   H1RX33C3  'S26RX33C_3 PARTNR3-METHOD 3-W1' /
   H1RX34_3  'S26RX34_3 PARTNR3-EVER USE CONDOM-W1' /
   H1RX35_3  'S26RX35_3 PARTNR3-USE >1 METHOD-W1' /
   H1RX36_3  'S26RX35_3 PARTNR3-USE BIRTHCONTROL-W1' /
   H1RX37_3  'S26RX37_3 PARTNR3-ALWAYS BIRTHCONTROL-W1' /
   H1RX38A3  'S26RX38A_3 PARTNR3-METHOD 1-W1' /
   H1RX38B3  'S26RX38B_3 PARTNR3-METHOD 2-W1' /
   H1RX38C3  'S26RX38C_3 PARTNR3-METHOD 3-W1' /
   H1RX39_3  'S26RX39_3 PARTNR3-EVER USE CONDOM-W1' /
   H1RX40_3  'S26RX40_3 PARTNR3-USE >1 METHOD-W1' /
   H1RX41_3  'S26RX41_3 PARTNR3-NO. TIMES HAD SEX-W1' /
   H1NR13_3  'S26Q13 PARTNR3-AGE-W1' /
   H1NR14_3  'S26Q14 PARTNR3-SAMPLE/SISTER SCH-W1' /
   H1NR15_3  'S26Q15 PARTNR3-GENDER-W1' /
   H1NR16_3  'S26Q16 PARTNR3-HISPANIC/LATINO-W1' /
   H1NR17A3  'S26Q17A PARTNR3-MEXICAN-W1' /
   H1NR17B3  'S26Q17B PARTNR3-CHICANO-W1' /
   H1NR17C3  'S26Q17C PARTNR3-CUBAN-W1' /
   H1NR17D3  'S26Q17D PARTNR3-PUERTO RICAN-W1' /
   H1NR17E3  'S26Q17E PARTNR3-CENTRAL/S AMERICAN-W1' /
   H1NR17F3  'S26Q17F PARTNR3-OTHER HISPANIC-W1' /
   H1NR18A3  'S26Q18A PARTNR3-WHITE-W1' /
   H1NR18B3  'S26Q18B PARTNR3-AFRICAN AMERICAN-W1' /
   H1NR18C3  'S26Q18C PARTNR3-AMERICAN INDIAN-W1' /
   H1NR18D3  'S26Q18D PARTNR3-ASIAN-W1' /
   H1NR18E3  'S26Q18E PARTNR3-OTHER-W1' /
   H1NR19A3  'S26Q19A_3 PARTNR3-CHINESE-W1' /
   H1NR19B3  'S26Q19B_3 PARTNR3-FILIPINO-W1' /
   H1NR19C3  'S26Q19C_3 PARTNR3-JAPANESE-W1' /
   H1NR19D3  'S26Q19D_3 PARTNR3-ASIAN INDIAN-W1' /
   H1NR19E3  'S26Q19E_3 PARTNR3-KOREAN-W1' /
   H1NR19F3  'S26Q19F_3 PARTNR3-VIETNAMESE-W1' /
   H1NR19G3  'S26Q19G_3 PARTNR3-OTHER-W1' /
   H1NR20A3  'S26Q20A_3 PARTNR3-SAME SCHOOL-W1' /
   H1NR20B3  'S26Q20B_3 PARTNR3-SAME CHURCH/TEMPLE-W1' /
   H1NR20C3  'S26Q20C_3 PARTNR3-NEIGHBOR-W1' /
   H1NR20D3  'S26Q20D_3 PARTNR3-CASUAL ACQUAINT-W1' /
   H1NR20E3  'S26Q20E_3 PARTNR3-FRIENDS-W1' /
   H1NR20F3  'S26Q20F_3 PARTNR3-MUTUAL FRIEND-W1' /
   H1NR20G3  'S26Q20G_3 PARTNR3-SOME OTHER WAY-W1' /
   H1NR20H3  'S26Q20H_3 PARTNR3-STRANGER BEF SEX-W1' /
   H1NR21_3  'S26Q21_3 PARTNR3-RESIDENCE LOCATION-W1' /
   H1NR22_3  'S26Q22_3 PARTNR3-HAD SEX-W1' /
   H1NR23M3  'S26Q23M_3 PARTNR3-MO FIRST HAD SEX-W1' /
   H1NR23Y3  'S26Q23Y_3 PARTNR3-YR FIRST HAD SEX-W1' /
   H1NR24M3  'S26Q24M_3 PARTNR3-MO MOST RECENT SEX-W1' /
   H1NR24Y3  'S26Q24Y_3 PARTNR3-YR MOST RECENT SEX-W1' /
   H1NR25_3  'S26Q25_3 PARTNR3-HAD SEX > 1 TIME-W1' /
   H1NR26_3  'S26Q26_3 PARTNR3-USE ANY BIRTHCONTROL-W1' /
   H1NR27A3  'S26Q27A_3 PARTNR3-METHOD 1-W1' /
   H1NR27B3  'S26Q27B_3 PARTNR3-METHOD 2-W1' /
   H1NR27C3  'S26Q27C_3 PARTNR3-METHOD 3-W1' /
   H1NR28_3  'S26Q28_3 PARTNR3-USED CONDOM-W1' /
   H1NR29_3  'S26Q29_3 PARTNR3-USE ANY BIRTHCONTROL-W1' /
   H1NR30_3  'S26Q30_3 PARTNR3-BIRTHCONTROL ALWAYS-W1' /
   H1NR31A3  'S26Q31A_3 PARTNR3-METHOD 1-W1' /
   H1NR31B3  'S26Q31B_3 PARTNR3-METHOD 2-W1' /
   H1NR31C3  'S26Q31C_3 PARTNR3-METHOD 3-W1' /
   H1NR32_3  'S26Q32_3 PARTNR3-USED CONDOM-W1' /
   H1NR33_3  'S26Q33_3 PARTNR3->1 BIRTHCONTROL-W1' /
   H1NR34_3  'S26Q34_3 PARTNR3-EVER USE B.CONTROL-W1' /
   H1NR35_3  'S26Q35_3 PARTNR3-EVER USE B.CONTROL-W1' /
   H1NR36A3  'S26Q36A_3 PARTNR3-METHOD 1-W1' /
   H1NR36B3  'S26Q36B_3 PARTNR3-METHOD 2-W1' /
   H1NR36C3  'S26Q36C_3 PARTNR3-METHOD 3-W1' /
   H1NR37_3  'S26Q37_3 PARTNR3-EVER USE A CONDOM-W1' /
   H1NR38_3  'S26Q38_3 PARTNR3->1 BIRTHCONTROL-W1' /
   H1NR39_3  'S26Q39_3 PARTNR3-FREQ SEX-W1' /
   H1NR40_3  'S26Q40_3 PARTNR3-YOU USE A CONDOM-W1' /
   H1NR41_3  'S26Q41_3 PARTNR3-HE USE A CONDOM-W1' /
   H1NR42_3  'S26Q42_3 PARTNR3-SEX FOR DRUGS/MONEY-W1' /
   H1NR43_3  'S26Q43_3 PARTNR3-FREQ-DRUGS/MONEY-W1' /
   H1NR44    'S26Q44 OTHER SEX PARTNERS-W1' /
   H1NR45    'S26Q45 NO. OF OTHER SEX PARTNERS-W1' /
   H1NR46    'S26Q46 OTHER SEX PARTNER-AGE-W1' /
   H1NR47    'S26Q47 OTHER SEX PARTNER-GENDER-W1' /
   H1NR48    'S26Q48 OTHER SEX PARTNER-CONDOM USE-W1' /
   H1NR49    'S26Q49 OTHER SEX PARTNER-DRUGS/MONEY-W1' /
   H1NR50    'S26Q50 OTHERS-YOUNGEST AGE-W1' /
   H1NR51    'S26Q51 OTHERS-OLDEST AGE-W1' /
   H1NR52    'S26Q52 OTHERS-CONDOM USE-W1' /
   H1NR53    'S26Q53 OTHERS-GENDER-W1' /
   RXCARD1   'Flag indicating recoding of cards for first relationship' /
   RXCARD2   'Flag indicating recoding of cards for second relationship' /
   RXCARD3   'Flag indicating recoding of cards for third relationship' /
   H1BC1     'S27Q1 BIRTHCONTROL TOO BOTHERSOME-W1' /
   H1BC2     'S27Q2 BIRTHCONTROL TOO EXPENSIVE-W1' /
   H1BC3     'S27Q3 TOO MUCH PLANNING-W1' /
   H1BC4     'S27Q4 HARD TO GET PARTNER TO USE-W1' /
   H1BC5     'S27Q5 INTERFERES WITH PLEASURE-W1' /
   H1BC6     'S27Q6 EASY TO GET BIRTHCONTROL-W1' /
   H1BC7     'S27Q7 BIRTHCONTROL USE MORALLY WRONG-W1' /
   H1BC8     'S27Q8 BIRTHCONTROL=LOOKING FOR SEX-W1' /
   H1TO1     'S28Q1 EVER SMOKED A CIGARETTE-W1' /
   H1TO2     'S28Q2 AGE-SMOKED AN ENTIRE CIGARETTE-W1' /
   H1TO3     'S28Q3 SMOKED CIGARETTES REGULARLY-W1' /
   H1TO4     'S28Q4 AGE-BEGAN SMOKING REGULARLY-W1' /
   H1TO5     'S28Q5 30 DAYS-DAYS SMOKED-W1' /
   H1TO6M    'S28Q6M MONTH QUIT SMOKING-W1' /
   H1TO6Y    'S28Q6Y YEAR QUIT SMOKING-W1' /
   H1TO7     'S28Q7 NO. OF CIGARETTES A DAY-W1' /
   H1TO8     'S28Q8 TRIED TO QUIT SMOKING-W1' /
   H1TO9     'S28Q9 HOW MANY FRIENDS SMOKE-W1' /
   H1TO10    'S28Q10 30 DAYS-CHEWED TOBACCO-W1' /
   H1TO11    'S28Q11 AGE-FIRST CHEWED TOBACCO-W1' /
   H1TO12    'S280Q12 DRINK ALCOHOL > 2-3 TIMES-W1' /
   H1TO13    'S28Q13 DRINK ALCOHOL OUTSIDE FAMILY-W1' /
   H1TO14    'S28Q14 AGE FIRST DRINK ALCOHOL-W1' /
   H1TO15    'S28Q15 PAST 12 MOS-FREQ DRINK ALCOHOL-W1' /
   H1TO16    'S28Q16 NO. OF DRINKS EACH TIME-W1' /
   H1TO17    'S28Q17 PAST 12 MOS-GE 5 DRINKS-W1' /
   H1TO18    'S28Q18 PAST 12 MOS-GOTTEN DRUNK-W1' /
   H1TO19    'S28Q19 MOST COMMON ALCOHOLIC BEVERAGE-W1' /
   H1TO20    'S28Q20 PARENT PROB BEC OF ALCOHOL-W1' /
   H1TO21    'S28Q21 SCHOOL PROB BEC OF ALCOHOL-W1' /
   H1TO22    'S28Q22 FRIEND PROB BEC OF ALCOHOL-W1' /
   H1TO23    'S28Q23 DATE PROB BEC OF ALCOHOL-W1' /
   H1TO24    'S28Q24 REGRET ACTION BEC OF ALCOHOL-W1' /
   H1TO25    'S28Q25 HUNG OVER-W1' /
   H1TO26    'S28Q26 THREW UP AFTER DRINKING-W1' /
   H1TO27    'S28Q27 REGRET SEX BEC OF ALCOHOL-W1' /
   H1TO28    'S28Q28 PHYSICAL FIGHT BEC OF ALCOHOL-W1' /
   H1TO29    'S28Q29 3 FRIENDS-DRINK >1 A MONTH-W1' /
   H1TO30    'S28Q30 AGE FIRST TRIED MARIJUANA-W1' /
   H1TO31    'S28Q31 TIMES SMOKED POT-W1' /
   H1TO32    'S28Q32 PAST 30 DAYS-TIMES SMOKED POT-W1' /
   H1TO33    'S28Q33 3 FRIENDS-SMOKE POT >1 A MONTH-W1' /
   H1TO34    'S28Q34 AGE FIRST TRIED COCAINE-W1' /
   H1TO35    'S28Q35 TIMES USED COCAINE-W1' /
   H1TO36    'S28Q36 PAST 30 DAYS-TIMES USED COKE-W1' /
   H1TO37    'S28Q37 AGE FIRST TRIED INHALANTS-W1' /
   H1TO38    'S28Q38 TIMES USED INHALANTS-W1' /
   H1TO39    'S28Q39 PAST 30 DAYS-USED INHALANTS-W1' /
   H1TO40    'S28Q40 AGE FIRST OTHER ILLEGAL DRUGS-W1' /
   H1TO41    'S28Q41 TIMES USE OTHER ILLEGAL DRUGS-W1' /
   H1TO42    'S28Q42 PAST 30 DAYS-USE OTH ILL DRUGS-W1' /
   H1TO43    'S28Q43 EVERY INJECTED DRUGS-W1' /
   H1TO44    'S28Q44 HOW OFTEN INJECTED DRUGS-W1' /
   H1TO45    'S28Q45 AGE FIRST INJECTED DRUGS-W1' /
   H1TO46    'S28Q46 PAST 30 DAYS-TIMES INJECTED-W1' /
   H1TO47    'S28Q47 DO YOU OWN NEEDLE/SYRINGE-W1' /
   H1TO48    'S28Q48 EVER SHARED NEEDLE/SYRINGE-W1' /
   H1TO49    'S28Q49 BLEACH NEEDLE/SYRINGE BEF USE-W1' /
   H1TO50    'S28Q50 CIGARETTES IN YOUR HOME-W1' /
   H1TO51    'S28Q51 EASY ACCESS TO ALCOHOL IN HOME-W1' /
   H1TO52    'S28Q52 EASY ACCESS TO DRUGS IN HOME-W1' /
   H1TO53    'S28Q53 EASY ACCESS TO GUN IN HOME-W1' /
   H1TO54A   'S28Q54A GUN IN HOME-HANDGUN-W1' /
   H1TO54B   'S28Q54B GUN IN HOME-SHOTGUN-W1' /
   H1TO54C   'S28Q54C GUN IN HOME-RIFLE-W1' /
   H1TO54D   'S28Q54D GUN IN HOME-OTHER FIREARM-W1' /
   H1DS1     'S29Q1 PAST 12 MOS-PAINT GRAFFITI-W1' /
   H1DS2     'S29Q2 PAST 12 MOS-DAMAGE PROPERTY-W1' /
   H1DS3     'S29Q3 LIE TO PARENTS ABOUT WHEREABOUT-W1' /
   H1DS4     'S29Q4 SHOPLIFT-W1' /
   H1DS5     'S29Q5 SERIOUS PHYS FIGHT-W1' /
   H1DS6     'S29Q6 SERIOUSLY INJURE SOMEONE-W1' /
   H1DS7     'S29Q7 RUN AWAY FROM HOME-W1' /
   H1DS8     'S29Q8 STEAL A CAR-W1' /
   H1DS9     'S29Q9 PAST 12 MOS-STEAL WORTH >$50-W1' /
   H1DS10    'S29Q10 BURGLARIZE A BUILDING-W1' /
   H1DS11    'S29Q11 USE OR THREATEN WITH A WEAPON-W1' /
   H1DS12    'S29Q12 SELL DRUGS-W1' /
   H1DS13    'S29Q13 STEAL WORTH < $50-W1' /
   H1DS14    'S29Q14 TAKE PART IN A GROUP FIGHT-W1' /
   H1DS15    'S29Q15 LOUD/ROWDY IN A PUBLIC PLACE-W1' /
   H1JO1     'S30Q1 FIRST SEX-WERE YOU DRINKING-W1' /
   H1JO2     'S30Q2 FIRST SEX-WERE YOU DRUNK-W1' /
   H1JO3     'S30Q3 MOST RECENT SEX-DRINK ALCOHOL-W1' /
   H1JO4     'S30Q4 MOST RECENT SEX-DRUNK-W1' /
   H1JO5     'S30Q5 FIRST SEX-USING DRUGS-W1' /
   H1JO6A    'S30Q6A FIRST SEX-DRUG-POT-W1' /
   H1JO6B    'S30Q6B FIRST SEX-DRUG-CRACK-W1' /
   H1JO6C    'S30Q6C FIRST SEX-DRUG-OTHER COKE-W1' /
   H1JO6D    'S30Q6D FIRST SEX-DRUGE-INHALANTS-W1' /
   H1JO6E    'S30Q6E FIRST SEX-DRUG-OTHER ILLEGAL-W1' /
   H1JO7     'S30Q7 MOST RECENT SEX-DRUG USE-W1' /
   H1JO8A    'S30Q8A LATEST SEX/DRUG-POT-W1' /
   H1JO8B    'S30Q8B LATEST SEX/DRUG-CRACK-W1' /
   H1JO8C    'S30Q8C LATEST SEX/DRUG-OTHER COKE-W1' /
   H1JO8D    'S30Q8D LATEST SEX/DRUGS-INHALANTS-W1' /
   H1JO8E    'S30Q8E LATEST SEX/DRUG-OTHER ILLEGAL-W1' /
   H1JO9     'S30Q9 DRIVE WHILE DRUNK-W1' /
   H1JO10    'S30Q10 DRUNK AT SCHOOL-W1' /
   H1JO11    'S30Q11 PAST 12 MOS-PHYSICAL FIGHT-W1' /
   H1JO12    'S30Q12 LATEST FIGHT-DRINKING-W1' /
   H1JO13    'S30Q13 LASTEST FIGHT-DRUNK-W1' /
   H1JO14    'S30Q14 CARRY WEAPON WHILE DRINKING-W1' /
   H1JO15    'S30Q15 DRINK ALCOHOL WHEN ALONE-W1' /
   H1JO16    'S30Q16 LAST DRINK ALCOHOL-ALONE?-W1' /
   H1JO17    'S30Q17 DRINK ALCOHOL WHEN USING DRUGS-W1' /
   H1JO18A   'S30Q18A DRINK/DRUGS-POT-W1' /
   H1JO18B   'S30Q18B DRINK/DRUGS-CRACK-W1' /
   H1JO18C   'S30Q18C DRINK/DRUGS-OTHER COKE-W1' /
   H1JO18D   'S30Q18D DRINK/DRUGS-INHALANTS-W1' /
   H1JO18E   'S30Q18E DRINK/DRUGS-OTHER ILLEGAL-W1' /
   H1JO19    'S30Q19 DRIVE WHILE HIGH ON DRUGS-W1' /
   H1JO20    'S30Q20 HIGH AT SCHOOL-W1' /
   H1JO21    'S30Q21 FIGHT WHILE HIGHT-W1' /
   H1JO22A   'S30Q22A LATEST FIGHT/DRUGS-POT-W1' /
   H1JO22B   'S30Q22B LATEST FIGHT/DRUGS-CRACK-W1' /
   H1JO22C   'S30Q22C LATEST FIGHT/DRUGS-OTHER COKE-W1' /
   H1JO22D   'S30Q22D LATEST FIGHT/DRUGS-INHALANTS-W1' /
   H1JO22E   'S30Q22E LATEST FIGHT/DRUGS-OTH ILLEG-W1' /
   H1JO23    'S30Q23 USE DRUGS WHILE CARRY WEAPONS-W1' /
   H1JO24    'S30Q24 ALONE FIRST DRUG USE-W1' /
   H1JO25    'S30Q25 CARRY WEAPON AT SCHOOL-W1' /
   H1JO26    'S30Q26 USE A WEAPON IN A FIGHT-W1' /
   H1FV1     'S31Q1 SAW SHOOTING/STABBING OF PERSON-W1' /
   H1FV2     'S31Q2 HAD KNIFE/GUN PULLED ON YOU-W1' /
   H1FV3     'S31Q3 SOMEONE SHOT YOU-W1' /
   H1FV4     'S31Q4 SOMEONE STABBED YOU-W1' /
   H1FV5     'S31Q5 GOT INTO A PHYSICAL FIGHT-W1' /
   H1FV6     'S31Q6 WERE JUMPED-W1' /
   H1FV7     'S31Q7 PULLED A KNIFE/GUN ON SOMEONE-W1' /
   H1FV8     'S31Q8 SHOT/STABBED SOMEONE-W1' /
   H1FV9     'S31Q9 CARRY WEAPON TO SCHOOL-W1' /
   H1FV10    'S31Q10 FAVORITE SCHOOL WEAPON-W1' /
   H1FV11    'S31Q11 LAST FIGHT-WHO-W1' /
   H1FV12    'S31Q12 LAST FIGHT-WHERE-W1' /
   H1FV13    'S31Q13 FREQ-SERIOUS INJURY FROM FIGHT-W1' /
   H1FV14M   'S31Q14M MO-LAST SERIOUS FIGHT INJURY-W1' /
   H1FV14Y   'S31Q14Y YR-LAST SERIOUS FIGHT INJURY-W1' /
   H1MP1     'S32AQ1 HAIR UNDER ARMS-W1' /
   H1MP2     'S32AQ2 THICKNESS OF FACIAL HAIR-W1' /
   H1MP3     'S32AQ3 VOICE LOWER THAN IN GRADE SCH-W1' /
   H1MP4     'S32AQ4 RELATIVE PHYSICAL DEVELOPMENT-W1' /
   H1FP1     'S32BQ1 BREAST SIZE-W1' /
   H1FP2     'S32BQ2 CURVACEOUS BODY-W1' /
   H1FP3     'S32BQ3 EVER MENSTRUATED-W1' /
   H1FP4     'S32BQ4 MENSTR-AGE FIRST PERIOD-W1' /
   H1FP5M    'S32BQ5M MENSTR-MO-LAST PERIOD-W1' /
   H1FP5D    'S32BQ5D MENSTR-DAY-LAST PERIOD-W1' /
   H1FP6     'S32BQ6 RELATIVE PHYSICAL DEVELOPMENT-W1' /
   H1FP7     'S32BQ7 EVER BEEN PREGNANT-W1' /
   H1FP8     'S32BQ8 NUMBER OF PREGNANCIES-W1' /
   H1FP9M    'S32BQ9M MOST RECENT PREG-MONTH-W1' /
   H1FP9Y    'S32BQ9Y MOST RECENT PREG-YEAR-W1' /
   H1FP10    'S32BQ10 BETW 1/1/94 & NOW-NO. PREGS-W1' /
   H1FP11M1  'S32BQ11M_1 PREG1-MONTH-W1' /
   H1FP11Y1  'S32BQ11M_1 PREG1-YEAR-W1' /
   H1FP12_1  'S32BQ12_1 PREG1-USE BIRTHCONTROL-W1' /
   H1FP13A1  'S32BQ13A_1 PREG1 METHOD 1-W1' /
   H1FP13B1  'S32BQ13B_1 PREG1 METHOD 2-W1' /
   H1FP13C1  'S32BQ13C_1 PREG1 METHOD 3-W1' /
   H1FP14_1  'S32BQ14_1 PREG1 BIRTHCONTROL ALWAYS-W1' /
   H1FP15_1  'S32BQ15_1 PREG1 WANTED BABY-W1' /
   H1FP17_1  'S32BQ17_1 PREG1 WANT TO MARRY PARTNER-W1' /
   H1FP20M1  'S32BQ20M_1 PREG1 MO PREGNANCY ENDED-W1' /
   H1FP20Y1  'S32BQ20Y_1 PREG1 YR PREGNANCY ENDED-W1' /
   H1FP21_1  'S32BQ21_1 PREG1 PREGNANCY OUTCOME-W1' /
   H1FP22_1  'S32BQ22_1 PREG1 DID YOU HAVE TWINS-W1' /
   H1FP23A1  'S32BQ23A_1 PREG1A PLACED FOR ADOPT-W1' /
   H1FP24A1  'S32BQ24A_1 PREG1A CHILD STILL ALIVE-W1' /
   H1FP11M2  'S32BQ11M_2 PREG2-MONTH-W1' /
   H1FP11Y2  'S32BQ11M_2 PREG2-YEAR-W1' /
   H1FP12_2  'S32BQ12_2 PREG2-USE BIRTHCONTROL-W1' /
   H1FP13A2  'S32BQ13A_2 PREG2 METHOD 1-W1' /
   H1FP13B2  'S32BQ13B_2 PREG2 METHOD 2-W1' /
   H1FP13C2  'S32BQ13C_2 PREG2 METHOD 3-W1' /
   H1FP14_2  'S32BQ14_2 PREG2 BIRTHCONTROL ALWAYS-W1' /
   H1FP15_2  'S32BQ15_2 PREG2 WANTED BABY-W1' /
   H1FP17_2  'S32BQ17_2 PREG2 WANT TO MARRY PARTNER-W1' /
   H1FP20M2  'S32BQ20M_2 PREG2 MO PREGNANCY ENDED-W1' /
   H1FP20Y2  'S32BQ20Y_2 PREG2 YR PREGNANCY ENDED-W1' /
   H1FP21_2  'S32BQ21_2 PREG2 PREGNANCY OUTCOME-W1' /
   H1FP22_2  'S32BQ22_2 PREG2 DID YOU HAVE TWINS-W1' /
   H1FP23A2  'S32BQ23A_2 PREG2A PLACED FOR ADOPT-W1' /
   H1FP24A2  'S32BQ24A_2 PREG2A CHILD STILL ALIVE-W1' /
   H1FP11M3  'S32BQ11M_3 PREG3-MONTH-W1' /
   H1FP11Y3  'S32BQ11M_3 PREG3-YEAR-W1' /
   H1FP12_3  'S32BQ12_3 PREG3-USE BIRTHCONTROL-W1' /
   H1FP13A3  'S32BQ13A_3 PREG3 METHOD 1-W1' /
   H1FP13B3  'S32BQ13B_3 PREG3 METHOD 2-W1' /
   H1FP13C3  'S32BQ13C_3 PREG3 METHOD 3-W1' /
   H1FP14_3  'S32BQ14_3 PREG3 BIRTHCONTROL ALWAYS-W1' /
   H1FP15_3  'S32BQ15_3 PREG3 WANTED BABY-W1' /
   H1FP17_3  'S32BQ17_3 PREG3 WANT TO MARRY PARTNER-W1' /
   H1FP20M3  'S32BQ20M_3 PREG3 MO PREGNANCY ENDED-W1' /
   H1FP20Y3  'S32BQ20Y_3 PREG3 YR PREGNANCY ENDED-W1' /
   H1FP21_3  'S32BQ21_3 PREG3 PREGNANCY OUTCOME-W1' /
   H1FP22_3  'S32BQ22_3 PREG3 DID YOU HAVE TWINS-W1' /
   H1FP23A3  'S32BQ23A_3 PREG3A PLACED FOR ADOPT-W1' /
   H1FP24A3  'S32BQ24A_3 PREG3A CHILD STILL ALIVE-W1' /
   H1FP11M4  'S32BQ11M_4 PREG4-MONTH-W1' /
   H1FP11Y4  'S32BQ11M_4 PREG4-YEAR-W1' /
   H1FP12_4  'S32BQ12_4 PREG4-USE BIRTHCONTROL-W1' /
   H1FP13A4  'S32BQ13A_4 PREG4 METHOD 1-W1' /
   H1FP13B4  'S32BQ13B_4 PREG4 METHOD 2-W1' /
   H1FP13C4  'S32BQ13C_4 PREG4 METHOD 3-W1' /
   H1FP14_4  'S32BQ14_4 PREG4 BIRTHCONTROL ALWAYS-W1' /
   H1FP15_4  'S32BQ15_4 PREG4 WANTED BABY-W1' /
   H1FP17_4  'S32BQ17_4 PREG4 WANT TO MARRY PARTNER-W1' /
   H1FP20M4  'S32BQ20M_4 PREG4 MO PREGNANCY ENDED-W1' /
   H1FP20Y4  'S32BQ20Y_4 PREG4 YR PREGNANCY ENDED-W1' /
   H1FP21_4  'S32BQ21_4 PREG4 PREGNANCY OUTCOME-W1' /
   H1FP22_4  'S32BQ22_4 PREG4 DID YOU HAVE TWINS-W1' /
   H1FP23A4  'S32BQ23A_4 PREG4A PLACED FOR ADOPT-W1' /
   H1FP24A4  'S32BQ24A_4 PREG4A CHILD STILL ALIVE-W1' /
   H1FP11M5  'S32BQ11M_5 PREG5-MONTH-W1' /
   H1FP11Y5  'S32BQ11M_5 PREG5-YEAR-W1' /
   H1FP12_5  'S32BQ12_5 PREG5-USE BIRTHCONTROL-W1' /
   H1FP13A5  'S32BQ13A_5 PREG5 METHOD 1-W1' /
   H1FP13B5  'S32BQ13B_5 PREG5 METHOD 2-W1' /
   H1FP13C5  'S32BQ13C_5 PREG5 METHOD 3-W1' /
   H1FP14_5  'S32BQ14_5 PREG5 BIRTHCONTROL ALWAYS-W1' /
   H1FP15_5  'S32BQ15_5 PREG5 WANTED BABY-W1' /
   H1FP17_5  'S32BQ17_5 PREG5 WANT TO MARRY PARTNER-W1' /
   H1FP20M5  'S32BQ20M_5 PREG5 MO PREGNANCY ENDED-W1' /
   H1FP20Y5  'S32BQ20Y_5 PREG5 YR PREGNANCY ENDED-W1' /
   H1FP21_5  'S32BQ21_5 PREG5 PREGNANCY OUTCOME-W1' /
   H1FP22_5  'S32BQ22_5 PREG5 DID YOU HAVE TWINS-W1' /
   H1FP23A5  'S32BQ23A_5 PREG5A PLACED FOR ADOPT-W1' /
   H1FP24A5  'S32BQ24A_5 PREG5A CHILD STILL ALIVE-W1' /
   H1SU1     'S33Q1 PAST YR-THINK ABOUT SUICIDE-W1' /
   H1SU2     'S33Q2 PAST YR-ATTEMPT SUICIDE-W1' /
   H1SU3     'S33Q3 ATTEMPT RESULT IN MED TREATMT-W1' /
   H1SU4     'S33Q4 PAST YR-FRIENDS ATTEMPT SUICIDE-W1' /
   H1SU5     'S33Q5 PAST YR-FRIENDS SUCCEED-W1' /
   H1SU6     'S33Q6 PAST YR-FAMILY ATTEMPT SUICIDE-W1' /
   H1SU7     'S33Q7 PAST YR-FAMILY SUCCEED-W1' /
   H1SU8     'S33Q8 HOW HONESTLY ANSWERED QS-W1' /
   H1PA1     'S34Q1 MOM-FEEL ABOUT YOUR SEXLIFE-W1' /
   H1PA2     'S34Q2 MOM-YOU HAVING SEX WITH STEADY-W1' /
   H1PA3     'S34Q3 MOM-USE OF BIRTHCONTROL-W1' /
   H1PA4     'S34Q4 DAD-FEEL ABOUT YOUR SEXLIFE-W1' /
   H1PA5     'S34Q5 DAD-YOU HAVING SEX WITH STEADY-W1' /
   H1PA6     'S34Q6 DAD-USE OF BIRTHCONTROL-W1' /
   H1PA7     'S34Q7 CONSIDER HAVING CHILD UNMARRIED-W1' /
   H1PR1     'S35Q1 ADULTS CARE ABOUT YOU-W1' /
   H1PR2     'S35Q2 TEACHERS CARE ABOUT YOU-W1' /
   H1PR3     'S35Q3 PARENTS CARE ABOUT YOU-W1' /
   H1PR4     'S35Q4 FRIENDS CARE ABOUT YOU-W1' /
   H1PR5     'S35Q5 FAMILY UNDERSTAND YOU-W1' /
   H1PR6     'S35Q6 WANT TO LEAVE HOME-W1' /
   H1PR7     'S35Q7 FAMIYL HAS FUN TOGETHER-W1' /
   H1PR8     'S35Q8 FAMILY PAYS ATTENTION TO YOU-W1' /
   H1NB1     'S36Q1 KNOW MOST PEOPLE IN NBORHOOD-W1' /
   H1NB2     'S36Q2 PAST MO-STOP & TALK TO NEIGHBOR-W1' /
   H1NB3     'S36Q3 NEIGHBORS LOOK OUT FOR EA OTHER-W1' /
   H1NB4     'S36Q4 USE REC CTR IN NBORHOOD-W1' /
   H1NB5     'S36Q5 FEEL SAFE IN NBORHOOD-W1' /
   H1NB6     'S36Q6 HOW HAPPY LIVING IN NBORHOOD-W1' /
   H1NB7     'S36Q7 HAPPY/UNHAPPY TO MOVE-W1' /
   H1RE1     'S37Q1 RELIGION-W1' /
   H1RE2     'S37Q2 SCRIPTURES ARE THE WORD OF GOD-W1' /
   H1RE3     'S37Q3 PAST YR-ATTEND SERVICES-W1' /
   H1RE4     'S37Q4 HOW IMPORTANT IS RELIGION-W1' /
   H1RE5     'S37Q5 BORN-AGAIN CHRISTIAN-W1' /
   H1RE6     'S37Q6 HOW OFTEN DO YOU PRAY-W1' /
   H1RE7     'S37Q7 PAST YR-ATTEND YOUTH GROUPS-W1' /
   H1EE1     'S38Q1 WANT TO ATTEND COLLEGE-W1' /
   H1EE2     'S38Q2 LIKELY WILL ATTEND COLLEGE-W1' /
   H1EE3     'S38Q3 DID YOU WORK FOR PAY-W1' /
   H1EE4     'S38Q4 HRS/WEEK WORK-NONSUMMER-W1' /
   H1EE5     'S38Q5 MONEY EARNED/WEEK-NONSUMMER-W1' /
   H1EE6     'S38Q6 HRS/WEEK WORK-SUMMER-W1' /
   H1EE7     'S38Q7 MONEY EARNED/WEEK-SUMMER-W1' /
   H1EE8     'S38Q8 WEEKLY ALLOWANCE-W1' /
   H1EE9     'S38Q9 EVER DRIVEN A CAR-W1' /
   H1EE10    'S38Q10 HAVE A VALID DRIVERS LICENSE-W1' /
   H1EE11    'S38Q11 DRIVE MILES/WEEK-W1' /
   H1EE12    'S38Q12 CHANCES-LIVE TO AGE 35-W1' /
   H1EE13    'S38Q13 CHANCES-MARRIED BY AGE 25-W1' /
   H1EE14    'S38Q14 CHANCES-KILLED BY AGE 21-W1' /
   H1EE15    'S38Q15 CHANCES-GET HIV/AIDS-W1' /
   STUDSIBA  'S39 SIB A IS A STUDY SIB-W1' /
   TWINA     'S39 SIB A-RESPONDENTS TWIN-W1' /
   H1WS1A    'S39Q1 SIB A-SPEND TIME TOGETHER-W1' /
   H1WS2A    'S39Q2 SIB A-SAME FRIENDS-W1' /
   H1WS3A    'S39Q3 SIB A-FIGHT/QUARREL-W1' /
   H1WS4A    'S39Q4 SIB A-FEEL LOVE FOR SIB A-W1' /
   H1WS5A    'S39Q5 SIB A-RIVAL FOR PARENTS ATTN-W1' /
   H1WS6A    'S39Q6 SIB A-LOOK ALIKE-W1' /
   H1WS7A    'S39Q7 SIB A-IDENTICAL OR FRATERNAL-W1' /
   H1WS8A    'S39Q8 SIB A-SIMILARITY IN LOOKS-W1' /
   H1WS9A    'S39Q9 SIB A-CONFUSE STRANGERS-W1' /
   H1WS10A   'S39Q10 SIB A-CONFUSE TEACHERS-W1' /
   H1WS11A   'S39Q11 SIB A-CONFUSE FAMILY-W1' /
   H1WS12A   'S39Q12 SIB A-SIMILAR PERSONALITY-W1' /
   STUDSIBB  'S39 SIB B-A STUDY SIB-W1' /
   TWINB     'S39 SIB B-RESPONDENTS TWIN-W1' /
   H1WS1B    'S39Q1 SIB B-SPEND TIME TOGETHER-W1' /
   H1WS2B    'S39Q2 SIB B-SAME FRIENDS-W1' /
   H1WS3B    'S39Q3 SIB B-FIGHT/QUARREL-W1' /
   H1WS4B    'S39Q4 SIB B-FEEL LOVE FOR SIB B-W1' /
   H1WS5B    'S39Q5 SIB B-RIVAL FOR PARENTS ATTN-W1' /
   H1WS6B    'S39Q6 SIB B-LOOK ALIKE-W1' /
   H1WS7B    'S39Q7 SIB B-IDENTICAL OR FRATERNAL-W1' /
   H1WS8B    'S39Q8 SIB B-SIMILARITY IN LOOKS-W1' /
   H1WS9B    'S39Q9 SIB B-CONFUSE STRANGERS-W1' /
   H1WS10B   'S39Q10 SIB B-CONFUSE TEACHERS-W1' /
   H1WS11B   'S39Q11 SIB B-CONFUSE FAMILY-W1' /
   H1WS12B   'S39Q12 SIB B-SIMILAR PERSONALITY-W1' /
   STUDSIBC  'S39 SIB C-STUDY SIB-W1' /
   TWINC     'S39 SIB C-RESPONDENTS TWIN-W1' /
   H1WS1C    'S39Q1 SIB C-SPEND TIME TOGETHER-W1' /
   H1WS2C    'S39Q2 SIB C-SAME FRIENDS-W1' /
   H1WS3C    'S39Q3 SIB C-FIGHT/QUARREL-W1' /
   H1WS4C    'S39Q4 SIB C-FEEL LOVE FOR SIB C-W1' /
   H1WS5C    'S39Q5 SIB C-RIVAL FOR PARENTS ATTN-W1' /
   H1WS6C    'S39Q6 SIB C-LOOK ALIKE-W1' /
   H1WS7C    'S39Q7 SIB C-IDENTICAL OR FRATERNAL-W1' /
   H1WS8C    'S39Q8 SIB C-SIMILARITY IN LOOKS-W1' /
   H1WS9C    'S39Q9 SIB C-CONFUSE STRANGERS-W1' /
   H1WS10C   'S39Q10 SIB C-CONFUSE TEACHERS-W1' /
   H1WS11C   'S39Q11 SIB C-CONFUSE FAMILY-W1' /
   H1WS12C   'S39Q12 SIB C-SIMILAR PERSONALITY-W1' /
   STUDSIBD  'S39 SIB D-STUDY SIB-W1' /
   TWIND     'S39 SIB D-RESPONDENTS TWIN-W1' /
   H1WS1D    'S39Q1 SIB D-SPEND TIME TOGETHER-W1' /
   H1WS2D    'S39Q2 SIB D-SAME FRIENDS-W1' /
   H1WS3D    'S39Q3 SIB D-FIGHT/QUARREL-W1' /
   H1WS4D    'S39Q4 SIB D-FEEL LOVE FOR SIB D-W1' /
   H1WS5D    'S39Q5 SIB D-RIVAL FOR PARENTS ATTN-W1' /
   H1WS6D    'S39Q6 SIB D-LOOK ALIKE-W1' /
   H1WS7D    'S39Q7 SIB D-IDENTICAL OR FRATERNAL-W1' /
   H1WS8D    'S39Q8 SIB D-SIMILARITY IN LOOKS-W1' /
   H1WS9D    'S39Q9 SIB D-CONFUSE STRANGERS-W1' /
   H1WS10D   'S39Q10 SIB D-CONFUSE TEACHERS-W1' /
   H1WS11D   'S39Q11 SIB D-CONFUSE FAMILY-W1' /
   H1WS12D   'S39Q12 SIB D-SIMILAR PERSONALITY-W1' /
   STUDSIBE  'S39 SIB E-STUDY SIB-W1' /
   TWINE     'S39 SIB E-RESPONDENTS TWIN-W1' /
   H1WS1E    'S39Q1 SIB E-SPEND TIME TOGETHER-W1' /
   H1WS2E    'S39Q2 SIB E-SAME FRIENDS-W1' /
   H1WS3E    'S39Q3 SIB E-FIGHT/QUARREL-W1' /
   H1WS4E    'S39Q4 SIB E-FEEL LOVE FOR SIB E-W1' /
   H1WS5E    'S39Q5 SIB E-RIVAL FOR PARENTS ATTN-W1' /
   H1WS6E    'S39Q6 SIB E-LOOK ALIKE-W1' /
   H1WS7E    'S39Q7 SIB E-IDENTICAL OR FRATERNAL-W1' /
   H1WS8E    'S39Q8 SIB E-SIMILARITY IN LOOKS-W1' /
   H1WS9E    'S39Q9 SIB E-CONFUSE STRANGERS-W1' /
   H1WS10E   'S39Q10 SIB E-CONFUSE TEACHERS-W1' /
   H1WS11E   'S39Q11 SIB E-CONFUSE FAMILY-W1' /
   H1WS12E   'S39Q12 SIB E-SIMILAR PERSONALITY-W1' /
   STUDSIBF  'S39 SIB F-STUDY SIB-W1' /
   TWINF     'S39 SIB F-RESPONDENTS TWIN-W1' /
   H1WS1F    'S39Q1 SIB F-SPEND TIME TOGETHER-W1' /
   H1WS2F    'S39Q2 SIB F-SAME FRIENDS-W1' /
   H1WS3F    'S39Q3 SIB F-FIGHT/QUARREL-W1' /
   H1WS4F    'S39Q4 SIB F-FEEL LOVE FOR SIB F-W1' /
   H1WS5F    'S39Q5 SIB F-RIVAL FOR PARENTS ATTN-W1' /
   H1WS6F    'S39Q6 SIB F-LOOK ALIKE-W1' /
   H1WS7F    'S39Q7 SIB F-IDENTICAL OR FRATERNAL-W1' /
   H1WS8F    'S39Q8 SIB F-SIMILARITY IN LOOKS-W1' /
   H1WS9F    'S39Q9 SIB F-CONFUSE STRANGERS-W1' /
   H1WS10F   'S39Q10 SIB F-CONFUSE TEACHERS-W1' /
   H1WS11F   'S39Q11 SIB F-CONFUSE FAMILY-W1' /
   H1WS12F   'S39Q12 SIB F-SIMILAR PERSONALITY-W1' /
   STUDSIBG  'S39 SIB G-STUDY SIB-W1' /
   TWING     'S39 SIB G-RESPONDENTS TWIN-W1' /
   H1WS1G    'S39Q1 SIB G-SPEND TIME TOGETHER-W1' /
   H1WS2G    'S39Q2 SIB G-SAME FRIENDS-W1' /
   H1WS3G    'S39Q3 SIB G-FIGHT/QUARREL-W1' /
   H1WS4G    'S39Q4 SIB G-FEEL LOVE FOR SIB G-W1' /
   H1WS5G    'S39Q5 SIB G-RIVAL FOR PARENTS ATTN-W1' /
   H1WS6G    'S39Q6 SIB G-LOOK ALIKE-W1' /
   H1WS7G    'S39Q7 SIB G-IDENTICAL OR FRATERNAL-W1' /
   H1WS8G    'S39Q8 SIB G-SIMILARITY IN LOOKS-W1' /
   H1WS9G    'S39Q9 SIB G-CONFUSE STRANGERS-W1' /
   H1WS10G   'S39Q10 SIB G-CONFUSE TEACHERS-W1' /
   H1WS11G   'S39Q11 SIB G-CONFUSE FAMILY-W1' /
   H1WS12G   'S39Q12 SIB G-SIMILAR PERSONALITY-W1' /
   H1WS13    'S39Q13 IS THIS RESEARCH WORTHWHILE?' /
   H1IR1     'S40Q1 PHYSICAL ATTRACTIVENESS OF R-W1' /
   H1IR2     'S40Q2 PERSONALITY ATTRACTNESS OF R-W1' /
   H1IR3     'S40Q3 GROOMING-W1' /
   H1IR4     'S40Q4 CANDIDNESS OF R-W1' /
   H1IR5     'S40Q5 PHYSICAL MATURITY OF R-W1' /
   H1IR6     'S40Q6 THIRD PERSON PRESENT AT INTRVW-W1' /
   H1IR7A    'S40Q7A PRESENT AT INTERVIEW-W1' /
   H1IR7B    'S40Q7B PRESENT AT INTERVIEW-W1' /
   H1IR7C    'S40Q7C PRESENT AT INTERVIEW-W1' /
   H1IR7D    'S40Q7D PRESENT AT INTERVIEW-W1' /
   H1IR7E    'S40Q7E PRESENT AT INTERVIEW-W1' /
   H1IR7F    'S40Q7F PRESENT AT INTERVIEW-W1' /
   H1IR7G    'S40Q7G PRESENT AT INTERVIEW-W1' /
   H1IR7H    'S40Q7H PRESENT AT INTERVIEW-W1' /
   H1IR7I    'S40Q7I PRESENT AT INTERVIEW-W1' /
   H1IR7J    'S40Q7J PRESENT AT INTERVIEW-W1' /
   H1IR7K    'S40Q7K PRESENT AT INTERVIEW-W1' /
   H1IR7L    'S40Q7L PRESENT AT INTERVIEW-W1' /
   H1IR7M    'S40Q7M PRESENT AT INTERVIEW-W1' /
   H1IR7N    'S40Q7N PRESENT AT INTERVIEW-W1' /
   H1IR7O    'S40Q7O PRESENT AT INTERVIEW-W1' /
   H1IR7P    'S40Q7P PRESENT AT INTERVIEW-W1' /
   H1IR7Q    'S40Q7Q PRESENT AT INTERVIEW-W1' /
   H1IR7R    'S40Q7R PRESENT AT INTERVIEW-W1' /
   H1IR7S    'S40Q7S PRESENT AT INTERVIEW-W1' /
   H1IR7T    'S40Q7T PRESENT AT INTERVIEW-W1' /
   H1IR7U    'S40Q7U PRESENT AT INTERVIEW-W1' /
   H1IR7V    'S40Q7V PRESENT AT INTERVIEW-W1' /
   H1IR7W    'S40Q7W PRESENT AT INTERVIEW-W1' /
   H1IR7X    'S40Q7X PRESENT AT INTERVIEW-W1' /
   H1IR7Y    'S40Q7Y PRESENT AT INTERVIEW-W1' /
   H1IR7Z    'S40Q7Z PRESENT AT INTERVIEW-W1' /
   H1IR7AA   'S40Q7AA PRESENT AT INTERVIEW-W1' /
   H1IR7BB   'S40Q7BB PRESENT AT INTERVIEW-W1' /
   H1IR7CC   'S40Q7CC PRESENT AT INTERVIEW-W1' /
   H1IR7DD   'S40Q7DD PRESENT AT INTERVIEW-W1' /
   H1IR8A    'S40Q8A NO. PERSONS UNDER AGE 6-W1' /
   H1IR8B    'S40Q8B NO. PERSONS AGE 6-11-W1' /
   H1IR8C    'S40Q8C NO. PERSONS AGE 12-18-W1' /
   H1IR8D    'S40Q8D NO. PERSONS AGE 19 AND OLDER-W1' /
   H1IR9     'S40Q9 LOCATION OF INTERVIEW-W1' /
   H1IR10    'S40Q10 DESCRIPTION OF DWELLING UNIT-W1' /
   H1IR11    'S40Q11 CONDITION OF DWELLING UNIT-W1' /
   H1IR12    'S40Q12 DOMINT LAND USE OF IMMED AREA-W1' /
   H1IR13    'S40Q13 DOMINANT RESIDENTIAL TYPE-W1' /
   H1IR14    'S40Q14 CONDITION OF NBORHOOD BLDGS-W1' /
   H1IR15    'S40Q15 CONCERN FOR SAFETY-W1' /
   H1IR16    'S40Q16 NUMBER OF INTERRUPTIONS-W1' /
   H1IR17A   'S40Q17A ANSWERED TELEPHONE CALL-W1' /
   H1IR17B   'S40Q17B PLACED TELEPHONE CALL-W1' /
   H1IR17C   'S40Q17C DEALT WITH VISITORS-W1' /
   H1IR17D   'S40Q17D HH MEMBERS PASSED THRU ROOM-W1' /
   H1IR17E   'S40Q17E RESPONDED TO CHILDS NEEDS-W1' /
   H1IR17F   'S40Q17F ATTENDED TO HH RESPONSIBILS-W1' /
   H1IR17G   'S40Q17G R/INTERVIEWER NEEDS-W1' /
   H1IR17H   'S40Q17H ENVIRONMENTAL DISTRACTIONS-W1' /
   H1IR17I   'S40Q17I R OBTAINED INFORMATION-W1' /
   H1IR17J   'S40Q17J OTHER-W1' /
   H1IR18    'S40Q18 R APPEARED TO BE DRUNK/HIGH-W1' /
   H1IR19    'S40Q19 R APPEARED BORED/IMPATIENT-W1' /
   H1IR20    'S40Q20 BOREDOM NEG AFFECT ON INVIEW-W1' /
   H1IR21    'S40Q21 R APPEARED EMBARRASSED-W1' /
   H1IR22A   'S40Q22A 1 GENERAL INTRO-W1' /
   H1IR22B   'S40Q22B 2 DAILY ACTIVITIES-W1' /
   H1IR22C   'S40Q22C 3 GENERAL HEALTH-W1' /
   H1IR22D   'S40Q22D 4 TAUGHT IN SCHOOL-W1' /
   H1IR22E   'S40Q22E 5 ACADEMICS-W1' /
   H1IR22F   'S40Q22F 6 PHYSICAL/FUNCTIONAL LIMITS-W1' /
   H1IR22G   'S40Q22G 7 ACCESS TO HEALTH SERVICES-W1' /
   H1IR22H   'S40Q22H 8 RISK PERCEPTIONS-W1' /
   H1IR22I   'S40Q22I 9 SELF EFFICACY-W1' /
   H1IR22J   'S40Q22J 10 FEELINGS SCALE-W1' /
   H1IR22K   'S40Q22K 11 HOUSEHOLD ROSTER-W1' /
   H1IR22L   'S40Q22L 12 NON-RESIDENT BIO MOM-W1' /
   H1IR22M   'S40Q22M 13 NON-RESIDENT BIO DAD-W1' /
   H1IR22N   'S40Q22N 14 RESIDENT MOM-W1' /
   H1IR22O   'S40Q22O 15 RESIDENT DAD-W1' /
   H1IR22P   'S40Q22P 16 RELATIONS WITH PARENTS-W1' /
   H1IR22Q   'S40Q22Q 17 MOTIVE FOR RISKY BEHAVIOR-W1' /
   H1IR22R   'S40Q22R 18 PERSONALITY AND FAMILY-W1' /
   H1IR22S   'S40Q22S 19 KNOWLEDGE QUIZ-W1' /
   H1IR22T   'S40Q22T 20 FRIENDS-W1' /
   H1IR22U   'S40Q22U 21 IDEAL ROMANCE-W1' /
   H1IR22V   'S40Q22V 22 ROMANCE ROSTER-W1' /
   H1IR22W   'S40Q22W 23 LIKED ROSTER-W1' /
   H1IR22X   'S40Q22X 24 CONTRACEPTION-W1' /
   H1IR22Y   'S40Q22Y 25 RELATIONSHIP INFO-W1' /
   H1IR22Z   'S40Q22Z 26 NONRELATIONSHIP INFO-W1' /
   H1IR22AA  'S40Q22AA 27 MOTIVE FOR BIRTHCONTROL-W1' /
   H1IR22BB  'S40Q22BB 28 TOBACCO, ALCOHOL, DRUGS-W1' /
   H1IR22CC  'S40Q22CC 29 DELINQUENCY SCALE-W1' /
   H1IR22DD  'S40Q22DD 30 JOINT OCCURRENCES-W1' /
   H1IR22EE  'S40Q22EE 31 FIGHTING AND VIOLENCE-W1' /
   H1IR22FF  'S40Q22FF 32 PHYSICAL DEVELOPMENT-W1' /
   H1IR22GG  'S40Q22GG 33 SUICIDE-W1' /
   H1IR22HH  'S40Q22HH 34 PARENTS ATTITUDE-W1' /
   H1IR22II  'S40Q22II 35 PROTECTIVE FACTORS-W1' /
   H1IR22JJ  'S40Q22JJ 36 NEIGHBORHOOD-W1' /
   H1IR22KK  'S40Q22KK 37 RELIGION-W1' /
   H1IR22LL  'S40Q22LL 28 EXPECTATIONS, EMPLOYMT-W1' /
   H1IR22MM  'S40Q22MM 29 RELATION W/ SIBLINGS-W1' /
   H1IR23    'S40Q23 EVIDENCE OF SMOKING IN HH-W1' /
   H1IR24    'S40Q24 EVIDENCE OF DRINKING IN HH-W1' /
   H1IR25    'S40Q25 LANGUAGE OF INTERVIEW-W1' /
   H1IR26    'S40Q26 IS RESPONDENT BLIND-W1' /
   H1IR27    'S40Q27 IS RESPONDENT DEAF-W1' /
   H1IR28    'S40Q28 ANYTHING ESSENTIAL-W1' /
   S1        '1. HOW OLD ARE YOU?' /
   S2        '2. WHAT SEX ARE YOU?' /
   S3        '3. WHAT GRADE ARE YOU IN?' /
   S4        '4. ARE YOU OF HISPANIC/SPANISH ORIGIN?' /
   S5        '5. WHAT IS YOUR BACKGROUND (HISPANIC)' /
   S6A       '6.1 WHAT IS YOUR RACE (WHITE)' /
   S6B       '6.2 WHAT IS YOUR RACE? (BLACK)' /
   S6C       '6.3 WHAT IS YOUR RACE? (ASIAN)' /
   S6D       '6.4 WHAT IS YOUR RACE? (AMERICAN INDIAN)' /
   S6E       '6.5 WHAT IS YOUR RACE? (OTHER)' /
   S7        '7. WHAT IS YOUR BACKGROUND (ASIAN)' /
   S8        '8. BORN IN THE UNITED STATES?' /
   S9        '9. YEARS AT THIS SCHOOL' /
   S10       '10. SCHOOL GIVES NO LETTER GRADES' /
   S10A      '10.1 GRADE IN ENGLISH' /
   S10B      '10.2 GRADE IN MATHEMATICS' /
   S10C      '10.3 GRADE IN HISTORY/SOCIAL STUDIES' /
   S10D      '10.4 GRADE IN SCIENCE' /
   S11       '11. LIVES WITH MOTHER' /
   S12       '12. HOW FAR DID MOTHER GO IN SCHOOL?' /
   S13       '13. MOTHER BORN IN U.S.?' /
   S14       '14. JOB DESCRIPTION - MOTHER' /
   S15       '15. DOES MOTHER WORK FOR PAY?' /
   S16       '16. DOES MOTHER CARE ABOUT YOU?' /
   S17       '17. LIVES WITH FATHER' /
   S18       '18. HOW FAR DID FATHER GO IN SCHOOL?' /
   S19       '19. FATHER BORN IN U.S.?' /
   S20       '20. JOB DESCRIPTION - FATHER' /
   S21       '21. DOES FATHER WORK FOR PAY?' /
   S22       '22. DOES FATHER CARE ABOUT YOU?' /
   S23       '23. ARE YOU A TWIN?' /
   S24       '24. LIVE IN SAME HOUSEHOLD WITH TWIN?' /
   S25       '25. ARE YOU ADOPTED?' /
   S26       '26. LIVE WITH BIOLOGICAL PARENTS?' /
   S27       '27. HOW MANY PEOPLE LIVE IN HOUSEHOLD?' /
   S28       '28. PEOPLE IN GRADES 7-12 IN HOUSEHOLD' /
   S29A      '29.1 HOUSEHOLD MEMBER IS MALE-1' /
   S29B      '29.2 HOUSEHOLD MEMBER IS MALE-2' /
   S29C      '29.3 HOUSEHOLD MEMBER IS MALE-3' /
   S29D      '29.4 HOUSEHOLD MEMBER IS MALE-4' /
   S29E      '29.5 HOUSEHOLD MEMBER IS MALE-5' /
   S30A      '30.1 HOUSEHOLD MEMBER IS FEMALE-1' /
   S30B      '30.2 HOUSEHOLD MEMBER IS FEMALE-2' /
   S30C      '30.3 HOUSEHOLD MEMBER IS FEMALE-3' /
   S30D      '30.4 HOUSEHOLD MEMBER IS FEMALE-4' /
   S30E      '30.5 HOUSEHOLD MEMBER IS FEMALE-5' /
   S31A      '31.1 HOUSEHOLD MEMBER SAME MOTHER-1' /
   S31B      '31.2 HOUSEHOLD MEMBER SAME MOTHER-2' /
   S31C      '31.3 HOUSEHOLD MEMBER SAME MOTHER-3' /
   S31D      '31.4 HOUSEHOLD MEMBER SAME MOTHER-4' /
   S31E      '31.5 HOUSEHOLD MEMBER SAME MOTHER-5' /
   S32A      '32.1 HOUSEHOLD MEMBER SAME FATHER-1' /
   S32B      '32.2 HOUSEHOLD MEMBER SAME FATHER-2' /
   S32C      '32.3 HOUSEHOLD MEMBER SAME FATHER-3' /
   S32D      '32.4 HOUSEHOLD MEMBER SAME FATHER-4' /
   S32E      '32.5 HOUSEHOLD MEMBER SAME FATHER-5' /
   S33A      '33.1 HOUSEHOLD MEMBER SAME SCHOOL-1' /
   S33B      '33.2 HOUSEHOLD MEMBER SAME SCHOOL-2' /
   S33C      '33.3 HOUSEHOLD MEMBER SAME SCHOOL-3' /
   S33D      '33.4 HOUSEHOLD MEMBER SAME SCHOOL-4' /
   S33E      '33.5 HOUSEHOLD MEMBER SAME SCHOOL-5' /
   S34A      '34.1 WENT TO HOUSE OF MALE FRIEND-1' /
   S34B      '34.2 WENT TO HOUSE OF MALE FRIEND-2' /
   S34C      '34.3 WENT TO HOUSE OF MALE FRIEND-3' /
   S34D      '34.4 WENT TO HOUSE OF MALE FRIEND-4' /
   S34E      '34.5 WENT TO HOUSE OF MALE FRIEND-5' /
   S35A      '35.1 MET MALE FRIEND TO HANG OUT-1' /
   S35B      '35.2 MET MALE FRIEND TO HANG OUT-2' /
   S35C      '35.3 MET MALE FRIEND TO HANG OUT-3' /
   S35D      '35.4 MET MALE FRIEND TO HANG OUT-4' /
   S35E      '35.5 MET MALE FRIEND TO HANG OUT-5' /
   S36A      '36.1 SPENT WKEND TIME W/MALE FRIEND-1' /
   S36B      '36.2 SPENT WKEND TIME W/MALE FRIEND-2' /
   S36C      '36.3 SPENT WKEND TIME W/MALE FRIEND-3' /
   S36D      '36.4 SPENT WKEND TIME W/MALE FRIEND-4' /
   S36E      '36.5 SPENT WKEND TIME W/MALE FRIEND-5' /
   S37A      '37.1 DISCUSSED PROBLEM W/MALE FRIEND-1' /
   S37B      '37.2 DISCUSSED PROBLEM W/MALE FRIEND-2' /
   S37C      '37.3 DISCUSSED PROBLEM W/MALE FRIEND-3' /
   S37D      '37.4 DISCUSSED PROBLEM W/MALE FRIEND-4' /
   S37E      '37.5 DISCUSSED PROBLEM W/MALE FRIEND-5' /
   S38A      '38.1 TALKED ON PHONE W/MALE FRIEND-1' /
   S38B      '38.2 TALKED ON PHONE W/MALE FRIEND-2' /
   S38C      '38.3 TALKED ON PHONE W/MALE FRIEND-3' /
   S38D      '38.4 TALKED ON PHONE W/MALE FRIEND-4' /
   S38E      '38.5 TALKED ON PHONE W/MALE FRIEND-5' /
   S39A      '39.1 WENT TO HOUSE OF FEMALE FRIEND-1' /
   S39B      '39.2 WENT TO HOUSE OF FEMALE FRIEND-2' /
   S39C      '39.3 WENT TO HOUSE OF FEMALE FRIEND-3' /
   S39D      '39.4 WENT TO HOUSE OF FEMALE FRIEND-4' /
   S39E      '39.5 WENT TO HOUSE OF FEMALE FRIEND-5' /
   S40A      '40.1 MET FEMALE FRIEND TO HANG OUT-1' /
   S40B      '40.2 MET FEMALE FRIEND TO HANG OUT-2' /
   S40C      '40.3 MET FEMALE FRIEND TO HANG OUT-3' /
   S40D      '40.4 MET FEMALE FRIEND TO HANG OUT-4' /
   S40E      '40.5 MET FEMALE FRIEND TO HANG OUT-5' /
   S41A      '41.1 SPENT WKEND TIME W/FEMALE FRIEND-1' /
   S41B      '41.2 SPENT WKEND TIME W/FEMALE FRIEND-2' /
   S41C      '41.3 SPENT WKEND TIME W/FEMALE FRIEND-3' /
   S41D      '41.4 SPENT WKEND TIME W/FEMALE FRIEND-4' /
   S41E      '41.5 SPENT WKEND TIME W/FEMALE FRIEND-5' /
   S42A      '42.1 DISCUSSED PROBLEM W/FEMALE FRIEND-1' /
   S42B      '42.2 DISCUSSED PROBLEM W/FEMALE FRIEND-2' /
   S42C      '42.3 DISCUSSED PROBLEM W/FEMALE FRIEND-3' /
   S42D      '42.4 DISCUSSED PROBLEM W/FEMALE FRIEND-4' /
   S42E      '42.5 DISCUSSED PROBLEM W/FEMALE FRIEND-5' /
   S43A      '43.1 TALKED ON PHONE W/FEMALE FRIEND-1' /
   S43B      '43.2 TALKED ON PHONE W/FEMALE FRIEND-2' /
   S43C      '43.3 TALKED ON PHONE W/FEMALE FRIEND-3' /
   S43D      '43.4 TALKED ON PHONE W/FEMALE FRIEND-4' /
   S43E      '43.5 TALKED ON PHONE W/FEMALE FRIEND-5' /
   S44A1     '44.1 FRENCH CLUB' /
   S44A2     '44.2 GERMAN CLUB' /
   S44A3     '44.3 LATIN CLUB' /
   S44A4     '44.4 SPANISH CLUB' /
   S44A5     '44.5 BOOK CLUB' /
   S44A6     '44.6 COMPUTER CLUB' /
   S44A7     '44.7 DEBATE TEAM' /
   S44A8     '44.8 DRAMA CLUB' /
   S44A9     '44.9 FUTURE FARMERS' /
   S44A10    '44.10 HISTORY CLUB' /
   S44A11    '44.11 MATH CLUB' /
   S44A12    '44.12 SCIENCE CLUB' /
   S44A13    '44.13 BAND' /
   S44A14    '44.14 CHEERLEADER/DANCE' /
   S44A15    '44.15 CHORUS OR CHOIR' /
   S44A16    '44.16 ORCHESTRA' /
   S44A17    '44.17 OTHER CLUB OR ORG' /
   S44A18    '44.18 BASEBALL/SOFTBALL' /
   S44A19    '44.19 BASKETBALL' /
   S44A20    '44.20 FIELD HOCKEY' /
   S44A21    '44.21 FOOTBALL' /
   S44A22    '44.22 ICE HOCKEY' /
   S44A23    '44.23 SOCCER' /
   S44A24    '44.24 SWIMMING' /
   S44A25    '44.25 TENNIS' /
   S44A26    '44.26 TRACK' /
   S44A27    '44.27 VOLLEYBALL' /
   S44A28    '44.28 WRESTLING' /
   S44A29    '44.29 OTHER SPORT' /
   S44A30    '44.30 NEWSPAPER' /
   S44A31    '44.31 HONOR SOCIETY' /
   S44A32    '44.32 STUDENT COUNCIL' /
   S44A33    '44.33 YEARBOOK' /
   S44       '44. DOES NOT PART. ANY CLUBS,ORGS,TEAMS' /
   S45A      '45.a WILL LIVE TO AGE 35' /
   S45B      '45.b WILL MARRY BY AGE 25' /
   S45C      '45.c WILL BE KILLED BY AGE 21' /
   S45D      '45.d WILL GET HIV OR AIDS' /
   S45E      '45.e WILL GRADUATE FROM COLLEGE' /
   S45F      '45.f WILL HAVE MIDDLE CLASS INCOME' /
   S46A      '46.a TROUBLE GETTING ALONG WITH TEACHER' /
   S46B      '46.b TROUBLE PAYING ATTENTION IN SCHOOL' /
   S46C      '46.c TROUBLE GETTING HOMEWORK DONE' /
   S46D      '46.d TROUBLE WITH OTHER STUDENTS' /
   S47       '47. TIME SPENT WATCHING TV ON SCHOOL DAY' /
   S48       '48. TRIES TO DO SCHOOL WORK WELL' /
   S49       '49. DRANK ALCOHOL MORE THAN 2/3 TIMES?' /
   S50       '50. HOW IS YOUR HEALTH?' /
   S51       '51. LAST PHYSICAL EXAM' /
   S52       '52. LAST DENTAL EXAM' /
   S53       '53. LAST COUNSELING OR THERAPY SESSION' /
   S54       '54. DIFFICULTY USING HANDS, ARMS, LEGS' /
   S55A      '55.1 DOES CONDITION INVOLVE HEART' /
   S55B      '55.2 DOES CONDITION INVOLVE ASTHMA' /
   S55C      '55.3 DOES CONDITION INVOLVE BREATHING' /
   S55D      '55.4 DOES CONDITION INVOLVE OTHER' /
   S56       '56. USES CANE, CRUTCHES, WALKER SHOES' /
   S57       '57. USES BRACE FOR ARMS, LEGS, HANDS' /
   S58       '58. USES ARTIFICAL ARM, LEG, HAND, FOOT' /
   S59A      '59.a SMOKED CIGARETTES-LAST 12 MTHS' /
   S59B      '59.b DRANK BEER WINE LIQUOR-LAST 12 MTHS' /
   S59C      '59.c GOT DRUNK-LAST 12 MTHS' /
   S59D      '59.d RACED ON BIKE OR CAR-LAST 12 MTHS' /
   S59E      '59.e IN DANGER DUE TO DARE-LAST 12 MTHS' /
   S59F      '59.f LIED TO PARENTS-LAST 12 MTHS' /
   S59G      '59.g SKIPPED SCHOOL-LAST 12 MTHS' /
   S60A      '60.a FELT SICK-LAST MONTH' /
   S60B      '60.b WOKE UP TIRED-LAST MONTH' /
   S60C      '60.c SKIN PROBLEMS-LAST MONTH' /
   S60D      '60.d DIZZY-LAST MONTH' /
   S60E      '60.e CHEST PAIN-LAST MONTH' /
   S60F      '60.f HEADACHES-LAST MONTH' /
   S60G      '60.g SORE MUSCLES-LAST MONTH' /
   S60H      '60.h STOMACHACHE-LAST MONTH' /
   S60I      '60.i POOR APPETITE-LAST MONTH' /
   S60J      '60.j TROUBLE SLEEPING-LAST MONTH' /
   S60K      '60.k DEPRESSED-LAST MONTH' /
   S60L      '60.l TROUBLE RELAXING-LAST MONTH' /
   S60M      '60.m MOODY-LAST MONTH' /
   S60N      '60.n CRIED A LOT-LAST MONTH' /
   S60O      '60.o AFRAID OF THINGS-LAST MONTH' /
   S61A      '61.a MISSED SCHOOL-HEALTH PROBLEM' /
   S61B      '61.b MISSED SOCIAL ACTIVITY-HEALTH PROB.' /
   S61C      '61.c TROUBLE WALKING-HEALTH PROBLEM' /
   S61D      '61.d TROUBLE RUNNING-HEALTH PROBLEM' /
   S61E      '61.e TROUBLE LIFTING-HEALTH PROBLEM' /
   S61F      '61.f TROUBLE WITH HANDS-HEALTH PROBLEM' /
   S62A      '62.a HAS LOTS OF ENERGY' /
   S62B      '62.b FEELS CLOSE TO PEOPLE AT SCHOOL' /
   S62C      '62.c SELDOM GETS SICK' /
   S62D      '62.d GETS BETTER QUICKLY' /
   S62E      '62.e FEELS PART OF SCHOOL' /
   S62F      '62.f IS WELL COORDINATED' /
   S62G      '62.g STUDENTS AT SCHOOL ARE PREJUDICED' /
   S62H      '62.h HAS GOOD QUALITIES' /
   S62I      '62.i HAPPY TO BE AT THIS SCHOOL' /
   S62J      '62.j PHYSICALLY FIT' /
   S62K      '62.k HAS A LOT TO BE PROUD OF' /
   S62L      '62.l TEACHERS TREAT STUDENTS FAIRLY' /
   S62M      '62.m LIKES SELF' /
   S62N      '62.n DOING EVERYTHNG RIGHT' /
   S62O      '62.o FEELS SOCIALLY ACCEPTED' /
   S62P      '62.p FEELS LOVED AND WANTED' /
   S62Q      '62.q FEELS SAFE IN NEIGHBORHOOD' /
   S62R      '62.r FEELS SAFE AT SCHOOL' /
   S63       '63. SWEAT FROM WORK, PLAY, EXERCISE' /
   S64       '64. BEEN IN FIGHTS LAST YEAR' /
   S65       '65. NEEDED TO GO TO DOCTOR BUT DID NOT' /
   S66       '66. MOST IMPORTANT FACTS ABOUT SCHOOL' /
   S67       '67. WHAT MAKES THIS SCHOOL DIFFERENT' /
   S68       '68. ANYTHING UNUSUAL IN LAST 12 MONTHS' /
   PA1       'A1 SEX OF RESPONDENT-PQ' /
   PA2       'A2 AGE OF RESPONDENT-PQ' /
   PA3       'A3 BORN IN U.S.-PQ' /
   PA4       'A4 HISPANIC ORIGIN?-PQ' /
   PA5_1     'A5_1 HISPANIC, MEX./MEX. AM.-PQ' /
   PA5_2     'A5_2 HISPANIC, CHICANO-PQ' /
   PA5_3     'A5_3 HISPANIC, CUBAN/CUBAN AM.-PQ' /
   PA5_4     'A5_4 HISPANIC, PUERTO RICAN-PQ' /
   PA5_5     'A5_5 HISPANIC, CENTRAL/SOUTH AM.-PQ' /
   PA5_6     'A5_6 HISPANIC, OTHER-PQ' /
   PA5_7     'A5_7 HISPANIC, UNKNOWN-PQ' /
   PA6_1     'A6_1 RACE, WHITE-PQ' /
   PA6_2     'A6_2 RACE, BLACK/AFRICAN AM.-PQ' /
   PA6_3     'A6_3 RACE, AMER. INDIAN/NATIVE AM.-PQ' /
   PA6_4     'A6_4 RACE, ASIAN OR PAC. ISLANDER-PQ' /
   PA6_5     'A6_5 RACE, OTHER-PQ' /
   PA7_1     'A7_1 ASIAN, CHINESE-PQ' /
   PA7_2     'A7_2 ASIAN, FILIPINO-PQ' /
   PA7_3     'A7_3 ASIAN, JAPANESE-PQ' /
   PA7_4     'A7_4 ASIAN, ASIAN INDIAN-PQ' /
   PA7_5     'A7_5 ASIAN, KOREAN-PQ' /
   PA7_6     'A7_6 ASIAN, VIETNAMESE-PQ' /
   PA7_7     'A7_7 ASIAN, OTHER-PQ' /
   PA7_8     'A7_8 ASIAN, UNKNOWN-PQ' /
   PA8B      'A8B RACE, CHOOSE ONE ANSWER-PQ' /
   PA9       'A9 RACE, OBSERVATION OF INTERVIEWER-PQ' /
   PA10      'A10 MARITAL STATUS-PQ' /
   PA11      'A11 CURRENTLY DATING-PQ' /
   PA12      'A12 LEVEL OF EDUCATION-PQ' /
   PA13      'A13 WORK OUTSIDE HOME-PQ' /
   PA14      'A14 WORK OUTSIDE HOME, LAST 12 MOS.-PQ' /
   PA15      'A15 EMPLOYED FULL TIME AT LAST JOB-PQ' /
   PA16      'A16 UNEMPLOYED NOW, BUT LOOKING-PQ' /
   PA17      'A17 EMPLOYED FULL TIME NOW-PQ' /
   PA18      'A18 DISABLED-PQ' /
   PA19      'A19 RETIRED-PQ' /
   PA20      'A20 HAPPY-PQ' /
   PA21      'A21 RECEIVING PUBLIC ASSISTANCE-PQ' /
   PA22      'A22 RELIGION OF RESPONDENT-PQ' /
   PA23      'A23 HOW OFTEN ATTEND REL. SERVICE-PQ' /
   PA24      'A24 IMPORTANCE OF RELIGION-PQ' /
   PA25      'A25 HOW OFTEN PRAY-PQ' /
   PA26      'A26 AGREEMENT W/SACRED SCRIPTURES-PQ' /
   PA27A     'A27A MEMBER, PTO-PQ' /
   PA27B     'A27B MEMBER, MILITARY VETERANS ORG.-PQ' /
   PA27C     'A27C MEMBER, LABOR UNION-PQ' /
   PA27D     'A27D MEMBER, HOBBY/SPORTS GROUP-PQ' /
   PA27E     'A27E MEMBER, CIVIC/SOCIAL ORG.-PQ' /
   PA28A     'A28A NEIGHBORHOOD, NEAR PAST JOB-PQ' /
   PA28B     'A28B NEIGHBORHOOD, NEAR CURRENT JOB-PQ' /
   PA28C     'A28C NEIGHBORHOOD, OUTGROWN OLD HOME-PQ' /
   PA28D     'A28D NEIGHBORHOOD, AFFORDABLE -PQ' /
   PA28E     'A28E NEIGHBORHOOD, LESS CRIME-PQ' /
   PA28F     'A28F NEIGHBORHOOD, LESS DRUG USE-PQ' /
   PA28G     'A28G NEIGHBORHOOD, NEAR FRIENDS-PQ' /
   PA28H     'A28H NEIGHBORHOOD, BETTER SCHOOLS-PQ' /
   PA28I     'A28I NEIGHBORHOOD, CHILDREN SAME AGE-PQ' /
   PA28J     'A28J NEIGHBORHOOD, BORN HERE-PQ' /
   PA30      'A30 NEIGHBORHOOD, CHOOSE ONE ANSWER-PQ' /
   PA31      'A31 TELL IF NEIGHBOR CHILD IN TROUBLE-PQ' /
   PA32      'A32 NEIGHBOR TELL IF YOUR CHILD-PQ' /
   PA33      'A33 NEIGHBORHOOD PROBLEM, TRASH-PQ' /
   PA34      'A34 NEIGHBORHOOD PROBLEM, DRUGS-PQ' /
   PA35      'A35 MOVE AWAY FROM NEIGHBORHOOD-PQ' /
   PA36      'A36 MOST IMPORTANT FOR BOY TO LEARN-PQ' /
   PA37      'A37 MOST IMPORTANT FOR GIRL TO LEARN-PQ' /
   PA38      'A38 EVER BEEN MARRIED-PQ' /
   PA39      'A39 AGE WHEN FIRST MARRIED-PQ' /
   PA40      'A40 NUMBER OF RELATIONSHIPS-PQ' /
   PA41_1    'A41_1 IN PRESENT REL. 1995-PQ' /
   PA41_2    'A41_2 IN PRESENT REL. 1994-PQ' /
   PA41_3    'A41_3 IN PRESENT REL. 1993-PQ' /
   PA41_4    'A41_4 IN PRESENT REL. 1992-PQ' /
   PA41_5    'A41_5 IN PRESENT REL. 1991-PQ' /
   PA41_6    'A41_6 IN PRESENT REL. 1990-PQ' /
   PA41_7    'A41_7 IN PRESENT REL. 1989-PQ' /
   PA41_8    'A41_8 IN PRESENT REL. 1988-PQ' /
   PA41_9    'A41_9 IN PRESENT REL. 1987-PQ' /
   PA41_10   'A41_10 IN PRESENT REL. 1986-PQ' /
   PA41_11   'A41_11 IN PRESENT REL. 1985-PQ' /
   PA41_12   'A41_12 IN PRESENT REL. 1984-PQ' /
   PA41_13   'A41_13 IN PRESENT REL. 1983-PQ' /
   PA41_14   'A41_14 IN PRESENT REL. 1982-PQ' /
   PA41_15   'A41_15 IN PRESENT REL. 1981-PQ' /
   PA41_16   'A41_16 IN PRESENT REL. 1980-PQ' /
   PA41_17   'A41_17 IN PRESENT REL. 1979-PQ' /
   PA41_18   'A41_18 IN PRESENT REL. 1978-PQ' /
   PA41_19   'A41_19 IN PRESENT REL. 1977-PQ' /
   PA42      'A42 PRESENT REL. MARRIAGE OR M/LIKE-PQ' /
   PA43      'A43 IN PRESENT REL. STILL-PQ' /
   PA44      'A44 HOW PRESENT REL. ENDED-PQ' /
   PA46_1    'A46_1 IN PREVIOUS REL. 1995-PQ' /
   PA46_2    'A46_2 IN PREVIOUS REL. 1994-PQ' /
   PA46_3    'A46_3 IN PREVIOUS REL. 1993-PQ' /
   PA46_4    'A46_4 IN PREVIOUS REL. 1992-PQ' /
   PA46_5    'A46_5 IN PREVIOUS REL. 1991-PQ' /
   PA46_6    'A46_6 IN PREVIOUS REL. 1990-PQ' /
   PA46_7    'A46_7 IN PREVIOUS REL. 1989-PQ' /
   PA46_8    'A46_8 IN PREVIOUS REL. 1988-PQ' /
   PA46_9    'A46_9 IN PREVIOUS REL. 1987-PQ' /
   PA46_10   'A46_1O IN PREVIOUS REL. 1986-PQ' /
   PA46_11   'A46_11 IN PREVIOUS REL. 1985-PQ' /
   PA46_12   'A46_12 IN PREVIOUS REL. 1984-PQ' /
   PA46_13   'A46_13 IN PREVIOUS REL. 1983-PQ' /
   PA46_14   'A46_14 IN PREVIOUS REL. 1982-PQ' /
   PA46_15   'A46_15 IN PREVIOUS REL. 1981-PQ' /
   PA46_16   'A46_16 IN PREVIOUS REL. 1980-PQ' /
   PA46_17   'A46_17 IN PREVIOUS REL. 1979-PQ' /
   PA46_18   'A46_18 IN PREVIOUS REL. 1978-PQ' /
   PA46_19   'A46_19 IN PREVIOUS REL. 1977-PQ' /
   PA47      'A47 PREVIOUS REL. MARRIAGE OR M/LIKE-PQ' /
   PA48      'A48 IN PREVIOUS REL. STILL-PQ' /
   PA49      'A49 HOW PREVIOUS REL. ENDED-PQ' /
   PA51_1    'A51_1 IN NEXT PREV. REL. 1995-PQ' /
   PA51_2    'A51_2 IN NEXT PREV. REL. 1994-PQ' /
   PA51_3    'A51_3 IN NEXT PREV. REL. 1993-PQ' /
   PA51_4    'A51_4 IN NEXT PREV. REL. 1992-PQ' /
   PA51_5    'A51_5 IN NEXT PREV. REL. 1991-PQ' /
   PA51_6    'A51_6 IN NEXT PREV. REL. 1990-PQ' /
   PA51_7    'A51_7 IN NEXT PREV. REL. 1989-PQ' /
   PA51_8    'A51_8 IN NEXT PREV. REL. 1988-PQ' /
   PA51_9    'A51_9 IN NEXT PREV. REL. 1987-PQ' /
   PA51_10   'A51_10 IN NEXT PREV. REL. 1986-PQ' /
   PA51_11   'A51_11 IN NEXT PREV. REL. 1985-PQ' /
   PA51_12   'A51_12 IN NEXT PREV. REL. 1984-PQ' /
   PA51_13   'A51_13 IN NEXT PREV. REL. 1983-PQ' /
   PA51_14   'A51_14 IN NEXT PREV. REL. 1982-PQ' /
   PA51_15   'A51_15 IN NEXT PREV. REL. 1981-PQ' /
   PA51_16   'A51_16 IN NEXT PREV. REL. 1980-PQ' /
   PA51_17   'A51_17 IN NEXT PREV. REL. 1979-PQ' /
   PA51_18   'A51_18 IN NEXT PREV. REL. 1978-PQ' /
   PA51_19   'A51_19 IN NEXT PREV. REL. 1977-PQ' /
   PA52      'A52 NEXT PREV REL MARRIAGE OR M/LIKE-PQ' /
   PA53      'A53 IN NEXT PREV. REL. STILL-PQ' /
   PA54      'A54 HOW NEXT PREV. REL. ENDED-PQ' /
   PA55      'A55 TOTAL HOUSEHOLD INCOME-PQ' /
   PA56      'A56 ENOUGH MONEY FOR BILLS-PQ' /
   PA57A     'A57A RECEIVE SS OR RR-PQ' /
   PA57B     'A57B RECEIVE SSI-PQ' /
   PA57C     'A57C RECEIVE AFDC-PQ' /
   PA57D     'A57D RECEIVE FOOD STAMPS-PQ' /
   PA57E     'A57E RECEIVE UNEMPLOYMENT-PQ' /
   PA57F     'A57F RECEIVE HOUSING SUBSIDY-PQ' /
   PA58      'A58 GENERAL PHYSICAL HEALTH-PQ' /
   PA59      'A59 MEDICAL CARE FOR FAMILY-PQ' /
   PA60      'A60 WEAR A SEATBELT-PQ' /
   PA61      'A61 HOW OFTEN DRINK ALCOHOL-PQ' /
   PA62      'A62 IN LAST MONTH > 5 DRINKS-PQ' /
   PA63      'A63 CIGARETTE SMOKERS IN HOUSEHOLD-PQ' /
   PA64      'A64 DOES RESPONDENT SMOKE-PQ' /
   PB2       'B2 SEX OF CURRENT PARTNER-PQ' /
   PB3       'B3 PARTNER OF HISPANIC ORIGIN-PQ' /
   PB4_1     'B4_1 PART. HISPANIC, MEX./MEX. AM-PQ' /
   PB4_2     'B4_2 PART. HISPANIC, CHICANO-PQ' /
   PB4_3     'B4_3 PART. HISPANIC, CUBAN/CUB. AM-PQ' /
   PB4_4     'B4_4 PART. HISPANIC, PUERTO RICAN-PQ' /
   PB4_5     'B4_5 PART. HISPANIC, CENT/SOUTH AM.-PQ' /
   PB4_6     'B4_6 PART. HISPANIC, OTHER-PQ' /
   PB4_7     'B4_7 PART. HISPANIC, UNKNOWN-PQ' /
   PB5_1     'B5_1 PART. RACE, WHITE-PQ' /
   PB5_2     'B5_2 PART. RACE, BLACK/AF-AM.-PQ' /
   PB5_3     'B5_3 PART. RACE, AMER IND./NATIVE-PQ' /
   PB5_4     'B5_4 PART. RACE, ASIAN OR PAC.IS.-PQ' /
   PB5_5     'B5_5 PART. RACE, OTHER-PQ' /
   PB6_1     'B6_1 PART. ASIAN, CHINESE-PQ' /
   PB6_2     'B6_2 PART. ASIAN, FILIPINO-PQ' /
   PB6_3     'B6_3 PART. ASIAN, JAPANESE-PQ' /
   PB6_4     'B6_4 PART. ASIAN, ASIAN INDIAN-PQ' /
   PB6_5     'B6_5 PART. ASIAN, KOREAN-PQ' /
   PB6_6     'B6_6 PART. ASIAN, VIETNAMESE-PQ' /
   PB6_7     'B6_7 PART. ASIAN, OTHER-PQ' /
   PB6_8     'B6_8 PART. ASIAN, UNKNOWN-PQ' /
   PB7       'B7 RELIGION OF PARTNER-PQ' /
   PB8       'B8 EDUCATION LEVEL OF PARTNER-PQ' /
   PB9       'B9 PART. WORK OUTSIDE HOME-PQ' /
   PB10      'B10 PART. WK OUTSIDE HOME LAST 12 MOS-PQ' /
   PB11      'B11 PART. EMP. FULL TIME AT LAST JOB-PQ' /
   PB12      'B12 PART. UNEMP. NOW, BUT LOOKING-PQ' /
   PB13      'B13 PART. EMP. FULL TIME NOW-PQ' /
   PB14      'B14 PART. DISABLED-PQ' /
   PB15      'B15 PART. RETIRED-PQ' /
   PB16      'B16 PART. HAPPY-PQ' /
   PB17      'B17 PART. RECEIVING PUB. ASSISTANCE-PQ' /
   PB18      'B18 RATE RELATIONSHIP W/PARTNER-PQ' /
   PB19      'B19 TALK ABOUT SEPARATING-PQ' /
   PB20      'B20 FIGHT WITH PARTNER-PQ' /
   PB21      'B21 GENERAL HEALTH OF PARTNER-PQ' /
   PB22      'B22 PARTNER DRINK ALCOHOL-PQ' /
   PC1       'C1 RELATIONSHIP TO ADOLESCENT-PQ' /
   PC2       'C2 BIO MOTHER IN HOUSEHOLD-PQ' /
   PC3       'C3 EVER LIVE W/BIO MOTHER-PQ' /
   PC4       'C4 MOST RECENT YR LIVED W/BIO MOM-PQ' /
   PC5       'C5 MONTHLY SUPPORT FROM BIO MOM-PQ' /
   PC6B      'C6B BIO FATHER IN HOUSEHOLD-PQ' /
   PC7       'C7 EVER LIVE W/BIO FATHER-PQ' /
   PC8       'C8 MOST RECENT YR LIVED W/BIO DAD-PQ' /
   PC9       'C9 MONTHLY SUPPORT FROM BIO DAD-PQ' /
   PC10      'C10 BEST FRIEND IN SCHOOL-PQ' /
   PC11      'C11 MET BEST FRIEND IN PERSON-PQ' /
   PC12      'C12 MET PARENTS OF BEST FRIEND-PQ' /
   PC13      'C13 INFLUENCE OF BEST FRIEND-PQ' /
   PC14      'C14 SPECIAL GIRLFRIEND/BOYFRIEND-PQ' /
   PC15      'C15 MET SPECIAL FRIEND IN PERSON-PQ' /
   PC16      'C16 MET PARENTS OF SPECIAL FRIEND-PQ' /
   PC17      'C17 TALK TO PARENTS OF FRIENDS-PQ' /
   PC18      'C18 PHYSICAL HEALTH-PQ' /
   PC19A_P   'C19A_P BIRTHWEIGHT, POUNDS-PQ' /
   PC19B_O   'C19B_O BIRTHWEIGHT, OUNCES-PQ' /
   PC20      'C20 LENGTH OF TIME BREASTFEEDING-PQ' /
   PC21_1    'C21_1 HEALTH INSURANCE, MEDICARE-PQ' /
   PC21_2    'C21_2 HEALTH INSURANCE, MEDICAID-PQ' /
   PC21_3    'C21_3 HEALTH INSURANCE, IND/GROUP-PQ' /
   PC21_4    'C21_4 HEALTH INSURANCE, PREPAID-PQ' /
   PC21_5    'C21_5 HEALTH INSURANCE, OTHER-PQ' /
   PC21_6    'C21_6 HEALTH INSURANCE, NONE-PQ' /
   PC21_7    'C21_7 HEALTH INSURANCE, UNKNOWN-PQ' /
   PC22      'C22 TIME W/OUT HEALTH INSURANCE-PQ' /
   PC23      'C23 WEEK NIGHT BEDTIME-PQ' /
   PC24      'C24 RESPONDENT IN SCHOOL NOW-PQ' /
   PC25      'C25 TALK ABOUT GRADES-PQ' /
   PC26      'C26 TALK ABOUT OTHER SCHOOL ACTIVITY-PQ' /
   PC27      'C27 TALK WITH TEACHERS-PQ' /
   PC28      'C28 PARTICIPATE IN SCHOOL FUNDRAISING-PQ' /
   PC29A     'C29A SCHOOL, HIGH PRIORITY-LEARNING-PQ' /
   PC29B     'C29B SCHOOL, SAFE PLACE-PQ' /
   PC29C     'C29C SCHOOL, GOOD SCHOOL-PQ' /
   PC30      'C30 MOST IMPORTANT QUALITY IN SCHOOL-PQ' /
   PC31      'C31 DISAPPOINTMENT IF NO COLLEGE-PQ' /
   PC32      'C32 BAD TEMPER-PQ' /
   PC33      'C33 LIFE IS GOING-PQ' /
   PC34A     'C34A GET ALONG WELL WITH ADOL.-PQ' /
   PC34B     'C34B MAKE DECISIONS TOGETHER-PQ' /
   PC34C     'C34C DOES NOT UNDERSTAND ADOL.-PQ' /
   PC34D     'C34D FEEL YOU CAN TRUST ADOL.-PQ' /
   PC34E     'C34E INTERFERES W/ACTIVITIES-PQ' /
   PC35      'C35 DID NOT LIVE WITH-PQ' /
   PC36_0    'C36_0 YEAR OF LIFE AWAY, 0-PQ' /
   PC36_1    'C36_1 YEAR OF LIFE AWAY, 1-PQ' /
   PC36_2    'C36_2 YEAR OF LIFE AWAY, 2-PQ' /
   PC36_3    'C36_3 YEAR OF LIFE AWAY, 3-PQ' /
   PC36_4    'C36_4 YEAR OF LIFE AWAY, 4-PQ' /
   PC36_5    'C36_5 YEAR OF LIFE AWAY, 5-PQ' /
   PC36_6    'C36_6 YEAR OF LIFE AWAY, 6-PQ' /
   PC36_7    'C36_7 YEAR OF LIFE AWAY, 7-PQ' /
   PC36_8    'C36_8 YEAR OF LIFE AWAY, 8-PQ' /
   PC36_9    'C36_9 YEAR OF LIFE AWAY, 9-PQ' /
   PC36_10   'C36_10 YEAR OF LIFE AWAY, 10-PQ' /
   PC36_11   'C36_11 YEAR OF LIFE AWAY, 11-PQ' /
   PC36_12   'C36_12 YEAR OF LIFE AWAY, 12-PQ' /
   PC36_13   'C36_13 YEAR OF LIFE AWAY, 13-PQ' /
   PC36_14   'C36_14 YEAR OF LIFE AWAY, 14-PQ' /
   PC36_15   'C36_15 YEAR OF LIFE AWAY, 15-PQ' /
   PC36_16   'C36_16 YEAR OF LIFE AWAY, 16-PQ' /
   PC36_17   'C36_17 YEAR OF LIFE AWAY, 17-PQ' /
   PC36_18   'C36_18 YEAR OF LIFE AWAY, 18-PQ' /
   PC36_19   'C36_19 YEAR OF LIFE AWAY, UNKNOWN-PQ' /
   PC37      'C37 MENTALLY RETATRDED-PQ' /
   PC38      'C38 LEARNING DISABILITY-PQ' /
   PC39      'C39 SPECIAL EDUCATION-PQ' /
   PC40      'C40 USE TOBACCO REGULARLY-PQ' /
   PC41      'C41 DRINK ALCOHOL-PQ' /
   PC42A     'C42A DISCUSS SEX, DO NOT KNOW ENOUGH-PQ' /
   PC42B     'C42B DISCUSS SEX, EMBARRASS-PQ' /
   PC42C     'C42C DISCUSS SEX, DIFFICULT-PQ' /
   PC42D     'C42D DISCUSS SEX, GET INFO ELSEWHERE-PQ' /
   PC42E     'C42E DISCUSS SEX, ENCOURAGE SEX-PQ' /
   PC43AA    'C43AA TALK ABOUT, PREGNANCY-PQ' /
   PC43AB    'C43AB TALK ABOUT, DANGERS OF STD-PQ' /
   PC43AC    'C43AC TALK ABOUT, IMPACT ON SOCIAL-PQ' /
   PC43AD    'C43AD TALK ABOUT, MORAL ISSUES-PQ' /
   PC43BA    'C43BA HOW MUCH TALKED, BIRTH CONTROL-PQ' /
   PC43BB    'C43BB HOW MUCH TALKED, SEX-PQ' /
   PC44A     'C44A AGREE, SATISFIED W/RELATIONSHIP-PQ' /
   PC44B     'C44B AGREE, DISAPPROVE OF SEX NOW-PQ' /
   PC44C     'C44C AGREE, SEX OK W/SPECIAL FRIEND-PQ' /
   PC44D     'C44D AGREE, RECOMMEND BIRTH CONTROL-PQ' /
   PC45      'C45 THINK HAS BEEN ON DATE-PQ' /
   PC46      'C46 THINK HAS KISSED/NECKED-PQ' /
   PC47      'C47 THINK HAS HAD INTERCOURSE-PQ' /
   PC48      'C48 THINK AGE FIRST INTERCOURSE-PQ' /
   PC49A_1   'C49A_1 HEALTH PROB/OBESITY/ADOL.-PQ' /
   PC49A_2   'C49A_2 HEALTH PROB/OBESITY/BIO MOM-PQ' /
   PC49A_3   'C49A_3 HEALTH PROB/OBESITY/BIO DAD-PQ' /
   PC49B_1   'C49B_1 HEALTH PROB/MIGRAINE/ADOL.-PQ' /
   PC49B_2   'C49B_2 HEALTH PROB/MIGRAINE/BIO MOM-PQ' /
   PC49B_3   'C49B_3 HEALTH PROB/MIGRAINE/BIO DAD-PQ' /
   PC49C_1   'C49C_1 HEALTH PROB/ALLERGIES/ADOL.-PQ' /
   PC49C_2   'C49C_2 HEALTH PROB/ALLERGIES/BIO MOM-PQ' /
   PC49C_3   'C49C_3 HEALTH PROB/ALLERGIES/BIO DAD-PQ' /
   PC49D_1   'C49D_1 HEALTH PROB/ASTHMA/ADOL.-PQ' /
   PC49D_2   'C49D_2 HEALTH PROB/ASTHMA/BIO MOM-PQ' /
   PC49D_3   'C49D_3 HEALTH PROB/ASTHMA/BIO DAD-PQ' /
   PC49E_1   'C49E_1 HEALTH PROB/ALCOHOLISM/ADOL.-PQ' /
   PC49E_2   'C49E_2 HEALTH PROB/ALCOHOLISM/BIO MOM-PQ' /
   PC49E_3   'C49E_3 HEALTH PROB/ALCOHOLISM/BIO DAD-PQ' /
   PC49F_1   'C49F_1 HEALTH PROB/DIABETES/ADOL.-PQ' /
   PC49F_2   'C49F_2 HEALTH PROB/DIABETES/BIO MOM-PQ' /
   PC49F_3   'C49F_3 HEALTH PROB/DIABETES/BIO DAD-PQ' /
   PC50      'C50 DIFFICULTY USING HANDS/ARMS-PQ' /
   PC51      'C51 DIFFICULTY USING FEET/LEGS-PQ' /
   PC53      'C53 CONSIDER A DISABILITY-PQ' /
   PC54      'C54 OTHERS CONSIDER DISABILITY-PQ' /
   PC55      'C55 CAUSED BY PHYSICAL CONDITION-PQ' /
   PC58      'C58 ACCIDENT OR DISEASE-PQ' /
   PC59      'C59 AGE WHEN OCCURRED-PQ' /
   PC60_1    'C60_1 AFFECTED, RIGHT HAND-PQ' /
   PC60_2    'C60_2 AFFECTED, RIGHT FINGERS-PQ' /
   PC60_3    'C60_3 AFFECTED, LEFT HAND-PQ' /
   PC60_4    'C60_4 AFFECTED, LEFT FINGERS-PQ' /
   PC60_5    'C60_5 AFFECTED, UPPER RIGHT ARM-PQ' /
   PC60_6    'C60_6 AFFECTED, LOWER RIGHT ARM-PQ' /
   PC60_7    'C60_7 AFFECTED, UPPER LEFT ARM-PQ' /
   PC60_8    'C60_8 AFFECTED, LOWER LEFT ARM-PQ' /
   PC60_9    'C60_9 AFFECTED, RIGHT FOOT-PQ' /
   PC60_10   'C60_10 AFFECTED, RIGHT TOES-PQ' /
   PC60_11   'C60_11 AFFECTED, LEFT FOOT-PQ' /
   PC60_12   'C60_12 AFFECTED, LEFT TOES-PQ' /
   PC60_13   'C60_13 AFFECTED, UPPER RIGHT LEG-PQ' /
   PC60_14   'C60_14 AFFECTED, LOWER RIGHT LEG-PQ' /
   PC60_15   'C60_15 AFFECTED, UPPER LEFT LEG-PQ' /
   PC60_16   'C60_16 AFFECTED, LOWER LEFT LEG-PQ' /
   PC60_17   'C60_17 AFFECTED, BACK-PQ' /
   PC60_18   'C60_18 AFFECTED, OTHER-PQ' /
   PC61A     'C61A NEED HELP WITH EATING-PQ' /
   PC61B     'C61B NEED HELP WITH BATHING-PQ' /
   PC61C     'C61C NEED HELP WITH DRESSING-PQ' /
   PC61D     'C61D NEED HELP WITH TOILET-PQ' /
   PC62_1    'C62_1 EQUIPMENT, CANE-PQ' /
   PC62_2    'C62_2 EQUIPMENT, CRUTCHES-PQ' /
   PC62_4    'C62_4 EQUIPMENT, MEDICAL SHOES-PQ' /
   PC62_5    'C62_5 EQUIPMENT, MANUAL WHEELCHAIR-PQ' /
   PC62_8    'C62_8 EQUIPMENT, BRACE-PQ' /
   PC62_10   'C62_10 EQUIPMENT, OTHER-PQ' /
   PC62_11   'C62_11 EQUIPMENT, NONE-PQ' /
   PC63      'C63 ALWAYS LIVED IN PRESENT HOME-PQ' /
   PC64      'C64 BORN IN U.S.-PQ' /
   PC65_M    'C65_M MOVED TO U.S., MONTH-PQ' /
   PC65_Y    'C65_Y MOVED TO U.S., YEAR-PQ' /
   PC66_M    'C66_M MOVED TO CURRENT HOME, MONTH-PQ' /
   PC66_Y    'C66_Y MOVED TO CURRENT HOME, YEAR-PQ' /
   PC68_M    'C68_M MOVED TO PREVIOUS HOME, MONTH-PQ' /
   PC68_Y    'C68_Y MOVED TO PREVIOUS HOME, YEAR-PQ' /
   PC69      'C69 TWIN-PQ' /
   PD2       'D2 IDENTICAL OR FRATERNAL-PQ' /
   PD3       'D3 ALIKE THROUGH AGE EIGHT-PQ' /
   PD4A      'D4A CONFUSED, RESPONDENT-PQ' /
   PD4B      'D4B CONFUSED, FATHER-PQ' /
   PD4C      'D4C CONFUSED, SIBLINGS-PQ' /
   PD4D      'D4D CONFUSED, GRANDPARENTS-PQ' /
   PD4E      'D4E CONFUSED, TEACHERS-PQ' /
   PD4F      'D4F CONFUSED, STRANGERS-PQ' /
   PD5       'D5 SAME RESPONDENT AS CORE SECTION-PQ' /
   PD5A      'D5A ANOTHER SAMPLED ADOLESCENT-PQ' /
   AH_PVT    'ADD HEALTH PICTURE VOCABULARY TEST SCORE' /
   AH_RAW    'RAW PICTURE VOCABULARY TEST SCORE' /
   .


* SPSS VALUE LABELS COMMAND.

VALUE LABELS
   IMONTH    1 '(1) January' 4 '(4) April' 5 '(5) May' 6 '(6) June'
             7 '(7) July' 8 '(8) August' 9 '(9) September' 10 '(10) October'
             11 '(11) November' 12 '(12) December' /
   IYEAR     94 '(94) 1994' 95 '(95) 1995' /
   SCH_YR    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' /
   BIO_SEX   1 '(1) Male' 2 '(2) Female' 6 '(6) Refused' /
   VERSION   '1' '(1) Version 1' '2' '(2) Version 2' '3' '(3) Version 3'
             '4' '(4) Version 4' '5' '(5) Version 5' /
   SMP01     0 '(0) No' 1 '(1) Yes' /
   SMP03     0 '(0) No' 1 '(1) Yes' /
   H1GI1M    1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused' /
   H1GI1Y    74 '(74) 1974' 75 '(75) 1975' 76 '(76) 1976' 77 '(77) 1977'
             78 '(78) 1978' 79 '(79) 1979' 80 '(80) 1980' 81 '(81) 1981'
             82 '(82) 1982' 83 '(83) 1983' 96 '(96) Refused' /
   H1GI2     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1GI3     0 '(0) Since birth/under 1y/o when moved'
             19 '(19) 19 years old and older' 96 '(96) Refused'
             98 '(98) Don''t know' /
   H1GI4     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused (skip to Q.6)'
             8 '(8) Don''t know (skip to Q.6)' /
   H1GI5A    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1GI5B    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1GI5C    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1GI5D    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1GI5E    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1GI5F    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1GI6A    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GI6B    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GI6C    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GI6D    0 '(0) Not marked (skip to Q.8)'
            1 '(1) Marked (If Asian/Pacific Islander among R''s answer ask Q'
             6 '(6) Refused (skip to Q.8)' 8 '(8) Don''t know (skip to Q.8)'
             /
   H1GI6E    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GI7A    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1GI7B    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1GI7C    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1GI7D    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1GI7E    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1GI7F    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1GI7G    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1GI8     1 '(1) White' 2 '(2) Black/African American'
             3 '(3) American Indian/Native American'
             4 '(4) Asian/Pacific Islander' 5 '(5) Other' 6 '(6) Refused'
             7 '(7) Legitimate skip (only one race marked in Q.6)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1GI9     1 '(1) White' 2 '(2) Black/African American'
             3 '(3) American Indian/Native American'
             4 '(4) Asian/Pacific Islander' 5 '(5) Other' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1GI10    1 '(1) English' 2 '(2) Spanish' 3 '(3) Other' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GI11    0 '(0) No' 1 '(1) Yes (skip to Q.15)'
             6 '(6) Refused (skip to Q.15)'
             7 '(7) Legitimate skip (lived at current address since birth)'
             8 '(8) Don''t know (skip to Q.15)' /
   H1GI12    30 '(30) Cambodia' 32 '(32) Canada'
             37 '(37) People''s Republic of China' 38 '(38) Colombia'
             43 '(43) Cuba' 51 '(51) The Dominican Republic'
             52 '(52) Ecuador' 54 '(54) El Salvador' 75 '(75) Germany'
             79 '(79) Guatemala' 83 '(83) Haiti' 84 '(84) Honduras'
             87 '(87) India' 95 '(95) Jamaica' 96 '(96) Japan'
             102 '(102) South Korea' 105 '(105) Laos' 123 '(123) Mexico'
             142 '(142) Nicaragua' 151 '(151) Panama' 154 '(154) Peru'
             155 '(155) The Philippines' 187 '(187) Taiwan'
             190 '(190) Thailand' 193 '(193) Trinidad/Tobago'
             202 '(202) Great Britain' 213 '(213) Hong Kong'
             221 '(221) Puerto Rico' 231 '(231) Viet-Nam'
             311 '(311) Eastern/North Africa'
             313 '(313) Western/North Africa' 314 '(314) South Africa'
             321 '(321) Middle East' 322 '(322) Central Asia'
             331 '(331) Northern/Western Europe' 332 '(332) British Isles'
             333 '(333) Southern/Western Europe' 334 '(334) Eastern Europe'
             337 '(337) Southern Europe'
             341 '(341) Oceania/Pacific Ocean Islands'
             361 '(361) Central/Northern South America'
             371 '(371) Greater and Lesser Antilles' 996 '(996) Refused'
             997 '(997) Legitimate skip (born in U.S.)'
             998 '(998) Don''t know' 999 '(999) Not applicable/Other' /
   H1GI13M   1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (born in U.S.)' 98 '(98) Don''t know'
             99 '(99) Not applicable' /
   H1GI13Y   77 '(77) 1975 to 1977' 78 '(78) 1978' 79 '(79) 1979'
             80 '(80) 1980' 81 '(81) 1981' 82 '(82) 1982' 83 '(83) 1983'
             84 '(84) 1984' 85 '(85) 1985' 86 '(86) 1986' 87 '(87) 1987'
             88 '(88) 1988' 89 '(89) 1989' 90 '(90) 1990' 91 '(91) 1991'
             92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994' 96 '(96) Refused'
             97 '(97) Legitimate skip (born in U.S.)' 98 '(98) Don''t know'
             99 '(99) Not applicable' /
   H1GI14    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (born in U.S.)'
             8 '(8) Don''t know' /
   H1GI15    0 '(0) No (skip to Q.18)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.18)'
             7 '(7) Legitimate skip (age<15 or unknown)'
             8 '(8) Don''t know (skip to Q.18)' /
   H1GI16M   1 '(1) January to March' 2 '(2) April to June'
             3 '(3) July to September' 4 '(4) October to December'
             97 '(97) Legitimate skip (never married)' /
   H1GI16Y   93 '(93) 1991 to 1993' 94 '(94) 1994' 95 '(95) 1995'
             97 '(97) Legitimate skip (never married)' /
   H1GI18    0 '(0) No (skip to Q.21)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.21)'
             8 '(8) Don''t know (skip to Q.21)' /
   H1GI19    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (not in school)' /
   H1GI20    7 '(7) 7th grade' 8 '(8) 8th grade' 9 '(9) 9th grade'
             10 '(10) 10th grade' 11 '(11) 11th grade' 12 '(12) 12th grade'
             96 '(96) Refused' 97 '(97) Legitimate skip (not in school)'
             98 '(98) Don''t know'
             99 '(99) Not applicable/school doesn''t have grade levels' /
   H1GI21    1 '(1) Suspended/expelled' 2 '(2) Dropped out'
             3 '(3) Sick/injured/on leave' 4 '(4) Graduated'
             5 '(5) Pregnant (R is female)' 6 '(6) Other' 96 '(96) Refused'
             97 '(97) Legitimate skip (in school)' 98 '(98) Don''t know' /
   H1DA1     0 '(0) Not at all' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1DA2     0 '(0) Not at all' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1DA3     0 '(0) Not at all' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1DA4     0 '(0) Not at all' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1DA5     0 '(0) Not at all' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1DA6     0 '(0) Not at all' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1DA7     0 '(0) Not at all' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1DA8     0 '(0) Doesn''t watch T.V.' 996 '(996) Refused'
             998 '(998) Don''t know' /
   H1DA9     0 '(0) Doesn''t watch videos' 996 '(996) Refused'
             998 '(998) Don''t know' /
   H1DA10    0 '(0) Doesn''t play videos/computer games' 996 '(996) Refused'
             998 '(998) Don''t know' /
   H1DA11    0 '(0) Doesn''t listen to the radio' 996 '(996) Refused'
             998 '(998) Don''t know' /
   H1GH1     1 '(1) Excellent' 2 '(2) Very good' 3 '(3) Good' 4 '(4) Fair'
             5 '(5) Poor' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1GH1A    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1GH2     0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH3     0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH4     0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH5     0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH6     0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH7     0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH8     0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH9     0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH10    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH11    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH12    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH13    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH14    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH15    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH16    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH17    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH18    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH19    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH20    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH21    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH22    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH23A   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH23B   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH23C   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH23D   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH23E   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH23F   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH23G   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH23H   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH23I   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH23J   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH24    1 '(1) Less than a year ago' 2 '(2) 1 to 2 years ago'
             3 '(3) More than 2 years ago' 4 '(4) Never' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1GH25    1 '(1) Less than a year ago' 2 '(2) 1 to 2 years ago'
             3 '(3) More than 2 years ago' 4 '(4) Never' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1GH26    0 '(0) No (skip to Q.28)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.28)'
             8 '(8) Don''t know (skip to Q.28)' /
   H1GH27A   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH27B   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH27C   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH27D   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH27E   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH27F   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH27G   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH27H   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH27I   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH27J   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH28    1 '(1) Very underweight' 2 '(2) Slightly underweight'
             3 '(3) About the right weight' 4 '(4) Slightly overweight'
             5 '(5) Very overweight' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1GH29    1 '(1) Lose weight' 2 '(2) Gain weight (skip to Q.31)'
             3 '(3) Stay the same weight'
             4 '(4) Not trying to do anything about weight' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH30A   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH30B   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH30C   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH30D   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH30E   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH30F   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH30G   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH31A   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1GH31B   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1GH31C   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1GH31D   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1GH31F   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1GH31G   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1GH32    0 '(0) Didn''t eat' 1 '(1) Ate once' 2 '(2) Ate twice or more'
             6 '(6) Refused' 8 '(8) Don''t know' /
   H1GH33    0 '(0) Didn''t eat' 1 '(1) Ate once' 2 '(2) Ate twice or more'
             6 '(6) Refused' 8 '(8) Don''t know' /
   H1GH34    0 '(0) Didn''t eat' 1 '(1) Ate once' 2 '(2) Ate twice or more'
             6 '(6) Refused' 8 '(8) Don''t know' /
   H1GH35    0 '(0) Didn''t eat' 1 '(1) Ate once' 2 '(2) Ate twice or more'
             6 '(6) Refused' 8 '(8) Don''t know' /
   H1GH36    0 '(0) Didn''t eat' 1 '(1) Ate once' 2 '(2) Ate twice or more'
             6 '(6) Refused' 8 '(8) Don''t know' /
   H1GH37    0 '(0) 0 days (skip to Q.39)' 1 '(1) 1 day' 2 '(2) 2 days'
             3 '(3) 3 days' 4 '(4) 4 days' 5 '(5) 5 days'
             6 '(6) Refused (skip to Q.39)'
             7 '(7) Legitimate skip (not in school now)'
             8 '(8) Don''t know (skip to Q.39)' /
   H1GH38    1 '(1) Less than 10 minutes' 2 '(2) 10 to 20 minutes'
             3 '(3) 21 to 30 minutes' 4 '(4) More than 30 minutes'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH39    0 '(0) Never' 1 '(1) Rarely' 2 '(2) Sometimes'
             3 '(3) Most of the time' 4 '(4) Always'
             5 '(5) Never rides a bicycle' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH40    0 '(0) Never (skip to Q.42)' 1 '(1) Once or twice'
             2 '(2) About once a month' 3 '(3) About once a week'
             4 '(4) Almost every day' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1GH41    0 '(0) Never' 1 '(1) Rarely' 2 '(2) Sometimes'
             3 '(3) Most of the time' 4 '(4) Always' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1GH42    0 '(0) Never' 1 '(1) Rarely' 2 '(2) Sometimes'
             3 '(3) Most of the time' 4 '(4) Always' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH43    0 '(0) Never' 1 '(1) 1 time' 2 '(2) 2 or 3 times'
             3 '(3) 4 or 5 times' 4 '(4) 6 or more times' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1GH44    1 '(1) Very high' 2 '(2) High' 3 '(3) Low' 4 '(4) Very low'
             5 '(5) None' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1GH46    1 '(1) Very high' 2 '(2) High' 3 '(3) Low' 4 '(4) Very low'
             5 '(5) No chance' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1GH48    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1GH49    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH50    '999996' '(999996) Refused' '999998' '(999998) Don''t know'
             '999999' '(999999) Not applicable' /
   H1GH51    96 '(96) Refused' 98 '(98) Don''t know' /
   H1GH52    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1GH53    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1GH54    1 '(1) Very minor' 2 '(2) Minor' 3 '(3) Serious'
             4 '(4) Very serious' 5 '(5) Extremely serious' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1GH55    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1GH56    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1GH57    0 '(0) No' 1 '(1) Yes (skip to Q.59)' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1GH58    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1GH59A   4 '(4) 4 feet' 5 '(5) 5 feet' 6 '(6) 6 feet' 96 '(96) Refused'
             98 '(98) Don''t know' /
   H1GH59B   0 '(0) 0 inches' 1 '(1) 1 inch' 2 '(2) 2 inches'
             3 '(3) 3 inches' 4 '(4) 4 inches' 5 '(5) 5 inches'
             6 '(6) 6 inches' 7 '(7) 7 inches' 8 '(8) 8 inches'
             9 '(9) 9 inches' 10 '(10) 10 inches' 11 '(11) 11 inches'
             96 '(96) Refused' 98 '(98) Don''t know' 99 '(99) Not applicable'
             /
   H1GH60    996 '(996) Refused' 998 '(998) Don''t know'
             999 '(999) Not applicable' /
   H1TS1     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS2     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS3     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS4     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS5     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS6     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS7     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS8     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS9     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS10    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS11    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS12    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS13    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS14    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS15    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS16    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1TS17    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1ED1     0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 to 10 times'
             3 '(3) More than 10 times' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1ED2     996 '(996) Refused' 997 '(997) Legitimate skip'
             998 '(998) Don''t know' /
   H1ED3     0 '(0) No (skip to Q.5)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.5)' 8 '(8) Don''t know (skip to Q.5)'
             /
   H1ED4A    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED4B    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED4C    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED4D    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED4E    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED4F    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED4G    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED4H    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED4I    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED4J    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED4K    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED4M    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED5     0 '(0) No (skip to Q.7)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.7)' 8 '(8) Don''t know (skip to Q.7)'
             /
   H1ED6A    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1ED6B    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1ED6C    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1ED6D    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1ED6E    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1ED6F    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1ED6G    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1ED6H    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1ED6I    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1ED6J    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1ED6K    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1ED6L    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1ED6M    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1ED7     0 '(0) No (skip to Q.9)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.9)' 8 '(8) Don''t know (skip to Q.9)'
             /
   H1ED8     1 '(1) 1st' 2 '(2) 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th' 96 '(96) Refused'
             97 '(97) Legitimate skip' 98 '(98) Don''t know'
             99 '(99) Not applicable' /
   H1ED9     0 '(0) No (skip to Q.11)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.11)'
             8 '(8) Don''t know (skip to Q.11)' /
   H1ED10    3 '(3) 1st to 3rd' 4 '(4) 4th' 5 '(5) 5th' 6 '(6) 6th'
             7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th' 96 '(96) Refused'
             97 '(97) Legitimate skip' 99 '(99) Not applicable' /
   H1ED11    1 '(1) A' 2 '(2) B' 3 '(3) C' 4 '(4) D or lower'
             5 '(5) Didn''t take this subject'
             6 '(6) Took subject/wasn''t graded this way' 96 '(96) Refused'
             97 '(97) Legitimate skip' 98 '(98) Don''t know' /
   H1ED12    1 '(1) A' 2 '(2) B' 3 '(3) C' 4 '(4) D or lower'
             5 '(5) Didn''t take this subject'
             6 '(6) Took subject/wasn''t graded this way' 96 '(96) Refused'
             97 '(97) Legitimate skip' 98 '(98) Don''t know' /
   H1ED13    1 '(1) A' 2 '(2) B' 3 '(3) C' 4 '(4) D or lower'
             5 '(5) Didn''t take this subject'
             6 '(6) Took subject/wasn''t graded this way' 96 '(96) Refused'
             97 '(97) Legitimate skip' 98 '(98) Don''t know' /
   H1ED14    1 '(1) A' 2 '(2) B' 3 '(3) C' 4 '(4) D or lower'
             5 '(5) Didn''t take this subject'
             6 '(6) Took subject/wasn''t graded this way' 96 '(96) Refused'
             97 '(97) Legitimate skip' 98 '(98) Don''t know' /
   H1ED15    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED16    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED17    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED18    0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost every day' 4 '(4) Every day' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED19    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED20    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED21    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED22    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED23    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1ED24    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1PL1     0 '(0) No (skip to Q.5)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.5)' 8 '(8) Don''t know (skip to Q.5)'
             /
   H1PL2     0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1PL3     0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1PL4     0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1PL5     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PL6     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PL7     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PL8     0 '(0) No (skip to Q.10)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.10)'
             7 '(7) Legitimate skip (no physical/functional limitations)'
             8 '(8) Don''t know (skip to Q.10)' /
   H1PL9     1 '(1) Some' 2 '(2) A lot/unable to do this'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1PL10    0 '(0) No (skip to Q.12)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.12)' 7 '(7) Legitimate skip'
             8 '(8) Don''t know (skip to Q.12)' /
   H1PL11    1 '(1) Some' 2 '(2) A lot' 3 '(3) Unable to do this'
             7 '(7) Legitimate skip' /
   H1PL12    0 '(0) No (skip to Q.14)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.14)' 7 '(7) Legitimate skip'
             8 '(8) Don''t know (skip to Q.14)' /
   H1PL13    1 '(1) Some' 2 '(2) A lot' 3 '(3) Unable to do this'
             7 '(7) Legitimate skip' /
   H1PL14    0 '(0) No (skip to Q.16)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.16)' 7 '(7) Legitimate skip'
             8 '(8) Don''t know (skip to Q.16)' /
   H1PL15    1 '(1) Some' 2 '(2) A lot/unable to do this'
             7 '(7) Legitimate skip' /
   H1PL16    0 '(0) No (skip to Q.18)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.18)' 7 '(7) Legitimate skip'
             8 '(8) Don''t know (skip to Q.18)' /
   H1PL17    1 '(1) Some' 2 '(2) A lot/unable to do this'
             7 '(7) Legitimate skip' /
   H1PL18    0 '(0) No (skip to Q.20)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.20)' 7 '(7) Legitimate skip'
             8 '(8) Don''t know (skip to Q.20)' /
   H1PL19    1 '(1) Some' 2 '(2) A lot/unable to do this'
             7 '(7) Legitimate skip' /
   H1PL20    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1PL21    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1PL22    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1PL23    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1PL24    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1PL25    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1PL26    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1PL29    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1PL30    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1PL31    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1PL33    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1PL34    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1PL37    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1PL38    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1HS1     0 '(0) No (skip to Q.3)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.3)' 8 '(8) Don''t know (skip to Q.3)'
             /
   H1HS2A    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1HS2B    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1HS2C    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1HS2D    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1HS2E    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1HS3     0 '(0) No (skip to Q.5)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.5)' 8 '(8) Don''t know (skip to Q.5)'
             /
   H1HS4A    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS4B    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS4C    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS4D    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS4E    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS5     0 '(0) No (skip to Q.7)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.7)' 8 '(8) Don''t know (skip to Q.7)'
             /
   H1HS6A    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS6B    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS6C    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS6D    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS6E    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS7     0 '(0) No (skip to Q.9)' 1 '(1) Yes' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1HS8A    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1HS8B    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1HS8C    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1HS8D    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1HS8E    0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1HS9     0 '(0) No (skip to Q.11)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.11)'
             8 '(8) Don''t know (skip to Q.11)' /
   H1HS10A   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS10B   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS10C   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS10D   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS10E   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS11    0 '(0) No (skip to Q.13)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.13)'
             7 '(7) Legitimate skip (R isn''t female)'
             8 '(8) Don''t know (skip to Q.13)' /
   H1HS12A   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS12B   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS12C   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS12D   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1HS12E   0 '(0) Not marked' 1 '(1) Marked' 7 '(7) Legitimate skip' /
   H1RP1     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (age<15 or unknown)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1RP2     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (age<15 or unknown)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1RP3     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (age<15 or unknown)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1RP4     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (age<15 or unknown)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1RP5     1 '(1) Almost no chance' 2 '(2) Some chance/but probably not'
             3 '(3) A 50-50 chance' 4 '(4) A good chance'
             5 '(5) Almost certain' 6 '(6) Refused'
             7 '(7) Legitimate skip (age<15 or unknown)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1RP6     1 '(1) Almost no chance' 2 '(2) Some chance/but probably not'
             3 '(3) A 50-50 chance' 4 '(4) A good chance'
             5 '(5) Almost certain' 6 '(6) Refused'
             7 '(7) Legitimate skip (age<15 or unknown)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1SE1     1 '(1) Very sure' 2 '(2) Moderately sure'
             3 '(3) Neither sure nor unsure' 4 '(4) Moderately unsure'
             5 '(5) Very unsure' 6 '(6) I never want to use birth control'
             96 '(96) Refused' 97 '(97) Legitimate skip (age<15 or unknown)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1SE2     1 '(1) Very sure' 2 '(2) Moderately sure'
             3 '(3) Neither sure nor unsure' 4 '(4) Moderately unsure'
             5 '(5) Very unsure' 6 '(6) I never want to use birth control'
             96 '(96) Refused' 97 '(97) Legitimate skip (age<15 or unknown)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1SE3     1 '(1) Very sure' 2 '(2) Moderately sure'
             3 '(3) Neither sure nor unsure' 4 '(4) Moderately unsure'
             5 '(5) Very unsure' 6 '(6) I never want to use birth control'
             96 '(96) Refused' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1SE4     1 '(1) Moderately below average' 2 '(2) Slightly below average'
             3 '(3) About average' 4 '(4) Slightly above average'
             5 '(5) Moderately above average' 6 '(6) Extremely above average'
             96 '(96) Refused' 98 '(98) Don''t know' /
   H1FS1     0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS2     0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS3     0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS4     0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS5     0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS6     0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS7     0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS8     0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS9     0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS10    0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS11    0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS12    0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS13    0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS14    0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS15    0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS16    0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS17    0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS18    0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1FS19    0 '(0) Never/rarely' 1 '(1) Sometimes' 2 '(2) A lot of the time'
             3 '(3) Most/all of the time' 6 '(6) Refused' 8 '(8) Don''t know'
             /
   H1HR2A    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (respondent lives alone)'
             8 '(8) Don''t know' /
   H1HR3A    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 11 '(11) Father'
             12 '(12) Father''s wife' 13 '(13) Father''s partner'
             14 '(14) Mother' 15 '(15) Mother''s husband'
             16 '(16) Mother''s partner' 18 '(18) Mother-in-law'
             19 '(19) Grandfather' 20 '(20) Grandmother'
             21 '(21) Great-grandfather' 22 '(22) Great-grandmother'
             23 '(23) Uncle' 24 '(24) Aunt' 25 '(25) Cousin' 26 '(26) Nephew'
             27 '(27) Niece' 28 '(28) Other relative'
             29 '(29) Other non-relative' 96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (respondent lives alone)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4A    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5A    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister'
             97 '(97) Legitimate skip (not a brother/sister)' /
   H1HR6A    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7A    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (respondent lives alone)'
             998 '(998) Don''t know' /
   H1HR8A    997 '(997) Legitimate skip (age given)' 998 '(998) Don''t know'
             /
   H1HR9A    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused' 7 '(7) Legitimate skip (respondent lives alone)'
             8 '(8) Don''t know' /
   H1HR10A   0 '(0) Less than a year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11A   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2B    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R live with 1/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3B    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 11 '(11) Father'
             12 '(12) Father''s wife' 13 '(13) Father''s partner'
             14 '(14) Mother' 15 '(15) Mother''s husband'
             16 '(16) Mother''s partner' 17 '(17) Father-in-law'
             19 '(19) Grandfather' 20 '(20) Grandmother'
             21 '(21) Great-grandfather' 22 '(22) Great-grandmother'
             23 '(23) Uncle' 24 '(24) Aunt' 25 '(25) Cousin' 26 '(26) Nephew'
             27 '(27) Niece' 28 '(28) Other relative'
             29 '(29) Other non-relative' 96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 1/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4B    1 '(1) Biological son' 2 '(2) Step son'
             7 '(7) Biological daughter' 8 '(8) Step daughter'
             12 '(12) Other' 97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5B    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             98 '(98) Don''t know' /
   H1HR6B    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7B    0 '(0) Less than a year' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R live with 1/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8B    997 '(997) Legitimate skip (age given)' 998 '(998) Don''t know'
             /
   H1HR9B    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R live with 1/fewer persons)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1HR10B   0 '(0) Less than a year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11B   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)'
             98 '(98) Don''t know' /
   H1HR2C    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R live with 2/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3C    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             17 '(17) Father-in-law' 18 '(18) Mother-in-law'
             19 '(19) Grandfather' 20 '(20) Grandmother'
             21 '(21) Great-grandfather' 22 '(22) Great-grandmother'
             23 '(23) Uncle' 24 '(24) Aunt' 25 '(25) Cousin' 26 '(26) Nephew'
             27 '(27) Niece' 28 '(28) Other relative'
             29 '(29) Other non-relative' 96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 2/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4C    1 '(1) Biological son' 6 '(6) Other' 7 '(7) Biological daughter'
             8 '(8) Step daughter'
             97 '(97) Legitimate skip (not son/daughter)' /
   H1HR5C    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6C    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             11 '(11) Foster mother'
             97 '(97) Legitimate skip (not a father/mother)' /
   H1HR7C    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R live with 2/fewer persons)'
             998 '(998) Don''t know' 999 '(999) Not applicable' /
   H1HR8C    997 '(997) Legitimate skip (age given)' 998 '(998) Don''t know'
             /
   H1HR9C    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 2/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10C   0 '(0) Less than one year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11C   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2D    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R live with 3/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3D    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             18 '(18) Mother-in-law' 19 '(19) Grandfather'
             20 '(20) Grandmother' 21 '(21) Great-grandfather'
             22 '(22) Great-grandmother' 23 '(23) Uncle' 24 '(24) Aunt'
             25 '(25) Cousin' 26 '(26) Nephew' 27 '(27) Niece'
             28 '(28) Other relative' 29 '(29) Other non-relative'
             96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 3/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4D    1 '(1) Biological son' 7 '(7) Biological daughter'
             8 '(8) Step daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5D    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6D    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             7 '(7) Biological mother' 8 '(8) Step mother'
             9 '(9) Adoptive mother' 10 '(10) Step/adoptive mother'
             97 '(97) Legitimate skip (not a father/mother)' /
   H1HR7D    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R live with 3/fewer persons)'
             998 '(998) Don''t know' 999 '(999) Not applicable (skip to Q.9)'
             /
   H1HR8D    997 '(997) Legitimate skip (age given)' 998 '(998) Don''t know'
             /
   H1HR9D    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 3/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10D   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)'
             99 '(99) Not applicable' /
   H1HR11D   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)'
             98 '(98) Don''t know' /
   H1HR2E    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R live with 4/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3E    2 '(2) Partner' 3 '(3) Son' 4 '(4) Daughter' 5 '(5) Brother'
             6 '(6) Brother''s wife' 7 '(7) Brother''s partner'
             8 '(8) Sister' 9 '(9) Sister''s husband'
             10 '(10) Sister''s partner' 11 '(11) Father'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             17 '(17) Father-in-law' 19 '(19) Grandfather'
             20 '(20) Grandmother' 22 '(22) Great-grandmother'
             23 '(23) Uncle' 24 '(24) Aunt' 25 '(25) Cousin' 26 '(26) Nephew'
             27 '(27) Niece' 28 '(28) Other relative'
             29 '(29) Other non-relative' 96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 4/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4E    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5E    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6E    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             7 '(7) Biological mother' 8 '(8) Step mother'
             9 '(9) Adoptive mother'
             97 '(97) Legitimate skip (not a father/mother)' /
   H1HR7E    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R live with 4/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8E    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9E    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 4/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10E   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11E   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)'
             98 '(98) Don''t know' /
   H1HR2F    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 5/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3F    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 11 '(11) Father'
             13 '(13) Father''s partner' 14 '(14) Mother'
             16 '(16) Mother''s partner' 17 '(17) Father-in-law'
             19 '(19) Grandfather' 20 '(20) Grandmother'
             22 '(22) Great-grandmother' 23 '(23) Uncle' 24 '(24) Aunt'
             25 '(25) Cousin' 26 '(26) Nephew' 27 '(27) Niece'
             28 '(28) Other relative' 29 '(29) Other non-relative'
             96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 5/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4F    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5F    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6F    1 '(1) Biological father' 2 '(2) Stepfather'
             7 '(7) Biological mother' 8 '(8) Step mother'
             11 '(11) Foster mother'
             97 '(97) Legitimate skip (not a father/mother)' /
   H1HR7F    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R lives with 5/fewer persons)'
             998 '(998) Don''t know' 999 '(999) Not applicable (skip to Q.9)'
             /
   H1HR8F    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9F    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 5/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10F   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11F   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2G    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 6/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3G    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             18 '(18) Mother-in-law' 19 '(19) Grandfather'
             20 '(20) Grandmother' 21 '(21) Great-grandfather'
             22 '(22) Great-grandmother' 23 '(23) Uncle' 24 '(24) Aunt'
             25 '(25) Cousin' 26 '(26) Nephew' 27 '(27) Niece'
             28 '(28) Other relative' 29 '(29) Other non-relative'
             96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 6/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4G    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5G    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6G    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7G    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R lives with 6/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8G    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9G    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 6/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10G   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11G   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2H    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 7/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3H    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             18 '(18) Mother-in-law' 19 '(19) Grandfather'
             20 '(20) Grandmother' 21 '(21) Great-grandfather'
             22 '(22) Great-grandmother' 23 '(23) Uncle' 24 '(24) Aunt'
             25 '(25) Cousin' 26 '(26) Nephew' 27 '(27) Niece'
             28 '(28) Other relative' 29 '(29) Other non-relative'
             96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 7/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4H    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5H    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6H    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7H    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R lives with 7/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8H    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9H    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 7/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10H   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11H   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2I    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 8/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3I    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             18 '(18) Mother-in-law' 19 '(19) Grandfather'
             20 '(20) Grandmother' 21 '(21) Great-grandfather'
             22 '(22) Great-grandmother' 23 '(23) Uncle' 24 '(24) Aunt'
             25 '(25) Cousin' 26 '(26) Nephew' 27 '(27) Niece'
             28 '(28) Other relative' 29 '(29) Other non-relative'
             96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 8/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4I    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5I    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6I    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7I    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R lives with 8/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8I    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9I    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 8/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10I   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11I   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2J    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 9/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3J    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             17 '(17) Father-in-law' 18 '(18) Mother-in-law'
             19 '(19) Grandfather' 20 '(20) Grandmother'
             21 '(21) Great-grandfather' 22 '(22) Great-grandmother'
             23 '(23) Uncle' 24 '(24) Aunt' 25 '(25) Cousin' 26 '(26) Nephew'
             27 '(27) Niece' 28 '(28) Other relative'
             29 '(29) Other non-relative' 96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 9/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4J    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5J    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6J    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7J    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R lives with 9/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8J    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9J    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 9/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10J   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11J   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2K    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 10/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3K    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             18 '(18) Mother-in-law' 19 '(19) Grandfather'
             20 '(20) Grandmother' 21 '(21) Great-grandfather'
             22 '(22) Great-grandmother' 23 '(23) Uncle' 24 '(24) Aunt'
             25 '(25) Cousin' 26 '(26) Nephew' 27 '(27) Niece'
             28 '(28) Other relative' 29 '(29) Other non-relative'
             96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 10/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4K    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5K    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6K    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7K    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R lives with 10/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8K    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9K    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 10/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10K   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11K   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2L    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 11/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3L    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             18 '(18) Mother-in-law' 19 '(19) Grandfather'
             20 '(20) Grandmother' 21 '(21) Great-grandfather'
             22 '(22) Great-grandmother' 23 '(23) Uncle' 24 '(24) Aunt'
             25 '(25) Cousin' 26 '(26) Nephew' 27 '(27) Niece'
             28 '(28) Other relative' 29 '(29) Other non-relative'
             96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 11/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4L    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5L    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6L    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7L    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R lives with 11/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8L    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9L    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 11/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10L   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11L   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2M    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 12/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3M    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             18 '(18) Mother-in-law' 19 '(19) Grandfather'
             20 '(20) Grandmother' 21 '(21) Great-grandfather'
             22 '(22) Great-grandmother' 23 '(23) Uncle' 24 '(24) Aunt'
             25 '(25) Cousin' 26 '(26) Nephew' 27 '(27) Niece'
             28 '(28) Other relative' 29 '(29) Other non-relative'
             96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 12/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4M    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5M    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6M    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7M    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R lives with 12/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8M    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9M    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 12/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10M   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11M   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2N    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 13/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3N    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             18 '(18) Mother-in-law' 19 '(19) Grandfather'
             20 '(20) Grandmother' 21 '(21) Great-grandfather'
             22 '(22) Great-grandmother' 23 '(23) Uncle' 24 '(24) Aunt'
             25 '(25) Cousin' 26 '(26) Nephew' 27 '(27) Niece'
             28 '(28) Other relative' 29 '(29) Other non-relative'
             96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 13/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4N    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5N    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6N    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7N    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R lives with 13/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8N    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9N    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 13/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10N   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11N   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2O    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 14/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3O    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             18 '(18) Mother-in-law' 19 '(19) Grandfather'
             20 '(20) Grandmother' 21 '(21) Great-grandfather'
             22 '(22) Great-grandmother' 23 '(23) Uncle' 24 '(24) Aunt'
             25 '(25) Cousin' 26 '(26) Nephew' 27 '(27) Niece'
             28 '(28) Other relative' 29 '(29) Other non-relative'
             96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 14/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4O    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5O    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6O    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7O    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R lives with 14/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8O    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9O    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 14/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10O   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11O   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2P    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 15/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3P    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             18 '(18) Mother-in-law' 19 '(19) Grandfather'
             20 '(20) Grandmother' 21 '(21) Great-grandfather'
             22 '(22) Great-grandmother' 23 '(23) Uncle' 24 '(24) Aunt'
             25 '(25) Cousin' 26 '(26) Nephew' 27 '(27) Niece'
             28 '(28) Other relative' 29 '(29) Other non-relative'
             96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 15/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4P    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5P    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6P    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7P    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R lives with 15/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8P    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9P    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 15/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10P   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11P   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2Q    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 16/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3Q    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             18 '(18) Mother-in-law' 19 '(19) Grandfather'
             20 '(20) Grandmother' 21 '(21) Great-grandfather'
             22 '(22) Great-grandmother' 23 '(23) Uncle' 24 '(24) Aunt'
             25 '(25) Cousin' 26 '(26) Nephew' 27 '(27) Niece'
             28 '(28) Other relative' 29 '(29) Other non-relative'
             96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 16/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4Q    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5Q    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6Q    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7Q    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R lives with 16/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8Q    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9Q    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 16/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10Q   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11Q   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2R    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 17/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3R    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             18 '(18) Mother-in-law' 19 '(19) Grandfather'
             20 '(20) Grandmother' 21 '(21) Great-grandfather'
             22 '(22) Great-grandmother' 23 '(23) Uncle' 24 '(24) Aunt'
             25 '(25) Cousin' 26 '(26) Nephew' 27 '(27) Niece'
             28 '(28) Other relative' 29 '(29) Other non-relative'
             96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 17/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4R    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5R    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6R    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7R    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R lives with 17/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8R    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9R    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 17/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10R   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11R   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2S    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 18/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3S    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             18 '(18) Mother-in-law' 19 '(19) Grandfather'
             20 '(20) Grandmother' 21 '(21) Great-grandfather'
             22 '(22) Great-grandmother' 23 '(23) Uncle' 24 '(24) Aunt'
             25 '(25) Cousin' 26 '(26) Nephew' 27 '(27) Niece'
             28 '(28) Other relative' 29 '(29) Other non-relative'
             96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 18/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4S    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5S    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6S    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7S    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R lives with 18/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8S    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9S    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 18/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10S   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11S   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR2T    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 19/fewer persons)'
             8 '(8) Don''t know' /
   H1HR3T    1 '(1) Wife/husband' 2 '(2) Partner' 3 '(3) Son'
             4 '(4) Daughter' 5 '(5) Brother' 6 '(6) Brother''s wife'
             7 '(7) Brother''s partner' 8 '(8) Sister'
             9 '(9) Sister''s husband' 10 '(10) Sister''s partner'
             11 '(11) Father' 12 '(12) Father''s wife'
             13 '(13) Father''s partner' 14 '(14) Mother'
             15 '(15) Mother''s husband' 16 '(16) Mother''s partner'
             18 '(18) Mother-in-law' 19 '(19) Grandfather'
             20 '(20) Grandmother' 21 '(21) Great-grandfather'
             22 '(22) Great-grandmother' 23 '(23) Uncle' 24 '(24) Aunt'
             25 '(25) Cousin' 26 '(26) Nephew' 27 '(27) Niece'
             28 '(28) Other relative' 29 '(29) Other non-relative'
             96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (R live with 19/fewer persons)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1HR4T    1 '(1) Biological son' 7 '(7) Biological daughter'
             97 '(97) Legitimate skip (not a son/daughter)' /
   H1HR5T    1 '(1) Full brother' 2 '(2) Half-brother' 3 '(3) Step brother'
             4 '(4) Adoptive brother' 5 '(5) Foster brother' 6 '(6) Other'
             7 '(7) Full sister' 8 '(8) Half-sister' 9 '(9) Step sister'
             10 '(10) Adoptive sister' 11 '(11) Foster sister'
             12 '(12) Other' 97 '(97) Legitimate skip (not a brother/sister)'
             /
   H1HR6T    1 '(1) Biological father' 2 '(2) Stepfather'
             3 '(3) Adoptive father' 4 '(4) Step/adoptive father'
             5 '(5) Foster father' 6 '(6) Other' 7 '(7) Biological mother'
             8 '(8) Step mother' 9 '(9) Adoptive mother'
             10 '(10) Step/adoptive mother' 11 '(11) Foster mother'
             12 '(12) Other' 97 '(97) Legitimate skip (not a mother/father)'
             /
   H1HR7T    0 '(0) Less than 1y/o' 996 '(996) Refused (skip to Q.9)'
             997 '(997) Legitimate skip (R lives with 19/fewer persons)'
             998 '(998) Don''t know' /
   H1HR8T    0 '(0) Less than a year' 997 '(997) Legitimate skip (age given)'
             998 '(998) Don''t know' /
   H1HR9T    0 '(0) No' 1 '(1) Yes (skip to next HH member/Q.12)'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R lives with 19/fewer persons)'
             8 '(8) Don''t know' /
   H1HR10T   0 '(0) Less than year'
             96 '(96) Refused (skip to next HH member/Q.12)'
             97 '(97) Legitimate skip (have always lived in same HH)'
             98 '(98) Don''t know (skip to next HH member/Q.12)' /
   H1HR11T   0 '(0) Less than one month' 1 '(1) 1 month' 2 '(2) 2 months'
             3 '(3) 3 months' 4 '(4) 4 months' 5 '(5) 5 months'
             6 '(6) 6 months' 7 '(7) 7 months' 8 '(8) 8 months'
             9 '(9) 9 months' 10 '(10) 10 months' 11 '(11) 11 months'
             97 '(97) Legitimate skip (number years lived together>=1)' /
   H1HR12    0 '(0) No one' 1 '(1) 1st household member'
             2 '(2) 2nd household member' 3 '(3) 3rd household member'
             4 '(4) 4th household member' 5 '(5) 5th household member'
             6 '(6) 6th household member' 7 '(7) 7th household member'
             8 '(8) 8th household member' 96 '(96) Refused'
             97 '(97) Legitimate skip (listed a father/mother)'
             98 '(98) Don''t know' /
   H1HR13    0 '(0) No one' 1 '(1) 1st household member'
             2 '(2) 2nd household member' 3 '(3) 3rd household member'
             4 '(4) 4th household member' 5 '(5) 5th household member'
             6 '(6) 6th household member' 7 '(7) 7th household member'
             8 '(8) 8th household member' 96 '(96) Refused'
             97 '(97) Legitimate skip (listed a father/mother)'
             98 '(98) Don''t know' /
   H1HR14    1 '(1) One child' 96 '(96) Refused' 98 '(98) Don''t know' /
   H1HR15    1 '(1) 1st child' 2 '(2) 2nd child' 3 '(3) 3rd child'
             4 '(4) 4th child' 5 '(5) 5th child' 6 '(6) 6th child'
             7 '(7) 7th child' 8 '(8) 8th child' 9 '(9) 9th child'
             10 '(10) 10th child' 11 '(11) 11th child' 12 '(12) 12th child'
             13 '(13) 13th child' 14 '(14) 14th child' 96 '(96) Refused'
             97 '(97) Legitimate skip' 98 '(98) Don''t know' /
   H1NM1     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (MOM is biological mother)'
             8 '(8) Don''t know' /
   H1NM2     0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NM3     1 '(1) 1 y/o or younger' 2 '(2) 2 years old' 3 '(3) 3 years old'
             4 '(4) 4 years old' 5 '(5) 5 years old' 6 '(6) 6 years old'
             7 '(7) 7 years old' 8 '(8) 8 years old' 9 '(9) 9 years old'
             10 '(10) 10 years old' 11 '(11) 11 years old'
             12 '(12) 12 years old' 13 '(13) 13 years old'
             14 '(14) 14 years old' 15 '(15) 15 years old'
             16 '(16) 16 years old' 17 '(17) 17 years old/older'
             97 '(97) Legitimate skip' 98 '(98) Don''t know' /
   H1NM4     1 '(1) 8th grade or less'
             2 '(2) >8th grade/didn''t graduate high school'
             3 '(3) Business/trade/voc. school instead high school'
             4 '(4) High school graduate' 5 '(5) GED'
             6 '(6) Business/trade/voc. school after high school'
             7 '(7) College/didn''t graduate'
             8 '(8) Graduated from college/university'
             9 '(9) Prof training beyond 4-year college/univ'
             11 '(11) Went to school/Resp doesn''t know level'
             12 '(12) Resp doesn''t know if mom went to school'
             96 '(96) Refused' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   H1NM5     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NM6     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NM7     0 '(0) No (skip to Q.10)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.10)' 7 '(7) Legitimate skip'
             8 '(8) Don''t know (skip to Q.10)' /
   H1NM8     0 '(0) Less than a year (skip to Q.10)'
             1 '(1) 1 year old (skip to Q.10)' 2 '(2) 2 years old'
             3 '(3) 3 years old' 4 '(4) 4 years old' 5 '(5) 5 years old'
             6 '(6) 6 years old' 7 '(7) 7 years old' 8 '(8) 8 years old'
             9 '(9) 9 years old' 10 '(10) 10 years old'
             11 '(11) 11 years old' 12 '(12) 12 years old'
             13 '(13) 13 years old' 14 '(14) 14 years old'
             15 '(15) 15 years old' 16 '(16) 16 years old'
             17 '(17) 17 years old' 18 '(18) 18 years old'
             19 '(19) 19 years old' 97 '(97) Legitimate skip (skip to Q.10)'
             98 '(98) Don''t know' /
   H1NM9     0 '(0) Less than 1 year (skip to Q.10)'
             1 '(1) 1 year (skip to Q.10)' 2 '(2) 2 years' 3 '(3) 3 years'
             4 '(4) 4 years' 5 '(5) 5 years' 6 '(6) 6 years' 7 '(7) 7 years'
             8 '(8) 8 years' 9 '(9) 9 years' 10 '(10) 10 years'
             11 '(11) 11 years' 12 '(12) 12 years' 13 '(13) 13 years'
             14 '(14) 14 years' 15 '(15) 15 years' 16 '(16) 16 years'
             17 '(17) 17 years' 18 '(18) 18 years' 19 '(19) 19 years'
             97 '(97) Legitimate skip (skip to Q.10)' 98 '(98) Don''t know'
             99 '(99) Not applicable' /
   H1NM10    0 '(0) Not at all' 1 '(1) Once or twice' 2 '(2) Several times'
             3 '(3) About once a month' 4 '(4) About once a week'
             5 '(5) More than once a week' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1NM11    0 '(0) Not at all' 1 '(1) Once or twice' 2 '(2) Several times'
             3 '(3) About once a month' 4 '(4) About once a week'
             5 '(5) More than once a week' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1NM12A   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NM12B   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NM12C   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NM12D   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NM12E   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NM12F   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NM12G   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NM12H   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NM12I   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NM12J   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NM13    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NM14    1 '(1) Not close at all' 2 '(2) Not very close'
             3 '(3) Somewhat close' 4 '(4) Quite close'
             5 '(5) Extremely close' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NF1     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (DAD is biological father)'
             8 '(8) Don''t know' /
   H1NF2     0 '(0) No (skip to Q.4)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.4)' 7 '(7) Legitimate skip'
             8 '(8) Don''t know (skip to Q.4)' /
   H1NF3     0 '(0) Less than 1 year old' 1 '(1) 1 year old'
             2 '(2) 2 years old' 3 '(3) 3 years old' 4 '(4) 4 years old'
             5 '(5) 5 years old' 6 '(6) 6 years old' 7 '(7) 7 years old'
             8 '(8) 8 years old' 9 '(9) 9 years old' 10 '(10) 10 years old'
             11 '(11) 11 years old' 12 '(12) 12 years old'
             13 '(13) 13 years old' 14 '(14) 14 years old'
             15 '(15) 15 years old' 16 '(16) 16 years old'
             17 '(17) 17 years old' 18 '(18) 18 years old or older'
             97 '(97) Legitimate skip' 98 '(98) Don''t know' /
   H1NF4     1 '(1) 8th grade or less'
             2 '(2) >8th grade/didn''t graduate high school'
             3 '(3) Business/trade/voc. school instead high school'
             4 '(4) High school graduate' 5 '(5) GED'
             6 '(6) Business/trade/voc. school after high school'
             7 '(7) College/didn''t graduate'
             8 '(8) Graduated from college/university'
             9 '(9) Prof training beyond 4-year college/univ'
             11 '(11) Went to school/Resp doesn''t know level'
             12 '(12) Resp doesn''t know if dad went to school'
             96 '(96) Refused' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   H1NF5     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NF6     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NF7     0 '(0) No (skip to Q.10)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.10)' 7 '(7) Legitimate skip'
             8 '(8) Don''t know (skip to Q.10)' /
   H1NF8     0 '(0) Less than 1 year old (skip to Q.10)'
             1 '(1) 1 year old (skip to Q.10)' 2 '(2) 2 years old'
             3 '(3) 3 years old' 4 '(4) 4 years old' 5 '(5) 5 years old'
             6 '(6) 6 years old' 7 '(7) 7 years old' 8 '(8) 8 years old'
             9 '(9) 9 years old' 10 '(10) 10 years old'
             11 '(11) 11 years old' 12 '(12) 12 years old'
             13 '(13) 13 years old' 14 '(14) 14 years old'
             15 '(15) 15 years old' 16 '(16) 16 years old'
             17 '(17) 17 years old' 18 '(18) 18 years old or older'
             96 '(96) Refused (skip to Q.10)' 97 '(97) Legitimate skip'
             98 '(98) Don''t know (skip to Q.10)' /
   H1NF9     0 '(0) Less than 1 year' 1 '(1) 1 year' 2 '(2) 2 years'
             3 '(3) 3 years' 4 '(4) 4 years' 5 '(5) 5 years' 6 '(6) 6 years'
             7 '(7) 7 years' 8 '(8) 8 years' 9 '(9) 9 years'
             10 '(10) 10 years' 11 '(11) 11 years' 12 '(12) 12 years'
             13 '(13) 13 years' 14 '(14) 14 years' 15 '(15) 15 years'
             16 '(16) 16 years' 17 '(17) 17 years'
             18 '(18) 18 years or longer' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1NF10    0 '(0) Not at all' 1 '(1) Once or twice' 2 '(2) Several times'
             3 '(3) About once a month' 4 '(4) About once a week'
             5 '(5) More than once a week' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1NF11    0 '(0) Not at all' 1 '(1) Once or twice' 2 '(2) Several times'
             3 '(3) About once a month' 4 '(4) About once a week'
             5 '(5) More than once a week' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1NF12A   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NF12B   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NF12C   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NF12D   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NF12E   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NF12F   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NF12G   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NF12H   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NF12I   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NF12J   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NF13    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NF14    1 '(1) Not close at all' 2 '(2) Not very close'
             3 '(3) Somewhat close' 4 '(4) Quite close'
             5 '(5) Extremely close' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1RM1     1 '(1) 8th grade or less'
             2 '(2) >8th grade/didn''t graduate high school'
             3 '(3) Business/trade/voc. school instead high school'
             4 '(4) High school graduate' 5 '(5) GED'
             6 '(6) Business/trade/voc. school after high school'
             7 '(7) College/didn''t graduate'
             8 '(8) Graduated from college/university'
             9 '(9) Prof training beyond 4-year college/university'
             10 '(10) She never went to school'
             11 '(11) Went to school/Resp doesn''t know level'
             12 '(12) Resp doesn''t know if she went to school'
             96 '(96) Refused' 97 '(97) Legitimate skip (no MOM)'
             98 '(98) Don''t know' /
   H1RM2     0 '(0) No' 1 '(1) Yes (skip to Q.4)'
             6 '(6) Refused (skip to Q.4)' 7 '(7) Legitimate skip (no MOM)'
             8 '(8) Don''t know (skip to Q.4)' /
   H1RM3     17 '(17) Barbados' 30 '(30) Cambodia' 32 '(32) Canada'
             37 '(37) People''s Republic of China' 38 '(38) Colombia'
             43 '(43) Cuba' 51 '(51) The Dominican Republic'
             52 '(52) Ecuador' 54 '(54) El Salvador' 61 '(61) France'
             75 '(75) Germany' 79 '(79) Guatemala' 83 '(83) Haiti'
             84 '(84) Honduras' 87 '(87) India' 93 '(93) Italy'
             95 '(95) Jamaica' 96 '(96) Japan' 102 '(102) South Korea'
             105 '(105) Laos' 123 '(123) Mexico' 142 '(142) Nicaragua'
             144 '(144) Nigeria' 151 '(151) Panama' 154 '(154) Peru'
             155 '(155) The Philippines' 157 '(157) Portugal'
             187 '(187) Taiwan' 190 '(190) Thailand'
             193 '(193) Trinidad/Tobago' 202 '(202) Great Britain'
             213 '(213) Hong Kong' 221 '(221) Puerto Rico'
             222 '(222) American Samoa' 231 '(231) Viet-Nam'
             232 '(232) Western Samoa' 311 '(311) Eastern/North Africa'
             312 '(312) Central/North Africa'
             313 '(313) Western/North Africa' 314 '(314) South Africa'
             321 '(321) Middle East' 322 '(322) Central Asia'
             323 '(323) Southeast Asia' 331 '(331) Northern/Western Europe'
             332 '(332) British Isles' 333 '(333) Southern/Western Europe'
             334 '(334) Eastern Europe' 335 '(335) Southern/Eastern Europe'
             336 '(336) Southern Europe'
             341 '(341) Oceania/Pacific Ocean Islands'
             361 '(361) Central/Northern South America'
             362 '(362) Southern South America' 372 '(372) Greater Antilles'
             373 '(373) Lesser Antilles' 996 '(996) Refused'
             997 '(997) Legitimate skip' 998 '(998) Don''t know'
             999 '(999) Not applicable/Other' /
   H1RM4     1 '(1) Professional 1/doctor/lawyer/scientist'
             2 '(2) Professional 2/teacher/librarian/nurse'
             3 '(3) Manager/executive/director'
             4 '(4) Technical/computer specialist/radiologist'
             5 '(5) Office worker/bookkeepers/clerk/secretary'
             6 '(6) Sales worker/insurance agent/store clerk'
             7 '(7) Restaurant worker/personal service/housekeeper'
             8 '(8) Craftsperson/toolmaker/woodworker'
             9 '(9) Construction worker/carpenter/crane operator'
             10 '(10) Mechanic/electrician/plumber/machinist'
             11 '(11) Factory worker/laborer/assembler/janitor'
             12 '(12) Transportation/bus or taxi driver'
             13 '(13) Military/security/police officer/soldier/fire fighter'
             14 '(14) Farm/fishery worker' 15 '(15) Other'
             16 '(16) None (skip to Q.6)' 96 '(96) Refused'
             97 '(97) Legitimate skip (no MOM)' 98 '(98) Don''t know' /
   H1RM5     0 '(0) No' 1 '(1) Yes (skip to Q.7)' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1RM6     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1RM7     996 '(996) Refused' 997 '(997) Legitimate skip'
             998 '(998) Don''t know' /
   H1RM8     1 '(1) At home' 2 '(2) Outside home'
             3 '(3) Both home/outside home' 7 '(7) Legitimate skip' /
   H1RM9     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1RM10    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know' /
   H1RM11    1 '(1) Always' 2 '(2) Most of the time' 3 '(3) Some of the time'
             4 '(4) Almost never' 5 '(5) Never'
             6 '(6) She takes me to school' 96 '(96) Refused'
             97 '(97) Legitimate skip (no MOM)' 98 '(98) Don''t know'
             99 '(99) Not applicable' /
   H1RM12    1 '(1) Always' 2 '(2) Most of the time' 3 '(3) Some of the time'
             4 '(4) Almost never' 5 '(5) Never'
             6 '(6) She brings me home from school' 96 '(96) Refused'
             97 '(97) Legitimate skip (no MOM)' 98 '(98) Don''t know'
             99 '(99) Not applicable' /
   H1RM13    1 '(1) Always' 2 '(2) Most of the time' 3 '(3) Some of the time'
             4 '(4) Almost never' 5 '(5) Never' 96 '(96) Refused'
             97 '(97) Legitimate skip (no MOM)' 98 '(98) Don''t know'
             99 '(99) Not applicable' /
   H1RM14    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know' /
   H1RF1     1 '(1) 8th grade or less'
             2 '(2) >8th grade/didn''t graduate high school'
             3 '(3) Business/trade/voc. school instead high school'
             4 '(4) High school graduate' 5 '(5) GED'
             6 '(6) Business/trade/voc. school after high school'
             7 '(7) College/didn''t graduate'
             8 '(8) Graduated from college/university'
             9 '(9) Prof training beyond 4-year college/univ'
             10 '(10) He never went to school'
             11 '(11) Went to school/Resp doesn''t know level'
             12 '(12) Resp doesn''t know if he went to school'
             96 '(96) Refused' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RF2     0 '(0) No' 1 '(1) Yes (skip to Q.4)'
             6 '(6) Refused (skip to Q.4)' 7 '(7) Legitimate skip (no DAD)'
             8 '(8) Don''t know (skip to Q.4)'
             9 '(9) Not applicable (skip to Q.4)' /
   H1RF3     30 '(30) Cambodia' 32 '(32) Canada'
             37 '(37) People''s Republic of China' 38 '(38) Colombia'
             43 '(43) Cuba' 51 '(51) The Dominican Republic'
             52 '(52) Ecuador' 54 '(54) El Salvador' 75 '(75) Germany'
             79 '(79) Guatemala' 83 '(83) Haiti' 84 '(84) Honduras'
             87 '(87) India' 89 '(89) Iran' 93 '(93) Italy' 95 '(95) Jamaica'
             96 '(96) Japan' 102 '(102) South Korea' 105 '(105) Laos'
             123 '(123) Mexico' 142 '(142) Nicaragua' 144 '(144) Nigeria'
             150 '(150) Pakistan' 151 '(151) Panama' 154 '(154) Peru'
             155 '(155) The Philippines' 157 '(157) Portugal'
             187 '(187) Taiwan' 193 '(193) Trinidad/Tobago'
             202 '(202) Great Britain' 213 '(213) Hong Kong'
             221 '(221) Puerto Rico' 231 '(231) Viet-Nam'
             232 '(232) Western Samoa' 311 '(311) Eastern/North Africa'
             312 '(312) Central/North Africa'
             313 '(313) Western/North Africa' 314 '(314) South Africa'
             321 '(321) Middle East' 322 '(322) Central Asia'
             323 '(323) Southeast Asia' 331 '(331) Northern/Western Europe'
             332 '(332) British Isles' 333 '(333) Southern/Western Europe'
             334 '(334) Eastern Europe' 335 '(335) Southern/Eastern Europe'
             336 '(336) Southern Europe'
             341 '(341) Oceania/Pacific Ocean Islands'
             361 '(361) Central/Northern South America'
             362 '(362) Southern South America'
             371 '(371) Greater and Lesser Antilles' 996 '(996) Refused'
             997 '(997) Legitimate skip' 998 '(998) Don''t know'
             999 '(999) Not applicable/Other' /
   H1RF4     1 '(1) Professional 1/doctor/lawyer/scientist'
             2 '(2) Professional 2/teacher/librarian/nurse'
             3 '(3) Manager/executive/director'
             4 '(4) Technical/computer specialist/radiologist'
             5 '(5) Office worker/bookkeepers/clerk/secretary'
             6 '(6) Sales worker/insurance agent/store clerk'
             7 '(7) Restaurant worker/personal service/housekeeper'
             8 '(8) Craftsperson/toolmaker/woodworker'
             9 '(9) Construction worker/carpenter/crane operator'
             10 '(10) Mechanic/electrician/plumber/machinist'
             11 '(11) Factory worker/laborer/assembler/janitor'
             12 '(12) Transportation/bus or taxi driver'
             13 '(13) Military/security/police officer/soldier/fire fighter'
             14 '(14) Farm/fishery worker' 15 '(15) Other'
             16 '(16) None (skip to Q.6)' 96 '(96) Refused'
             97 '(97) Legitimate skip (no DAD)' 98 '(98) Don''t know'
             99 '(99) Not applicable' /
   H1RF5     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RF6     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RF7     996 '(996) Refused' 997 '(997) Legitimate skip'
             998 '(998) Don''t know' /
   H1RF8     1 '(1) At home' 2 '(2) Outside home'
             3 '(3) Both home/outside home' 7 '(7) Legitimate skip' /
   H1RF9     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1RF10    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1RF11    1 '(1) Always' 2 '(2) Most of the time' 3 '(3) Some of the time'
             4 '(4) Almost never' 5 '(5) Never' 6 '(6) He takes me to school'
             96 '(96) Refused' 97 '(97) Legitimate skip (no DAD)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RF12    1 '(1) Always' 2 '(2) Most of the time' 3 '(3) Some of the time'
             4 '(4) Almost never' 5 '(5) Never'
             6 '(6) He brings me home from school' 96 '(96) Refused'
             97 '(97) Legitimate skip (no DAD)' 98 '(98) Don''t know'
             99 '(99) Not applicable' /
   H1RF13    1 '(1) Always' 2 '(2) Most of the time' 3 '(3) Some of the time'
             4 '(4) Almost never' 5 '(5) Never' 96 '(96) Refused'
             97 '(97) Legitimate skip (no DAD)' 98 '(98) Don''t know'
             99 '(99) Not applicable' /
   H1RF14    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP1     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM/DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP2     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM/DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP3     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM/DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP4     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM/DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP5     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM/DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP6     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM/DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP7     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM/DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP8     0 '(0) No days' 1 '(1) 1 day' 2 '(2) 2 days' 3 '(3) 3 days'
             4 '(4) 4 days' 5 '(5) 5 days' 6 '(6) 6 days' 7 '(7) 7 days'
             96 '(96) Refused' 97 '(97) Legitimate skip (no MOM/DAD)'
             98 '(98) Don''t know' /
   H1WP9     1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know' /
   H1WP10    1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know' /
   H1WP11    1 '(1) Low' 5 '(5) High' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP12    1 '(1) Low' 5 '(5) High' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP13    1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP14    1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP15    1 '(1) Low' 5 '(5) High' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP16    1 '(1) Low' 5 '(5) High' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP17A   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know' /
   H1WP17B   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know' /
   H1WP17C   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know' /
   H1WP17D   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know' /
   H1WP17E   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know' /
   H1WP17F   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know' /
   H1WP17G   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know' /
   H1WP17H   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know' /
   H1WP17I   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know' /
   H1WP17J   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know' /
   H1WP17K   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no MOM)' 8 '(8) Don''t know' /
   H1WP18A   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP18B   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP18C   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP18D   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP18E   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP18F   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP18G   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP18H   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP18I   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP18J   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WP18K   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1MO1     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (married or <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1MO2     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (married or <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1MO3     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (married or <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1MO4     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (married or <15/no MOM)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1MO5     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (married or <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1MO6     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (married or <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1MO7     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (married or <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1MO8     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (married or <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1MO9     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (married or <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1MO10    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (married or <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1MO11    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (married or <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1MO12    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (married or <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1MO13    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (married or <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1MO14    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (married or <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF1     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (no resident MOM)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF2     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (no resident MOM)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF3     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (no resident MOM)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF4     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (no resident MOM)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF5     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (no resident MOM)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF6     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF7     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF8     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF9     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF10    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF11    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF12    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF13    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF14    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF15    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF16    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF17    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF18    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF19    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF20    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF21    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF22    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF23    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (no resident DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF24    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (no resident DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF25    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (no resident DAD)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF26    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PF27    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF28    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF29    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF30    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF31    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF32    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF33    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF34    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF35    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1PF36    1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1KQ1A    1 '(1) True' 2 '(2) False <the correct answer>' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ1B    1 '(1) Very' 2 '(2) Moderately' 3 '(3) Slightly'
             4 '(4) Not at all' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ2A    1 '(1) True <the correct answer>' 2 '(2) False' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ2B    1 '(1) Very' 2 '(2) Moderately' 3 '(3) Slightly'
             4 '(4) Not at all' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ3A    1 '(1) True' 2 '(2) False <the correct answer>' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ3B    1 '(1) Very' 2 '(2) Moderately' 3 '(3) Slightly'
             4 '(4) Not at all' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ4A    1 '(1) True' 2 '(2) False <the correct answer>' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ4B    1 '(1) Very' 2 '(2) Moderately' 3 '(3) Slightly'
             4 '(4) Not at all' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ5A    1 '(1) True' 2 '(2) False <the correct answer>' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ5B    1 '(1) Very' 2 '(2) Moderately' 3 '(3) Slightly'
             4 '(4) Not at all' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ6A    1 '(1) True' 2 '(2) False <the correct answer>' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ6B    1 '(1) Very' 2 '(2) Moderately' 3 '(3) Slightly'
             4 '(4) Not at all' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ7A    1 '(1) True' 2 '(2) False <the correct answer>' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ7B    1 '(1) Very' 2 '(2) Moderately' 3 '(3) Slightly'
             4 '(4) Not at all' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ8A    1 '(1) True <the correct answer>' 2 '(2) False' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ8B    1 '(1) Very' 2 '(2) Moderately' 3 '(3) Slightly'
             4 '(4) Not at all' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ9A    1 '(1) True' 2 '(2) False <the correct answer>' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ9B    1 '(1) Very' 2 '(2) Moderately' 3 '(3) Slightly'
             4 '(4) Not at all' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ10A   1 '(1) True' 2 '(2) False <the correct answer>' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1KQ10B   1 '(1) Very' 2 '(2) Moderately' 3 '(3) Slightly'
             4 '(4) Not at all' 6 '(6) Refused'
             7 '(7) Legitimate skip (less than 15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   FR_FLAG   0 '(0) Asked nominate up to 5 male/female friends'
             1 '(1) Asked nominate 1 male/female friend' /
   H1MF2A    0 '(0) No (skip to Q.6)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.6)'
             7 '(7) Legitimate skip (no male friend nominated)'
             8 '(8) Don''t know (skip to Q.6)' /
   H1MF3A    2 '(2) 1st or 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th'
             13 '(13) Beyond high school (skip to Q.6)'
             97 '(97) Legitimate skip' 98 '(98) Don''t know (skip to Q.6)' /
   H1MF4A    0 '(0) No' 1 '(1) Yes (skip to Q.5a)' 7 '(7) Legitimate skip' /
   H1MF5A    0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (goes to R''s school/no sister school)' /
   H1MF6A    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1MF7A    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1MF8A    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1MF9A    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1MF10A   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1MF2B    0 '(0) No (skip to Q.6)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.6)'
             7 '(7) Legitimate skip (only 1 male friend nominated)' /
   H1MF3B    2 '(2) 1st or 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th'
             13 '(13) Beyond high school (skip to Q.6)'
             97 '(97) Legitimate skip' 98 '(98) Don''t know (skip to Q.6)' /
   H1MF4B    0 '(0) No' 1 '(1) Yes (skip to Q.5a)' 7 '(7) Legitimate skip' /
   H1MF5B    0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (goes to R''s school/no sister school)' /
   H1MF6B    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1MF7B    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1MF8B    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1MF9B    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1MF10B   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1MF2C    0 '(0) No (skip to Q.6)' 1 '(1) Yes'
             7 '(7) Legitimate skip (2/fewer male friends nominated)'
             8 '(8) Don''t know (skip to Q.6)' /
   H1MF3C    2 '(2) 1st or 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th'
             13 '(13) Beyond high school (skip to Q.6)'
             97 '(97) Legitimate skip' 98 '(98) Don''t know (skip to Q.6)' /
   H1MF4C    0 '(0) No' 1 '(1) Yes (skip to Q.5a)' 7 '(7) Legitimate skip' /
   H1MF5C    0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (goes to R''s school/no sister school)' /
   H1MF6C    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1MF7C    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1MF8C    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1MF9C    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1MF10C   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1MF2D    0 '(0) No (skip to Q.6)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.6)'
             7 '(7) Legitimate skip (3/fewer male friends nominated)'
             8 '(8) Don''t know (skip to Q.6)' /
   H1MF3D    2 '(2) 1st or 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th'
             13 '(13) Beyond high school (skip to Q.6)'
             97 '(97) Legitimate skip' 98 '(98) Don''t know (skip to Q.6)' /
   H1MF4D    0 '(0) No' 1 '(1) Yes (skip to Q.5a)' 7 '(7) Legitimate skip' /
   H1MF5D    0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (goes to R''s school/no sister school)' /
   H1MF6D    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1MF7D    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1MF8D    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1MF9D    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1MF10D   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1MF2E    0 '(0) No (skip to Q.6)' 1 '(1) Yes'
             7 '(7) Legitimate skip (4/fewer male friends nominated)'
             8 '(8) Don''t know (skip to Q.6)' /
   H1MF3E    2 '(2) 1st or 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th'
             13 '(13) Beyond high school (skip to Q.6)'
             97 '(97) Legitimate skip' 98 '(98) Don''t know (skip to Q.6)' /
   H1MF4E    0 '(0) No' 1 '(1) Yes (skip to Q.5a)' 7 '(7) Legitimate skip' /
   H1MF5E    0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (goes to R''s school/no sister school)' /
   H1MF6E    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1MF7E    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1MF8E    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1MF9E    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1MF10E   0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FF2A    0 '(0) No (skip to Q.6)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.6)'
             7 '(7) Legitimate skip (no female friend nominated)'
             8 '(8) Don''t know (skip to Q.6)' /
   H1FF3A    2 '(2) 1st or 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th'
             13 '(13) Beyond high school (skip to Q.6)'
             96 '(96) Refused (skip to Q.6)' 97 '(97) Legitimate skip'
             98 '(98) Don''t know (skip to Q.6)' /
   H1FF4A    0 '(0) No' 1 '(1) Yes (skip to Q.5a)' 6 '(6) Refused'
             7 '(7) Legitimate skip' /
   H1FF5A    0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (goes to R''s school/no sister school)'
             8 '(8) Don''t know' /
   H1FF6A    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1FF7A    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip'
             9 '(9) Not applicable' /
   H1FF8A    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1FF9A    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1FF10A   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1FF2B    0 '(0) No (skip to Q.6)' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (only 1 female friend nominated)'
             8 '(8) Don''t know' /
   H1FF3B    2 '(2) 1st or 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th'
             13 '(13) Beyond high school (skip to Q.6)'
             96 '(96) Refused (skip to Q.6)' 97 '(97) Legitimate skip'
             98 '(98) Don''t know (skip to Q.6)' /
   H1FF4B    0 '(0) No' 1 '(1) Yes (skip to Q.5a)' 7 '(7) Legitimate skip' /
   H1FF5B    0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (goes to R''s school/no sister school)' /
   H1FF6B    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1FF7B    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1FF8B    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1FF9B    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1FF10B   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 7 '(7) Legitimate skip' /
   H1FF2C    0 '(0) No (skip to Q.6)' 1 '(1) Yes'
             7 '(7) Legitimate skip (2/fewer female friends nominated)'
             8 '(8) Don''t know (skip to Q.6)' /
   H1FF3C    2 '(2) 1st or 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th'
             13 '(13) Beyond high school (skip to Q.6)'
             97 '(97) Legitimate skip' 98 '(98) Don''t know (skip to Q.6)' /
   H1FF4C    0 '(0) No' 1 '(1) Yes (skip to Q.6)' 7 '(7) Legitimate skip' /
   H1FF5C    0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (goes to R''s school/no sister school)'
             8 '(8) Don''t know' /
   H1FF6C    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FF7C    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FF8C    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FF9C    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FF10C   0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FF2D    0 '(0) No (skip to Q.6)' 1 '(1) Yes'
             7 '(7) Legitimate skip (3/fewer female friends nominated)' /
   H1FF3D    2 '(2) 1st or 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th'
             13 '(13) Beyond high school (skip to Q.6)'
             97 '(97) Legitimate skip' 98 '(98) Don''t know (skip to Q.6)'
             99 '(99) Not applicable (skip to Q.6)' /
   H1FF4D    0 '(0) No' 1 '(1) Yes (skip to Q.5a)' 7 '(7) Legitimate skip' /
   H1FF5D    0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (goes to R''s school/no sister school)' /
   H1FF6D    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip'
             9 '(9) Not applicable' /
   H1FF7D    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip'
             9 '(9) Not applicable' /
   H1FF8D    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip'
             9 '(9) Not applicable' /
   H1FF9D    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip'
             9 '(9) Not applicable' /
   H1FF10D   0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip'
             9 '(9) Not applicable' /
   H1FF2E    0 '(0) No (skip to Q.6)' 1 '(1) Yes'
             7 '(7) Legitimate skip (4/fewer female friends nominated)' /
   H1FF3E    2 '(2) 1st or 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th'
             13 '(13) Beyond high school (skip to Q.6)'
             97 '(97) Legitimate skip' /
   H1FF4E    0 '(0) No' 1 '(1) Yes (skip to Q.5a)' 7 '(7) Legitimate skip' /
   H1FF5E    0 '(0) No (skip to Q.6)' 1 '(1) Yes'
             7 '(7) Legitimate skip (goes to R''s school/no sister school)'
             8 '(8) Don''t know' /
   H1FF6E    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FF7E    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FF8E    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FF9E    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FF10E   0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1ID1A    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1B    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1C    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1D    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1E    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1F    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1G    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1H    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1I    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1J    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1K    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1L    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1M    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1N    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1O    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1P    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1Q    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID1R    1 '(1) Card kept' 2 '(2) Card rejected' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1ID2_1   1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_2   1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_3   1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_4   1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_5   1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_6   1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_7   1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_8   1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_9   1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_10  1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_11  1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_12  1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_13  1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_14  1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_15  1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_16  1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID2_17  1 '(1) We would go out together in a group'
             2 '(2) I would meet my partner''s parents'
             3 '(3) I would tell other people that we were a couple'
             4 '(4) See less of other friends/could spend more time w/partne'
             5 '(5) We would go out together alone'
             6 '(6) We would hold hands'
             7 '(7) I would give my partner a present'
             8 '(8) My partner would give me a present'
             9 '(9) I would tell my partner that I loved him or her'
             10 '(10) My partner would tell me that he or she loved me'
             11 '(11) We would think of ourselves as a couple'
             12 '(12) Would talk about contraception or STDs'
             13 '(13) We would kiss.'
            14 '(14) Would touch each other under clothing/with no clothes o'
             15 '(15) We would have sex'
             16 '(16) My partner or I would get pregnant'
             17 '(17) We would get married' 96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (all remaining cards rejected/refused)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1ID5     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (currently married)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1ID6     1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             7 '(7) Legitimate skip (currently married)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1RR1     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable (skip to next section)' /
   RR_FLAG   0 '(0) Skips followed correctly'
             1 '(1) Skips NOT followed correctly' /
   H1LR1     0 '(0) No (skip to next section)' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (''yes'' to romantic relationship)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1LR2     0 '(0) No (skip to next section)' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1LR3     0 '(0) No (skip to next section)' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1LR4     0 '(0) No (skip to next section)'
             1 '(1) Yes (asked to give initials)'
             6 '(6) Refused (asked to give initials)' 7 '(7) Legitimate skip'
             8 '(8) Don''t know (asked to give initials)'
             9 '(9) Not applicable (asked to give initials)' /
   H1CO1     0 '(0) No (skip to next section)' 1 '(1) Yes'
             6 '(6) Refused (skip to next section)' 8 '(8) Don''t know'
             9 '(9) Not applicable (skip to next section)' /
   H1CO2M    1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (hasn''t had intercourse)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1CO2Y    77 '(77) 1976-1977' 81 '(81) 1980-1981' 83 '(83) 1982-1983'
             84 '(84) 1984' 85 '(85) 1985' 86 '(86) 1986' 87 '(87) 1987'
             88 '(88) 1988' 89 '(89) 1989' 90 '(90) 1990' 91 '(91) 1991'
             92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995'
             96 '(96) Refused'
             97 '(97) Legitimate skip (hasn''t had intercourse)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1CO3     0 '(0) No (skip to Q.5)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.5)'
             7 '(7) Legitimate skip (hasn''t had intercourse)'
             8 '(8) Don''t know (skip to Q.5)' /
   H1CO4A    1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly'
             8 '(8) IUD (intrauterine device)' 9 '(9) Norplant'
             10 '(10) Ring' 11 '(11) Depo Provera'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             14 '(14) No other method (skip to Q.5)'
             96 '(96) Refused (skip to Q.5)'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know (skip to Q.5)' /
   H1CO4B    1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly'
             8 '(8) IUD (intrauterine device)' 9 '(9) Norplant'
             10 '(10) Ring' 11 '(11) Depo Provera'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             14 '(14) No other method (skip to Q.5)'
             96 '(96) Refused (skip to Q.5)'
           97 '(97) Legitimate skip (didn''t use birth control/refused to an'
             98 '(98) Don''t know (skip to Q.5)' 99 '(99) Not applicable' /
   H1CO4C    1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly'
             8 '(8) IUD (intrauterine device)' 9 '(9) Norplant'
             10 '(10) Ring' 11 '(11) Depo Provera'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             14 '(14) No other method' 96 '(96) Refused'
           97 '(97) Legitimate skip (didn''t use birth control/used one meth'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1CO5M    1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (hasn''t had intercourse)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1CO5Y    80 '(80) 1976-1980' 86 '(86) 1981-1986' 88 '(88) 1987-1988'
             89 '(89) 1989' 90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992'
             93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (hasn''t had intercourse)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1CO6     0 '(0) No (skip to Q.8)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.8)'
             7 '(7) Legitimate skip (hasn''t had intercourse)'
             8 '(8) Don''t know (skip to Q.8)' /
   H1CO7A    1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly'
             8 '(8) IUD (intrauterine device)' 9 '(9) Norplant'
             10 '(10) Ring' 11 '(11) Depo Provera'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             14 '(14) No other method' 96 '(96) Refused (skip to Q.8)'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know (skip to Q.8)' 99 '(99) Not applicable' /
   H1CO7B    1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly'
             8 '(8) IUD (intrauterine device)' 9 '(9) Norplant'
             10 '(10) Ring' 11 '(11) Depo Provera'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             14 '(14) No other method (skip to Q.8)'
             96 '(96) Refused (skip to Q.8)'
           97 '(97) Legitimate skip (didn''t use birth control/refused to an'
             98 '(98) Don''t know (skip to Q.8)' 99 '(99) Not applicable' /
   H1CO7C    1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly'
             8 '(8) IUD (intrauterine device)' 9 '(9) Norplant'
             10 '(10) Ring' 11 '(11) Depo Provera'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             14 '(14) No other method' 96 '(96) Refused'
           97 '(97) Legitimate skip (didn''t use birth control/used one meth'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1CO8     0 '(0) No (skip to Q.10)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.10)'
             7 '(7) Legitimate skip (hasn''t had intercourse/used condom)'
             8 '(8) Don''t know (skip to Q.10)' /
   H1CO9     1 '(1) None of the time' 2 '(2) Some of the time'
             3 '(3) Half of the time' 4 '(4) Most of the time'
             5 '(5) All of the time' 6 '(6) Refused'
             7 '(7) Legitimate skip (have never used condom)' /
   H1CO10    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t had intercourse)'
             8 '(8) Don''t know' /
   H1CO11    0 '(0) No (skip to Q.16)' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t had intercourse)' /
   H1CO12A   1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly'
             8 '(8) IUD (intrauterine device)' 9 '(9) Norplant'
             10 '(10) Ring' 11 '(11) Depo Provera'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             14 '(14) No other method' 96 '(96) Refused (skip to Q.13)'
           97 '(97) Legit skip (hasn''t received birth control from Dr./clin'
             98 '(98) Don''t know (skip to Q.13)' /
   H1CO12B   1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly'
             8 '(8) IUD (intrauterine device)' 9 '(9) Norplant'
             10 '(10) Ring' 11 '(11) Depo Provera'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             14 '(14) No other method (skip to Q.13)'
             96 '(96) Refused (skip to Q.13)'
           97 '(97) Legit skip (hasn''t received birth control from Dr./clin'
             98 '(98) Don''t know (skip to Q.13)' /
   H1CO12C   1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly'
             8 '(8) IUD (intrauterine device)' 9 '(9) Norplant'
             10 '(10) Ring' 11 '(11) Depo Provera'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             14 '(14) No other method' 96 '(96) Refused (skip to Q.13)'
           97 '(97) Legit skip(hasn''t receive birth con/only 1 from Dr./cli'
             98 '(98) Don''t know (skip to Q.13)' /
   H1CO13    0 '(0) No (skip to Q.16)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.16)'
            7 '(7) Legit skip (hasn''t received birth control from Dr./clini'
             8 '(8) Don''t know (skip to Q.16)' /
   H1CO14M   1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
            97 '(97) Legitimate skip(never taken birth control pills regular'
             98 '(98) Don''t know' /
   H1CO14Y   89 '(89) 1989 and before' 90 '(90) 1990' 91 '(91) 1991'
             92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995'
             96 '(96) Refused'
            97 '(97) Legitimate skip(never taken birth control pills regular'
             98 '(98) Don''t know' /
   H1CO15    0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip(never taken birth control pills regularl'
             /
   H1CO16A   0 '(0) No' 1 '(1) Yes (ask Q.17A)' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t had intercourse)'
             8 '(8) Don''t know' /
   H1CO16B   0 '(0) No' 1 '(1) Yes (ask Q.17B)' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t had intercourse)'
             8 '(8) Don''t know' /
   H1CO16C   0 '(0) No' 1 '(1) Yes (ask Q.17C)' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t had intercourse)'
             8 '(8) Don''t know' /
   H1CO16D   0 '(0) No' 1 '(1) Yes (ask Q.17D)' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t had intercourse)'
             8 '(8) Don''t know' /
   H1CO16E   0 '(0) No' 1 '(1) Yes (ask Q.17E)' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t had intercourse)'
             8 '(8) Don''t know' /
   H1CO16F   0 '(0) No' 1 '(1) Yes (ask Q.17F)' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t had intercourse)'
             8 '(8) Don''t know' /
   H1CO16G   0 '(0) No' 1 '(1) Yes (ask Q.17G)' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t had intercourse)'
             8 '(8) Don''t know' /
   H1CO16H   0 '(0) No' 1 '(1) Yes (ask Q.17H)' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t had intercourse)'
             8 '(8) Don''t know' /
   H1CO16I   0 '(0) No' 1 '(1) Yes (ask Q.17I)'
             7 '(7) Legitimate skip (hasn''t had intercourse)'
             8 '(8) Don''t know' /
   H1CO16J   0 '(0) No' 1 '(1) Yes (ask Q.17J)'
             7 '(7) Legitimate skip (hasn''t had intercourse or male)'
             8 '(8) Don''t know' /
   H1CO17A   1 '(1) Less than 1 year ago' 2 '(2) 1-2 years ago'
             3 '(3) More than 2 years ago' 6 '(6) Refused'
             7 '(7) Legitimate skip (have never been told had chlamydia)' /
   H1CO17B   1 '(1) Less than 1 year ago' 2 '(2) 1-2 years ago'
             3 '(3) More than 2 years ago' 6 '(6) Refused'
             7 '(7) Legitimate skip (have never been told had syphilis)' /
   H1CO17C   1 '(1) Less than 1 year ago' 2 '(2) 1-2 years ago'
             3 '(3) More than 2 years ago' 6 '(6) Refused'
             7 '(7) Legitimate skip (have never been told had gonorrhea)' /
   H1CO17D   2 '(2) 1 or more years ago' 6 '(6) Refused'
             7 '(7) Legitimate skip (have never been told had HIV/AIDS)' /
   H1CO17E   1 '(1) Less than 1 year ago' 2 '(2) 1 or more years ago'
             7 '(7) Legitimate skip (have never been told had genital herpes'
             /
   H1CO17F   1 '(1) Less than 1 year ago' 2 '(2) 1-2 years ago'
             3 '(3) More than 2 years ago' 6 '(6) Refused'
             7 '(7) Legitimate skip (have never been told had genital warts)'
             /
   H1CO17G   1 '(1) Less than 1 year ago' 2 '(2) 1 or more years ago'
             7 '(7) Legitimate skip (have never been told trichomoniasis)' /
   H1CO17H   1 '(1) Less than 1 year ago' 2 '(2) 1 or more years ago'
             6 '(6) Refused'
             7 '(7) Legitimate skip (have never been told hepatitis B)' /
   H1CO17I   1 '(1) Less than 1 year ago' 2 '(2) 1 or more years ago'
             7 '(7) Legitimate skip (have never been told bacterial vaginosi'
             /
   H1CO17J   1 '(1) Less than 1 year ago' 2 '(2) 1 or more years ago'
             7 '(7) Legit skip(have never been told non-gonococcal vaginitis'
             /
   H1RI1M_1  0 '(0) Don''t consider this person special friend'
             1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (R doesn''t have special friend)'
             98 '(98) Don''t know/don''t remember' 99 '(99) Not applicable' /
   H1RI1Y_1  0 '(0) Don''t consider this person special friend'
             77 '(77) 1977' 78 '(78) 1978' 79 '(79) 1979' 80 '(80) 1980'
             81 '(81) 1981' 84 '(84) 1984' 85 '(85) 1985' 86 '(86) 1986'
             87 '(87) 1987' 88 '(88) 1988' 89 '(89) 1989' 90 '(90) 1990'
             91 '(91) 1991' 92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994'
             95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (R doesn''t have special friend)'
             98 '(98) Don''t know/don''t remember' 99 '(99) Not applicable' /
   H1RI2_1   80 '(80) 1980' 85 '(85) 1985' 86 '(86) 1986' 87 '(87) 1987'
             88 '(88) 1988' 89 '(89) 1989' 90 '(90) 1990' 91 '(91) 1991'
             92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995'
             96 '(96) Refused' 97 '(97) Legitimate skip (month/year given)'
             98 '(98) Don''t know' /
   H1RI3_1   96 '(96) Refused'
             97 '(97) Legitimate skip (R doesn''t have special friend)'
             98 '(98) Don''t know' /
   H1RI4_1   96 '(96) Refused'
            97 '(97) Legitimate skip(no special friend/age special friend gi'
             98 '(98) Don''t know' /
   H1RI5A_1  2 '(2) 1st or 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th'
             13 '(13) Beyond 12th grade (skip to Q.7)'
             14 '(14) {INITIALS} wasn''t in school (skip to Q.7)'
             15 '(15) {INITIALS} was in school/don''t know what grade'
             16 '(16) Don''t know whether {INITIALS} was in school'
             96 '(96) Refused'
             97 '(97) Legitimate skip (R doesn''t have special friend)'
             98 '(98) Don''t know' /
   H1RI6_1   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (No special friend/friend not in school)'
             8 '(8) Don''t know' /
   H1RI7_1   1 '(1) In your neighborhood' 2 '(2) Not in your neighborhood'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' /
   H1RI8A_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' /
   H1RI8B_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' /
   H1RI8C_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' /
   H1RI8D_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' /
   H1RI8E_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' /
   H1RI8F_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' /
   H1RI8G_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' /
   H1RI8H_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' /
   H1RI9_1   1 '(1) All of them' 2 '(2) Most of them' 3 '(3) A few of them'
             4 '(4) One of them' 5 '(5) None of them'
             6 '(6) When relationship w/{INITIALS} began/no close friends'
             96 '(96) Refused'
             97 '(97) Legitimate skip (R doesn''t have special friend)'
             98 '(98) Don''t know' /
   H1RI10_1  0 '(0) No' 1 '(1) Yes (skip to Q.14)'
             6 '(6) Refused (skip to Q.14)'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know (skip to Q.14)' /
   H1RI11M1  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
            97 '(97) Legitimate skip (no special friend/relationship on-goin'
             98 '(98) Don''t know' /
   H1RI11Y1  75 '(75) 1975' 78 '(78) 1978' 88 '(88) 1988' 89 '(89) 1989'
             90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992' 93 '(93) 1993'
             94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
            97 '(97) Legitimate skip (no special friend/relationship on-goin'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI12_1  74 '(74) 1974' 85 '(85) 1985' 87 '(87) 1987' 92 '(92) 1992'
             93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (no special friend/month ended given)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI13_1  1 '(1) In your neighborhood' 2 '(2) Not in your neighborhood'
             6 '(6) Refused'
             7 '(7) Legitimate skip (no special friend/relationship on-going'
             8 '(8) Don''t know' /
   H1RI14_1  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' /
   H1RI15_1  1 '(1) 1st' 2 '(2) 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th'
            13 '(13) {INITIALS} graduated from H.S./in another kind of schoo'
            14 '(14) {INITIALS} has graduated from high school/is out of sch'
             15 '(15) {INITIALS} has dropped out of school'
             16 '(16) {INITIALS} is in school/but don''t know what grade'
             17 '(17) You don''t know whether {INITIALS} is in school'
             96 '(96) Refused'
             97 '(97) Legitimate skip (R doesn''t have special friend)'
             98 '(98) Don''t know' /
   H1RI16_1  0 '(0) No (skip to Q.18)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.18)'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know (skip to Q.18)'
             9 '(9) Not applicable (skip to Q.18)' /
   H1RI17A1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI17B1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI17C1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI17D1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI17E1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI17F1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI18A1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI18B1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI18C1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI18D1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI18E1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI19A1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19B1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19C1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19D1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19E1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19F1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19G1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI20_1  1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' /
   H1RI21A1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21B1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21C1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21D1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21E1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21F1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21G1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21H1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21I1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21J1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21K1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21L1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21M1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21N1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21O1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21P1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21Q1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21R1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R doesn''t have special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI22A1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22B1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22C1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22D1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22E1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22F1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22G1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22H1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22I1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22J1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22K1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22L1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22M1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22N1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22O1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22P1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22Q1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI22R1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R doesn''t have special friend)' /
   H1RI24A1  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             6 '(6) Refused (skip to next partner/section)'
             7 '(7) Legitimate skip (didn''t retain card O)' /
   H1RI25M1  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI25Y1  80 '(80) 1980' 87 '(87) 1987' 88 '(88) 1988' 89 '(89) 1989'
             90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992' 93 '(93) 1993'
             94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI26M1  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI26Y1  89 '(89) 1989' 90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992'
             93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI27_1  1 '(1) Once' 2 '(2) More than once (skip to Q.31)'
             6 '(6) Refused (skip to Q.31)'
             7 '(7) Legit skip (1st intercourse date/not recent intercourse'
             8 '(8) Don''t know (skip to Q.31)' /
   H1RI28_1  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             7 '(7) Legitimate skip (intercourse >once same month)' /
   H1RI29A1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             13 '(13) Some other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RI29B1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             11 '(11) Depo Provera' 13 '(13) Some other method'
             14 '(14) No other method' 96 '(96) Refused'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know' /
   H1RI29C1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             8 '(8) IUD (intrauterine device)' 13 '(13) Some other method'
             14 '(14) No other method' 96 '(96) Refused'
             97 '(97) Legitimate skip (used only one birth control method)'
             98 '(98) Don''t know' /
   H1RI30_1  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RI31_1  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             6 '(6) Refused (skip to next partner/section)'
             7 '(7) Legitimate skip (had intercourse only once)'
             8 '(8) Don''t know (skip to next partner/section)' /
   H1RI32_1  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1RI33A1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             9 '(9) Norplant' 11 '(11) Depo Provera'
             13 '(13) Some other method'
             96 '(96) Refused (skip to next partner/section)'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know (skip to next partner/section)' /
   H1RI33B1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             9 '(9) Norplant' 11 '(11) Depo Provera'
             13 '(13) Some other method' 14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know' /
   H1RI33C1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly' 11 '(11) Depo Provera'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             14 '(14) No other method' 96 '(96) Refused'
             97 '(97) Legitimate skip (used only one birth control method)' /
   H1RI34_1  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RI35_1  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             6 '(6) Refused' 7 '(7) Legitimate skip (used only one method)' /
   H1RI36_1  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             6 '(6) Refused (skip to next partner/section)'
             7 '(7) Legitimate skip (intercourse in only 1 month)'
             8 '(8) Don''t know (skip to next partner/section)' /
   H1RI37_1  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1RI38A1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             9 '(9) Norplant' 10 '(10) Ring' 11 '(11) Depo Provera'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             96 '(96) Refused (skip to Q.41)'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know (skip to Q.41)' /
   H1RI38B1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly'
             8 '(8) IUD (intrauterine device)' 9 '(9) Norplant'
             10 '(10) Ring' 11 '(11) Depo Provera'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             14 '(14) No other method' 96 '(96) Refused'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know' /
   H1RI38C1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             9 '(9) Norplant' 10 '(10) Ring' 11 '(11) Depo Provera'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             14 '(14) No other method' 96 '(96) Refused'
             97 '(97) Legitimate skip (used only one birth control method)'
             98 '(98) Don''t know' /
   H1RI39_1  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RI40_1  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (used only one method)'
             8 '(8) Don''t know' /
   H1RI41_1  9996 '(9996) Refused'
         9997 '(9997) Legitimate skip (didn''t use birth control/Q.36 not Ye'
             9998 '(9998) Don''t know' /
   H1RI1M_2  0 '(0) Don''t consider this person special friend'
             1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (R has no/only one special friend)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI1Y_2  0 '(0) Don''t consider this person special friend'
             87 '(87) 1987' 88 '(88) 1988' 89 '(89) 1989' 90 '(90) 1990'
             91 '(91) 1991' 92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994'
             95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (R has no/only one special friend)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI2_2   80 '(80) 1980' 86 '(86) 1986' 87 '(87) 1987' 88 '(88) 1988'
             89 '(89) 1989' 90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992'
             93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (month/year given)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI3_2   96 '(96) Refused'
             97 '(97) Legitimate skip (R has no/only one special friend)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI4_2   96 '(96) Refused'
             97 '(97) Legitimate skip (no 2nd spec friend/age given)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI5A_2  2 '(2) 1st or 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th' 13 '(13) Beyond high school'
             14 '(14) {INITIALS} wasn''t in school (skip to Q.7)'
             15 '(15) {INITIALS} was in school/don''t know what grade'
             16 '(16) Don''t know whether {INITIALS} was in school'
             96 '(96) Refused'
             97 '(97) Legitimate skip (R has no/only one special friend)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI6_2   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no 2nd spec frnd/spec frnd not in schoo'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI7_2   1 '(1) In your neighborhood' 2 '(2) Not in your neighborhood'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI8A_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI8B_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI8C_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI8D_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI8E_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI8F_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI8G_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI8H_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI9_2   1 '(1) All of them' 2 '(2) Most of them' 3 '(3) A few of them'
             4 '(4) One of them' 5 '(5) None of them'
             6 '(6) When relationship w/{INITIALS} began/no close friends'
             96 '(96) Refused'
             97 '(97) Legitimate skip (R has no/only one special friend)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI10_2  0 '(0) No' 1 '(1) Yes (skip to Q.14)'
             6 '(6) Refused (skip to Q.14)'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know (skip to Q.14)'
             9 '(9) Not applicable (skip to Q.14)' /
   H1RI11M2  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
            97 '(97) Legitimate skip (no 2nd special friend/relationship on-'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI11Y2  90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992' 93 '(93) 1993'
             94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
            97 '(97) Legitimate skip (no 2nd special friend/relationship on-'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI12_2  91 '(91) 1991' 93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995'
             96 '(96) Refused'
            97 '(97) Legit skip (no 2nd spec frnd/month relationship ended g'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI13_2  1 '(1) In your neighborhood' 2 '(2) Not in your neighborhood'
             6 '(6) Refused'
             7 '(7) Legitimate skip (no 2nd special friend/relationship on-g'
             8 '(8) Don''t know' /
   H1RI14_2  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI15_2  1 '(1) 1st' 2 '(2) 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th'
            13 '(13) {INITIALS} graduated from H.S./in another kind of schoo'
            14 '(14) {INITIALS} has graduated from high school/is out of sch'
             15 '(15) {INITIALS} has dropped out of school'
             16 '(16) {INITIALS} is in school/but don''t know what grade'
             17 '(17) You don''t know whether {INITIALS} is in school'
             96 '(96) Refused'
             97 '(97) Legitimate skip (R has no/only one special friend)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1RI16_2  0 '(0) No (skip to Q.18)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.18)'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know (skip to Q.18)'
             9 '(9) Not applicable (skip to Q.18)' /
   H1RI17A2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI17B2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI17C2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI17D2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI17E2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI17F2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI18A2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI18B2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI18C2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI18D2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI18E2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI19A2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19B2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19C2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19D2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19E2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19F2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19G2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI20_2  1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' /
   H1RI21A2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21B2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21C2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21D2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21E2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21F2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21G2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21H2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21I2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21J2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21K2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21L2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21M2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21N2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21O2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21P2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21Q2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI21R2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has no/only one special friend)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI22A2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22B2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22C2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22D2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22E2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22F2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22G2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22H2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22I2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22J2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22K2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22L2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22M2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22N2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22O2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22P2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22Q2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI22R2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has no/only one special friend)' /
   H1RI24A2  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             6 '(6) Refused (skip to next partner/section)'
             7 '(7) Legitimate skip (didn''t retain card O)'
             8 '(8) Don''t know (skip to next partner/section)' /
   H1RI25M2  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RI25Y2  90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992' 93 '(93) 1993'
             94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RI26M2  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RI26Y2  90 '(90) 1990' 92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994'
             95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RI27_2  1 '(1) Once' 2 '(2) More than once (skip to Q.31)'
             7 '(7) Legit skip (1st intercourse date/not recent intercourse'
             8 '(8) Don''t know (skip to Q.31)' /
   H1RI28_2  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             6 '(6) Refused'
             7 '(7) Legitimate skip (intercourse more than once in same mont'
             /
   H1RI29A2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             11 '(11) Depo Provera'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RI29B2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             6 '(6) Foam/jelly/creme/suppositories' 9 '(9) Norplant'
             11 '(11) Depo Provera' 14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RI29C2  2 '(2) Withdrawal' 4 '(4) Birth control pills'
             14 '(14) No other method'
             97 '(97) Legitimate skip (used only one birth control method)' /
   H1RI30_2  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RI31_2  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             7 '(7) Legitimate skip (intercourse only once)'
             8 '(8) Don''t know( skip to next partner/section)' /
   H1RI32_2  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control' /
   H1RI33A2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             11 '(11) Depo Provera'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RI33B2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 7 '(7) Diaphragm, with/without jelly'
             11 '(11) Depo Provera' 12 '(12) Contraceptive film'
             13 '(13) Some other method' 14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know' /
   H1RI33C2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly' 14 '(14) No other method'
             96 '(96) Refused'
             97 '(97) Legitimate skip (used only one birth control method)'
             98 '(98) Don''t know' /
   H1RI34_2  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RI35_2  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (used only one method)' /
   H1RI36_2  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             7 '(7) Legitimate skip (intercourse in only one month)' /
   H1RI37_2  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1RI38A2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 11 '(11) Depo Provera'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RI38B2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             9 '(9) Norplant' 11 '(11) Depo Provera'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             14 '(14) No other method' 96 '(96) Refused'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RI38C2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly' 9 '(9) Norplant'
             10 '(10) Ring' 13 '(13) Some other method'
             14 '(14) No other method'
             97 '(97) Legitimate skip (used only one birth control method)'
             98 '(98) Don''t know' /
   H1RI39_2  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RI40_2  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (used only one method)' /
   H1RI41_2  9996 '(9996) Refused'
         9997 '(9997) Legitimate skip (didn''t use birth control/Q.36 not ye'
             9998 '(9998) Don''t know' /
   H1RI1M_3  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (R has two/fewer special friends)'
             98 '(98) Don''t know' /
   H1RI1Y_3  90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992' 93 '(93) 1993'
             94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (R has two/fewer special friends)'
             98 '(98) Don''t know' /
   H1RI2_3   89 '(89) 1989' 90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992'
             93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (month/year given)'
             98 '(98) Don''t know' /
   H1RI3_3   96 '(96) Refused'
             97 '(97) Legitimate skip (R has two/fewer special friends)'
             98 '(98) Don''t know' /
   H1RI4_3   96 '(96) Refused'
             97 '(97) Legitimate skip (no 3rd/age special friend given)'
             98 '(98) Don''t know' /
   H1RI5A_3  3 '(3) 3rd' 5 '(5) 5th' 6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th'
             9 '(9) 9th' 10 '(10) 10th' 11 '(11) 11th' 12 '(12) 12th'
             13 '(13) Beyond high school'
             14 '(14) {INITIALS} wasn''t in school (skip to Q.7)'
             15 '(15) {INITIALS} was in school/don''t know what grade'
           16 '(16) Don''t know whether{INITIALS} was in school (skip to Q.7'
             96 '(96) Refused'
             97 '(97) Legitimate skip (R has two/fewer special friends)'
             98 '(98) Don''t know' /
   H1RI6_3   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no 3rd special friend/friend not in sch'
             8 '(8) Don''t know' /
   H1RI7_3   1 '(1) In your neighborhood' 2 '(2) Not in your neighborhood'
             6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI8A_3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI8B_3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI8C_3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI8D_3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI8E_3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI8F_3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI8G_3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI8H_3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1RI9_3   1 '(1) All of them' 2 '(2) Most of them' 3 '(3) A few of them'
             4 '(4) One of them' 5 '(5) None of them'
             6 '(6) When relationship w/{INITIALS} began/no close friends'
             96 '(96) Refused'
             97 '(97) Legitimate skip (R has two/fewer special friends)'
             98 '(98) Don''t know' /
   H1RI10_3  0 '(0) No' 1 '(1) Yes (skip to Q.14)' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI11M3  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
            97 '(97) Legitimate skip (no 3rd special friend/relationship on-'
             98 '(98) Don''t know' /
   H1RI11Y3  93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
            97 '(97) Legitimate skip (no 3rd special friend/relationship on-'
             98 '(98) Don''t know' /
   H1RI12_3  92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995'
             96 '(96) Refused'
            97 '(97) Legitimate skip (no 3rd special friend/relationship on-'
             98 '(98) Don''t know' /
   H1RI13_3  1 '(1) In your neighborhood' 2 '(2) Not in your neighborhood'
             7 '(7) Legitimate skip (no 3rd special friend/relationship on-g'
             8 '(8) Don''t know' /
   H1RI14_3  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI15_3  1 '(1) 1st' 2 '(2) 2nd' 3 '(3) 3rd' 4 '(4) 4th' 5 '(5) 5th'
             6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th'
             11 '(11) 11th' 12 '(12) 12th'
            13 '(13) {INITIALS} graduated from H.S./in another kind of schoo'
            14 '(14) {INITIALS} has graduated from high school/is out of sch'
             15 '(15) {INITIALS} has dropped out of school'
             16 '(16) {INITIALS} is in school/but don''t know what grade'
             17 '(17) You don''t know whether {INITIALS} is in school'
             96 '(96) Refused'
             97 '(97) Legitimate skip (R has two/fewer special friends)'
             98 '(98) Don''t know' /
   H1RI16_3  0 '(0) No (skip to Q.18)' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI17A3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI17B3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI17C3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI17D3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI17E3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI17F3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RI18A3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI18B3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI18C3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI18D3  0 '(0) Not marked' 1 '(1) Marked (ask Q.19)' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI18E3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know (skip to Q.20)' /
   H1RI19A3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19B3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19C3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19D3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19E3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19F3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI19G3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)'
             8 '(8) Don''t know' /
   H1RI20_3  1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21A3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21B3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21C3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21D3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21E3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21F3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21G3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21H3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21I3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21J3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21K3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21L3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21M3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21N3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21O3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21P3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21Q3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI21R3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legitimate skip (R has two/fewer special friends)'
             8 '(8) Don''t know' /
   H1RI22A3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22B3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22C3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22D3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22E3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22F3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22G3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22H3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22I3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22J3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22K3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22L3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22M3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22N3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22O3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22P3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22Q3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI22R3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
             97 '(97) Legitimate skip (R has two/fewer special friends)' /
   H1RI24A3  0 '(0) No (skip to next section)' 1 '(1) Yes'
             6 '(6) Refused (skip to next section)'
             7 '(7) Legitimate skip (didn''t retain card O)' /
   H1RI25M3  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RI25Y3  80 '(80) 1980' 90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992'
             93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RI26M3  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RI26Y3  89 '(89) 1989' 92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994'
             95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RI27_3  1 '(1) Once' 2 '(2) More than once (skip to Q.31)'
             7 '(7) Legit skip (1st intercourse date/not recent intercourse'
             8 '(8) Don''t know (skip to Q.31)' /
   H1RI28_3  0 '(0) No (skip to next section)' 1 '(1) Yes'
             7 '(7) Legitimate skip (intercourse more than once in same mont'
             /
   H1RI29A3  1 '(1) Condoms (rubbers)' 4 '(4) Birth control pills'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RI29B3  2 '(2) Withdrawal' 6 '(6) Foam/jelly/creme/suppositories'
             14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RI29C3  1 '(1) Condoms (rubbers)' 3 '(3) Rhythm (safe time)'
             14 '(14) No other method'
             97 '(97) Legitimate skip (used only one birth control method)' /
   H1RI30_3  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RI31_3  0 '(0) No (skip to next section)' 1 '(1) Yes'
             7 '(7) Legitimate skip (had intercourse only once)' /
   H1RI32_3  0 '(0) No (skip to next section)' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1RI33A3  1 '(1) Condoms (rubbers)'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RI33B3  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             6 '(6) Foam/jelly/creme/suppositories' 14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know' /
   H1RI33C3  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 14 '(14) No other method'
             97 '(97) Legitimate skip (used only one birth control method)' /
   H1RI34_3  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RI35_3  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (used only one method)' /
   H1RI36_3  0 '(0) No (skip to next section)' 1 '(1) Yes'
             7 '(7) Legitimate skip (intercourse in only one month)'
             8 '(8) Don''t know (skip to next section)' /
   H1RI37_3  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1RI38A3  1 '(1) Condoms (rubbers)' 4 '(4) Birth control pills'
             11 '(11) Depo Provera'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RI38B3  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             14 '(14) No other method' 96 '(96) Refused'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know' /
   H1RI38C3  2 '(2) Withdrawal' 3 '(3) Rhythm (safe time)'
             4 '(4) Birth control pills' 5 '(5) Vaginal sponge'
             6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly' 9 '(9) Norplant'
             12 '(12) Contraceptive film' 13 '(13) Some other method'
             14 '(14) No other method'
             97 '(97) Legitimate skip (used only one birth control method)' /
   H1RI39_3  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RI40_3  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (used only one method)' /
   H1RI41_3  9996 '(9996) Refused'
         9997 '(9997) Legitimate skip (didn''t use birth control/Q.36 not=ye'
             9998 '(9998) Don''t know' /
   RICARD1   0 '(0) No problems with ordered sequence of cards'
             1 '(1) Reserve code in ordered sequence/resulting in recoding'
             2 '(2) Inconsistent data in ordered sequence/resulting in recod'
             3 '(3) Inconsistent data/reserve code ordered seq/resulting rec'
             4 '(4) All cards=96/98/99/system missing'
             7 '(7) Legitimate skip/no cards ordered' /
   RICARD2   0 '(0) No problems with ordered sequence of cards'
             1 '(1) Reserve code in ordered sequence/resulting in recoding'
             2 '(2) Inconsistent data in ordered sequence/resulting in recod'
             3 '(3) Inconsistent data/reserve code ordered seq/resulting rec'
             4 '(4) All cards=96/98/99/system missing'
             7 '(7) Legitimate skip/no cards ordered' /
   RICARD3   0 '(0) No problems with ordered sequence of cards'
             1 '(1) Reserve code in ordered sequence/resulting in recoding'
             2 '(2) Inconsistent data in ordered sequence/resulting in recod'
             3 '(3) Inconsistent data/reserve code ordered seq/resulting rec'
             4 '(4) All cards=96/98/99/system missing'
             7 '(7) Legitimate skip/no cards ordered' /
   H1NR1     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1NR2     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1NR3     0 '(0) No (skip to Q.5)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.5)' 8 '(8) Don''t know (skip to Q.5)'
             9 '(9) Not applicable (skip to Q.5)' /
   H1NR4     996 '(996) Refused'
            997 '(997) Legitimate skip (never exchanged sex for drugs/money)'
             998 '(998) Don''t know' 999 '(999) Not applicable' /
   H1NR5     0 '(0) No (skip to Q.54)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.54)'
             8 '(8) Don''t know (skip to Q.54)'
             9 '(9) Not applicable (skip to Q.54)' /
   H1NR6     996 '(996) Refused'
             997 '(997) Legitimate skip (never had a sexual relationship)'
             998 '(998) Don''t know' 999 '(999) Not applicable' /
   H1NR7     996 '(996) Refused'
             997 '(997) Legitimate skip (never had a sexual relationship)'
             998 '(998) Don''t know' /
   H1NR8     996 '(996) Refused'
             997 '(997) Legitimate skip (never had a sexual relationship)'
             998 '(998) Don''t know' 999 '(999) Not applicable' /
   H1NR10_1  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)' /
   H1NR11_1  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)' /
   H1NR12_1  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)' /
   NRRXFLG1  1 '(1) Yes' /
   H1RX1M_1  0 '(0) Don''t consider this person a special friend'
             1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
            97 '(97) Legitimate skip (No sexual relation/section questions a'
             98 '(98) Don''t know' /
   H1RX1Y_1  0 '(0) Don''t consider this person a special friend'
             79 '(79) 1979' 87 '(87) 1987' 89 '(89) 1989' 90 '(90) 1990'
             91 '(91) 1991' 92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994'
             95 '(95) 1995' 96 '(96) Refused'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             98 '(98) Don''t know' /
   H1RX2_1   88 '(88) 1988' 89 '(89) 1989' 91 '(91) 1991' 92 '(92) 1992'
             93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (month/year given)'
             98 '(98) Don''t know' /
   H1RX3_1   96 '(96) Refused'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             98 '(98) Don''t know' /
   H1RX4_1   13 '(13) 13 years old' 14 '(14) 14 years old'
             15 '(15) 15 years old' 17 '(17) 17 years old' 96 '(96) Refused'
             97 '(97) Legit skip (partner age given)' 98 '(98) Don''t know' /
   H1RX5A_1  5 '(5) 5th' 6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th'
             10 '(10) 10th' 11 '(11) 11th' 12 '(12) 12th'
             13 '(13) Beyond high school'
             14 '(14) {INITIALS} wasn''t in school (skip to Q.7)'
             15 '(15) {INITIALS} was in school/but don''t know what grade'
           16 '(16) Don''t know whether {INITIALS} was in school (skip to Q.'
             96 '(96) Refused'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             98 '(98) Don''t know' /
   H1RX6_1   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (partner not in school)'
             8 '(8) Don''t know' /
   H1RX7_1   1 '(1) In your neighborhood' 2 '(2) Not in your neighborhood'
             6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX8A_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX8B_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX8C_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX8D_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX8E_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX8F_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX8G_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX8H_1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX9_1   1 '(1) All of them' 2 '(2) Most of them' 3 '(3) A few of them'
             4 '(4) One of them' 5 '(5) None of them'
             6 '(6) When relationship w/{INITIALS} began/no close friends'
             96 '(96) Refused'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             98 '(98) Don''t know' /
   H1RX10_1  0 '(0) No' 1 '(1) Yes (skip to Q.14)'
             6 '(6) Refused (skip to Q.14)' 7 '(7) Legitimate skip'
             8 '(8) Don''t know (skip to Q.14)' /
   H1RX11M1  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (relationship still going on)'
             98 '(98) Don''t know' /
   H1RX11Y1  89 '(89) 1989' 91 '(91) 1991' 92 '(92) 1992' 93 '(93) 1993'
             94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (relationship still going on)'
             98 '(98) Don''t know' /
   H1RX12_1  90 '(90) 1990' 93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995'
             96 '(96) Refused'
             97 '(97) Legitimate skip (month relationship ended given)'
             98 '(98) Don''t know' /
   H1RX13_1  1 '(1) In your neighborhood' 2 '(2) Not in your neighborhood'
             6 '(6) Refused'
             7 '(7) Legitimate skip (relationship still going on)'
             8 '(8) Don''t know' /
   H1RX14_1  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX15_1  5 '(5) 1st to 5th' 6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th'
             9 '(9) 9th' 10 '(10) 10th' 11 '(11) 11th' 12 '(12) 12th'
            13 '(13) {INITIALS} graduated from H.S./in another kind of schoo'
            14 '(14) {INITIALS} has graduated from high school/is out of sch'
             15 '(15) {INITIALS} has dropped out of school'
             16 '(16) {INITIALS} is in school/but don''t know what grade'
             17 '(17) You don''t know whether {INITIALS} is in school'
             96 '(96) Refused'
            97 '(97) Legit skip (No sexual relation/Section 26 questions ask'
             98 '(98) Don''t know' /
   H1RX16_1  0 '(0) No (skip to Q.18)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.18)'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know (skip to Q.18)' /
   H1RX17A1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RX17B1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RX17C1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RX17D1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RX17E1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RX17F1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1RX18A1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX18B1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX18C1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX18D1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX18E1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX19A1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19B1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19C1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19D1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19E1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19F1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19G1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX20_1  1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21A1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21B1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21C1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21D1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21E1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21F1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21G1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21H1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21I1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21J1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21K1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21L1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21M1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21N1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21O1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21P1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21Q1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX21R1  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No sexual relation/section 26 questions aske'
             8 '(8) Don''t know' /
   H1RX22A1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22B1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22C1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22D1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22E1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22F1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22G1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22H1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22I1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22J1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22K1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22L1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22M1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22N1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22O1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22P1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22Q1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX22R1  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No sexual relation/section 26 questions ask'
             /
   H1RX24A1  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             6 '(6) Refused (skip to next partner/section)'
             7 '(7) Legitimate skip (didn''t retain card O)'
             8 '(8) Don''t know (skip to next partner/section)' /
   H1RX25M1  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RX25Y1  89 '(89) 1989' 90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992'
             93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RX26M1  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RX26Y1  91 '(91) 1991' 92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994'
             95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RX27_1  1 '(1) Once' 2 '(2) More than once (skip to Q.31)'
             6 '(6) Refused (skip to Q.31)'
             7 '(7) Legit skip (1st intercourse date/not recent intercourse'
             /
   H1RX28_1  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             7 '(7) Legitimate skip (had intercourse more than once/same mon'
             /
   H1RX29A1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 11 '(11) Depo Provera'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX29B1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 11 '(11) Depo Provera'
             14 '(14) No other method' 96 '(96) Refused'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX29C1  12 '(12) Contraceptive film' 14 '(14) No other method'
             97 '(97) Legitimate skip (used only one birth control method)' /
   H1RX30_1  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RX31_1  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             6 '(6) Refused (skip to next partner/section)'
             7 '(7) Legitimate skip (had intercourse only once)' /
   H1RX32_1  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1RX33A1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX33B1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX33C1  1 '(1) Condoms (rubbers)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 9 '(9) Norplant'
             14 '(14) No other method'
             97 '(97) Legitimate skip (used only one birth control method)' /
   H1RX34_1  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RX35_1  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (used only one method)' /
   H1RX36_1  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             7 '(7) Legitimate skip (intercourse in only one month)' /
   H1RX37_1  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1RX38A1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 11 '(11) Depo Provera'
             13 '(13) Some other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX38B1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 5 '(5) Vaginal sponge'
             7 '(7) Diaphragm, with/without jelly' 9 '(9) Norplant'
             11 '(11) Depo Provera' 13 '(13) Some other method'
             14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX38C1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             6 '(6) Foam/jelly/creme/suppositories'
             12 '(12) Contraceptive film' 14 '(14) No other method'
             97 '(97) Legitimate skip (used only one birth control method)'
             98 '(98) Don''t know' /
   H1RX39_1  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RX40_1  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (used only one method)'
             8 '(8) Don''t know' /
   H1RX41_1  9996 '(9996) Refused'
         9997 '(9997) Legitimate skip (didn''t use birth control/Q.36 not=ye'
             9998 '(9998) Don''t know' /
   H1NR13_1  97 '(97) Legitimate skip (never had a sexual relationship)'
             98 '(98) Don''t know' /
   H1NR14_1  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR15_1  1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)' /
   H1NR16_1  0 '(0) No (skip to Q.18)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.18)'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know (skip to Q.18)' /
   H1NR17A1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (never had a sexual relationship)' /
   H1NR17B1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (never had a sexual relationship)' /
   H1NR17C1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (never had a sexual relationship)' /
   H1NR17D1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (never had a sexual relationship)' /
   H1NR17E1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (never had a sexual relationship)' /
   H1NR17F1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (never had a sexual relationship)' /
   H1NR18A1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)' /
   H1NR18B1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)' /
   H1NR18C1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)' /
   H1NR18D1  0 '(0) Not marked' 1 '(1) Marked (ask Q.19)' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)' /
   H1NR18E1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)' /
   H1NR19A1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19B1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19C1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19D1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19E1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19F1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19G1  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR20A1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20B1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20C1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20D1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20E1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20F1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20G1  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20H1  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR21_1  1 '(1) In your neighborhood' 2 '(2) Not in your neighborhood'
             6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR22_1  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legit skip (never had sexual relationship/same sex partn'
             /
   H1NR23M1  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (never had a sexual relationship)'
             98 '(98) Don''t know' /
   H1NR23Y1  78 '(78) 1978' 79 '(79) 1979' 88 '(88) 1988' 89 '(89) 1989'
             90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992' 93 '(93) 1993'
             94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (never had a sexual relationship)'
             98 '(98) Don''t know' /
   H1NR24M1  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (never had a sexual relationship)'
             98 '(98) Don''t know' /
   H1NR24Y1  88 '(88) 1988' 89 '(89) 1989' 90 '(90) 1990' 91 '(91) 1991'
             92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995'
             96 '(96) Refused'
             97 '(97) Legitimate skip (never had a sexual relationship)'
             98 '(98) Don''t know' /
   H1NR25_1  1 '(1) Once' 2 '(2) More than once (skip to Q.29)'
             6 '(6) Refused'
             7 '(7) Legit skip (1st intercourse date/not=recent intercourse'
             8 '(8) Don''t know' /
   H1NR26_1  0 '(0) No (skip to Q.42)' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t have sexual intercourse)' /
   H1NR27A1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 9 '(9) Norplant'
             11 '(11) Depo Provera' 13 '(13) Some other method'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know (skip to Q.28)' /
   H1NR27B1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             11 '(11) Depo Provera' 14 '(14) No other method'
             96 '(96) Refused' 97 '(97) Legitimate skip' /
   H1NR27C1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             13 '(13) Some other method' 14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR28_1  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR29_1  0 '(0) No (skip to Q.42)' 1 '(1) Yes'
             7 '(7) Legitimate skip (had intercourse only once)' /
   H1NR30_1  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR31A1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 9 '(9) Norplant'
             11 '(11) Depo Provera' 13 '(13) Some other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR31B1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             6 '(6) Foam/jelly/creme/suppositories' 10 '(10) Ring'
             13 '(13) Some other method' 14 '(14) No other method'
             96 '(96) Refused'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know' /
   H1NR31C1  2 '(2) Withdrawal' 4 '(4) Birth control pills'
             6 '(6) Foam/jelly/creme/suppositories' 9 '(9) Norplant'
             10 '(10) Ring' 12 '(12) Contraceptive film'
             14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR32_1  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR33_1  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR34_1  0 '(0) No (skip to Q.42)' 1 '(1) Yes'
             7 '(7) Legitimate skip (intercourse in only one month)' /
   H1NR35_1  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR36A1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             6 '(6) Foam/jelly/creme/suppositories' 9 '(9) Norplant'
             11 '(11) Depo Provera' 13 '(13) Some other method'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know (skip to Q.42)' /
   H1NR36B1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 5 '(5) Vaginal sponge'
             6 '(6) Foam/jelly/creme/suppositories'
             8 '(8) IUD (intrauterine device)' 14 '(14) No other method'
             96 '(96) Refused'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know' /
   H1NR36C1  2 '(2) Withdrawal' 3 '(3) Rhythm (safe time)'
             4 '(4) Birth control pills' 5 '(5) Vaginal sponge'
             6 '(6) Foam/jelly/creme/suppositories' 10 '(10) Ring'
             11 '(11) Depo Provera' 14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR37_1  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR38_1  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (didn''t use birth control)'
             8 '(8) Don''t know' /
   H1NR39_1  997 '(997) Legitimate skip (didn''t use birth control)'
             998 '(998) Don''t know' /
   H1NR40_1  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (partner is female)' /
   H1NR41_1  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (partner is female)' /
   H1NR42_1  0 '(0) No (skip to Q.44)' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1NR43_1  97 '(97) Legitimate skip' /
   H1NR10_2  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR11_2  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR12_2  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   NRRXFLG2  1 '(1) Yes' /
   H1RX1M_2  0 '(0) You don''t consider this person a special friend'
             1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   H1RX1Y_2  0 '(0) You don''t consider this person a special friend'
             89 '(89) 1989' 90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992'
             93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip' 98 '(98) Don''t know' /
   H1RX2_2   85 '(85) 1985' 89 '(89) 1989' 90 '(90) 1990' 91 '(91) 1991'
             92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995'
             96 '(96) Refused' 97 '(97) Legitimate skip (month/year given)'
             98 '(98) Don''t know' /
   H1RX3_2   96 '(96) Refused' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   H1RX4_2   15 '(15) 15 years old' 96 '(96) Refused'
             97 '(97) Legitimate skip (age of partner given)'
             98 '(98) Don''t know' /
   H1RX5A_2  3 '(3) 1st to 3rd' 5 '(5) 5th' 6 '(6) 6th' 7 '(7) 7th'
             8 '(8) 8th' 9 '(9) 9th' 10 '(10) 10th' 11 '(11) 11th'
             12 '(12) 12th' 13 '(13) Beyond high school'
             14 '(14) {INITIALS} wasn''t in school (skip to Q.7)'
             15 '(15) {INITIALS} was in school/but don''t know what grade'
           16 '(16) Don''t know whether {INITIALS} was in school (skip to Q.'
             96 '(96) Refused' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   H1RX6_2   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (partner not in school)'
             8 '(8) Don''t know' /
   H1RX7_2   1 '(1) In your neighborhood' 2 '(2) Not in your neighborhood'
             6 '(6) Refused' 7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1RX8A_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1RX8B_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1RX8C_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1RX8D_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1RX8E_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1RX8F_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1RX8G_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1RX8H_2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1RX9_2   1 '(1) All of them' 2 '(2) Most of them' 3 '(3) A few of them'
             4 '(4) One of them' 5 '(5) None of them'
             6 '(6) When relationship w/{INITIALS} began/no close friends'
             96 '(96) Refused'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             98 '(98) Don''t know' /
   H1RX10_2  0 '(0) No' 1 '(1) Yes (skip to Q.14)' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX11M2  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (relationship still going on)'
             98 '(98) Don''t know' /
   H1RX11Y2  89 '(89) 1989' 91 '(91) 1991' 92 '(92) 1992' 93 '(93) 1993'
             94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (relationship still going on)'
             98 '(98) Don''t know' /
   H1RX12_2  93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (month relationship ended given)'
             98 '(98) Don''t know' /
   H1RX13_2  1 '(1) In your neighborhood' 2 '(2) Not in your neighborhood'
             6 '(6) Refused'
             7 '(7) Legitimate skip (relationship still going on)' /
   H1RX14_2  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX15_2  5 '(5) 1st to 5th' 6 '(6) 6th' 7 '(7) 7th' 8 '(8) 8th'
             9 '(9) 9th' 10 '(10) 10th' 11 '(11) 11th' 12 '(12) 12th'
            13 '(13) {INITIALS} graduated from H.S./in another kind of schoo'
            14 '(14) {INITIALS} has graduated from high school/is out of sch'
             15 '(15) {INITIALS} has dropped out of school'
             16 '(16) {INITIALS} is in school/but don''t know what grade'
             17 '(17) You don''t know whether {INITIALS} is in school'
             96 '(96) Refused'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             98 '(98) Don''t know' /
   H1RX16_2  0 '(0) No (skip to Q.18)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.18)'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know (skip to Q.18)' /
   H1RX17A2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1RX17B2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1RX17C2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1RX17D2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1RX17E2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1RX17F2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1RX18A2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX18B2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX18C2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX18D2  0 '(0) Not marked' 1 '(1) Marked (ask Q.19)' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX18E2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX19A2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19B2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19C2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19D2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19E2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19F2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19G2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX20_2  1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21A2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21B2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21C2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21D2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21E2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21F2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21G2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21H2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21I2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21J2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21K2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21L2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21M2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21N2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21O2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21P2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21Q2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX21R2  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (No/one sexual relation/section 26 questions'
             8 '(8) Don''t know' /
   H1RX22A2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22B2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22C2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22D2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22E2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22F2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22G2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22H2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22I2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22J2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22K2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22L2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22M2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22N2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22O2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22P2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22Q2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX22R2  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (No/one sexual relation/section 26 questions'
             /
   H1RX24A2  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             6 '(6) Refused (skip to next partner/section)'
             7 '(7) Legitimate skip (didn''t retain card O)' /
   H1RX25M2  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RX25Y2  90 '(90) 1990' 92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994'
             95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RX26M2  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RX26Y2  92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995'
             96 '(96) Refused'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RX27_2  1 '(1) Once' 2 '(2) More than once (skip to Q.31)'
             6 '(6) Refused (skip to Q.31)'
             7 '(7) Legit skip (1st intercourse date/not=recent intercourse'
             /
   H1RX28_2  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             7 '(7) Legit skip (had intercourse more than once in same month'
             /
   H1RX29A2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX29B2  2 '(2) Withdrawal' 4 '(4) Birth control pills'
             14 '(14) Not other method'
             97 '(97) Legitimate skip (used only one birth control method)' /
   H1RX29C2  12 '(12) Contraceptive film' 14 '(14) Not other method'
             97 '(97) Legitimate skip (used only one birth control method)' /
   H1RX30_2  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RX31_2  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             6 '(6) Refused (skip to next partner/section)'
             7 '(7) Legitimate skip (intercourse only once in same month)' /
   H1RX32_2  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1RX33A2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             11 '(11) Depo Provera'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX33B2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 5 '(5) Vaginal sponge'
             12 '(12) Contraceptive film' 14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX33C2  1 '(1) Condoms (rubbers)' 14 '(14) No other method'
             96 '(96) Refused'
             97 '(97) Legitimate skip (used only one birth control method)' /
   H1RX34_2  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RX35_2  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             6 '(6) Refused' 7 '(7) Legitimate skip (used only one method)' /
   H1RX36_2  0 '(0) No (skip to next partner/section)' 1 '(1) Yes'
             7 '(7) Legitimate skip (intercourse in only one month)'
             8 '(8) Don''t know (skip to next partner/section)' /
   H1RX37_2  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1RX38A2  1 '(1) Condoms (rubbers)' 4 '(4) Birth control pills'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX38B2  2 '(2) Withdrawal' 3 '(3) Rhythm (safe time)'
             4 '(4) Birth control pills'
             6 '(6) Foam/jelly/creme/suppositories'
             12 '(12) Contraceptive film' 14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX38C2  2 '(2) Withdrawal' 4 '(4) Birth control pills'
             7 '(7) Diaphragm, with/without jelly'
             13 '(13) Some other method' 14 '(14) No other method'
             97 '(97) Legitimate skip (used only one birth control method)' /
   H1RX39_2  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RX40_2  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (used only one method)' /
   H1RX41_2
         9997 '(9997) Legitimate skip (didn''t use birth control/Q.36 not=ye'
             9998 '(9998) Don''t know' /
   H1NR13_2  96 '(96) Refused'
             97 '(97) Legitimate skip (never had a sexual relationship)'
             98 '(98) Don''t know' /
   H1NR14_2  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR15_2  1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR16_2  0 '(0) No (skip to Q.18)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.18)'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know (skip to Q.18)' /
   H1NR17A2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1NR17B2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1NR17C2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1NR17D2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1NR17E2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1NR17F2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' 8 '(8) Don''t know' /
   H1NR18A2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR18B2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR18C2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR18D2  0 '(0) Not marked' 1 '(1) Marked (ask Q.19)' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR18E2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR19A2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19B2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19C2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19D2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19E2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19F2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19G2  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR20A2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20B2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20C2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20D2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20E2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20F2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20G2  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20H2  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR21_2  1 '(1) In your neighborhood' 2 '(2) Not in your neighborhood'
             6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR22_2  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legit skip (never had sexual relationship/same sex partn'
             8 '(8) Don''t know' /
   H1NR23M2  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (never had a sexual relationship)'
             98 '(98) Don''t know' /
   H1NR23Y2  89 '(89) 1989' 90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992'
             93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (never had a sexual relationship)'
             98 '(98) Don''t know' /
   H1NR24M2  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (never had a sexual relationship)'
             98 '(98) Don''t know' /
   H1NR24Y2  81 '(81) 1981' 89 '(89) 1989' 90 '(90) 1990' 91 '(91) 1991'
             92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995'
             96 '(96) Refused'
             97 '(97) Legitimate skip (never had a sexual relationship)'
             98 '(98) Don''t know' /
   H1NR25_2  1 '(1) Once' 2 '(2) More than once (skip to Q.29)'
             6 '(6) Refused'
             7 '(7) Legit skip (1st intercourse date/not=recent intercourse'
             8 '(8) Don''t know' /
   H1NR26_2  0 '(0) No (skip to Q.42)' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t have sexual intercourse)' /
   H1NR27A2  1 '(1) Condoms (rubbers)' 4 '(4) Birth control pills'
             11 '(11) Depo Provera'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR27B2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             6 '(6) Foam/jelly/creme/suppositories'
             8 '(8) IUD (intrauterine device)' 14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR27C2  4 '(4) Birth control pills' 5 '(5) Vaginal sponge'
             6 '(6) Foam/jelly/creme/suppositories' 9 '(9) Norplant'
             11 '(11) Depo Provera' 14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR28_2  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR29_2  0 '(0) No (skip to Q.42)' 1 '(1) Yes'
             7 '(7) Legitimate skip (had intercourse only once)' /
   H1NR30_2  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR31A2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR31B2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 11 '(11) Depo Provera'
             13 '(13) Some other method' 14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR31C2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 5 '(5) Vaginal sponge'
             13 '(13) Some other method' 14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know' /
   H1NR32_2  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR33_2  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR34_2  0 '(0) No (skip to Q.39)' 1 '(1) Yes'
             7 '(7) Legitimate skip (intercourse in only one month)' /
   H1NR35_2  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR36A2  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 8 '(8) IUD (intrauterine device)'
             13 '(13) Some other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR36B2  2 '(2) Withdrawal' 4 '(4) Birth control pills'
             5 '(5) Vaginal sponge' 6 '(6) Foam/jelly/creme/suppositories'
             12 '(12) Contraceptive film' 14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR36C2  1 '(1) Condoms (rubbers)' 3 '(3) Rhythm (safe time)'
             6 '(6) Foam/jelly/creme/suppositories'
             7 '(7) Diaphragm, with/without jelly'
             8 '(8) IUD (intrauterine device)' 9 '(9) Norplant'
             14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR37_2  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR38_2  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (didn''t use birth control)'
             8 '(8) Don''t know' /
   H1NR39_2  997 '(997) Legitimate skip (didn''t use birth control)'
             998 '(998) Don''t know' /
   H1NR40_2  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (partner is female)' /
   H1NR41_2  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (partner is female)' /
   H1NR42_2  0 '(0) No (skip to Q.44)' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1NR43_2  1 '(1) 1 time' 2 '(2) 2 times' 4 '(4) 4 times'
             97 '(97) Legitimate skip' /
   H1NR10_3  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR11_3  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR12_3  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   NRRXFLG3  0 '(0) No' 1 '(1) Yes' /
   H1RX1M_3  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             98 '(98) Don''t know' /
   H1RX1Y_3  89 '(89) 1989' 92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994'
             95 '(95) 1995'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             98 '(98) Don''t know' /
   H1RX2_3   93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995'
             97 '(97) Legitimate skip (month/year given)'
             98 '(98) Don''t know' /
   H1RX3_3
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX4_3   97 '(97) Legitimate skip (age of partner given)' /
   H1RX5A_3  3 '(3) 1st to 3rd' 6 '(6) 6th' 8 '(8) 8th' 9 '(9) 9th'
             10 '(10) 10th' 11 '(11) 11th' 12 '(12) 12th'
             13 '(13) Beyond high school'
             14 '(14) {INITIALS} wasn''t in school (skip to Q.7)'
           16 '(16) You don''t know whether {INITIALS} is in school (skip to'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX6_3   0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (partner not in school)' /
   H1RX7_3   1 '(1) In your neighborhood' 2 '(2) Not in your neighborhood'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX8A_3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX8B_3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX8C_3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX8D_3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX8E_3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX8F_3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX8G_3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX8H_3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX9_3   1 '(1) All of them' 2 '(2) Most of them' 3 '(3) A few of them'
             4 '(4) One of them' 5 '(5) None of them'
             6 '(6) When relationship w/{INITIALS} began/no close friends'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX10_3  0 '(0) No' 1 '(1) Yes (skip to Q.14)'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX11M3  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December'
             97 '(97) Legitimate skip (relationship still going on)'
             98 '(98) Don''t know' /
   H1RX11Y3  93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995'
             97 '(97) Legitimate skip (relationship still going on)'
             98 '(98) Don''t know' /
   H1RX12_3  93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (month relationship ended given)'
             98 '(98) Don''t know' /
   H1RX13_3  1 '(1) In your neighborhood' 2 '(2) Not in your neighborhood'
             7 '(7) Legitimate skip (relationship still going on)'
             8 '(8) Don''t know' /
   H1RX14_3  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1RX15_3  5 '(5) 1st to 5th' 7 '(7) 7th' 8 '(8) 8th' 9 '(9) 9th'
             10 '(10) 10th' 11 '(11) 11th' 12 '(12) 12th'
            13 '(13) {INITIALS} graduated from H.S./in another kind of schoo'
            14 '(14) {INITIALS} has graduated from high school/is out of sch'
             17 '(17) You don''t know whether {INITIALS} is in school'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX16_3  0 '(0) No (skip to Q.18)' 1 '(1) Yes'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX17A3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1RX17B3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1RX17C3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1RX17D3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1RX17E3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1RX17F3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1RX18A3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX18B3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX18C3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX18D3  0 '(0) Not marked' 1 '(1) Marked (ask Q.19)'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX18E3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX19A3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19B3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19C3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19D3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19E3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19F3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX19G3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1RX20_3  1 '(1) Male' 2 '(2) Female'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             /
   H1RX21A3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21B3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21C3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21D3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21E3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21F3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21G3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21H3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21I3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21J3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21K3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21L3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21M3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21N3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21O3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21P3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21Q3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX21R3  0 '(0) Card rejected' 1 '(1) Card kept' 6 '(6) Refused'
             7 '(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske'
             8 '(8) Don''t know' /
   H1RX22A3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22B3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22C3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22D3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22E3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22F3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22G3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22H3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22I3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22J3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22K3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22L3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22M3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22N3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22O3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22P3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22Q3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX22R3  1 '(1) We went out together in a group'
             2 '(2) I met my partner''s parents'
             3 '(3) I told other people that we were a couple'
             4 '(4) Saw less of friends/so I could spend more time w/partner'
             5 '(5) We went out together alone' 6 '(6) We held hands'
             7 '(7) I gave my partner a present'
             8 '(8) My partner game me a present'
             9 '(9) I told my partner I loved him/her'
             10 '(10) My partner told me that s/he loved me'
             11 '(11) We thought of ourselves as a couple'
             12 '(12) We talked about contraception/STDs' 13 '(13) We kissed'
            14 '(14) We touched each other under clothing/with no clothes on'
             15 '(15) We had sexual intercourse'
             16 '(16) We touched each others'' genitals (private parts)'
             17 '(17) My partner/I got pregnant' 18 '(18) We got married'
            97 '(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask'
             /
   H1RX24A3  0 '(0) No (skip to next section)' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t retain card O)' /
   H1RX25M3  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RX25Y3  89 '(89) 1989' 92 '(92) 1992' 94 '(94) 1994' 95 '(95) 1995'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RX26M3  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RX26Y3  89 '(89) 1989' 93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995'
             97 '(97) Legitimate skip (intercourse not confirmed)'
             98 '(98) Don''t know' /
   H1RX27_3  1 '(1) Once' 2 '(2) More than once (skip to Q.31)'
             7 '(7) Legit skip (1st intercourse date/not=recent intercourse'
             /
   H1RX28_3  0 '(0) No (skip to next section)' 1 '(1) Yes'
             7 '(7) Legit skip (had intercourse more than once in same month'
             /
   H1RX29A3  1 '(1) Condoms (rubbers)'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX29B3  14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX29C3  97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX30_3  7 '(7) Legitimate skip (used condoms)' /
   H1RX31_3  0 '(0) No (skip to next section)' 1 '(1) Yes'
             7 '(7) Legitimate skip (had intercourse only once)' /
   H1RX32_3  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1RX33A3  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 5 '(5) Vaginal sponge'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX33B3  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX33C3  1 '(1) Condoms (rubbers)'
             97 '(97) Legitimate skip (used only one birth control method)'
             98 '(98) Don''t know' /
   H1RX34_3  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RX35_3  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (used only one method)' /
   H1RX36_3  0 '(0) No (skip to next section)' 1 '(1) Yes'
             7 '(7) Legitimate skip (intercourse in only one month)' /
   H1RX37_3  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1RX38A3  1 '(1) Condoms (rubbers)' 4 '(4) Birth control pills'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX38B3  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             3 '(3) Rhythm (safe time)' 4 '(4) Birth control pills'
             14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1RX38C3  5 '(5) Vaginal sponge' 14 '(14) No other method'
             97 '(97) Legitimate skip (used only one birth control method)' /
   H1RX39_3  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip (used condoms)' /
   H1RX40_3  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (used only one method)' /
   H1RX41_3  9997 '(9997) Legitimate skip' /
   H1NR13_3  96 '(96) Refused'
             97 '(97) Legitimate skip (never had a sexual relationship)'
             98 '(98) Don''t know' /
   H1NR14_3  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR15_3  1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR16_3  0 '(0) No (skip to Q.18)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.18)'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know (skip to Q.18)' /
   H1NR17A3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1NR17B3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1NR17C3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1NR17D3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1NR17E3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1NR17F3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Hispanic)' /
   H1NR18A3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR18B3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR18C3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR18D3  0 '(0) Not marked' 1 '(1) Marked (ask Q.19)' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR18E3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR19A3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19B3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19C3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19D3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19E3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19F3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR19G3  0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   H1NR20A3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20B3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20C3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20D3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20E3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20F3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20G3  0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR20H3  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR21_3  1 '(1) In your neighborhood' 2 '(2) Not in your neighborhood'
             6 '(6) Refused'
             7 '(7) Legitimate skip (never had a sexual relationship)'
             8 '(8) Don''t know' /
   H1NR22_3  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legit skip (never had sexual relationship/same sex partn'
             8 '(8) Don''t know' /
   H1NR23M3  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (never had a sexual relationship)'
             98 '(98) Don''t know' /
   H1NR23Y3  81 '(81) 1981' 89 '(89) 1989' 90 '(90) 1990' 91 '(91) 1991'
             92 '(92) 1992' 93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995'
             96 '(96) Refused'
             97 '(97) Legitimate skip (never had a sexual relationship)'
             98 '(98) Don''t know' /
   H1NR24M3  1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (never had a sexual relationship)'
             98 '(98) Don''t know' /
   H1NR24Y3  81 '(81) 1981' 89 '(89) 1989' 90 '(90) 1990' 92 '(92) 1992'
             93 '(93) 1993' 94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (never had a sexual relationship)'
             98 '(98) Don''t know' /
   H1NR25_3  1 '(1) Once' 2 '(2) More than once (skip to Q.29)'
             6 '(6) Refused'
             7 '(7) Legit skip (1st intercourse date/not=recent intercourse'
             8 '(8) Don''t know' /
   H1NR26_3  0 '(0) No (skip to Q.42)' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t have sexual intercourse)' /
   H1NR27A3  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR27B3  2 '(2) Withdrawal' 4 '(4) Birth control pills'
             12 '(12) Contraceptive film' 14 '(14) No other method'
             96 '(96) Refused'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR27C3  1 '(1) Condoms (rubbers)' 11 '(11) Depo Provera'
             14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know' /
   H1NR28_3  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR29_3  0 '(0) No (skip to Q.42)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.42)'
             7 '(7) Legitimate skip (had intercourse only once)' /
   H1NR30_3  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR31A3  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 9 '(9) Norplant'
             11 '(11) Depo Provera'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR31B3  2 '(2) Withdrawal' 4 '(4) Birth control pills'
             14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR31C3  3 '(3) Rhythm (safe time)'
             97 '(97) Legitimate skip (didn''t use birth control)'
             98 '(98) Don''t know' /
   H1NR32_3  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR33_3  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR34_3  0 '(0) No (skip to Q.42)' 1 '(1) Yes'
             7 '(7) Legitimate skip (intercourse in only one month)' /
   H1NR35_3  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR36A3  1 '(1) Condoms (rubbers)' 4 '(4) Birth control pills'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR36B3  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR36C3  4 '(4) Birth control pills' 13 '(13) Some other method'
             14 '(14) No other method'
             97 '(97) Legitimate skip (didn''t use birth control)' /
   H1NR37_3  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR38_3  1 '(1) Used more than one method at same time'
             2 '(2) Used one method at time/method varied time-to-time'
             3 '(3) Sometimes only one method/sometimes more than one'
             7 '(7) Legitimate skip (didn''t use birth control)' /
   H1NR39_3  997 '(997) Legitimate skip (didn''t use birth control)' /
   H1NR40_3  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (partner is female)' /
   H1NR41_3  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (partner is female)' /
   H1NR42_3  0 '(0) No (skip to Q.44)' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (intercourse in only one month)' /
   H1NR43_3  1 '(1) 1 time' 97 '(97) Legitimate skip' /
   H1NR44    0 '(0) No (skip to Q.54)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.54)'
             7 '(7) Legitimate skip (didn''t answer yes to Q.5)'
             8 '(8) Don''t know (skip to Q.54)' /
   H1NR45    96 '(96) Refused' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   H1NR46    96 '(96) Refused' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   H1NR47    1 '(1) Male' 2 '(2) Female' 6 '(6) Refused'
             7 '(7) Legitimate skip' /
   H1NR48    0 '(0) Never' 1 '(1) Rarely' 2 '(2) Sometimes' 3 '(3) Often'
             4 '(4) Always' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NR49    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1NR50    96 '(96) Refused' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   H1NR51    96 '(96) Refused' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1NR52    0 '(0) Never' 1 '(1) Rarely' 2 '(2) Sometimes' 3 '(3) Often'
             4 '(4) Always' 6 '(6) Refused' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   H1NR53    1 '(1) All male' 2 '(2) All female'
             3 '(3) Some male/some female' 7 '(7) Legitimate skip' /
   RXCARD1   0 '(0) No problems with ordered cards'
             1 '(1) Reserve code in ordered sequence/resulting in recoding'
             2 '(2) Inconsistent data in ordered sequence/resulting in recod'
             3 '(3) Inconsistent data/reserve code resulting in recoding'
             4 '(4) All cards=96/98/99/system missing'
             7 '(7) Legitimate skip/no cards ordered' /
   RXCARD2   0 '(0) No problems with ordered cards'
             1 '(1) Reserve code in ordered sequence/resulting in recoding'
             2 '(2) Inconsistent data in ordered sequence/resulting in recod'
             3 '(3) Inconsistent data/reserve code resulting in recoding'
             4 '(4) All cards=96/98/99/system missing'
             7 '(7) Legitimate skip/no cards ordered' /
   RXCARD3   0 '(0) No problems with ordered cards'
             1 '(1) Reserve code in ordered sequence/resulting in recoding'
             2 '(2) Inconsistent data in ordered sequence/resulting in recod'
             3 '(3) Inconsistent data/reserve code resulting in recoding'
             4 '(4) All cards=96/98/99/system missing'
             7 '(7) Legitimate skip/no cards ordered' /
   H1BC1     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (sex=no or age <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1BC2     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (sex=no or age <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1BC3     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (sex=no or age <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1BC4     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (sex=no or age <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1BC5     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (sex=no or age <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1BC6     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (sex=no or age <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1BC7     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (sex=no or age <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1BC8     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Refused'
             7 '(7) Legitimate skip (sex=no or age <15)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1TO1     0 '(0) No (skip to Q.9)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.9)' 8 '(8) Don''t know (skip to Q.9)'
             9 '(9) Not applicable (skip to Q.9)' /
   H1TO2     0 '(0) Never smoked a whole cigarette (skip to Q.9)'
             1 '(1) 1 year' 2 '(2) 2 years' 4 '(4) 3-4 years' 5 '(5) 5 years'
             6 '(6) 6 years' 7 '(7) 7 years' 8 '(8) 8 years' 9 '(9) 9 years'
             10 '(10) 10 years' 11 '(11) 11 years' 12 '(12) 12 years'
             13 '(13) 13 years' 14 '(14) 14 years' 15 '(15) 15 years'
             16 '(16) 16 years' 17 '(17) 17 years' 18 '(18) 18 years'
             19 '(19) 19 years' 20 '(20) 20 years' 96 '(96) Refused'
             97 '(97) Legitimate skip (never tried smoking cigarettes)'
             98 '(98) Don''t know' /
   H1TO3     0 '(0) No (skip to Q.5)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.5)'
             7 '(7) Legitimate skip (never smoked a whole cigarette)' /
   H1TO4     0 '(0) Under one year' 1 '(1) 1 year' 2 '(2) 2 years'
             5 '(5) 2-5 years' 6 '(6) 6 years' 7 '(7) 7 years'
             8 '(8) 8 years' 9 '(9) 9 years' 10 '(10) 10 years'
             11 '(11) 11 years' 12 '(12) 12 years' 13 '(13) 13 years'
             14 '(14) 14 years' 15 '(15) 15 years' 16 '(16) 16 years'
             17 '(17) 17 years' 18 '(18) 18 years and older'
             96 '(96) Refused'
             97 '(97) Legitimate skip (never smoked regular)'
             98 '(98) Don''t know' /
   H1TO5     0 '(0) No days' 96 '(96) Refused (skip to Q.7)'
             97 '(97) Legitimate skip (never smoked regular)'
             98 '(98) Don''t know (skip to Q.7)' /
   H1TO6M    1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1TO6Y    77 '(77) 1976 to 1977' 79 '(79) 1978 to 1979' 80 '(80) 1980'
             82 '(82) 1981 to 1982' 84 '(84) 1983 to 1984' 85 '(85) 1985'
             86 '(86) 1986' 87 '(87) 1987' 88 '(88) 1988' 89 '(89) 1989'
             90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992' 93 '(93) 1993'
             94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip' 98 '(98) Don''t know'
             99 '(99) Not applicable' /
   H1TO7     0 '(0) No cigarettes' 96 '(96) Refused'
           97 '(97) Legit skip (never smoked regularly/didn''t smoke past 30'
             98 '(98) Don''t know' /
   H1TO8     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
            7 '(7) Legit skip (never smoked regularly/didn''t smoke past 30d'
             8 '(8) Don''t know' /
   H1TO9     0 '(0) No friends' 1 '(1) One friend' 2 '(2) Two friends'
             3 '(3) Three friends' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1TO10    0 '(0) No days (If 0/skip to Q.12)'
             96 '(96) Refused (skip to Q.12)'
             97 '(97) Legit skip (skip to Q.12)'
             98 '(98) Don''t know (skip to Q.12)'
             99 '(99) Not applicable (skip to Q.12)' /
   H1TO11    0 '(0) Under one year' 1 '(1) 1 year' 2 '(2) 2 years'
             3 '(3) 3 years' 4 '(4) 4 years' 5 '(5) 5 years' 6 '(6) 6 years'
             7 '(7) 7 years' 8 '(8) 8 years' 9 '(9) 9 years'
             10 '(10) 10 years' 11 '(11) 11 years' 12 '(12) 12 years'
             13 '(13) 13 years' 14 '(14) 14 years' 15 '(15) 15 years'
             16 '(16) 16 years' 17 '(17) 17 years'
             18 '(18) 18 years and older' 96 '(96) Refused'
             97 '(97) Legitimate skip (didn''t use chewing tobacco/snuff)'
             98 '(98) Don''t know' /
   H1TO12    0 '(0) No (skip to Q.29)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.29)'
             8 '(8) Don''t know (skip to Q.29)'
             9 '(9) Not applicable (skip to Q.29)' /
   H1TO13    0 '(0) No (skip to Q.15)' 1 '(1) Yes'
             7 '(7) Legitimate skip (hasn''t had a drink)'
             8 '(8) Don''t know (skip to Q.29)' /
   H1TO14    1 '(1) 1 year' 2 '(2) 2 years' 3 '(3) 3 years' 4 '(4) 4 years'
             5 '(5) 5 years' 6 '(6) 6 years' 7 '(7) 7 years' 8 '(8) 8 years'
             9 '(9) 9 years' 10 '(10) 10 years' 11 '(11) 11 years'
             12 '(12) 12 years' 13 '(13) 13 years' 14 '(14) 14 years'
             15 '(15) 15 years' 16 '(16) 16 years' 17 '(17) 17 years'
             18 '(18) 18 years' 19 '(19) 19 years and older'
             96 '(96) Refused'
           97 '(97) Legitimate skip (hasn''t had a drink/drunk when not with'
             98 '(98) Don''t know' /
   H1TO15    1 '(1) Every day/almost every day' 2 '(2) 3-5 days/week'
             3 '(3) 1 or 2 days/week' 4 '(4) 2 or 3 days/month'
             5 '(5) Once a month or less (3-12 times in past 12 months)'
             6 '(6) 1 or 2 days in past 12 months'
             7 '(7) Never (skip to Q.29)' 96 '(96) Refused (skip to Q.29)'
             97 '(97) Legitimate skip (hasn''t had a drink)'
             98 '(98) Don''t know (skip to Q.29)' /
   H1TO16    96 '(96) Refused'
             97 '(97) Legitimate skip (hasn''t drunk in past 12 months)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1TO17    1 '(1) Every day/almost every day' 2 '(2) 3-5 days/week'
             3 '(3) 1 or 2 days/week' 4 '(4) 2 or 3 days/month'
             5 '(5) Once a month or less (3-12 times in past 12 months)'
             6 '(6) 1 or 2 days in past 12 months' 7 '(7) Never'
             96 '(96) Refused'
             97 '(97) Legitimate skip (hasn''t drunk in past 12 months)'
             98 '(98) Don''t know' /
   H1TO18    1 '(1) Every day/almost every day' 2 '(2) 3-5 days/week'
             3 '(3) 1 or 2 days/week' 4 '(4) 2 or 3 days/month'
             5 '(5) Once a month or less (3-12 times in past 12 months)'
             6 '(6) 1 or 2 days in past 12 months' 7 '(7) Never'
             96 '(96) Refused'
             97 '(97) Legitimate skip (hasn''t drunk in past 12 months)'
             98 '(98) Don''t know' /
   H1TO19    1 '(1) Beer' 2 '(2) Wine' 3 '(3) Wine coolers'
             4 '(4) Straight liquor' 5 '(5) Mixed drinks'
             6 '(6) Whatever is available' 96 '(96) Refused'
             97 '(97) Legitimate skip (hasn''t drunk in past 12 months)'
             98 '(98) Don''t know' /
   H1TO20    0 '(0) Never' 1 '(1) Once' 2 '(2) Twice' 3 '(3) 3-4 times'
             4 '(4) 5 or more times' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t drunk in past 12 months)'
             8 '(8) Don''t know' /
   H1TO21    0 '(0) Never' 1 '(1) Once' 2 '(2) Twice' 3 '(3) 3-4 times'
             4 '(4) 5 or more times' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t drunk in past 12 months)'
             9 '(9) Not applicable' /
   H1TO22    0 '(0) Never' 1 '(1) Once' 2 '(2) Twice' 3 '(3) 3-4 times'
             4 '(4) 5 or more times' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t drunk in past 12 months)' /
   H1TO23    0 '(0) Never' 1 '(1) Once' 2 '(2) Twice' 3 '(3) 3-4 times'
             4 '(4) 5 or more times' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t drunk in past 12 months)' /
   H1TO24    0 '(0) Never' 1 '(1) Once' 2 '(2) Twice' 3 '(3) 3-4 times'
             4 '(4) 5 or more times' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t drunk in past 12 months)'
             8 '(8) Don''t know' /
   H1TO25    0 '(0) Never' 1 '(1) Once' 2 '(2) Twice' 3 '(3) 3-4 times'
             4 '(4) 5 or more times' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t drunk in past 12 months)'
             8 '(8) Don''t know' /
   H1TO26    0 '(0) Never' 1 '(1) Once' 2 '(2) Twice' 3 '(3) 3-4 times'
             4 '(4) 5 or more times' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t drunk in past 12 months)'
             8 '(8) Don''t know' /
   H1TO27    0 '(0) Never' 1 '(1) Once' 2 '(2) Twice' 3 '(3) 3-4 times'
             4 '(4) 5 or more times' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t drunk in past 12 months)'
             8 '(8) Don''t know' /
   H1TO28    0 '(0) Never' 1 '(1) Once' 2 '(2) Twice' 3 '(3) 3-4 times'
             4 '(4) 5 or more times' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t drunk in past 12 months)'
             8 '(8) Don''t know' /
   H1TO29    0 '(0) No friends' 1 '(1) One friend' 2 '(2) Two friends'
             3 '(3) Three friends' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1TO30    0 '(0) You never tried marijuana' 1 '(1) 1 year' 2 '(2) 2 years'
             3 '(3) 3 years' 4 '(4) 4 years' 5 '(5) 5 years' 6 '(6) 6 years'
             7 '(7) 7 years' 8 '(8) 8 years' 9 '(9) 9 years'
             10 '(10) 10 years' 11 '(11) 11 years' 12 '(12) 12 years'
             13 '(13) 13 years' 14 '(14) 14 years' 15 '(15) 15 years'
             16 '(16) 16 years' 17 '(17) 17 years'
             18 '(18) 18 years and older' 96 '(96) Refused'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1TO31    996 '(996) Refused'
             997 '(997) Legitimate skip (hasn''t tried marijuana)'
             998 '(998) Don''t know' 999 '(999) Not applicable' /
   H1TO32    996 '(996) Refused'
             997 '(997) Legitimate skip (hasn''t tried marijuana)'
             998 '(998) Don''t know' 999 '(999) Not applicable' /
   H1TO33    0 '(0) No friends' 1 '(1) One friend' 2 '(2) Two friends'
             3 '(3) Three friends' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1TO34    0 '(0) You never tried cocaine' 1 '(1) 1 year' 2 '(2) 2 years'
             3 '(3) 3 years' 7 '(7) 4-7 years' 10 '(10) 8-10 years'
             11 '(11) 11 years' 12 '(12) 12 years' 13 '(13) 13 years'
             14 '(14) 14 years' 15 '(15) 15 years' 16 '(16) 16 years'
             17 '(17) 17 years' 18 '(18) 18 years and older'
             96 '(96) Refused' 98 '(98) Don''t know' 99 '(99) Not applicable'
             /
   H1TO35    996 '(996) Refused'
             997 '(997) Legitimate skip (never tried cocaine)'
             998 '(998) Don''t know' 999 '(999) Not applicable' /
   H1TO36    0 '(0) No times' 1 '(1) 1 time' 2 '(2) 2 times' 3 '(3) 3 times'
             4 '(4) 4 times' 5 '(5) 5 times' 10 '(10) 7-10 times'
             14 '(14) 11-14 times' 30 '(30) 15-30 times'
             33 '(33) 33 or more times' 996 '(996) Refused'
             997 '(997) Legitimate skip (never tried cocaine)'
             998 '(998) Don''t know' 999 '(999) Not applicable' /
   H1TO37    0 '(0) You never tried inhalants such as these' 1 '(1) 1 year'
             2 '(2) 2 years' 3 '(3) 3 years' 4 '(4) 4 years' 5 '(5) 5 years'
             6 '(6) 6 years' 7 '(7) 7 years' 8 '(8) 8 years' 9 '(9) 9 years'
             10 '(10) 10 years' 11 '(11) 11 years' 12 '(12) 12 years'
             13 '(13) 13 years' 14 '(14) 14 years' 15 '(15) 15 years'
             16 '(16) 16 years' 17 '(17) 17 years'
             18 '(18) 18 years and older' 96 '(96) Refused'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1TO38    996 '(996) Refused'
            997 '(997) Legitimate skip (never tried inhalants such as these)'
             998 '(998) Don''t know' 999 '(999) Not applicable' /
   H1TO39    996 '(996) Refused'
            997 '(997) Legitimate skip (never tried inhalants such as these)'
             998 '(998) Don''t know' 999 '(999) Not applicable' /
   H1TO40    0 '(0) You never tried any other type of illegal drug'
             1 '(1) 1 year' 3 '(3) 2-3 years' 6 '(6) 4-6 years'
             9 '(9) 8-9 years' 11 '(11) 10-11 years' 12 '(12) 12 years'
             13 '(13) 13 years' 14 '(14) 14 years' 15 '(15) 15 years'
             16 '(16) 16 years' 17 '(17) 17 years'
             18 '(18) 18 years and older' 96 '(96) Refused'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1TO41    996 '(996) Refused'
           997 '(997) Legitimate skip (never tried any other type of illegal'
             998 '(998) Don''t know' 999 '(999) Not applicable' /
   H1TO42    996 '(996) Refused'
           997 '(997) Legitimate skip (never tried any other type of illegal'
             998 '(998) Don''t know' 999 '(999) Not applicable' /
   H1TO43    0 '(0) No (skip to Q.50)' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never tried any other type of illegal d'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1TO44    1 '(1) Once or twice (skip to Q.50)' 2 '(2) A few times'
             3 '(3) Many times' 6 '(6) Refused'
             7 '(7) Legitimate skip (never injected an illegal drug)' /
   H1TO45    4 '(4) 1-4 years' 11 '(11) 5-11 years' 14 '(14) 12-14 years'
             15 '(15) 15 years and older' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   H1TO46    0 '(0) Never' 1 '(1) 1 time or 2 times' 2 '(2) 3 or more times'
             7 '(7) Legitimate skip' /
   H1TO47    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1TO48    0 '(0) No (skip to Q.50)' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1TO49    0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1TO50    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1TO51    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1TO52    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1TO53    0 '(0) No (skip to next section)' 1 '(1) Yes'
             6 '(6) Refused (skip to next section)'
             8 '(8) Don''t know (skip to next section)'
             9 '(9) Not applicable (skip to next section)' /
   H1TO54A   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (gun not available)' 8 '(8) Don''t know'
             /
   H1TO54B   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (gun not available)' 8 '(8) Don''t know'
             /
   H1TO54C   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (gun not available)' 8 '(8) Don''t know'
             /
   H1TO54D   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (gun not available)' 8 '(8) Don''t know'
             /
   H1DS1     0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1DS2     0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1DS3     0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1DS4     0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1DS5     0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1DS6     0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1DS7     0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1DS8     0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1DS9     0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1DS10    0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1DS11    0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1DS12    0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1DS13    0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1DS14    0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1DS15    0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 or 4 times'
             3 '(3) 5 or more times' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1JO1     0 '(0) No (skip to Q.3)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.3)'
             7 '(7) Legitimate skip (sex=no or drink=no)'
             8 '(8) Don''t know (skip to Q.3)' /
   H1JO2     0 '(0) No' 1 '(1) Yes'
            7 '(7) Legitimate skip (hadn''t been drinking at 1st intercourse'
             /
   H1JO3     0 '(0) No (skip to Q.5)' 1 '(1) Yes'
             2 '(2) You have had sexual intercourse only once (skip to Q.5)'
             6 '(6) Refused (skip to Q.5)'
             7 '(7) Legitimate skip (sex=no or drink=no)'
             8 '(8) Don''t know (skip to Q.5)' /
   H1JO4     0 '(0) No' 1 '(1) Yes'
            7 '(7) Legit skip (hadn''t been drinking at most recent intercou'
             /
   H1JO5     0 '(0) No (skip to Q.7)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.7)'
             7 '(7) Legitimate skip (sex=no or drugs=no)' /
   H1JO6A    0 '(0) Not selected' 1 '(1) Selected' 6 '(6) Refused'
            7 '(7) Legitimate skip (hadn''t been using drugs at 1st intercou'
             8 '(8) Don''t know' /
   H1JO6B    0 '(0) Not selected' 1 '(1) Selected' 6 '(6) Refused'
            7 '(7) Legitimate skip (hadn''t been using drugs at 1st intercou'
             8 '(8) Don''t know' /
   H1JO6C    0 '(0) Not selected' 1 '(1) Selected' 6 '(6) Refused'
            7 '(7) Legitimate skip (hadn''t been using drugs at 1st intercou'
             8 '(8) Don''t know' /
   H1JO6D    0 '(0) Not selected' 1 '(1) Selected' 6 '(6) Refused'
            7 '(7) Legitimate skip (hadn''t been using drugs at 1st intercou'
             8 '(8) Don''t know' /
   H1JO6E    0 '(0) Not selected' 1 '(1) Selected' 6 '(6) Refused'
            7 '(7) Legitimate skip (hadn''t been using drugs at 1st intercou'
             8 '(8) Don''t know' /
   H1JO7     0 '(0) No (skip to Q.9)' 1 '(1) Yes'
             2 '(2) You have had sexual intercourse only once (skip to Q.9)'
             6 '(6) Refused (skip to Q.9)'
             7 '(7) Legitimate skip (sex=no or drink=no)' /
   H1JO8A    0 '(0) Not selected' 1 '(1) Selected'
             7 '(7) Legit skip (Not been using drugs at most recent intercou'
             /
   H1JO8B    0 '(0) Not selected' 1 '(1) Selected'
             7 '(7) Legit skip (Not been using drugs at most recent intercou'
             /
   H1JO8C    0 '(0) Not selected' 1 '(1) Selected'
             7 '(7) Legit skip (Not been using drugs at most recent intercou'
             /
   H1JO8D    0 '(0) Not selected' 1 '(1) Selected'
             7 '(7) Legit skip (Not been using drugs at most recent intercou'
             /
   H1JO8E    0 '(0) Not selected' 1 '(1) Selected'
             7 '(7) Legit skip (Not been using drugs at most recent intercou'
             /
   H1JO9     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (drink=no)' 8 '(8) Don''t know' /
   H1JO10    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (drink=no)' 8 '(8) Don''t know' /
   H1JO11    0 '(0) No (skip to Q.14)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.14)'
             7 '(7) Legitimate skip (drink=no)' /
   H1JO12    0 '(0) No (skip to Q.14)' 1 '(1) Yes'
             7 '(7) Legitimate skip (fight=no)' /
   H1JO13    0 '(0) No' 1 '(1) Yes'
             7 '(7) Legit skip (Not been drinking during most recent fight)'
             /
   H1JO14    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (drink=no)' /
   H1JO15    0 '(0) No (skip to Q.17)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.17)'
             7 '(7) Legitimate skip (drink=no)' /
   H1JO16    0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (hasn''t drunk alcohol alone)' /
   H1JO17    0 '(0) No (skip to Q.19)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.19)'
             7 '(7) Legitimate skip (drink=no or drugs=no)' /
   H1JO18A   0 '(0) Not selected' 1 '(1) Selected' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t drunk alcohol when using drugs)'
             8 '(8) Don''t know' /
   H1JO18B   0 '(0) Not selected' 1 '(1) Selected' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t drunk alcohol when using drugs)'
             8 '(8) Don''t know' /
   H1JO18C   0 '(0) Not selected' 1 '(1) Selected' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t drunk alcohol when using drugs)'
             8 '(8) Don''t know' /
   H1JO18D   0 '(0) Not selected' 1 '(1) Selected' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t drunk alcohol when using drugs)'
             8 '(8) Don''t know' /
   H1JO18E   0 '(0) Not selected' 1 '(1) Selected' 6 '(6) Refused'
             7 '(7) Legitimate skip (hasn''t drunk alcohol when using drugs)'
             8 '(8) Don''t know' /
   H1JO19    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (drugs=no)' /
   H1JO20    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (drugs=no)' /
   H1JO21    0 '(0) No (skip to Q.23)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.23)'
             7 '(7) Legitimate skip (drugs=no)' /
   H1JO22A   0 '(0) Not selected' 1 '(1) Selected' 6 '(6) Refused'
            7 '(7) Legitimate skip (hasn''t gotten into fight when using dru'
             8 '(8) Don''t know' /
   H1JO22B   0 '(0) Not selected' 1 '(1) Selected' 6 '(6) Refused'
            7 '(7) Legitimate skip (hasn''t gotten into fight when using dru'
             8 '(8) Don''t know' /
   H1JO22C   0 '(0) Not selected' 1 '(1) Selected' 6 '(6) Refused'
            7 '(7) Legitimate skip (hasn''t gotten into fight when using dru'
             8 '(8) Don''t know' /
   H1JO22D   0 '(0) Not selected' 1 '(1) Selected' 6 '(6) Refused'
            7 '(7) Legitimate skip (hasn''t gotten into fight when using dru'
             8 '(8) Don''t know' /
   H1JO22E   0 '(0) Not selected' 1 '(1) Selected' 6 '(6) Refused'
            7 '(7) Legitimate skip (hasn''t gotten into fight when using dru'
             8 '(8) Don''t know' /
   H1JO23    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (drugs=no)' /
   H1JO24    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (drugs=no)' 8 '(8) Don''t know' /
   H1JO25    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1JO26    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1FV1     0 '(0) Never' 1 '(1) Once' 2 '(2) More than once'
             6 '(6) Refused' 8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1FV2     0 '(0) Never' 1 '(1) Once' 2 '(2) More than once'
             6 '(6) Refused' 8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1FV3     0 '(0) Never' 1 '(1) Once' 2 '(2) More than once'
             6 '(6) Refused' 8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1FV4     0 '(0) Never' 1 '(1) Once' 2 '(2) More than once'
             6 '(6) Refused' 8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1FV5     0 '(0) Never' 1 '(1) Once' 2 '(2) More than once'
             6 '(6) Refused' 8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1FV6     0 '(0) Never' 1 '(1) Once' 2 '(2) More than once'
             6 '(6) Refused' 8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1FV7     0 '(0) Never' 1 '(1) Once' 2 '(2) More than once'
             6 '(6) Refused' 8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1FV8     0 '(0) Never' 1 '(1) Once' 2 '(2) More than once'
             6 '(6) Refused' 8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1FV9     0 '(0) None (skip to Q.11)' 1 '(1) 1 day' 2 '(2) 2 or 3 days'
             3 '(3) 4 or 5 days' 4 '(4) 6 or more days'
             6 '(6) Refused (skip to Q.11)'
             8 '(8) Don''t know (skip to Q.11)'
             9 '(9) Not applicable (skip to Q.11)' /
   H1FV10    1 '(1) A handgun' 2 '(2) Other kind of guy-rifle/shotgun/etc.'
             3 '(3) A club/stick/bat/pipe' 4 '(4) A knife or razor'
             5 '(5) Some other kind of weapon' 6 '(6) Refused'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   H1FV11    1 '(1) A total stranger' 2 '(2) A friend or someone you knew'
             3 '(3) A {GIRLFRIEND/BOYFRIEND} or date'
             4 '(4) A parent/brother/sister/other family member'
             5 '(5) Someone not listed here'
             6 '(6) More than one of the persons listed above'
             7 '(7) Never fought (skip to next section)'
             96 '(96) Refused (skip to next section)'
             98 '(98) Don''t know (skip to next section)'
             99 '(99) Not applicable (skip to next section)' /
   H1FV12    1 '(1) At school' 2 '(2) In your neighborhood' 3 '(3) At home'
             4 '(4) At work' 5 '(5) Someplace else' 6 '(6) Refused'
             7 '(7) Legitimate skip (never fought)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1FV13    996 '(996) Refused' 997 '(997) Legitimate skip'
             998 '(998) Don''t know' 999 '(999) Not applicable' /
   H1FV14M   0 '(0) Never treated' 1 '(1) January' 2 '(2) February'
             3 '(3) March' 4 '(4) April' 5 '(5) May' 6 '(6) June'
             7 '(7) July' 8 '(8) August' 9 '(9) September'
             10 '(10) October to December' 96 '(96) Refused'
             97 '(97) Legitimate skip' 98 '(98) Don''t know'
             99 '(99) Not applicable' /
   H1FV14Y   0 '(0) Never treated' 80 '(80) 1977 to 1980'
             87 '(87) 1981 to 1987' 88 '(88) 1988' 89 '(89) 1989'
             90 '(90) 1990' 91 '(91) 1991' 92 '(92) 1992' 93 '(93) 1993'
             94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip' 98 '(98) Don''t know'
             99 '(99) Not applicable' /
   H1MP1     1 '(1) I have not hair at all' 2 '(2) I have a little hair'
             3 '(3) I have some hair/not a lot/spread out/is thicker'
             4 '(4) I have a lot of hair that is thick'
             5 '(5) Have whole lot of hair that is very thick/much as grown'
             6 '(6) Refused' 7 '(7) Legitimate skip (female respondent)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1MP2     1 '(1) I have few scattered hair/growth isn''t thick'
             2 '(2) Hair is somewhat thick/still see a lot of skin under it'
             3 '(3) Hair is thick/can''t see much skin under it'
             4 '(4) Hair is very thick/like grown man''s facial hair'
             6 '(6) Refused' 7 '(7) Legitimate skip (female respondent)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1MP3     1 '(1) No/about the same as when in grade school'
             2 '(2) Yes/a little lower as when in grade school'
             3 '(3) Yes/somewhat lower than when in grade school'
             4 '(4) Yes/a lot lower than when in grade school'
             5 '(5) Yes/a whole lot lower than when in grade school'
             6 '(6) Refused' 7 '(7) Legitimate skip (female respondent)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1MP4     1 '(1) I look younger than most'
             2 '(2) I look younger than some' 3 '(3) I look about average'
             4 '(4) I look older than some' 5 '(5) I look older than most'
             6 '(6) Refused' 7 '(7) Legitimate skip (female respondent)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1FP1     1 '(1) My breasts are about the same as when in grade school'
             2 '(2) My breasts are a little bigger than when in grade school'
             3 '(3) My breasts are somewhat bigger than when in grade school'
             4 '(4) My breasts are a lot bigger than when in grade school'
             5 '(5) My breasts are a whole lot bigger than when in grade sch'
             6 '(6) Refused' 7 '(7) Legitimate skip (male respondent)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1FP2     1 '(1) My body is about as curvy as when in grade school'
             2 '(2) My body is a little more curvy than when in grade school'
             3 '(3) My body is somewhat more curvy than when in grade school'
             4 '(4) My body is a lot more curvy than when in grade school'
             5 '(5) My body is a whole lot more curvy than when in grade sch'
             6 '(6) Refused' 7 '(7) Legitimate skip (male respondent)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1FP3     0 '(0) No (skip to Q.6)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.6)'
             7 '(7) Legitimate skip (male respondent)'
             8 '(8) Don''t know (skip to Q.6)'
             9 '(9) Not applicable (skip to Q.6)' /
   H1FP4     7 '(7) 7 years old and younger' 8 '(8) 8 years old'
             9 '(9) 9 years old' 10 '(10) 10 years old'
             11 '(11) 11 years old' 12 '(12) 12 years old'
             13 '(13) 13 years old' 14 '(14) 14 years old'
             15 '(15) 15 years old' 16 '(16) 16 years old'
             17 '(17) 17 years old and older' 96 '(96) Refused'
             97 '(97) Legitimate skip (hasn''t menstruated)'
             98 '(98) Don''t know' /
   H1FP5M    1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (hasn''t menstruated)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1FP5D    96 '(96) Refused'
             97 '(97) Legitimate skip (hasn''t menstruated)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1FP6     1 '(1) I look younger than most'
             2 '(2) I look younger than some' 3 '(3) I look about average'
             4 '(4) I look older than some' 5 '(5) I look older than most'
             6 '(6) Refused' 7 '(7) Legitimate skip (male respondent)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1FP7     0 '(0) No (skip to next section)' 1 '(1) Yes'
             6 '(6) Refused (skip to next section)'
            7 '(7) Legitimate skip (male resp/hasn''t had sexual intercourse'
             8 '(8) Don''t know (skip to next section)' /
   H1FP8     1 '(1) 1 time' 2 '(2) 2 times' 3 '(3) 3 times'
             4 '(4) 4 or more times'
             97 '(97) Legitimate skip (hasn''t been pregnant)'
             98 '(98) Don''t know' /
   H1FP9M    1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Refused'
             97 '(97) Legitimate skip (hasn''t been pregnant)'
             98 '(98) Don''t know' /
   H1FP9Y    91 '(91) 1991 and before' 92 '(92) 1992' 93 '(93) 1993'
             94 '(94) 1994' 95 '(95) 1995' 96 '(96) Refused'
             97 '(97) Legitimate skip (hasn''t been pregnant)'
             98 '(98) Don''t know' /
   H1FP10    0 '(0) None (skip to Q.12)' 1 '(1) 1 time' 2 '(2) 2 times'
             3 '(3) 3 or more times' 7 '(7) Legitimate skip' /
   H1FP11M1  1 '(1) January or February' 3 '(3) March' 4 '(4) April or May'
             6 '(6) June' 7 '(7) July or August' 9 '(9) September or October'
             11 '(11) November or December' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   H1FP11Y1  94 '(94) 1994' 95 '(95) 1995' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   H1FP12_1  0 '(0) No (skip to Q.15)' 1 '(1) Yes'
             7 '(7) Legitimate skip (skip to Q.15)' /
   H1FP13A1  1 '(1) Condoms (rubbers)' 2 '(2) Withdrawal'
             4 '(4) Birth control pills' 11 '(11) Depo Provera'
             97 '(97) Legitimate skip' /
   H1FP13B1  14 '(14) No other method (skip to Q.14)'
             97 '(97) Legitimate skip' /
   H1FP13C1  97 '(97) Legitimate skip' /
   H1FP14_1  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FP15_1  1 '(1) Definitely no' 2 '(2) Probably no'
             3 '(3) Neither wanted/nor didn''t want' 4 '(4) Probably yes'
             5 '(5) Definitely yes' 7 '(7) Legitimate skip' /
   H1FP17_1  0 '(0) No' 1 '(1) Yes' 2 '(2) You didn''t care'
             7 '(7) Legitimate skip' /
   H1FP20M1  1 '(1) January to March' 4 '(4) April' 5 '(5) May' 6 '(6) June'
             7 '(7) July' 8 '(8) August or September'
             10 '(10) October to December' 97 '(97) Legitimate skip'
             98 '(98) Don''t know/pregnancy hasn''t ended' /
   H1FP20Y1  94 '(94) 1994' 95 '(95) 1995' 97 '(97) Legitimate skip'
             98 '(98) Don''t know/pregnancy hasn''t ended' /
   H1FP21_1  1 '(1) It hasn''t ended/still pregnant (skip to next section)'
             2 '(2) A live birth'
             4 '(4) Still birth/miscarriage (skip to next pregnancy/section)'
             5 '(5) An abortion (skip to next pregnancy/section)'
             7 '(7) Legitimate skip' /
   H1FP22_1  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FP23A1  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FP24A1  0 '(0) No' 1 '(1) Yes (skip to Q.26)' 7 '(7) Legitimate skip' /
   H1FP11M2  1 '(1) January or February' 3 '(3) March' 4 '(4) April or May'
             7 '(7) July or August' 9 '(9) September or October'
             11 '(11) November or December' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   H1FP11Y2  94 '(94) 1994' 95 '(95) 1995' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   H1FP12_2  0 '(0) No (skip to Q.15)' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FP13A2  1 '(1) Condoms (rubbers)' 97 '(97) Legitimate skip' /
   H1FP13B2  14 '(14) No other method' 97 '(97) Legitimate skip' /
   H1FP13C2  97 '(97) Legitimate skip' /
   H1FP14_2  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FP15_2  1 '(1) Definitely no' 2 '(2) Probably no'
             3 '(3) Neither wanted/nor didn''t want' 4 '(4) Probably yes'
             5 '(5) Definitely yes' 7 '(7) Legitimate skip' /
   H1FP17_2  0 '(0) No' 1 '(1) Yes' 2 '(2) You didn''t care'
             7 '(7) Legitimate skip' /
   H1FP20M2  1 '(1) January to March' 4 '(4) April' 5 '(5) May'
             8 '(8) August or September' 10 '(10) October to December'
             97 '(97) Legitimate skip'
             98 '(98) Don''t know/pregnancy hasn''t ended' /
   H1FP20Y2  94 '(94) 1994' 95 '(95) 1995' 97 '(97) Legitimate skip'
             98 '(98) Don''t know/pregnancy hasn''t ended' /
   H1FP21_2  1 '(1) It hasn''t ended/still pregnant (skip to next section)'
             2 '(2) A live birth'
             4 '(4) Still birth/miscarriage (skip to next pregnancy/section)'
             5 '(5) An abortion (skip to next pregnancy/section)'
             7 '(7) Legitimate skip' /
   H1FP22_2  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FP23A2  0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FP24A2  0 '(0) No (skip to Q.26)' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FP11M3  11 '(11) November or December' 97 '(97) Legitimate skip' /
   H1FP11Y3  94 '(94) 1994' 97 '(97) Legitimate skip' /
   H1FP12_3  0 '(0) No (skip to Q.15)' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   H1FP13A3  97 '(97) Legitimate skip' /
   H1FP13B3  97 '(97) Legitimate skip' /
   H1FP13C3  97 '(97) Legitimate skip' /
   H1FP14_3  7 '(7) Legitimate skip' /
   H1FP15_3  1 '(1) Definitely no' 2 '(2) Probably no'
             3 '(3) Neither wanted/nor didn''t want' 4 '(4) Probably yes'
             5 '(5) Definitely yes' 7 '(7) Legitimate skip' /
   H1FP17_3  0 '(0) No' 1 '(1) Yes' 2 '(2) You didn''t care'
             7 '(7) Legitimate skip' /
   H1FP20M3  97 '(97) Legitimate skip'
             98 '(98) Don''t know/pregnancy hasn''t ended' /
   H1FP20Y3  97 '(97) Legitimate skip'
             98 '(98) Don''t know/pregnancy hasn''t ended' /
   H1FP21_3  1 '(1) It hasn''t ended/still pregnant (skip to next section)'
             2 '(2) A live birth'
             4 '(4) Still birth/miscarriage (skip to next pregnancy/section)'
             5 '(5) An abortion (skip to next pregnancy/section)'
             7 '(7) Legitimate skip' /
   H1FP22_3  7 '(7) Legitimate skip' /
   H1FP23A3  7 '(7) Legitimate skip' /
   H1FP24A3  7 '(7) Legitimate skip' /
   H1FP11M4  97 '(97) Legitimate skip' /
   H1FP11Y4  97 '(97) Legitimate skip' /
   H1FP12_4  7 '(7) Legitimate skip' /
   H1FP13A4  97 '(97) Legitimate skip' /
   H1FP13B4  97 '(97) Legitimate skip' /
   H1FP13C4  97 '(97) Legitimate skip' /
   H1FP14_4  7 '(7) Legitimate skip' /
   H1FP15_4  7 '(7) Legitimate skip' /
   H1FP17_4  7 '(7) Legitimate skip' /
   H1FP20M4  97 '(97) Legitimate skip' /
   H1FP20Y4  97 '(97) Legitimate skip' /
   H1FP21_4  7 '(7) Legitimate skip' /
   H1FP22_4  7 '(7) Legitimate skip' /
   H1FP23A4  7 '(7) Legitimate skip' /
   H1FP24A4  7 '(7) Legitimate skip' /
   H1FP11M5  97 '(97) Legitimate skip' /
   H1FP11Y5  97 '(97) Legitimate skip' /
   H1FP12_5  7 '(7) Legitimate skip' /
   H1FP13A5  97 '(97) Legitimate skip' /
   H1FP13B5  97 '(97) Legitimate skip' /
   H1FP13C5  97 '(97) Legitimate skip' /
   H1FP14_5  7 '(7) Legitimate skip' /
   H1FP15_5  7 '(7) Legitimate skip' /
   H1FP17_5  7 '(7) Legitimate skip' /
   H1FP20M5  97 '(97) Legitimate skip' /
   H1FP20Y5  97 '(97) Legitimate skip' /
   H1FP21_5  7 '(7) Legitimate skip' /
   H1FP22_5  7 '(7) Legitimate skip' /
   H1FP23A5  7 '(7) Legitimate skip' /
   H1FP24A5  7 '(7) Legitimate skip' /
   H1SU1     0 '(0) No (skip to Q.4)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.4)' 8 '(8) Don''t know (skip to Q.4)'
             9 '(9) Not applicable (skip to Q.4)' /
   H1SU2     0 '(0) 0 times (skip to Q.4)' 1 '(1) 1 times'
             2 '(2) 2 or 3 times' 3 '(3) 4 or 5 times'
             4 '(4) 6 or more times' 6 '(6) Refused (skip to Q.4)'
            7 '(7) Legit skip (didn''t seriously think about committing suic'
             8 '(8) Don''t know (skip to Q.4)' /
   H1SU3     0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (didn''t attempt suicide)' /
   H1SU4     0 '(0) No (skip to Q.6)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.6)' 8 '(8) Don''t know (skip to Q.6)'
             9 '(9) Not applicable (skip to Q.6)' /
   H1SU5     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (no friends tried to kill themselves)'
             8 '(8) Don''t know' /
   H1SU6     0 '(0) No (skip to Q.8)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.8)' 8 '(8) Don''t know (skip to Q.8)'
             9 '(9) Not applicable (skip to Q.8)' /
   H1SU7     0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (no family members tried to kill themsel'
             8 '(8) Don''t know' /
   H1SU8     1 '(1) Not honestly at all' 2 '(2) Somewhat honestly'
             3 '(3) Very honestly' 4 '(4) Completely honestly'
             6 '(6) Refused' 8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1PA1     1 '(1) Strongly disapprove' 2 '(2) Disapprove'
             3 '(3) Neither disapprove nor approve' 4 '(4) Approve'
             5 '(5) Strongly approve' 6 '(6) Refused'
             7 '(7) Legitimate skip (no resident MOM or married)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1PA2     1 '(1) Strongly disapprove' 2 '(2) Disapprove'
             3 '(3) Neither disapprove nor approve' 4 '(4) Approve'
             5 '(5) Strongly approve' 6 '(6) Refused'
             7 '(7) Legitimate skip (no resident MOM or married)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1PA3     1 '(1) Strongly disapprove' 2 '(2) Disapprove'
             3 '(3) Neither disapprove nor approve' 4 '(4) Approve'
             5 '(5) Strongly approve' 6 '(6) Refused'
             7 '(7) Legitimate skip (no resident MOM or married)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1PA4     1 '(1) Strongly disapprove' 2 '(2) Disapprove'
             3 '(3) Neither disapprove nor approve' 4 '(4) Approve'
             5 '(5) Strongly approve' 6 '(6) Refused'
             7 '(7) Legimate skip (no resident DAD or married)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1PA5     1 '(1) Strongly disapprove' 2 '(2) Disapprove'
             3 '(3) Neither disapprove nor approve' 4 '(4) Approve'
             5 '(5) Strongly approve' 6 '(6) Refused'
             7 '(7) Legimate skip (no resident DAD or married)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1PA6     1 '(1) Strongly disapprove' 2 '(2) Disapprove'
             3 '(3) Neither disapprove nor approve' 4 '(4) Approve'
             5 '(5) Strongly approve' 6 '(6) Refused'
             7 '(7) Legimate skip (no resident DAD or married)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1PA7     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (currently married)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1PR1     1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Does not apply'
             96 '(96) Refused' 98 '(98) Don''t know' /
   H1PR2     1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Does not apply'
             96 '(96) Refused' 98 '(98) Don''t know' /
   H1PR3     1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Does not apply'
             96 '(96) Refused' 98 '(98) Don''t know' /
   H1PR4     1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Does not apply'
             96 '(96) Refused' 98 '(98) Don''t know' /
   H1PR5     1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Does not apply'
             96 '(96) Refused' 98 '(98) Don''t know' /
   H1PR6     1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Does not apply'
             96 '(96) Refused' 98 '(98) Don''t know' /
   H1PR7     1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Does not apply'
             96 '(96) Refused' 98 '(98) Don''t know' /
   H1PR8     1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Does not apply'
             96 '(96) Refused' 98 '(98) Don''t know' /
   H1NB1     1 '(1) True' 2 '(2) False' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1NB2     1 '(1) True' 2 '(2) False' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1NB3     1 '(1) True' 2 '(2) False' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1NB4     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1NB5     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1NB6     1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1NB7     1 '(1) Very unhappy' 2 '(2) A little happy'
             3 '(3) Wouldn''t make any difference' 4 '(4) A little happy'
             5 '(5) Very happy' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1RE1     0 '(0) None (skip to next section)' 1 '(1) Adventist'
             2 '(2) AME/AME Zion/CME' 3 '(3) Assemblies of God'
             4 '(4) Baptist' 5 '(5) Christian Church (Disciples of Christ)'
             6 '(6) Christian Science' 7 '(7) Congregational'
             8 '(8) Episcopal' 9 '(9) Friends/Quaker' 10 '(10) Holiness'
             11 '(11) Jehovah''s Witness' 12 '(12) Later Day Saints (Mormon)'
             13 '(13) Lutheran' 14 '(14) Methodist'
             15 '(15) National Baptist' 16 '(16) Pentecostal'
             17 '(17) Presbyterian' 18 '(18) United Church of Christ'
             19 '(19) other Protestant' 20 '(20) Baha''i' 21 '(21) Buddhist'
             22 '(22) Catholic' 23 '(23) Eastern Orthodox' 24 '(24) Hindu'
             25 '(25) Islam/Moslem/Muslim'
            26 '(26) Jewish-Conservative/Reformed/Orthodox/Reconstructionist'
             27 '(27) Unitarian' 28 '(28) Other religion'
             96 '(96) Refused (skip to next section)'
             98 '(98) Don''t know (skip to next section)'
             99 '(99) Not applicable (skip to next section)' /
   H1RE2     1 '(1) Agree' 2 '(2) Disagree'
             3 '(3) Religion doesn''t have sacred scriptures' 6 '(6) Refused'
             7 '(7) Legitimate skip (no religion)' 8 '(8) Don''t know' /
   H1RE3     1 '(1) Once a week or more'
             2 '(2) Once a month or more/less than once a week'
             3 '(3) Less than once a month' 4 '(4) Never' 6 '(6) Refused'
             7 '(7) Legitimate skip (no religion)' 8 '(8) Don''t know' /
   H1RE4     1 '(1) Very important' 2 '(2) Fairly important'
             3 '(3) Fairly unimportant' 4 '(4) Not important at all'
             6 '(6) Refused' 7 '(7) Legitimate skip (no religion)'
             8 '(8) Don''t know' /
   H1RE5     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (Q.1 not=1 to 19)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1RE6     1 '(1) At least once a day' 2 '(2) At least once a week'
             3 '(3) At least once a month' 4 '(4) Less than once a month'
             5 '(5) Never' 6 '(6) Refused'
             7 '(7) Legitimate skip (no religion)' 8 '(8) Don''t know' /
   H1RE7     1 '(1) Once a week or more'
             2 '(2) Once a month or more/less than once a week'
             3 '(3) Less than once a month' 4 '(4) Never' 6 '(6) Refused'
             7 '(7) Legitimate skip (no religion)' 8 '(8) Don''t know' /
   H1EE1     1 '(1) Low' 5 '(5) High' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1EE2     1 '(1) Low' 5 '(5) High' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1EE3     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1EE4     0 '(0) None (skip to Q.6)' 996 '(996) Refused'
             998 '(998) Don''t know (skip to Q.6)'
             999 '(999) Not applicable (skip to Q.6)' /
   H1EE5     0 '(0) None' 996 '(996) Refused'
          997 '(997) Legitimate skip (doesn''t work for pay in non-summer we'
             998 '(998) Don''t know' 999 '(999) Not applicable' /
   H1EE6     0 '(0) None (skip to Q.8)' 996 '(996) Refused'
             998 '(998) Don''t know (skip to Q.8)'
             999 '(999) Not applicable (skip to Q.8)' /
   H1EE7     0 '(0) None' 996 '(996) Refused'
          997 '(997) Legitimate skip (doesn''t work for pay in a summer week'
             998 '(998) Don''t know' 999 '(999) Not applicable' /
   H1EE8     0 '(0) None' 96 '(96) Refused' 98 '(98) Don''t know'
             99 '(99) Not applicable' /
   H1EE9     0 '(0) No (skip to Q.12)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.12)'
             8 '(8) Don''t know (skip to Q.12)' /
   H1EE10    0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (have never driven a car)' /
   H1EE11    1 '(1) 0/you don''t drive' 2 '(2) 1-50 miles'
             3 '(3) 51-100 miles' 4 '(4) Over 100 miles' 6 '(6) Refused'
             7 '(7) Legitimate skip (have never driven a car)'
             8 '(8) Don''t know' /
   H1EE12    1 '(1) Almost no chance' 2 '(2) Some chance/probably not'
             3 '(3) A 50-50 chance' 4 '(4) A good chance'
             5 '(5) Almost certain' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1EE13    1 '(1) Almost no chance' 2 '(2) Some chance/probably not'
             3 '(3) A 50-50 chance' 4 '(4) A good chance'
             5 '(5) Almost certain' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1EE14    1 '(1) Almost no chance' 2 '(2) Some chance/probably not'
             3 '(3) A 50-50 chance' 4 '(4) A good chance'
             5 '(5) Almost certain' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1EE15    1 '(1) Almost no chance' 2 '(2) Some chance/probably not'
             3 '(3) A 50-50 chance' 4 '(4) A good chance'
             5 '(5) Almost certain' 6 '(6) Refused' 8 '(8) Don''t know' /
   STUDSIBA  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (skip to next section)'
             8 '(8) Don''t know' /
   TWINA     0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (not study sib/no HH member ages 12-18)'
             9 '(9) Not applicable' /
   H1WS1A    1 '(1) A lot' 2 '(2) Some' 3 '(3) Little' 4 '(4) None'
             6 '(6) Refused'
             7 '(7) Legitimate skip (not study sib/no HH member ages 12-18)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1WS2A    1 '(1) A lot' 2 '(2) Some' 3 '(3) Little' 4 '(4) None'
             6 '(6) Refused'
             7 '(7) Legitimate skip (not study sib/no HH member ages 12-18)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1WS3A    1 '(1) Very often' 2 '(2) Often' 3 '(3) Sometimes'
             4 '(4) Seldom' 5 '(5) Never' 6 '(6) Refused'
             7 '(7) Legitimate skip (not study sib/no HH member ages 12-18)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1WS4A    1 '(1) Very often' 2 '(2) Often' 3 '(3) Sometimes'
             4 '(4) Seldom' 5 '(5) Never' 6 '(6) Refused'
             7 '(7) Legitimate skip (not study sib/no HH member ages 12-18)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1WS5A    1 '(1) A lot more' 2 '(2) A little more' 3 '(3) The same amount'
             4 '(4) A little less' 5 '(5) A lot less' 6 '(6) Not applicable'
             96 '(96) Refused'
            97 '(97) Legitimate skip (not study sib/no HH member ages 12-18)'
             98 '(98) Don''t know' 99 '(99) Not applicable' /
   H1WS6A    1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             7 '(7) Legitimate skip (R''s twin)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WS7A    1 '(1) Identical' 2 '(2) Fraternal' 6 '(6) Refused'
             7 '(7) Legitimate skip (not R''s twin)' /
   H1WS8A    1 '(1) Two peas' 2 '(2) Same family (skip to Q.12)'
             7 '(7) Legitimate skip (not R''s twin)' 8 '(8) Don''t know' /
   H1WS9A    0 '(0) No (skip to Q.12)' 1 '(1) Yes'
             7 '(7) Legitimate skip (look like members of the same family)'
             8 '(8) Don''t know (skip to Q.12)' /
   H1WS10A   0 '(0) No (skip to Q.12)' 1 '(1) Yes'
             7 '(7) Legitimate skip (strangers never confused)' /
   H1WS11A   0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (teachers never confused)' /
   H1WS12A   1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             7 '(7) Legitimate skip (not study sib/no HH member ages 12-18)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   STUDSIBB  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (skip to next section)'
             8 '(8) Don''t know' /
   TWINB     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (not study sib/one HH member ages 12-18)'
             /
   H1WS1B    1 '(1) A lot' 2 '(2) Some' 3 '(3) Little' 4 '(4) None'
             6 '(6) Refused'
             7 '(7) Legitimate skip (not study sib/one HH member ages 12-18)'
             8 '(8) Don''t know' /
   H1WS2B    1 '(1) A lot' 2 '(2) Some' 3 '(3) Little' 4 '(4) None'
             6 '(6) Refused'
             7 '(7) Legitimate skip (not study sib/one HH member ages 12-18)'
             8 '(8) Don''t know' /
   H1WS3B    1 '(1) Very often' 2 '(2) Often' 3 '(3) Sometimes'
             4 '(4) Seldom' 5 '(5) Never' 6 '(6) Refused'
             7 '(7) Legitimate skip (not study sib/one HH member ages 12-18)'
             8 '(8) Don''t know' /
   H1WS4B    1 '(1) Very often' 2 '(2) Often' 3 '(3) Sometimes'
             4 '(4) Seldom' 5 '(5) Never' 6 '(6) Refused'
             7 '(7) Legitimate skip (not study sib/one HH member ages 12-18)'
             8 '(8) Don''t know' /
   H1WS5B    1 '(1) A lot more' 2 '(2) A little more' 3 '(3) The same amount'
             4 '(4) A little less' 5 '(5) A lot less' 6 '(6) Not applicable'
             96 '(96) Refused'
            97 '(97) Legitimate skip (not study sib/one HH member ages 12-18'
             98 '(98) Don''t know' /
   H1WS6B    1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             7 '(7) Legitimate skip (R''s twin)' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1WS7B    1 '(1) Identical' 2 '(2) Fraternal' 6 '(6) Refused'
             7 '(7) Legitimate skip (not R''s twin)' /
   H1WS8B    1 '(1) Two peas' 2 '(2) Same family (skip to Q.12)'
             6 '(6) Refused' 7 '(7) Legitimate skip (not R''s twin)' /
   H1WS9B    0 '(0) No (skip to Q.12)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.12)'
             7 '(7) Legitimate skip (look like members of the same family)' /
   H1WS10B   0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (strangers never confused)' /
   H1WS11B   0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (teachers never confused)' /
   H1WS12B   1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             7 '(7) Legitimate skip (not study sib/one HH member ages 12-18)'
             8 '(8) Don''t know' /
   STUDSIBC  0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (skip to next section)' /
   TWINC     0 '(0) No' 1 '(1) Yes'
             7 '(7) Legit skip (not study sib/two or fewer HH member ages 12'
             /
   H1WS1C    1 '(1) A lot' 2 '(2) Some' 3 '(3) Little' 4 '(4) None'
             6 '(6) Refused'
             7 '(7) Legit skip (not study sib/two or fewer HH member ages 12'
             8 '(8) Don''t know' /
   H1WS2C    1 '(1) A lot' 2 '(2) Some' 3 '(3) Little' 4 '(4) None'
             6 '(6) Refused'
             7 '(7) Legit skip (not study sib/two or fewer HH member ages 12'
             8 '(8) Don''t know' /
   H1WS3C    1 '(1) Very often' 2 '(2) Often' 3 '(3) Sometimes'
             4 '(4) Seldom' 5 '(5) Never' 6 '(6) Refused'
             7 '(7) Legit skip (not study sib/two or fewer HH member ages 12'
             8 '(8) Don''t know' /
   H1WS4C    1 '(1) Very often' 2 '(2) Often' 3 '(3) Sometimes'
             4 '(4) Seldom' 5 '(5) Never' 6 '(6) Refused'
             7 '(7) Legit skip (not study sib/two or fewer HH member ages 12'
             8 '(8) Don''t know' /
   H1WS5C    1 '(1) A lot more' 2 '(2) A little more' 3 '(3) The same amount'
             4 '(4) A little less' 5 '(5) A lot less' 6 '(6) Not applicable'
             96 '(96) Refused'
            97 '(97) Legit skip (not study sib/two or fewer HH member ages 1'
             98 '(98) Don''t know' /
   H1WS6C    1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             7 '(7) Legitimate skip (R''s twin)' 8 '(8) Don''t know' /
   H1WS7C    1 '(1) Identical' 2 '(2) Fraternal'
             7 '(7) Legitimate skip (not R''s twin)' /
   H1WS8C    1 '(1) Two peas' 7 '(7) Legitimate skip (not R''s twin)' /
   H1WS9C    0 '(0) No (skip to Q.12)' 1 '(1) Yes'
             7 '(7) Legitimate skip (look like members of the same family)' /
   H1WS10C   0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (strangers never confused)' /
   H1WS11C   0 '(0) No' 1 '(1) Yes'
             7 '(7) Legitimate skip (teachers never confused)' /
   H1WS12C   1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             7 '(7) Legit skip (not study sib/two or fewer HH member ages 12'
             8 '(8) Don''t know' /
   STUDSIBD  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (skip to next section)'
             8 '(8) Don''t know' /
   TWIND     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legit skip (not study sib/3 or fewer HH member ages 12-1'
             /
   H1WS1D    1 '(1) A lot' 2 '(2) Some' 3 '(3) Little' 4 '(4) None'
             6 '(6) Refused'
             7 '(7) Legit skip (not study sib/3 or fewer HH member ages 12-1'
             /
   H1WS2D    1 '(1) A lot' 2 '(2) Some' 3 '(3) Little' 4 '(4) None'
             6 '(6) Refused'
             7 '(7) Legit skip (not study sib/3 or fewer HH member ages 12-1'
             /
   H1WS3D    1 '(1) Very often' 2 '(2) Often' 3 '(3) Sometimes'
             4 '(4) Seldom' 5 '(5) Never' 6 '(6) Refused'
             7 '(7) Legit skip (not study sib/3 or fewer HH member ages 12-1'
             /
   H1WS4D    1 '(1) Very often' 2 '(2) Often' 3 '(3) Sometimes'
             4 '(4) Seldom' 5 '(5) Never' 6 '(6) Refused'
             7 '(7) Legit skip (not study sib/3 or fewer HH member ages 12-1'
             /
   H1WS5D    1 '(1) A lot more' 2 '(2) A little more' 3 '(3) The same amount'
             4 '(4) A little less' 5 '(5) A lot less' 6 '(6) Not applicable'
             96 '(96) Refused'
            97 '(97) Legit skip (not study sib/3 or fewer HH member ages 12-'
             /
   H1WS6D    1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             7 '(7) Legitimate skip (R''s twin)' /
   H1WS7D    1 '(1) Identical' 2 '(2) Fraternal'
             7 '(7) Legitimate skip (not R''s twin)' /
   H1WS8D    7 '(7) Legitimate skip (not R''s twin)' /
   H1WS9D    7 '(7) Legitimate skip (look like members of same family)' /
   H1WS10D   7 '(7) Legitimate skip (strangers never confused)' /
   H1WS11D   7 '(7) Legitimate skip (teachers never confused)' /
   H1WS12D   1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             7 '(7) Legit skip (not study sib/3 or fewer HH member ages 12-1'
             /
   STUDSIBE  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (skip to next section)'
             8 '(8) Don''t know' /
   TWINE     0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legit skip (not study sib/4 or fewer HH member ages 12-1'
             /
   H1WS1E    1 '(1) A lot' 2 '(2) Some' 3 '(3) Little' 4 '(4) None'
             6 '(6) Refused'
             7 '(7) Legit skip (not study sib/4 or fewer HH member ages 12-1'
             /
   H1WS2E    1 '(1) A lot' 2 '(2) Some' 3 '(3) Little' 4 '(4) None'
             6 '(6) Refused'
             7 '(7) Legit skip (not study sib/4 or fewer HH member ages 12-1'
             /
   H1WS3E    1 '(1) Very often' 2 '(2) Often' 3 '(3) Sometimes'
             4 '(4) Seldom' 5 '(5) Never' 6 '(6) Refused'
             7 '(7) Legit skip (not study sib/4 or fewer HH member ages 12-1'
             /
   H1WS4E    1 '(1) Very often' 2 '(2) Often' 3 '(3) Sometimes'
             4 '(4) Seldom' 5 '(5) Never' 6 '(6) Refused'
             7 '(7) Legit skip (not study sib/4 or fewer HH member ages 12-1'
             /
   H1WS5E    1 '(1) A lot more' 2 '(2) A little more' 3 '(3) The same amount'
             4 '(4) A little less' 5 '(5) A lot less' 6 '(6) Not applicable'
             96 '(96) Refused'
            97 '(97) Legit skip (not study sib/4 or fewer HH member ages 12-'
             /
   H1WS6E    1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             7 '(7) Legitimate skip (R''s twin)' /
   H1WS7E    7 '(7) Legitimate skip (not R''s twin)' /
   H1WS8E    7 '(7) Legitimate skip (not R''s twin)' /
   H1WS9E    7 '(7) Legitimate skip (look like members of same family)' /
   H1WS10E   7 '(7) Legitimate skip' /
   H1WS11E   7 '(7) Legitimate skip' /
   H1WS12E   1 '(1) Not at all' 2 '(2) Very little' 3 '(3) Somewhat'
             4 '(4) Quite a bit' 5 '(5) Very much' 6 '(6) Refused'
             7 '(7) Legit skip (not study sib/4 or fewer HH member ages 12-1'
             /
   STUDSIBF  7 '(7) Legitimate skip (skip to next section)' /
   TWINF     7 '(7) Legit skip (not study sib/5 or fewer HH member ages 12-1'
             /
   H1WS1F    7 '(7) Legit skip (not study sib/5 or fewer HH member ages 12-1'
             /
   H1WS2F    7 '(7) Legit skip (not study sib/5 or fewer HH member ages 12-1'
             /
   H1WS3F    7 '(7) Legit skip (not study sib/5 or fewer HH member ages 12-1'
             /
   H1WS4F    7 '(7) Legit skip (not study sib/5 or fewer HH member ages 12-1'
             /
   H1WS5F    7 '(7) Legit skip (not study sib/5 or fewer HH member ages 12-1'
             /
   H1WS6F    7 '(7) Legit skip (not study sib/5 or fewer HH member ages 12-1'
             /
   H1WS7F    7 '(7) Legitimate skip (not R''s twin)' /
   H1WS8F    7 '(7) Legitimate skip' /
   H1WS9F    7 '(7) Legitimate skip' /
   H1WS10F   7 '(7) Legitimate skip' /
   H1WS11F   7 '(7) Legitimate skip' /
   H1WS12F   7 '(7) Legit skip (not study sib/5 or fewer HH member ages 12-1'
             /
   STUDSIBG  7 '(7) Legitimate skip (skip to next section)' /
   TWING     7 '(7) Legit skip (not study sib/6 or fewer HH member ages 12-1'
             /
   H1WS1G    7 '(7) Legit skip (not study sib/6 or fewer HH member ages 12-1'
             /
   H1WS2G    7 '(7) Legit skip (not study sib/6 or fewer HH member ages 12-1'
             /
   H1WS3G    7 '(7) Legit skip (not study sib/6 or fewer HH member ages 12-1'
             /
   H1WS4G    7 '(7) Legit skip (not study sib/6 or fewer HH member ages 12-1'
             /
   H1WS5G
            97 '(97) Legit skip (not study sib/6 or fewer HH member ages 12-'
             /
   H1WS6G    7 '(7) Legit skip (not study sib/6 or fewer HH member ages 12-1'
             /
   H1WS7G    7 '(7) Legitimate skip (not R''s twin)' /
   H1WS8G    7 '(7) Legitimate skip' /
   H1WS9G    7 '(7) Legitimate skip' /
   H1WS10G   7 '(7) Legitimate skip' /
   H1WS11G   7 '(7) Legitimate skip' /
   H1WS12G   7 '(7) Legit skip (not study sib/6 or fewer HH member ages 12-1'
             /
   H1WS13    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1IR1     1 '(1) Very unattractive' 2 '(2) Unattractive'
             3 '(3) About average' 4 '(4) Attractive' 5 '(5) Very attractive'
             6 '(6) Refused' 8 '(8) Don''t know' /
   H1IR2     1 '(1) Very unattractive' 2 '(2) Unattractive'
             3 '(3) About average' 4 '(4) Attractive' 5 '(5) Very attractive'
             6 '(6) Refused' 8 '(8) Don''t know' /
   H1IR3     1 '(1) Very poorly groomed' 2 '(2) Poorly groomed'
             3 '(3) About average' 4 '(4) Well groomed'
             5 '(5) Very well groomed' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1IR4     1 '(1) Very candid' 2 '(2) Moderately candid'
             3 '(3) Somewhat candid' 4 '(4) Not candid' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1IR5     1 '(1) Very immature' 2 '(2) Immature' 3 '(3) About average'
             4 '(4) Mature' 5 '(5) Very mature' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1IR6     0 '(0) No (skip to Q.9)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.9)' 8 '(8) Don''t know (skip to Q.9)'
             /
   H1IR7A    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7B    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7C    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7D    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7E    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7F    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7G    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7H    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7I    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7J    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7K    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7L    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7M    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7N    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7O    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7P    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7Q    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7R    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7S    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7T    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7U    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7V    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7W    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7X    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7Y    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7Z    0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7AA   0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7BB   0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7CC   0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR7DD   0 '(0) Not marked (skip to Q.9)' 1 '(1) Marked'
             7 '(7) Legitimate skip (3rd person not present)' /
   H1IR8A    0 '(0) No one under 6' 1 '(1) One person under 6'
             2 '(2) Two people under 6' 3 '(3) Three people under 6'
             4 '(4) Four people under 6'
             7 '(7) Legitimate skip (able to determine relationship)' /
   H1IR8B    0 '(0) No one 6-11' 1 '(1) One person 6-11'
             2 '(2) Two people 6-11' 3 '(3) Three people 6-11'
             7 '(7) Legitimate skip (able to determine relationship)' /
   H1IR8C    0 '(0) No one 12-18' 1 '(1) One person 12-18'
             2 '(2) Two people 12-18' 3 '(3) Three people 12-18'
             7 '(7) Legitimate skip (able to determine relationship)' /
   H1IR8D    0 '(0) No one 19 and older' 1 '(1) One person 19 and older'
             2 '(2) Two people 19 and older'
             3 '(3) Three people 19 and older'
             7 '(7) Legitimate skip (able to determine relationship)'
             8 '(8) Don''t know' /
   H1IR9     1 '(1) Inside respondent''s house'
             2 '(2) Immediately outside respondent''s house'
             3 '(3) In interviewer''s car' 4 '(4) At another location'
             6 '(6) Refused' 8 '(8) Don''t know' /
   H1IR10    1 '(1) Detached single-family house' 2 '(2) Mobile home/trailer'
             3 '(3) Single-family row/town house (2 or more attached units)'
             4 '(4) Divided house'
             5 '(5) Small apartment building (2-4 units)'
             6 '(6) Apt building (5 or more units)/free access to housing un'
             7 '(7) Apt building (5 or more units)/locked entry/doorman/both'
             8 '(8) Other' /
   H1IR11    1 '(1) Very well kept'
             2 '(2) Fairly well kept (needs cosmetic work)'
             3 '(3) Poorly kept (needs minor repairs)'
             4 '(4) Very poorly kept (needs major repairs)' 6 '(6) Refused'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   H1IR12    1 '(1) Rural (skip to Q.15)' 2 '(2) Suburban'
             3 '(3) Urban/residential only'
             4 '(4) 3 or more commercial properties/mostly retail'
             5 '(5) 3 or more commercial properties/mostly wholesale/industr'
             6 '(6) Other' 96 '(96) Refused' 98 '(98) Don''t know'
             99 '(99) Not applicable' /
   H1IR13    1 '(1) Detached single-family house' 2 '(2) Mobile home/trailer'
             3 '(3) Single-family row/town house (2 or more attached units)'
             4 '(4) Divided house'
             5 '(5) Small apartment building (2-4 units)'
             6 '(6) Apt building (5 or more units)/free access to housing un'
             7 '(7) Apt building (5 or more units)/locked entry/doorman/both'
             8 '(8) Other' 97 '(97) Legitimate skip (rural area)'
             99 '(99) Not applicable' /
   H1IR14    1 '(1) Very well kept'
             2 '(2) Fairly well kept (needs cosmetic work)'
             3 '(3) Poorly kept (needs minor repairs)'
             4 '(4) Very poorly kept (needs major repairs)' 6 '(6) Refused'
             97 '(97) Legitimate skip (rural area)' 98 '(98) Don''t know' /
   H1IR15    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1IR16    0 '(0) No interruptions (skip to Q.18)'
             96 '(96) Refused (skip to Q.18)'
             98 '(98) Don''t know (skip to Q.18)' /
   H1IR17A   0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (no interruptions)' /
   H1IR17B   0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (no interruptions)' /
   H1IR17C   0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (no interruptions)' /
   H1IR17D   0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (no interruptions)' /
   H1IR17E   0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (no interruptions)' /
   H1IR17F   0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (no interruptions)' /
   H1IR17G   0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (no interruptions)' /
   H1IR17H   0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (no interruptions)' /
   H1IR17I   0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (no interruptions)' /
   H1IR17J   0 '(0) Not marked' 1 '(1) Marked'
             7 '(7) Legitimate skip (no interruptions)' /
   H1IR18    0 '(0) No' 1 '(1) Yes' 2 '(2) Perhaps' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1IR19    0 '(0) No (skip to Q.21)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.21)'
             8 '(8) Don''t know (skip to Q.21)' /
   H1IR20    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never bored/impatient)'
             8 '(8) Don''t know' /
   H1IR21    0 '(0) No (skip to Q.23)' 1 '(1) Yes'
             6 '(6) Refused (skip to Q.23)'
             8 '(8) Don''t know (skip to Q.23)'
             9 '(9) Not applicable (skip to Q.23)' /
   H1IR22A   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22B   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22C   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22D   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22E   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22F   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22G   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22H   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22I   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22J   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22K   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22L   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22M   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22N   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22O   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22P   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22Q   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22R   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22S   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22T   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22U   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22V   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22W   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22X   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22Y   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22Z   0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22AA  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22BB  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22CC  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22DD  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22EE  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22FF  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22GG  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22HH  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22II  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22JJ  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22KK  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22LL  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR22MM  0 '(0) No' 1 '(1) Yes' 6 '(6) Refused'
             7 '(7) Legitimate skip (never embarrassed)' 8 '(8) Don''t know'
             /
   H1IR23    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1IR24    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know'
             9 '(9) Not applicable' /
   H1IR25    1 '(1) English' 2 '(2) Spanish' 3 '(3) Other' 6 '(6) Refused'
             8 '(8) Don''t know' /
   H1IR26    0 '(0) No' 1 '(1) Yes/in 1 eye' 2 '(2) Yes/in both eyes'
             6 '(6) Refused' 8 '(8) Don''t know' /
   H1IR27    0 '(0) No' 1 '(1) Yes' 6 '(6) Refused' 8 '(8) Don''t know' /
   H1IR28    1 '(1) ENTER COMMENTS' 2 '(2) NO COMMENTS' 6 '(6) Refused'
             8 '(8) Don''t know' /
   S1        10 '(10) 10 or younger' 19 '(19) 19 or older' /
   S2        1 '(1) Male' 2 '(2) Female' 9 '(9) Multiple response' /
   S3        13 '(13) My school doesn''t have grade levels of this kind'
             99 '(99) Multiple response' /
   S4        0 '(0) No (skip to Q.6)' 1 '(1) Yes (go to Q.5)'
             8 '(8) I don''t know (skip to Q.6)' /
   S5        1 '(1) Mexican/Mexican American' 2 '(2) Chicano/Chicana'
             3 '(3) Cuban' 4 '(4) Puerto Rican'
             5 '(5) Central/South American' 6 '(6) Other Hispanic'
             97 '(97) Legitimate skip' 98 '(98) I don''t know'
             99 '(99) Multiple response' /
   S6A       0 '(0) Not marked' 1 '(1) Marked' /
   S6B       0 '(0) Not marked' 1 '(1) Marked' /
   S6C       0 '(0) Not marked' 1 '(1) Marked' /
   S6D       0 '(0) Not marked' 1 '(1) Marked' /
   S6E       0 '(0) Not marked' 1 '(1) Marked' /
   S7        1 '(1) Chinese' 2 '(2) Filipino' 3 '(3) Japanese'
             4 '(4) Asian Indian' 5 '(5) Korean' 6 '(6) Vietnamese'
             7 '(7) Other' 97 '(97) Legitimate skip'
             99 '(99) Multiple response' /
   S8        0 '(0) No' 1 '(1) Yes' /
   S9        1 '(1) This is my first year' 2 '(2) This is my second year'
             3 '(3) This is my third year' 4 '(4) This is my fourth year'
             5 '(5) This is my fifth year'
             6 '(6) I''ve been her more than five years' /
   S10       0 '(0) Not marked' 1 '(1) Marked' /
   S10A      1 '(1) A' 2 '(2) B' 3 '(3) C' 4 '(4) D or lower'
             5 '(5) I didn''t take this subject' 7 '(7) Legitimate skip'
             8 '(8) I don''t know' 9 '(9) Multiple response' /
   S10B      1 '(1) A' 2 '(2) B' 3 '(3) C' 4 '(4) D or lower'
             5 '(5) I didn''t take this subject' 7 '(7) Legitimate skip'
             8 '(8) I don''t know' 9 '(9) Multiple response' /
   S10C      1 '(1) A' 2 '(2) B' 3 '(3) C' 4 '(4) D or lower'
             5 '(5) I didn''t take this subject' 7 '(7) Legitimate skip'
             8 '(8) I don''t know' 9 '(9) Multiple response' /
   S10D      1 '(1) A' 2 '(2) B' 3 '(3) C' 4 '(4) D or lower'
             5 '(5) I didn''t take this subject' 7 '(7) Legitimate skip'
             8 '(8) I don''t know' 9 '(9) Multiple response' /
   S11       0 '(0) No (skip to Q.17)' 1 '(1) Yes (go to Q.12)' /
   S12       1 '(1) 8th grade or less'
             2 '(2) >8th grade/didn''t graduate high school'
             3 '(3) High school graduate' 4 '(4) Completed a GED'
             5 '(5) Business/trade/voc. school after high school'
             6 '(6) College/didn''t graduate'
             7 '(7) Graduated from college/university'
             8 '(8) Prof training beyond 4-year college/univ'
             9 '(9) Went to school/but I don''t know level'
             10 '(10) She never went to school'
             11 '(11) I don''t know if she went to school'
             97 '(97) Legitimate skip' 99 '(99) Multiple response' /
   S13       0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip'
             8 '(8) I don''t know' /
   S14       1 '(1) Homemaker' 2 '(2) Professional 1/doctor/lawyer/scientist'
             3 '(3) Professional 2/teacher/librarian/nurse'
             4 '(4) Manager/executive/director'
             5 '(5) Technical/computer specialist/radiologist'
             6 '(6) Office worker/bookkeepers/clerk/secretary'
             7 '(7) Sales worker/insurance agent/store clerk'
             8 '(8) Restaurant worker/personal service/waitress/housekeeper'
             9 '(9) Craftsperson/toolmaker/woodworker'
             10 '(10) Construction worker/carpenter/crane operator'
             11 '(11) Mechanic/electrician/plumber/machinist'
             12 '(12) Factory worker/laborer/assembler/janitor'
             13 '(13) Transportation/bus or taxi driver'
             14 '(14) Military/security/police officer/soldier/fire fighter'
             15 '(15) Farm/fishery worker'
             16 '(16) She doesn''t work/but she isn''t disabled'
             17 '(17) She is disabled/therefore doesn''t work'
             18 '(18) She is retired'
             19 '(19) She receives Public Assistance/welfare'
             20 '(20) She works/but I don''t know what her job is'
             97 '(97) Legitimate skip (no MOM)' 99 '(99) Multiple response' /
   S15       0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip'
             8 '(8) I don''t know' 9 '(9) Multiple response' /
   S16       1 '(1) Not at all' 2 '(2) A little' 3 '(3) Some'
             4 '(4) Quite a bit' 5 '(5) Very much' 7 '(7) Legitimate skip'
             9 '(9) Multiple response' /
   S17       0 '(0) No (skip to Q.23)' 1 '(1) Yes (got to Q.18)'
             9 '(9) Multiple response' /
   S18       1 '(1) 8th grade or less'
             2 '(2) >8th grade/didn''t graduate high school'
             3 '(3) High school graduate' 4 '(4) Completed a GED'
             5 '(5) Business/trade/voc. school after high school'
             6 '(6) College/didn''t graduate'
             7 '(7) Graduated from college/university'
             8 '(8) Prof training beyond 4-year college/univ'
             9 '(9) Went to school/but I don''t know level'
             10 '(10) He never went to school'
             11 '(11) I don''t know if he went to school'
             97 '(97) Legitimate skip' 99 '(99) Multiple response' /
   S19       0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip'
             8 '(8) I don''t know' /
   S20       1 '(1) Homemaker' 2 '(2) Professional 1/doctor/lawyer/scientist'
             3 '(3) Professional 2/teacher/librarian/nurse'
             4 '(4) Manager/executive/director'
             5 '(5) Technical/computer specialist/radiologist'
             6 '(6) Office worker/bookkeepers/clerk/secretary'
             7 '(7) Sales worker/insurance agent/store clerk'
             8 '(8) Restaurant worker/personal service/waitress/housekeeper'
             9 '(9) Craftsperson/toolmaker/woodworker'
             10 '(10) Construction worker/carpenter/crane operator'
             11 '(11) Mechanic/electrician/plumber/machinist'
             12 '(12) Factory worker/laborer/assembler/janitor'
             13 '(13) Transportation/bus or taxi driver'
             14 '(14) Military/security/police officer/soldier/fire fighter'
             15 '(15) Farm/fishery worker'
             16 '(16) He doesn''t work/but he isn''t disabled'
             17 '(17) He is disabled/therefore doesn''t work'
             18 '(18) He is retired'
             19 '(19) He receives Public Assistance/welfare'
             20 '(20) He works/but I don''t know what his job is'
             97 '(97) Legitimate skip (no MOM)' 99 '(99) Multiple response' /
   S21       0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip'
             8 '(8) I don''t know' /
   S22       1 '(1) Not at all' 2 '(2) A little' 3 '(3) Some'
             4 '(4) Quite a bit' 5 '(5) Very much' 7 '(7) Legitimate skip'
             9 '(9) Multiple response' /
   S23       0 '(0) No (skip to Q.25)' 1 '(1) Yes (got to Q.24)' /
   S24       0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   S25       0 '(0) No (skip to Q.27)' 1 '(1) Yes (got to Q.26)' /
   S26       0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   S27       1 '(1) 1/I live by myself (skip to instructions on page 7)'
             6 '(6) 6 or more'
            7 '(7) Don''t live in regular household/live in shelter/group ho'
             99 '(99) Multiple response' /
   S28       0 '(0) 0 (skip to instructions on page 7)' 1 '(1) 1' 2 '(2) 2'
             3 '(3) 3' 4 '(4) 4' 5 '(5) 5' 6 '(6) 6 or more'
             97 '(97) Legitimate skip'
             98 '(98) Error (If Q.28>Q.27, recoded to 98=error)'
             99 '(99) Multiple response' /
   S29A      0 '(0) Not marked' 1 '(1) Marked' /
   S29B      0 '(0) Not marked' 1 '(1) Marked' /
   S29C      0 '(0) Not marked' 1 '(1) Marked' /
   S29D      0 '(0) Not marked' 1 '(1) Marked' /
   S29E      0 '(0) Not marked' 1 '(1) Marked' /
   S30A      0 '(0) Not marked' 1 '(1) Marked' /
   S30B      0 '(0) Not marked' 1 '(1) Marked' /
   S30C      0 '(0) Not marked' 1 '(1) Marked' /
   S30D      0 '(0) Not marked' 1 '(1) Marked' /
   S30E      0 '(0) Not marked' 1 '(1) Marked' /
   S31A      0 '(0) Not marked' 1 '(1) Marked' /
   S31B      0 '(0) Not marked' 1 '(1) Marked' /
   S31C      0 '(0) Not marked' 1 '(1) Marked' /
   S31D      0 '(0) Not marked' 1 '(1) Marked' /
   S31E      0 '(0) Not marked' 1 '(1) Marked' /
   S32A      0 '(0) Not marked' 1 '(1) Marked' /
   S32B      0 '(0) Not marked' 1 '(1) Marked' /
   S32C      0 '(0) Not marked' 1 '(1) Marked' /
   S32D      0 '(0) Not marked' 1 '(1) Marked' /
   S32E      0 '(0) Not marked' 1 '(1) Marked' /
   S33A      0 '(0) Not marked' 1 '(1) Marked' /
   S33B      0 '(0) Not marked' 1 '(1) Marked' /
   S33C      0 '(0) Not marked' 1 '(1) Marked' /
   S33D      0 '(0) Not marked' 1 '(1) Marked' /
   S33E      0 '(0) Not marked' 1 '(1) Marked' /
   S34A      0 '(0) Not marked' 1 '(1) Marked' /
   S34B      0 '(0) Not marked' 1 '(1) Marked' /
   S34C      0 '(0) Not marked' 1 '(1) Marked' /
   S34D      0 '(0) Not marked' 1 '(1) Marked' /
   S34E      0 '(0) Not marked' 1 '(1) Marked' /
   S35A      0 '(0) Not marked' 1 '(1) Marked' /
   S35B      0 '(0) Not marked' 1 '(1) Marked' /
   S35C      0 '(0) Not marked' 1 '(1) Marked' /
   S35D      0 '(0) Not marked' 1 '(1) Marked' /
   S35E      0 '(0) Not marked' 1 '(1) Marked' /
   S36A      0 '(0) Not marked' 1 '(1) Marked' /
   S36B      0 '(0) Not marked' 1 '(1) Marked' /
   S36C      0 '(0) Not marked' 1 '(1) Marked' /
   S36D      0 '(0) Not marked' 1 '(1) Marked' /
   S36E      0 '(0) Not marked' 1 '(1) Marked' /
   S37A      0 '(0) Not marked' 1 '(1) Marked' /
   S37B      0 '(0) Not marked' 1 '(1) Marked' /
   S37C      0 '(0) Not marked' 1 '(1) Marked' /
   S37D      0 '(0) Not marked' 1 '(1) Marked' /
   S37E      0 '(0) Not marked' 1 '(1) Marked' /
   S38A      0 '(0) Not marked' 1 '(1) Marked' /
   S38B      0 '(0) Not marked' 1 '(1) Marked' /
   S38C      0 '(0) Not marked' 1 '(1) Marked' /
   S38D      0 '(0) Not marked' 1 '(1) Marked' /
   S38E      0 '(0) Not marked' 1 '(1) Marked' /
   S39A      0 '(0) Not marked' 1 '(1) Marked' /
   S39B      0 '(0) Not marked' 1 '(1) Marked' /
   S39C      0 '(0) Not marked' 1 '(1) Marked' /
   S39D      0 '(0) Not marked' 1 '(1) Marked' /
   S39E      0 '(0) Not marked' 1 '(1) Marked' /
   S40A      0 '(0) Not marked' 1 '(1) Marked' /
   S40B      0 '(0) Not marked' 1 '(1) Marked' /
   S40C      0 '(0) Not marked' 1 '(1) Marked' /
   S40D      0 '(0) Not marked' 1 '(1) Marked' /
   S40E      0 '(0) Not marked' 1 '(1) Marked' /
   S41A      0 '(0) Not marked' 1 '(1) Marked' /
   S41B      0 '(0) Not marked' 1 '(1) Marked' /
   S41C      0 '(0) Not marked' 1 '(1) Marked' /
   S41D      0 '(0) Not marked' 1 '(1) Marked' /
   S41E      0 '(0) Not marked' 1 '(1) Marked' /
   S42A      0 '(0) Not marked' 1 '(1) Marked' /
   S42B      0 '(0) Not marked' 1 '(1) Marked' /
   S42C      0 '(0) Not marked' 1 '(1) Marked' /
   S42D      0 '(0) Not marked' 1 '(1) Marked' /
   S42E      0 '(0) Not marked' 1 '(1) Marked' /
   S43A      0 '(0) Not marked' 1 '(1) Marked' /
   S43B      0 '(0) Not marked' 1 '(1) Marked' /
   S43C      0 '(0) Not marked' 1 '(1) Marked' /
   S43D      0 '(0) Not marked' 1 '(1) Marked' /
   S43E      0 '(0) Not marked' 1 '(1) Marked' /
   S44A1     0 '(0) Not marked' 1 '(1) Marked' /
   S44A2     0 '(0) Not marked' 1 '(1) Marked' /
   S44A3     0 '(0) Not marked' 1 '(1) Marked' /
   S44A4     0 '(0) Not marked' 1 '(1) Marked' /
   S44A5     0 '(0) Not marked' 1 '(1) Marked' /
   S44A6     0 '(0) Not marked' 1 '(1) Marked' /
   S44A7     0 '(0) Not marked' 1 '(1) Marked' /
   S44A8     0 '(0) Not marked' 1 '(1) Marked' /
   S44A9     0 '(0) Not marked' 1 '(1) Marked' /
   S44A10    0 '(0) Not marked' 1 '(1) Marked' /
   S44A11    0 '(0) Not marked' 1 '(1) Marked' /
   S44A12    0 '(0) Not marked' 1 '(1) Marked' /
   S44A13    0 '(0) Not marked' 1 '(1) Marked' /
   S44A14    0 '(0) Not marked' 1 '(1) Marked' /
   S44A15    0 '(0) Not marked' 1 '(1) Marked' /
   S44A16    0 '(0) Not marked' 1 '(1) Marked' /
   S44A17    0 '(0) Not marked' 1 '(1) Marked' /
   S44A18    0 '(0) Not marked' 1 '(1) Marked' /
   S44A19    0 '(0) Not marked' 1 '(1) Marked' /
   S44A20    0 '(0) Not marked' 1 '(1) Marked' /
   S44A21    0 '(0) Not marked' 1 '(1) Marked' /
   S44A22    0 '(0) Not marked' 1 '(1) Marked' /
   S44A23    0 '(0) Not marked' 1 '(1) Marked' /
   S44A24    0 '(0) Not marked' 1 '(1) Marked' /
   S44A25    0 '(0) Not marked' 1 '(1) Marked' /
   S44A26    0 '(0) Not marked' 1 '(1) Marked' /
   S44A27    0 '(0) Not marked' 1 '(1) Marked' /
   S44A28    0 '(0) Not marked' 1 '(1) Marked' /
   S44A29    0 '(0) Not marked' 1 '(1) Marked' /
   S44A30    0 '(0) Not marked' 1 '(1) Marked' /
   S44A31    0 '(0) Not marked' 1 '(1) Marked' /
   S44A32    0 '(0) Not marked' 1 '(1) Marked' /
   S44A33    0 '(0) Not marked' 1 '(1) Marked' /
   S44       0 '(0) Not marked' 1 '(1) Marked' /
   S45A      0 '(0) No chance' 1 '(1) 1' 2 '(2) Some chance' 3 '(3) 3'
             4 '(4) About 50-50' 5 '(5) 5' 6 '(6) Pretty likely' 7 '(7) 7'
             8 '(8) It will happen' 99 '(99) Multiple response' /
   S45B      0 '(0) No chance' 1 '(1) 1' 2 '(2) Some chance' 3 '(3) 3'
             4 '(4) About 50-50' 5 '(5) 5' 6 '(6) Pretty likely' 7 '(7) 7'
             8 '(8) It will happen' 99 '(99) Multiple response' /
   S45C      0 '(0) No chance' 1 '(1) 1' 2 '(2) Some chance' 3 '(3) 3'
             4 '(4) About 50-50' 5 '(5) 5' 6 '(6) Pretty likely' 7 '(7) 7'
             8 '(8) It will happen' 99 '(99) Multiple response' /
   S45D      0 '(0) No chance' 1 '(1) 1' 2 '(2) Some chance' 3 '(3) 3'
             4 '(4) About 50-50' 5 '(5) 5' 6 '(6) Pretty likely' 7 '(7) 7'
             8 '(8) It will happen' 99 '(99) Multiple response' /
   S45E      0 '(0) No chance' 1 '(1) 1' 2 '(2) Some chance' 3 '(3) 3'
             4 '(4) About 50-50' 5 '(5) 5' 6 '(6) Pretty likely' 7 '(7) 7'
             8 '(8) It will happen' 99 '(99) Multiple response' /
   S45F      0 '(0) No chance' 1 '(1) 1' 2 '(2) Some chance' 3 '(3) 3'
             4 '(4) About 50-50' 5 '(5) 5' 6 '(6) Pretty likely' 7 '(7) 7'
             8 '(8) It will happen' 99 '(99) Multiple response' /
   S46A      0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost everyday' 4 '(4) Everyday'
             9 '(9) Multiple response' /
   S46B      0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost everyday' 4 '(4) Everyday'
             9 '(9) Multiple response' /
   S46C      0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost everyday' 4 '(4) Everyday'
             9 '(9) Multiple response' /
   S46D      0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost everyday' 4 '(4) Everyday'
             9 '(9) Multiple response' /
   S47       0 '(0) None' 1 '(1) Less than 1 hour' 2 '(2) 1-2 hours'
             3 '(3) 3-4 hours' 4 '(4) More than 4 hours'
             9 '(9) Multiple response' /
   S48       1 '(1) I try very had to do my best'
             2 '(2) I try hard enough/but not as hard as I could'
             3 '(3) I don''t try very hard' 4 '(4) I never try at all'
             9 '(9) Multiple response' /
   S49       0 '(0) No' 1 '(1) Yes' /
   S50       1 '(1) Excellent' 2 '(2) Very good' 3 '(3) Good' 4 '(4) Fair'
             5 '(5) Poor' 9 '(9) Multiple response' /
   S51       1 '(1) Within the last 12 months' 2 '(2) 1-2 years ago'
             3 '(3) More than 2 years ago' 4 '(4) I don''t remember'
             5 '(5) I''ve never had a physical exam' /
   S52       1 '(1) Within the last 12 months' 2 '(2) 1-2 years ago'
             3 '(3) More than 2 years ago' 4 '(4) I don''t remember'
             5 '(5) I''ve never had a dental exam' /
   S53       1 '(1) Within the last 12 months' 2 '(2) 1-2 years ago'
             3 '(3) More than 2 years ago' 4 '(4) I don''t remember'
             5 '(5) I''ve never had any of these services'
             9 '(9) Multiple response' /
   S54       0 '(0) No (skip to Q.56)' 1 '(1) Yes (go to Q.55)' /
   S55A      0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   S55B      0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   S55C      0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   S55D      0 '(0) No' 1 '(1) Yes' 7 '(7) Legitimate skip' /
   S56       0 '(0) No' 1 '(1) Yes' /
   S57       0 '(0) No' 1 '(1) Yes' /
   S58       0 '(0) No' 1 '(1) Yes' /
   S59A      0 '(0) Never' 1 '(1) Once or twice' 2 '(2) Once a month or less'
             3 '(3) 2 or 3 days a month' 4 '(4) Once or twice a week'
             5 '(5) 3-5 days a week' 6 '(6) Nearly everyday'
             99 '(99) Multiple response' /
   S59B      0 '(0) Never' 1 '(1) Once or twice' 2 '(2) Once a month or less'
             3 '(3) 2 or 3 days a month' 4 '(4) Once or twice a week'
             5 '(5) 3-5 days a week' 6 '(6) Nearly everyday' /
   S59C      0 '(0) Never' 1 '(1) Once or twice' 2 '(2) Once a month or less'
             3 '(3) 2 or 3 days a month' 4 '(4) Once or twice a week'
             5 '(5) 3-5 days a week' 6 '(6) Nearly everyday'
             99 '(99) Multiple response' /
   S59D      0 '(0) Never' 1 '(1) Once or twice' 2 '(2) Once a month or less'
             3 '(3) 2 or 3 days a month' 4 '(4) Once or twice a week'
             5 '(5) 3-5 days a week' 6 '(6) Nearly everyday'
             99 '(99) Multiple response' /
   S59E      0 '(0) Never' 1 '(1) Once or twice' 2 '(2) Once a month or less'
             3 '(3) 2 or 3 days a month' 4 '(4) Once or twice a week'
             5 '(5) 3-5 days a week' 6 '(6) Nearly everyday'
             99 '(99) Multiple response' /
   S59F      0 '(0) Never' 1 '(1) Once or twice' 2 '(2) Once a month or less'
             3 '(3) 2 or 3 days a month' 4 '(4) Once or twice a week'
             5 '(5) 3-5 days a week' 6 '(6) Nearly everyday'
             99 '(99) Multiple response' /
   S59G      0 '(0) Never' 1 '(1) Once or twice' 2 '(2) Once a month or less'
             3 '(3) 2 or 3 days a month' 4 '(4) Once or twice a week'
             5 '(5) 3-5 days a week' 6 '(6) Nearly everyday'
             99 '(99) Multiple response' /
   S60A      0 '(0) Never' 1 '(1) Rarely' 2 '(2) Occasionally' 3 '(3) Often'
             4 '(4) Everyday' 9 '(9) Multiple response' /
   S60B      0 '(0) Never' 1 '(1) Rarely' 2 '(2) Occasionally' 3 '(3) Often'
             4 '(4) Everyday' 9 '(9) Multiple response' /
   S60C      0 '(0) Never' 1 '(1) Rarely' 2 '(2) Occasionally' 3 '(3) Often'
             4 '(4) Everyday' 9 '(9) Multiple response' /
   S60D      0 '(0) Never' 1 '(1) Rarely' 2 '(2) Occasionally' 3 '(3) Often'
             4 '(4) Everyday' 9 '(9) Multiple response' /
   S60E      0 '(0) Never' 1 '(1) Rarely' 2 '(2) Occasionally' 3 '(3) Often'
             4 '(4) Everyday' 9 '(9) Multiple response' /
   S60F      0 '(0) Never' 1 '(1) Rarely' 2 '(2) Occasionally' 3 '(3) Often'
             4 '(4) Everyday' 9 '(9) Multiple response' /
   S60G      0 '(0) Never' 1 '(1) Rarely' 2 '(2) Occasionally' 3 '(3) Often'
             4 '(4) Everyday' 9 '(9) Multiple response' /
   S60H      0 '(0) Never' 1 '(1) Rarely' 2 '(2) Occasionally' 3 '(3) Often'
             4 '(4) Everyday' 9 '(9) Multiple response' /
   S60I      0 '(0) Never' 1 '(1) Rarely' 2 '(2) Occasionally' 3 '(3) Often'
             4 '(4) Everyday' 9 '(9) Multiple response' /
   S60J      0 '(0) Never' 1 '(1) Rarely' 2 '(2) Occasionally' 3 '(3) Often'
             4 '(4) Everyday' 9 '(9) Multiple response' /
   S60K      0 '(0) Never' 1 '(1) Rarely' 2 '(2) Occasionally' 3 '(3) Often'
             4 '(4) Everyday' 9 '(9) Multiple response' /
   S60L      0 '(0) Never' 1 '(1) Rarely' 2 '(2) Occasionally' 3 '(3) Often'
             4 '(4) Everyday' 9 '(9) Multiple response' /
   S60M      0 '(0) Never' 1 '(1) Rarely' 2 '(2) Occasionally' 3 '(3) Often'
             4 '(4) Everyday' 9 '(9) Multiple response' /
   S60N      0 '(0) Never' 1 '(1) Rarely' 2 '(2) Occasionally' 3 '(3) Often'
             4 '(4) Everyday' 9 '(9) Multiple response' /
   S60O      0 '(0) Never' 1 '(1) Rarely' 2 '(2) Occasionally' 3 '(3) Often'
             4 '(4) Everyday' 9 '(9) Multiple response' /
   S61A      0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost everyday' 4 '(4) Everyday'
             9 '(9) Multiple response' /
   S61B      0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost everyday' 4 '(4) Everyday'
             9 '(9) Multiple response' /
   S61C      0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost everyday' 4 '(4) Everyday'
             9 '(9) Multiple response' /
   S61D      0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost everyday' 4 '(4) Everyday'
             9 '(9) Multiple response' /
   S61E      0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost everyday' 4 '(4) Everyday'
             9 '(9) Multiple response' /
   S61F      0 '(0) Never' 1 '(1) Just a few times' 2 '(2) About once a week'
             3 '(3) Almost everyday' 4 '(4) Everyday'
             9 '(9) Multiple response' /
   S62A      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62B      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62C      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62D      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62E      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62F      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62G      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62H      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62I      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62J      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62K      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62L      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62M      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62N      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62O      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62P      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62Q      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S62R      1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 9 '(9) Multiple response' /
   S63       0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 to 5 times'
             3 '(3) 6 or 7 times' 4 '(4) More than 7 times'
             9 '(9) Multiple response' /
   S64       0 '(0) Never' 1 '(1) 1 or 2 times' 2 '(2) 3 to 5 times'
             3 '(3) 6 or 7 times' 4 '(4) More than 7 times'
             9 '(9) Multiple response' /
   S65       0 '(0) No' 1 '(1) Yes' 9 '(9) Multiple response' /
   S66       0 '(0) Not marked' 1 '(1) Marked' /
   S67       0 '(0) Not marked' 1 '(1) Marked' /
   S68       0 '(0) Not marked' 1 '(1) Marked' /
   PA1       1 '(1) Male' 2 '(2) Female' /
   PA2       996 '(996) Respondent refused to answer' /
   PA3       0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA4       0 '(0) No (skip to A6)' 1 '(1) Yes (go to A5)'
             6 '(6) Respondent refused to answer' /
   PA5_1     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not of Hispanic/Latino origin)' /
   PA5_2     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not of Hispanic/Latino origin)' /
   PA5_3     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not of Hispanic/Latino origin)' /
   PA5_4     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not of Hispanic/Latino origin)' /
   PA5_5     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not of Hispanic/Latino origin)' /
   PA5_6     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not of Hispanic/Latino origin)' /
   PA5_7     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not of Hispanic/Latino origin)' /
   PA6_1     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' /
   PA6_2     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' /
   PA6_3     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' /
   PA6_4     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' /
   PA6_5     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' /
   PA7_1     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PA7_2     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PA7_3     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PA7_4     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PA7_5     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PA7_6     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PA7_7     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PA7_8     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PA8B      1 '(1) White' 2 '(2) Black/African American'
             3 '(3) American Indian/Native American'
             4 '(4) Asian/Pacific Islander' 5 '(5) Other'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (answered only one race)' /
   PA9       1 '(1) White' 2 '(2) Black/African American'
             3 '(3) American Indian/Native American'
             4 '(4) Asian/Pacific Islander' /
   PA10      1 '(1) Single/never married (go to A11)'
             2 '(2) Married (skip to A12)' 3 '(3) Widowed (go to A11)'
             4 '(4) Divorced (go to A11)' 5 '(5) Separated (go to A11)'
             6 '(6) Respondent refused to answer' /
   PA11      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (currently married)' /
   PA12      1 '(1) 8th grade or less'
             2 '(2) >8th grade/didn''t graduate high school'
             3 '(3) Business/trade/voc. school instead high school'
             4 '(4) High school graduate' 5 '(5) Completed a GED'
             6 '(6) Business/trade/voc. school after high school'
             7 '(7) College/didn''t graduate'
             8 '(8) Graduated from college/university'
             9 '(9) Prof training beyond 4-year college/univ'
             10 '(10) Never went to school'
             96 '(96) Respondent refused to answer' /
   PA13      0 '(0) No (go to A14)' 1 '(1) Yes (skip to A17)'
             6 '(6) Respondent refused to answer' /
   PA14      0 '(0) No (skip to A16)' 1 '(1) Yes (go to A15)'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (works outside the home)' /
   PA15      0 '(0) No (skip to A16)' 1 '(1) Yes (go to A15)'
             6 '(6) Respondent refused to answer'
            7 '(7) Legit skip (hasn''t worked outside home in past 12 months'
             /
   PA16      0 '(0) No (skip to A18)' 1 '(1) Yes (skip to A18)'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (works outside the home)' /
   PA17      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (doesn''t work outside the home)' /
   PA18      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA19      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA20      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA21      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA22      1 '(1) Adventist' 2 '(2) AME/AME Zion/CME'
             3 '(3) Assemblies of God' 5 '(5) Baptist' 6 '(6) Buddhist'
             7 '(7) Catholic' 8 '(8) Christian Church (Disciples of Christ)'
             9 '(9) Christian Science' 10 '(10) Congregational'
             11 '(11) Eastern Orthodox' 12 '(12) Episcopal'
             13 '(13) Friends/Quaker' 14 '(14) Hindu' 15 '(15) Holiness'
             16 '(16) Islam/Moslem/Muslim' 17 '(17) Jehovah''s Witness'
            18 '(18) Jewish-Conservative/Reformed/Orthodox/Reconstructionist'
             19 '(19) Later Day Saints (Mormon)' 20 '(20) Lutheran'
             21 '(21) Methodist' 23 '(23) Other Protestant'
             24 '(24) Other religion' 25 '(25) Pentecostal'
             26 '(26) Presbyterian' 27 '(27) Unitarian'
             28 '(28) None (skip to A27)'
             96 '(96) Respondent refused to answer' /
   PA23      1 '(1) Once a week or more'
             2 '(2) Less than once a week/at least once a month'
             3 '(3) Less than once a month' 4 '(4) Never'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no religion)' /
   PA24      1 '(1) Very important' 2 '(2) Fairly important'
             3 '(3) Fairly unimportant' 4 '(4) Not important at all'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no religion)' /
   PA25      1 '(1) At least once a day' 2 '(2) At least once a week'
             3 '(3) At least once a month'
             4 '(4) From time to time/but less than once a month'
             5 '(5) Never' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no religion)' /
   PA26      1 '(1) Agree' 2 '(2) Disagree'
             3 '(3) Religion has no sacred scriptures'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no religion)' 8 '(8) Don''t know' /
   PA27A     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA27B     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA27C     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA27D     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA27E     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA28A     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA28B     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA28C     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA28D     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA28E     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA28F     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA28G     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA28H     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA28I     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA28J     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA30      1 '(1) Near old workplace' 2 '(2) Near current workplace'
             3 '(3) Had outgrown previous housing'
             4 '(4) Affordable good housing' 5 '(5) Less crime'
             6 '(6) Less illegal activity by adolescents'
             7 '(7) Close to friends/relatives' 8 '(8) Better schools'
             9 '(9) Children of appropriate ages' 10 '(10) Born here'
             96 '(96) Respondent refused to answer' 97 '(97) Legitimate skip'
             /
   PA31      1 '(1) Definitely would' 2 '(2) Probably would' 3 '(3) Might'
             4 '(4) Probably would not' 5 '(5) Definitely would not'
             6 '(6) Respondent refused to answer' /
   PA32      1 '(1) Definitely would' 2 '(2) Probably would' 3 '(3) Might'
             4 '(4) Probably would not' 5 '(5) Definitely would not'
             6 '(6) Respondent refused to answer' /
   PA33      1 '(1) No problem at all' 2 '(2) A small problem'
             3 '(3) A big problem' 6 '(6) Respondent refused to answer' /
   PA34      1 '(1) No problem at all' 2 '(2) A small problem'
             3 '(3) A big problem' 6 '(6) Respondent refused to answer' /
   PA35      1 '(1) Not at all' 2 '(2) Some' 3 '(3) Very much'
             6 '(6) Respondent refused to answer' /
   PA36      1 '(1) To be well-behaved' 2 '(2) To be popular'
             3 '(3) To think for himself' 4 '(4) To work hard'
             5 '(5) To help others' 6 '(6) Respondent refused to answer' /
   PA37      1 '(1) To be well-behaved' 2 '(2) To be popular'
             3 '(3) To think for herself' 4 '(4) To work hard'
             5 '(5) To help others' 6 '(6) Respondent refused to answer' /
   PA38      0 '(0) No (skip to A40)' 1 '(1) Yes (go to A39)'
             6 '(6) Respondent refused to answer' /
   PA39      996 '(996) Respondent refused to answer'
             997 '(997) Legitimate skip (never married)' /
   PA40      0 '(0) 0 (skip to A55)' 1 '(1) 1 (go to A41)'
             2 '(2) 2 (go to A41)' 3 '(3) 3 (go to A41)'
             4 '(4) 4 (go to A41)' 5 '(5) 5 (go to A41)'
             6 '(6) 6 or more (go to A41)'
             96 '(96) Respondent refused to answer' /
   PA41_1    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_2    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_3    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_4    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_5    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_6    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_7    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_8    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_9    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_10   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_11   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_12   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_13   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_14   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_15   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_16   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_17   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_18   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA41_19   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA42      1 '(1) Marriage' 2 '(2) Marriage-like'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA43      0 '(0) No (go to A44)' 1 '(1) Yes (skip to A45)'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no marriage/marriage-like relation last 18yr'
             /
   PA44      1 '(1) Separation' 2 '(2) Divorce' 3 '(3) Annulment'
             4 '(4) Death' 5 '(5) Other' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (relationship still going on)' /
   PA46_1    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_2    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_3    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_4    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_5    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_6    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_7    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_8    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_9    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_10   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_11   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_12   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_13   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_14   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_15   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_16   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_17   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_18   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA46_19   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA47      1 '(1) Marriage' 2 '(2) Marriage-like'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA48      0 '(0) No (go to A49)' 1 '(1) Yes (skip to A50)'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (no/only 1 marriage-like relationship last 18'
             /
   PA49      1 '(1) Separation' 2 '(2) Divorce' 3 '(3) Annulment'
             4 '(4) Death' 5 '(5) Other' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (relationship still going on)' /
   PA51_1    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_2    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_3    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_4    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_5    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_6    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_7    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_8    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_9    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_10   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_11   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_12   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_13   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_14   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_15   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_16   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_17   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_18   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA51_19   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA52      1 '(1) Marriage' 2 '(2) Marriage-like'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA53      0 '(0) No (go to A49)' 1 '(1) Yes (skip to A50)'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (2/fewer marriages/-like relationship last 18'
             /
   PA54      1 '(1) Separation' 2 '(2) Divorce' 3 '(3) Annulment'
             4 '(4) Death' 5 '(5) Other' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (relationship still going on)' /
   PA55      9996 '(9996) Respondent refused to answer' /
   PA56      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA57A     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA57B     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA57C     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA57D     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA57E     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA57F     0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PA58      1 '(1) Excellent' 2 '(2) Very good' 3 '(3) Good' 4 '(4) Fair'
             5 '(5) Poor' 6 '(6) Respondent refused to answer' /
   PA59      1 '(1) Very easy' 2 '(2) Somewhat easy' 3 '(3) Somewhat hard'
             4 '(4) Very hard' 6 '(6) Respondent refused to answer' /
   PA60      1 '(1) Never' 2 '(2) Rarely' 3 '(3) Sometimes'
             4 '(4) Most of the time' 5 '(5) Always'
             6 '(6) Respondent refused to answer' /
   PA61      1 '(1) Never' 2 '(2) Once a month or less'
             3 '(3) Two or three days a month' 4 '(4) Once or twice a week'
             5 '(5) 3-5 days a week' 6 '(6) Nearly everyday'
             96 '(96) Respondent refused to answer' /
   PA62      1 '(1) Never' 2 '(2) Once' 3 '(3) Twice' 4 '(4) Three times'
             5 '(5) Four times' 6 '(6) Five or more times'
             96 '(96) Respondent refused to answer' /
   PA63      0 '(0) No (skip to Section B)' 1 '(1) Yes (go to A64)'
             6 '(6) Respondent refused to answer' /
   PA64      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip' /
   PB2       1 '(1) Male' 2 '(2) Female' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no current spouse/partner)' /
   PB3       0 '(0) No (skip to B5)' 1 '(1) Yes (go to B4)'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no current spouse/partner)'
             8 '(8) Don''t know (skip to B5)' /
   PB4_1     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not of Hispanic/Latino origin)' /
   PB4_2     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not of Hispanic/Latino origin)' /
   PB4_3     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not of Hispanic/Latino origin)' /
   PB4_4     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not of Hispanic/Latino origin)' /
   PB4_5     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not of Hispanic/Latino origin)' /
   PB4_6     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not of Hispanic/Latino origin)' /
   PB4_7     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not of Hispanic/Latino origin)' /
   PB5_1     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no current spouse/partner)' /
   PB5_2     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no current spouse/partner)' /
   PB5_3     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no current spouse/partner)' /
   PB5_4     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no current spouse/partner)' /
   PB5_5     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no current spouse/partner)' /
   PB6_1     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PB6_2     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PB6_3     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PB6_4     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PB6_5     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PB6_6     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PB6_7     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PB6_8     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (not Asian/Pacific Islander)' /
   PB7       1 '(1) Adventist' 2 '(2) AME/AME Zion/CME'
             3 '(3) Assemblies of God' 5 '(5) Baptist' 6 '(6) Buddhist'
             7 '(7) Catholic' 8 '(8) Christian Church (Disciples of Christ)'
             9 '(9) Christian Science' 10 '(10) Congregational'
             11 '(11) Eastern Orthodox' 12 '(12) Episcopal'
             13 '(13) Friends/Quaker' 14 '(14) Hindu' 15 '(15) Holiness'
             16 '(16) Islam/Moslem/Muslim' 17 '(17) Jehovah''s Witness'
            18 '(18) Jewish-Conservative/Reformed/Orthodox/Reconstructionist'
             19 '(19) Later Day Saints (Mormon)' 20 '(20) Lutheran'
             21 '(21) Methodist' 23 '(23) Other Protestant'
             24 '(24) Other religion' 25 '(25) Pentecostal'
             26 '(26) Presbyterian' 27 '(27) Unitarian' 28 '(28) None'
             96 '(96) Respondent refused to answer'
             97 '(97) Legitimate skip (no current spouse/partner)' /
   PB8       1 '(1) 8th grade or less'
             2 '(2) >8th grade/didn''t graduate high school'
             3 '(3) Business/trade/voc. school instead high school'
             4 '(4) High school graduate' 5 '(5) Completed a GED'
             6 '(6) Business/trade/voc. school after high school'
             7 '(7) College/didn''t graduate'
             8 '(8) Graduated from college/university'
             9 '(9) Prof training beyond 4-year college/univ'
             10 '(10) Never went to school'
             11 '(11) (He/she) went to school/but doesn''t know how far'
             12 '(12) Doesn''t know if (he/she) went to school'
             96 '(96) Respondent refused to answer'
             97 '(97) Legitimate skip (no current spouse/partner)' /
   PB9       0 '(0) No (go to B10)' 1 '(1) Yes (skip to B13)'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no current spouse/partner)' /
   PB10      0 '(0) No (skip to B12)' 1 '(1) Yes (go to B11)'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (works outside the home)' /
   PB11      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
            7 '(7) Legitimate skip (hasn''t worked outside home in past 12mn'
             /
   PB12      0 '(0) No (skip to B14)' 1 '(1) Yes (skip to B14)'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (works outside the home)' /
   PB13      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (doesn''t work outside the home)' /
   PB14      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no current spouse/partner)' /
   PB15      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no current spouse/partner)' /
   PB16      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no current spouse/partner)' /
   PB17      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no current spouse/partner)' /
   PB18      1 '(1) Completely unhappy' 10 '(10) Completely happy'
             96 '(96) Respondent refused to answer'
             97 '(97) Legitimate skip (no current spouse/partner)' /
   PB19      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no current spouse/partner)' /
   PB20      1 '(1) A lot' 2 '(2) Some' 3 '(3) A little' 4 '(4) Not at all'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no current spouse/partner)' /
   PB21      1 '(1) Excellent' 2 '(2) Very good' 3 '(3) Good' 4 '(4) Fair'
             5 '(5) Poor' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (no current spouse/partner)'
             8 '(8) Don''t know' /
   PB22      1 '(1) Never' 2 '(2) Once a month or less'
             3 '(3) Two or three days a month' 4 '(4) Once or twice a week'
             5 '(5) 3-5 days a week' 6 '(6) Nearly everyday'
             96 '(96) Respondent refused to answer'
             97 '(97) Legitimate skip (no current spouse/partner)'
             98 '(98) Don''t know' /
   PC1       1 '(1) Biological mother' 2 '(2) Step mother'
             3 '(3) Adoptive mother' 4 '(4) Foster mother'
             5 '(5) Grandmother' 6 '(6) Aunt' 7 '(7) Other female relative'
             8 '(8) Other female non-relative' 9 '(9) Biological father'
             10 '(10) Step father' 11 '(11) Adoptive father'
             13 '(13) Grandfather' 14 '(14) Uncle'
             15 '(15) Other male relative' 16 '(16) Other male non-relative'
             96 '(96) Respondent refused to answer' /
   PC2       0 '(0) No (go to C3)' 1 '(1) Yes (skip to C6A)'
             7 '(7) Legit skip (biologic mother completed parent questionnai'
             /
   PC3       0 '(0) No (skip to C5)' 1 '(1) Yes (go to C4)'
             7 '(7) Legitimate skip (biological mother lives in household)'
             8 '(8) Don''t know (skip to C5)' /
   PC4       996 '(996) Respondent refused to answer'
           997 '(997) Legit skip (adolescent never lived w/biological mother'
             998 '(998) Don''t know' /
   PC5       1 '(1) None' 2 '(2) $100 or less' 3 '(3) $101-$200'
             4 '(4) $201-$500' 5 '(5) More than $500'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (biological mother lives in household)'
             8 '(8) Don''t know' /
   PC6B      0 '(0) No (go to C7)' 1 '(1) Yes (skip to C10'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (biologic father completed parent questionnai'
             /
   PC7       0 '(0) No (skip to C9)' 1 '(1) Yes (go to C8)'
             6 '(6) Respondent refused to answer'
             7 '(7) Legit skip (adolescent never lived w/biological father)'
             8 '(8) Don''t know (skip to C9)' /
   PC8       996 '(996) Respondent refused to answer'
           997 '(997) Legit skip (adolescent never lived w/biological father'
             998 '(998) Don''t know' /
   PC9       1 '(1) None' 2 '(2) $100 or less' 3 '(3) $101-$200'
             4 '(4) $201-$500' 5 '(5) More than $500'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (biological father lives in household)'
             8 '(8) Don''t know' /
   PC10      0 '(0) No' 1 '(1) Yes' 2 '(2) (He/she) doesn''t go to school'
             6 '(6) Respondent refused to answer' /
   PC11      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PC12      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PC13      1 '(1) A good influence' 2 '(2) A bad influence'
             3 '(3) Neither a good nor a bad influence'
             6 '(6) Respondent refused to answer' 8 '(8) Don''t know' /
   PC14      0 '(0) No (skip to C17)' 1 '(1) Yes (go to C15)'
             6 '(6) Respondent refused to answer'
             8 '(8) Don''t know (skip to C17)' /
   PC15      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
            7 '(7) Legitimate skip (adolescent doesn''t have girl/boyfriend)'
             /
   PC16      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
            7 '(7) Legitimate skip (adolescent doesn''t have girl/boyfriend)'
             /
   PC17      0 '(0) 0' 1 '(1) 1' 2 '(2) 2' 3 '(3) 3' 4 '(4) 4' 5 '(5) 5'
             6 '(6) 6 or more' 96 '(96) Respondent refused to answer' /
   PC18      1 '(1) Excellent' 2 '(2) Very good' 3 '(3) Good' 4 '(4) Fair'
             5 '(5) Poor' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC19A_P   3 '(3) Less than 4lbs' 4 '(4) 4' 5 '(5) 5' 6 '(6) 6' 7 '(7) 7'
             8 '(8) 8' 9 '(9) 9' 10 '(10) 10' 11 '(11) 11'
             12 '(12) 12 lbs or more' 98 '(98) Don''t know' /
   PC19B_O   98 '(98) Don''t know' 99 '(99) Not applicable' /
   PC20      1 '(1) Less than 3 months'
             2 '(2) 3 months to less than 6 months'
             3 '(3) 6 months to less than 9 months'
             4 '(4) 9 months to less than 12 months'
             5 '(5) 12 months to less than 24 months'
             6 '(6) 24 months or more' 7 '(7) (He/she) was not breastfed'
             96 '(96) Respondent refused to answer' 98 '(98) Don''t know' /
   PC21_1    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' /
   PC21_2    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' /
   PC21_3    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' /
   PC21_4    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' /
   PC21_5    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' /
   PC21_6    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' /
   PC21_7    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' /
   PC22      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
            7 '(7) Legitimate skip (adolescent doesn''t have health insuranc'
             8 '(8) Don''t know' /
   PC23      1 '(1) 9:00pm or earlier' 2 '(2) By 10:00pm' 3 '(3) By 11:00pm'
             4 '(4) by 12:00 (midnight)' 5 '(5) By 1:00am'
             6 '(6) After 1:00am' 7 '(7) (He/she) has not set bedtime'
             96 '(96) Respondent refused to answer' 98 '(98) Don''t know' /
   PC24      0 '(0) No (skip to C30)' 1 '(1) Yes (go to C25)'
             6 '(6) Respondent refused to answer' /
   PC25      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (adolescent not in school now)' /
   PC26      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (adolescent not in school now)' /
   PC27      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (adolescent not in school now)' /
   PC28      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (adolescent not in school now)' /
   PC29A     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (adolescent not in school now)' /
   PC29B     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (adolescent not in school now)' /
   PC29C     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (adolescent not in school now)' /
   PC30      1 '(1) A brilliant student'
             2 '(2) A leader in school activities' 3 '(3) An athletic star'
             4 '(4) The most popular'
             5 '(5) (He/she) has already graduated from high school'
             6 '(6) Respondent refused to answer' /
   PC31      1 '(1) Very disappointed' 2 '(2) Somewhat disappointed'
             3 '(3) Not disappointed' 6 '(6) Respondent refused to answer' /
   PC32      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PC33      1 '(1) Very well' 2 '(2) Fairly well' 3 '(3) Not so well'
             4 '(4) Not well at all' 6 '(6) Respondent refused to answer' /
   PC34A     1 '(1) Always' 2 '(2) Often' 3 '(3) Sometimes' 4 '(4) Seldom'
             5 '(5) Never' 6 '(6) Respondent refused to answer' /
   PC34B     1 '(1) Always' 2 '(2) Often' 3 '(3) Sometimes' 4 '(4) Seldom'
             5 '(5) Never' 6 '(6) Respondent refused to answer' /
   PC34C     1 '(1) Always' 2 '(2) Often' 3 '(3) Sometimes' 4 '(4) Seldom'
             5 '(5) Never' 6 '(6) Respondent refused to answer' /
   PC34D     1 '(1) Always' 2 '(2) Often' 3 '(3) Sometimes' 4 '(4) Seldom'
             5 '(5) Never' 6 '(6) Respondent refused to answer' /
   PC34E     1 '(1) Always' 2 '(2) Often' 3 '(3) Sometimes' 4 '(4) Seldom'
             5 '(5) Never' 6 '(6) Respondent refused to answer' /
   PC35      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PC36_0    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_1    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_2    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_3    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_4    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_5    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_6    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_7    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_8    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_9    0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_10   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_11   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_12   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_13   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_14   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_15   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_16   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_17   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_18   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC36_19   0 '(0) Not marked' 1 '(1) Marked' 6 '(6) Refused to answer'
             7 '(7) Legitimate skip (adolescent hasn''t lived apart from R)'
             /
   PC37      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC38      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC39      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC40      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC41      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC42A     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Respondent refused to answer' /
   PC42B     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Respondent refused to answer' /
   PC42C     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Respondent refused to answer' /
   PC42D     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Respondent refused to answer' /
   PC42E     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Respondent refused to answer' /
   PC43AA    1 '(1) Not at all' 2 '(2) Somewhat' 3 '(3) A moderate amount'
             4 '(4) A great deal' 6 '(6) Respondent refused to answer' /
   PC43AB    1 '(1) Not at all' 2 '(2) Somewhat' 3 '(3) A moderate amount'
             4 '(4) A great deal' 6 '(6) Respondent refused to answer' /
   PC43AC    1 '(1) Not at all' 2 '(2) Somewhat' 3 '(3) A moderate amount'
             4 '(4) A great deal' 6 '(6) Respondent refused to answer' /
   PC43AD    1 '(1) Not at all' 2 '(2) Somewhat' 3 '(3) A moderate amount'
             4 '(4) A great deal' 6 '(6) Respondent refused to answer' /
   PC43BA    1 '(1) Not at all' 2 '(2) Somewhat' 3 '(3) A moderate amount'
             4 '(4) A great deal' 6 '(6) Respondent refused to answer' /
   PC43BB    1 '(1) Not at all' 2 '(2) Somewhat' 3 '(3) A moderate amount'
             4 '(4) A great deal' 6 '(6) Respondent refused to answer' /
   PC44A     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Respondent refused to answer' /
   PC44B     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Respondent refused to answer' /
   PC44C     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Respondent refused to answer' /
   PC44D     1 '(1) Strongly agree' 2 '(2) Agree'
             3 '(3) Neither agree nor disagree' 4 '(4) Disagree'
             5 '(5) Strongly disagree' 6 '(6) Respondent refused to answer' /
   PC45      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PC46      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PC47      0 '(0) No (skip to C49)' 1 '(1) Yes (go to C48)'
             6 '(6) Respondent refused to answer' 8 '(8) Don''t know' /
   PC48      96 '(96) Respondent refused to answer' 97 '(97) Legitimate skip'
             /
   PC49A_1   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49A_2   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49A_3   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49B_1   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49B_2   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49B_3   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49C_1   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49C_2   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49C_3   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49D_1   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49D_2   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49D_3   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49E_1   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49E_2   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49E_3   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49F_1   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49F_2   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC49F_3   0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             8 '(8) Don''t know' /
   PC50      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PC51      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer' /
   PC53      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip' /
   PC54      0 '(0) No' 1 '(1) Yes' 6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip' 8 '(8) Don''t know' /
   PC55      0 '(0) No (skip to C63)' 1 '(1) Yes (go to C56)'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC58      1 '(1) Accident (go to C59)' 2 '(2) Disease (go to C59)'
             3 '(3) Present at birth (skip to C60)'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip'
             8 '(8) Don''t know' /
   PC59      96 '(96) Respondent refused to answer' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   PC60_1    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_2    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_3    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_4    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_5    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_6    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_7    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_8    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_9    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_10   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_11   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_12   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_13   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_14   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_15   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_16   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_17   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC60_18   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC61A     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC61B     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC61C     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC61D     0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC62_1    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC62_2    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC62_4    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC62_5    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC62_8    0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC62_10   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC62_11   0 '(0) Not marked' 1 '(1) Marked'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip' /
   PC63      0 '(0) No (go to C64)' 1 '(1) Yes (skip to C69)'
             6 '(6) Respondent refused to answer'
             8 '(8) Don''t know (go to C69)' /
   PC64      0 '(0) No (go to C65)' 1 '(1) Yes (skip to C66)'
             6 '(6) Respondent refused to answer' 7 '(7) Legitimate skip'
             8 '(8) Don''t know (go to C66)' /
   PC65_M    1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Respondent refused to answer'
             97 '(97) Legitimate skip' 98 '(98) Don''t know' /
   PC65_Y    1 '(1) 1977' 2 '(2) 1978' 3 '(3) 1979' 4 '(4) 1980' 5 '(5) 1981'
             6 '(6) 1982' 7 '(7) 1983' 8 '(8) 1984' 9 '(9) 1985'
             10 '(10) 1986' 11 '(11) 1987' 12 '(12) 1988' 13 '(13) 1989'
             14 '(14) 1990' 15 '(15) 1991' 16 '(16) 1992' 17 '(17) 1993'
             18 '(18) 1994-95' 96 '(96) Respondent refused to answer'
             97 '(97) Legitimate skip' 98 '(98) Don''t know' /
   PC66_M    1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 96 '(96) Respondent refused to answer'
             97 '(97) Legitimate skip' 98 '(98) Don''t know' /
   PC66_Y    1 '(1) 1977' 2 '(2) 1978' 3 '(3) 1979' 4 '(4) 1980' 5 '(5) 1981'
             6 '(6) 1982' 7 '(7) 1983' 8 '(8) 1984' 9 '(9) 1985'
             10 '(10) 1986' 11 '(11) 1987' 12 '(12) 1988' 13 '(13) 1989'
             14 '(14) 1990' 15 '(15) 1991' 16 '(16) 1992' 17 '(17) 1993'
             18 '(18) 1994' 19 '(19) 1995'
             96 '(96) Respondent refused to answer' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   PC68_M    1 '(1) January' 2 '(2) February' 3 '(3) March' 4 '(4) April'
             5 '(5) May' 6 '(6) June' 7 '(7) July' 8 '(8) August'
             9 '(9) September' 10 '(10) October' 11 '(11) November'
             12 '(12) December' 20 '(20) (He/she) lived there at birth'
             96 '(96) Respondent refused to answer' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   PC68_Y    1 '(1) 1977' 2 '(2) 1978' 3 '(3) 1979' 4 '(4) 1980' 5 '(5) 1981'
             6 '(6) 1982' 7 '(7) 1983' 8 '(8) 1984' 9 '(9) 1985'
             10 '(10) 1986' 11 '(11) 1987' 12 '(12) 1988' 13 '(13) 1989'
             14 '(14) 1990' 15 '(15) 1991' 16 '(16) 1992' 17 '(17) 1993'
             18 '(18) 1994' 19 '(19) 1995'
             20 '(20) (He/she) lived there at birth'
             96 '(96) Respondent refused to answer' 97 '(97) Legitimate skip'
             98 '(98) Don''t know' /
   PC69      0 '(0) No (skip to D5)' 1 '(1) Yes (go to D1)' /
   PD2       1 '(1) Definitely identical' 2 '(2) Probably identical'
             3 '(3) Definitely fraternal' 4 '(4) Probably fraternal'
             7 '(7) Legitimate skip (adolescent not a twin)'
             8 '(8) Don''t know' /
   PD3       1 '(1) As alike as two peas in a pod'
             2 '(2) Of a normal family likeness'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (adolescent not a twin)'
             8 '(8) Don''t know' /
   PD4A      1 '(1) Frequently' 2 '(2) Occasionally' 3 '(3) Never'
             7 '(7) Legitimate skip (adolescent not a twin)'
             8 '(8) Don''t know' /
   PD4B      1 '(1) Frequently' 2 '(2) Occasionally' 3 '(3) Never'
             7 '(7) Legitimate skip (adolescent not a twin)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   PD4C      1 '(1) Frequently' 2 '(2) Occasionally' 3 '(3) Never'
             6 '(6) Respondent refused to answer'
             7 '(7) Legitimate skip (adolescent not a twin)'
             9 '(9) Not applicable' /
   PD4D      1 '(1) Frequently' 2 '(2) Occasionally' 3 '(3) Never'
             7 '(7) Legitimate skip (adolescent not a twin)'
             8 '(8) Don''t know' 9 '(9) Not applicable' /
   PD4E      1 '(1) Frequently' 2 '(2) Occasionally' 3 '(3) Never'
             7 '(7) Legitimate skip (adolescent not a twin)'
             8 '(8) Don''t know' /
   PD4F      1 '(1) Frequently' 2 '(2) Occasionally' 3 '(3) Never'
             7 '(7) Legitimate skip (adolescent not a twin)'
             8 '(8) Don''t know' /
   PD5       0 '(0) No' 1 '(1) Yes' /
   PD5A      0 '(0) No' 1 '(1) Yes' /
   .

* SPSS MISSING VALUES COMMAND.

* MISSING VALUES
     SCH_YR (6) /
     BIO_SEX (6) /
     H1GI1M (96) /
     H1GI1Y (96) /
     H1GI2 (6, 8) /
     H1GI3 (96, 98) /
     H1GI4 (6, 8) /
     H1GI5A (7, 8) /
     H1GI5B (7, 8) /
     H1GI5C (7, 8) /
     H1GI5D (7, 8) /
     H1GI5E (7, 8) /
     H1GI5F (7, 8) /
     H1GI6A (6, 8) /
     H1GI6B (6, 8) /
     H1GI6C (6, 8) /
     H1GI6D (6, 8) /
     H1GI6E (6, 8) /
     H1GI7A (7, 8) /
     H1GI7B (7, 8) /
     H1GI7C (7, 8) /
     H1GI7D (7, 8) /
     H1GI7E (7, 8) /
     H1GI7F (7, 8) /
     H1GI7G (7, 8) /
     H1GI8 (6 thru 9) /
     H1GI9 (6, 8) /
     H1GI10 (6, 8) /
     H1GI11 (6 thru 8) /
     H1GI12 (996 thru 999) /
     H1GI13M (96 thru 99) /
     H1GI13Y (96 thru 99) /
     H1GI14 (7, 8) /
     H1GI15 (6 thru 8) /
     H1GI16M (97) /
     H1GI16Y (97) /
     H1GI18 (6, 8) /
     H1GI19 (7) /
     H1GI20 (96 thru 99) /
     H1GI21 (96 thru 98) /
     H1DA1 (6, 8) /
     H1DA2 (6, 8) /
     H1DA3 (6, 8) /
     H1DA4 (6, 8) /
     H1DA5 (6, 8) /
     H1DA6 (6, 8) /
     H1DA7 (6, 8) /
     H1DA8 (996, 998) /
     H1DA9 (996, 998) /
     H1DA10 (996, 998) /
     H1DA11 (996, 998) /
     H1GH1 (6, 8) /
     H1GH1A (6 thru 8) /
     H1GH2 (6, 8) /
     H1GH3 (6, 8) /
     H1GH4 (6, 8) /
     H1GH5 (6, 8) /
     H1GH6 (6, 8) /
     H1GH7 (6, 8) /
     H1GH8 (6, 8) /
     H1GH9 (6, 8) /
     H1GH10 (6, 8) /
     H1GH11 (6, 8) /
     H1GH12 (6, 8) /
     H1GH13 (6, 8) /
     H1GH14 (6, 8) /
     H1GH15 (6, 8) /
     H1GH16 (6 thru 8) /
     H1GH17 (6, 8) /
     H1GH18 (6, 8) /
     H1GH19 (6, 8) /
     H1GH20 (6, 8) /
     H1GH21 (6, 8) /
     H1GH22 (6, 8) /
     H1GH23A (6, 8) /
     H1GH23B (6, 8) /
     H1GH23C (6, 8) /
     H1GH23D (6, 8) /
     H1GH23E (6, 8) /
     H1GH23F (6, 8) /
     H1GH23G (6, 8) /
     H1GH23H (6, 8) /
     H1GH23I (6, 8) /
     H1GH23J (6, 8) /
     H1GH24 (6, 8, 9) /
     H1GH25 (6, 8, 9) /
     H1GH26 (6, 8) /
     H1GH27A (6 thru 8) /
     H1GH27B (6 thru 8) /
     H1GH27C (6 thru 8) /
     H1GH27D (6 thru 8) /
     H1GH27E (6 thru 8) /
     H1GH27F (6 thru 8) /
     H1GH27G (6 thru 8) /
     H1GH27H (6 thru 8) /
     H1GH27I (6 thru 8) /
     H1GH27J (6 thru 8) /
     H1GH28 (6, 8) /
     H1GH29 (6, 8) /
     H1GH30A (6 thru 8) /
     H1GH30B (6 thru 8) /
     H1GH30C (6 thru 8) /
     H1GH30D (6 thru 8) /
     H1GH30E (6 thru 8) /
     H1GH30F (6 thru 8) /
     H1GH30G (6 thru 8) /
     H1GH31A (7) /
     H1GH31B (7) /
     H1GH31C (7) /
     H1GH31D (7) /
     H1GH31F (7) /
     H1GH31G (7) /
     H1GH32 (6, 8) /
     H1GH33 (6, 8) /
     H1GH34 (6, 8) /
     H1GH35 (6, 8) /
     H1GH36 (6, 8) /
     H1GH37 (6 thru 8) /
     H1GH38 (7, 8) /
     H1GH39 (6, 8) /
     H1GH40 (6, 8) /
     H1GH41 (6 thru 8) /
     H1GH42 (6, 8) /
     H1GH43 (6, 8, 9) /
     H1GH44 (6, 8) /
     H1GH46 (6, 8, 9) /
     H1GH48 (6, 8, 9) /
     H1GH49 (6, 8) /
     H1GH50 ('999996','999998','999999') /
     H1GH51 (96, 98) /
     H1GH52 (6, 8) /
     H1GH53 (6, 8, 9) /
     H1GH54 (6, 8, 9) /
     H1GH55 (6, 8) /
     H1GH56 (6, 8) /
     H1GH57 (6, 8) /
     H1GH58 (6 thru 8) /
     H1GH59A (96, 98) /
     H1GH59B (96, 98, 99) /
     H1GH60 (996, 998, 999) /
     H1TS1 (6, 8) /
     H1TS2 (6, 8) /
     H1TS3 (6, 8) /
     H1TS4 (6, 8) /
     H1TS5 (6, 8) /
     H1TS6 (6, 8) /
     H1TS7 (6, 8) /
     H1TS8 (6, 8) /
     H1TS9 (6, 8) /
     H1TS10 (6, 8) /
     H1TS11 (6, 8) /
     H1TS12 (6, 8) /
     H1TS13 (6, 8) /
     H1TS14 (6, 8) /
     H1TS15 (6, 8) /
     H1TS16 (6, 8) /
     H1TS17 (6, 8) /
     H1ED1 (6 thru 9) /
     H1ED2 (996 thru 998) /
     H1ED3 (6, 8) /
     H1ED4A (6 thru 8) /
     H1ED4B (6 thru 8) /
     H1ED4C (6 thru 8) /
     H1ED4D (6 thru 8) /
     H1ED4E (6 thru 8) /
     H1ED4F (6 thru 8) /
     H1ED4G (6 thru 8) /
     H1ED4H (6 thru 8) /
     H1ED4I (6 thru 8) /
     H1ED4J (6 thru 8) /
     H1ED4K (6 thru 8) /
     H1ED4M (6 thru 8) /
     H1ED5 (6, 8) /
     H1ED6A (7, 8) /
     H1ED6B (7, 8) /
     H1ED6C (7, 8) /
     H1ED6D (7, 8) /
     H1ED6E (7, 8) /
     H1ED6F (7, 8) /
     H1ED6G (7, 8) /
     H1ED6H (7, 8) /
     H1ED6I (7, 8) /
     H1ED6J (7, 8) /
     H1ED6K (7, 8) /
     H1ED6L (7, 8) /
     H1ED6M (7, 8) /
     H1ED7 (6, 8) /
     H1ED8 (96 thru 99) /
     H1ED9 (6, 8) /
     H1ED10 (96, 97, 99) /
     H1ED11 (96 thru 98) /
     H1ED12 (96 thru 98) /
     H1ED13 (96 thru 98) /
     H1ED14 (96 thru 98) /
     H1ED15 (6 thru 8) /
     H1ED16 (6 thru 8) /
     H1ED17 (6 thru 8) /
     H1ED18 (6 thru 8) /
     H1ED19 (6 thru 8) /
     H1ED20 (6 thru 8) /
     H1ED21 (6 thru 8) /
     H1ED22 (6 thru 8) /
     H1ED23 (6 thru 8) /
     H1ED24 (6 thru 8) /
     H1PL1 (6, 8) /
     H1PL2 (7) /
     H1PL3 (7, 8) /
     H1PL4 (7) /
     H1PL5 (6, 8) /
     H1PL6 (6, 8) /
     H1PL7 (6, 8) /
     H1PL8 (6 thru 8) /
     H1PL9 (7, 8) /
     H1PL10 (6 thru 8) /
     H1PL11 (7) /
     H1PL12 (6 thru 8) /
     H1PL13 (7) /
     H1PL14 (6 thru 8) /
     H1PL15 (7) /
     H1PL16 (6 thru 8) /
     H1PL17 (7) /
     H1PL18 (6 thru 8) /
     H1PL19 (7) /
     H1PL20 (6 thru 8) /
     H1PL21 (6 thru 8) /
     H1PL22 (6 thru 8) /
     H1PL23 (6 thru 8) /
     H1PL24 (6 thru 8) /
     H1PL25 (6 thru 8) /
     H1PL26 (6 thru 8) /
     H1PL29 (6 thru 8) /
     H1PL30 (6 thru 8) /
     H1PL31 (6 thru 8) /
     H1PL33 (6 thru 8) /
     H1PL34 (6 thru 8) /
     H1PL37 (6 thru 8) /
     H1PL38 (6 thru 8) /
     H1HS1 (6, 8) /
     H1HS2A (7, 8) /
     H1HS2B (7, 8) /
     H1HS2C (7, 8) /
     H1HS2D (7, 8) /
     H1HS2E (7, 8) /
     H1HS3 (6, 8) /
     H1HS4A (7) /
     H1HS4B (7) /
     H1HS4C (7) /
     H1HS4D (7) /
     H1HS4E (7) /
     H1HS5 (6, 8) /
     H1HS6A (7) /
     H1HS6B (7) /
     H1HS6C (7) /
     H1HS6D (7) /
     H1HS6E (7) /
     H1HS7 (6, 8) /
     H1HS8A (7, 8) /
     H1HS8B (7, 8) /
     H1HS8C (7, 8) /
     H1HS8D (7, 8) /
     H1HS8E (7, 8) /
     H1HS9 (6, 8) /
     H1HS10A (7) /
     H1HS10B (7) /
     H1HS10C (7) /
     H1HS10D (7) /
     H1HS10E (7) /
     H1HS11 (6 thru 8) /
     H1HS12A (7) /
     H1HS12B (7) /
     H1HS12C (7) /
     H1HS12D (7) /
     H1HS12E (7) /
     H1RP1 (6 thru 9) /
     H1RP2 (6 thru 9) /
     H1RP3 (6 thru 9) /
     H1RP4 (6 thru 9) /
     H1RP5 (6 thru 9) /
     H1RP6 (6 thru 9) /
     H1SE1 (96 thru 99) /
     H1SE2 (96 thru 99) /
     H1SE3 (96 thru 99) /
     H1SE4 (96, 98) /
     H1FS1 (6, 8) /
     H1FS2 (6, 8) /
     H1FS3 (6, 8) /
     H1FS4 (6, 8) /
     H1FS5 (6, 8) /
     H1FS6 (6, 8) /
     H1FS7 (6, 8) /
     H1FS8 (6, 8) /
     H1FS9 (6, 8) /
     H1FS10 (6, 8) /
     H1FS11 (6, 8) /
     H1FS12 (6, 8) /
     H1FS13 (6, 8) /
     H1FS14 (6, 8) /
     H1FS15 (6, 8) /
     H1FS16 (6, 8) /
     H1FS17 (6, 8) /
     H1FS18 (6, 8) /
     H1FS19 (6, 8) /
     H1HR2A (6 thru 8) /
     H1HR3A (96 thru 98) /
     H1HR4A (97) /
     H1HR5A (97) /
     H1HR6A (97) /
     H1HR7A (996.0 thru 998.0) /
     H1HR8A (997, 998) /
     H1HR9A (6 thru 8) /
     H1HR10A (96 thru 98) /
     H1HR11A (97) /
     H1HR2B (6 thru 8) /
     H1HR3B (96 thru 98) /
     H1HR4B (97) /
     H1HR5B (97, 98) /
     H1HR6B (97) /
     H1HR7B (996.0 thru 998.0) /
     H1HR8B (997, 998) /
     H1HR9B (6 thru 9) /
     H1HR10B (96 thru 98) /
     H1HR11B (97, 98) /
     H1HR2C (6 thru 8) /
     H1HR3C (96 thru 98) /
     H1HR4C (97) /
     H1HR5C (97) /
     H1HR6C (97) /
     H1HR7C (996 thru 999) /
     H1HR8C (997, 998) /
     H1HR9C (6 thru 8) /
     H1HR10C (96 thru 98) /
     H1HR11C (97) /
     H1HR2D (6 thru 8) /
     H1HR3D (96 thru 98) /
     H1HR4D (97) /
     H1HR5D (97) /
     H1HR6D (97) /
     H1HR7D (996 thru 999) /
     H1HR8D (997, 998) /
     H1HR9D (6 thru 8) /
     H1HR10D (96 thru 99) /
     H1HR11D (97, 98) /
     H1HR2E (6 thru 8) /
     H1HR3E (96 thru 98) /
     H1HR4E (97) /
     H1HR5E (97) /
     H1HR6E (97) /
     H1HR7E (996 thru 998) /
     H1HR8E (997, 998) /
     H1HR9E (6 thru 8) /
     H1HR10E (96 thru 98) /
     H1HR11E (97, 98) /
     H1HR2F (6 thru 8) /
     H1HR3F (96 thru 98) /
     H1HR4F (97) /
     H1HR5F (97) /
     H1HR6F (97) /
     H1HR7F (996 thru 999) /
     H1HR8F (997, 998) /
     H1HR9F (6 thru 8) /
     H1HR10F (96 thru 98) /
     H1HR11F (97) /
     H1HR2G (6 thru 8) /
     H1HR3G (96 thru 98) /
     H1HR4G (97) /
     H1HR5G (97) /
     H1HR6G (97) /
     H1HR7G (996 thru 998) /
     H1HR8G (997, 998) /
     H1HR9G (6 thru 8) /
     H1HR10G (96 thru 98) /
     H1HR11G (97) /
     H1HR2H (6 thru 8) /
     H1HR3H (96 thru 98) /
     H1HR4H (97) /
     H1HR5H (97) /
     H1HR6H (97) /
     H1HR7H (996 thru 998) /
     H1HR8H (997, 998) /
     H1HR9H (6 thru 8) /
     H1HR10H (96 thru 98) /
     H1HR11H (97) /
     H1HR2I (6 thru 8) /
     H1HR3I (96 thru 98) /
     H1HR4I (97) /
     H1HR5I (97) /
     H1HR6I (97) /
     H1HR7I (996 thru 998) /
     H1HR8I (997, 998) /
     H1HR9I (6 thru 8) /
     H1HR10I (96 thru 98) /
     H1HR11I (97) /
     H1HR2J (6 thru 8) /
     H1HR3J (96 thru 98) /
     H1HR4J (97) /
     H1HR5J (97) /
     H1HR6J (97) /
     H1HR7J (996 thru 998) /
     H1HR8J (997, 998) /
     H1HR9J (6 thru 8) /
     H1HR10J (96 thru 98) /
     H1HR11J (97) /
     H1HR2K (6 thru 8) /
     H1HR3K (96 thru 98) /
     H1HR4K (97) /
     H1HR5K (97) /
     H1HR6K (97) /
     H1HR7K (996 thru 998) /
     H1HR8K (997, 998) /
     H1HR9K (6 thru 8) /
     H1HR10K (96 thru 98) /
     H1HR11K (97) /
     H1HR2L (6 thru 8) /
     H1HR3L (96 thru 98) /
     H1HR4L (97) /
     H1HR5L (97) /
     H1HR6L (97) /
     H1HR7L (996 thru 998) /
     H1HR8L (997, 998) /
     H1HR9L (6 thru 8) /
     H1HR10L (96 thru 98) /
     H1HR11L (97) /
     H1HR2M (6 thru 8) /
     H1HR3M (96 thru 98) /
     H1HR4M (97) /
     H1HR5M (97) /
     H1HR6M (97) /
     H1HR7M (996 thru 998) /
     H1HR8M (997, 998) /
     H1HR9M (6 thru 8) /
     H1HR10M (96 thru 98) /
     H1HR11M (97) /
     H1HR2N (6 thru 8) /
     H1HR3N (96 thru 98) /
     H1HR4N (97) /
     H1HR5N (97) /
     H1HR6N (97) /
     H1HR7N (996 thru 998) /
     H1HR8N (997, 998) /
     H1HR9N (6 thru 8) /
     H1HR10N (96 thru 98) /
     H1HR11N (97) /
     H1HR2O (6 thru 8) /
     H1HR3O (96 thru 98) /
     H1HR4O (97) /
     H1HR5O (97) /
     H1HR6O (97) /
     H1HR7O (996 thru 998) /
     H1HR8O (997, 998) /
     H1HR9O (6 thru 8) /
     H1HR10O (96 thru 98) /
     H1HR11O (97) /
     H1HR2P (6 thru 8) /
     H1HR3P (96 thru 98) /
     H1HR4P (97) /
     H1HR5P (97) /
     H1HR6P (97) /
     H1HR7P (996 thru 998) /
     H1HR8P (997, 998) /
     H1HR9P (6 thru 8) /
     H1HR10P (96 thru 98) /
     H1HR11P (97) /
     H1HR2Q (6 thru 8) /
     H1HR3Q (96 thru 98) /
     H1HR4Q (97) /
     H1HR5Q (97) /
     H1HR6Q (97) /
     H1HR7Q (996 thru 998) /
     H1HR8Q (997, 998) /
     H1HR9Q (6 thru 8) /
     H1HR10Q (96 thru 98) /
     H1HR11Q (97) /
     H1HR2R (6 thru 8) /
     H1HR3R (96 thru 98) /
     H1HR4R (97) /
     H1HR5R (97) /
     H1HR6R (97) /
     H1HR7R (996 thru 998) /
     H1HR8R (997, 998) /
     H1HR9R (6 thru 8) /
     H1HR10R (96 thru 98) /
     H1HR11R (97) /
     H1HR2S (6 thru 8) /
     H1HR3S (96 thru 98) /
     H1HR4S (97) /
     H1HR5S (97) /
     H1HR6S (97) /
     H1HR7S (996 thru 998) /
     H1HR8S (997, 998) /
     H1HR9S (6 thru 8) /
     H1HR10S (96 thru 98) /
     H1HR11S (97) /
     H1HR2T (6 thru 8) /
     H1HR3T (96 thru 98) /
     H1HR4T (97) /
     H1HR5T (97) /
     H1HR6T (97) /
     H1HR7T (996 thru 998) /
     H1HR8T (997, 998) /
     H1HR9T (6 thru 8) /
     H1HR10T (96 thru 98) /
     H1HR11T (97) /
     H1HR12 (96 thru 98) /
     H1HR13 (96 thru 98) /
     H1HR14 (96, 98) /
     H1HR15 (96 thru 98) /
     H1NM1 (6 thru 8) /
     H1NM2 (7, 8) /
     H1NM3 (97, 98) /
     H1NM4 (96 thru 98) /
     H1NM5 (6 thru 8) /
     H1NM6 (6 thru 8) /
     H1NM7 (6 thru 8) /
     H1NM8 (97, 98) /
     H1NM9 (97 thru 99) /
     H1NM10 (6 thru 8) /
     H1NM11 (6 thru 8) /
     H1NM12A (6 thru 8) /
     H1NM12B (6 thru 8) /
     H1NM12C (6 thru 8) /
     H1NM12D (6 thru 8) /
     H1NM12E (6 thru 8) /
     H1NM12F (6 thru 8) /
     H1NM12G (6 thru 8) /
     H1NM12H (6 thru 8) /
     H1NM12I (6 thru 8) /
     H1NM12J (6 thru 8) /
     H1NM13 (6 thru 8) /
     H1NM14 (6 thru 8) /
     H1NF1 (6 thru 8) /
     H1NF2 (6 thru 8) /
     H1NF3 (97, 98) /
     H1NF4 (96 thru 98) /
     H1NF5 (6 thru 8) /
     H1NF6 (6 thru 8) /
     H1NF7 (6 thru 8) /
     H1NF8 (96 thru 98) /
     H1NF9 (97 thru 99) /
     H1NF10 (6 thru 8) /
     H1NF11 (6 thru 8) /
     H1NF12A (6 thru 8) /
     H1NF12B (6 thru 8) /
     H1NF12C (6 thru 8) /
     H1NF12D (6 thru 8) /
     H1NF12E (6 thru 8) /
     H1NF12F (6 thru 8) /
     H1NF12G (6 thru 8) /
     H1NF12H (6 thru 8) /
     H1NF12I (6 thru 8) /
     H1NF12J (6 thru 8) /
     H1NF13 (6 thru 8) /
     H1NF14 (6 thru 8) /
     H1RM1 (96 thru 98) /
     H1RM2 (6 thru 8) /
     H1RM3 (996 thru 999) /
     H1RM4 (96 thru 98) /
     H1RM5 (6 thru 8) /
     H1RM6 (6 thru 8) /
     H1RM7 (996 thru 998) /
     H1RM8 (7) /
     H1RM9 (6 thru 9) /
     H1RM10 (6 thru 8) /
     H1RM11 (96 thru 99) /
     H1RM12 (96 thru 99) /
     H1RM13 (96 thru 99) /
     H1RM14 (6 thru 8) /
     H1RF1 (96 thru 99) /
     H1RF2 (6 thru 9) /
     H1RF3 (996 thru 999) /
     H1RF4 (96 thru 99) /
     H1RF5 (6 thru 9) /
     H1RF6 (6 thru 9) /
     H1RF7 (996 thru 998) /
     H1RF8 (7) /
     H1RF9 (6 thru 9) /
     H1RF10 (6 thru 9) /
     H1RF11 (96 thru 99) /
     H1RF12 (96 thru 99) /
     H1RF13 (96 thru 99) /
     H1RF14 (6 thru 9) /
     H1WP1 (6 thru 9) /
     H1WP2 (6 thru 9) /
     H1WP3 (6 thru 9) /
     H1WP4 (6 thru 9) /
     H1WP5 (6 thru 9) /
     H1WP6 (6 thru 9) /
     H1WP7 (6 thru 9) /
     H1WP8 (96 thru 98) /
     H1WP9 (6 thru 8) /
     H1WP10 (6 thru 8) /
     H1WP11 (6 thru 9) /
     H1WP12 (6 thru 9) /
     H1WP13 (6 thru 9) /
     H1WP14 (6 thru 9) /
     H1WP15 (6 thru 9) /
     H1WP16 (6 thru 9) /
     H1WP17A (6 thru 8) /
     H1WP17B (6 thru 8) /
     H1WP17C (6 thru 8) /
     H1WP17D (6 thru 8) /
     H1WP17E (6 thru 8) /
     H1WP17F (6 thru 8) /
     H1WP17G (6 thru 8) /
     H1WP17H (6 thru 8) /
     H1WP17I (6 thru 8) /
     H1WP17J (6 thru 8) /
     H1WP17K (6 thru 8) /
     H1WP18A (6 thru 9) /
     H1WP18B (6 thru 9) /
     H1WP18C (6 thru 9) /
     H1WP18D (6 thru 9) /
     H1WP18E (6 thru 9) /
     H1WP18F (6 thru 9) /
     H1WP18G (6 thru 9) /
     H1WP18H (6 thru 9) /
     H1WP18I (6 thru 9) /
     H1WP18J (6 thru 9) /
     H1WP18K (6 thru 9) /
     H1MO1 (6 thru 9) /
     H1MO2 (6 thru 9) /
     H1MO3 (6 thru 9) /
     H1MO4 (6 thru 9) /
     H1MO5 (6 thru 9) /
     H1MO6 (6 thru 9) /
     H1MO7 (6 thru 9) /
     H1MO8 (6 thru 9) /
     H1MO9 (6 thru 9) /
     H1MO10 (6 thru 9) /
     H1MO11 (6 thru 9) /
     H1MO12 (6 thru 9) /
     H1MO13 (6 thru 9) /
     H1MO14 (6 thru 9) /
     H1PF1 (6 thru 9) /
     H1PF2 (6 thru 9) /
     H1PF3 (6 thru 9) /
     H1PF4 (6 thru 9) /
     H1PF5 (6 thru 9) /
     H1PF6 (6, 8, 9) /
     H1PF7 (6, 8) /
     H1PF8 (6, 8) /
     H1PF9 (6, 8, 9) /
     H1PF10 (6, 8) /
     H1PF11 (6, 8, 9) /
     H1PF12 (6, 8, 9) /
     H1PF13 (6, 8) /
     H1PF14 (6, 8) /
     H1PF15 (6, 8) /
     H1PF16 (6, 8) /
     H1PF17 (6, 8, 9) /
     H1PF18 (6, 8, 9) /
     H1PF19 (6, 8) /
     H1PF20 (6, 8, 9) /
     H1PF21 (6, 8, 9) /
     H1PF22 (6, 8, 9) /
     H1PF23 (6 thru 9) /
     H1PF24 (6 thru 9) /
     H1PF25 (6 thru 9) /
     H1PF26 (6, 8, 9) /
     H1PF27 (6, 8) /
     H1PF28 (6, 8) /
     H1PF29 (6, 8) /
     H1PF30 (6, 8) /
     H1PF31 (6, 8) /
     H1PF32 (6, 8) /
     H1PF33 (6, 8) /
     H1PF34 (6, 8) /
     H1PF35 (6, 8) /
     H1PF36 (6, 8) /
     H1KQ1A (6 thru 9) /
     H1KQ1B (6 thru 9) /
     H1KQ2A (6 thru 9) /
     H1KQ2B (6 thru 9) /
     H1KQ3A (6 thru 9) /
     H1KQ3B (6 thru 9) /
     H1KQ4A (6 thru 9) /
     H1KQ4B (6 thru 9) /
     H1KQ5A (6 thru 9) /
     H1KQ5B (6 thru 9) /
     H1KQ6A (6 thru 9) /
     H1KQ6B (6 thru 9) /
     H1KQ7A (6 thru 9) /
     H1KQ7B (6 thru 9) /
     H1KQ8A (6 thru 9) /
     H1KQ8B (6 thru 9) /
     H1KQ9A (6 thru 9) /
     H1KQ9B (6 thru 9) /
     H1KQ10A (6 thru 9) /
     H1KQ10B (6 thru 9) /
     H1MF2A (6 thru 8) /
     H1MF3A (97, 98) /
     H1MF4A (7) /
     H1MF5A (7) /
     H1MF6A (6, 7) /
     H1MF7A (6 thru 9) /
     H1MF8A (6 thru 8) /
     H1MF9A (6 thru 8) /
     H1MF10A (6 thru 8) /
     H1MF2B (6, 7) /
     H1MF3B (97, 98) /
     H1MF4B (7) /
     H1MF5B (7) /
     H1MF6B (6, 7) /
     H1MF7B (6, 7) /
     H1MF8B (6, 7) /
     H1MF9B (6, 7) /
     H1MF10B (6, 7) /
     H1MF2C (7, 8) /
     H1MF3C (97, 98) /
     H1MF4C (7) /
     H1MF5C (7) /
     H1MF6C (6, 7) /
     H1MF7C (6, 7) /
     H1MF8C (6 thru 8) /
     H1MF9C (6, 7) /
     H1MF10C (6, 7) /
     H1MF2D (6, 7, 8) /
     H1MF3D (97, 98) /
     H1MF4D (7) /
     H1MF5D (7) /
     H1MF6D (6, 7) /
     H1MF7D (6, 7) /
     H1MF8D (6, 7) /
     H1MF9D (6, 7) /
     H1MF10D (6, 7) /
     H1MF2E (7, 8) /
     H1MF3E (97, 98) /
     H1MF4E (7) /
     H1MF5E (7) /
     H1MF6E (7) /
     H1MF7E (7) /
     H1MF8E (7) /
     H1MF9E (7) /
     H1MF10E (7) /
     H1FF2A (6 thru 8) /
     H1FF3A (96 thru 98) /
     H1FF4A (6, 7) /
     H1FF5A (7, 8) /
     H1FF6A (6 thru 8) /
     H1FF7A (6, 7, 9) /
     H1FF8A (6, 7) /
     H1FF9A (6, 7) /
     H1FF10A (6, 7) /
     H1FF2B (6 thru 8) /
     H1FF3B (96 thru 98) /
     H1FF4B (7) /
     H1FF5B (7) /
     H1FF6B (6, 7) /
     H1FF7B (6, 7) /
     H1FF8B (6, 7) /
     H1FF9B (6, 7) /
     H1FF10B (6, 7) /
     H1FF2C (7, 8) /
     H1FF3C (97, 98) /
     H1FF4C (7) /
     H1FF5C (7, 8) /
     H1FF6C (7) /
     H1FF7C (7) /
     H1FF8C (7) /
     H1FF9C (7) /
     H1FF10C (7) /
     H1FF2D (7) /
     H1FF3D (97 thru 99) /
     H1FF4D (7) /
     H1FF5D (7) /
     H1FF6D (7, 9) /
     H1FF7D (7, 9) /
     H1FF8D (7, 9) /
     H1FF9D (7, 9) /
     H1FF10D (7, 9) /
     H1FF2E (7) /
     H1FF3E (97) /
     H1FF4E (7) /
     H1FF5E (7, 8) /
     H1FF6E (7) /
     H1FF7E (7) /
     H1FF8E (7) /
     H1FF9E (7) /
     H1FF10E (7) /
     H1ID1A (6, 8, 9) /
     H1ID1B (6, 8, 9) /
     H1ID1C (6, 8, 9) /
     H1ID1D (6, 8, 9) /
     H1ID1E (6, 8, 9) /
     H1ID1F (6, 8, 9) /
     H1ID1G (6, 8, 9) /
     H1ID1H (6, 8, 9) /
     H1ID1I (6, 8, 9) /
     H1ID1J (6, 8, 9) /
     H1ID1K (6, 8, 9) /
     H1ID1L (6, 8, 9) /
     H1ID1M (6, 8, 9) /
     H1ID1N (6, 8, 9) /
     H1ID1O (6, 8, 9) /
     H1ID1P (6, 8, 9) /
     H1ID1Q (6, 8, 9) /
     H1ID1R (6, 8, 9) /
     H1ID2_1 (96 thru 99) /
     H1ID2_2 (96 thru 99) /
     H1ID2_3 (96 thru 99) /
     H1ID2_4 (96 thru 99) /
     H1ID2_5 (96 thru 99) /
     H1ID2_6 (96 thru 99) /
     H1ID2_7 (96 thru 99) /
     H1ID2_8 (96 thru 99) /
     H1ID2_9 (96 thru 99) /
     H1ID2_10 (96 thru 99) /
     H1ID2_11 (96 thru 99) /
     H1ID2_12 (96 thru 99) /
     H1ID2_13 (96 thru 99) /
     H1ID2_14 (96 thru 99) /
     H1ID2_15 (96 thru 99) /
     H1ID2_16 (96 thru 99) /
     H1ID2_17 (96 thru 99) /
     H1ID5 (6 thru 9) /
     H1ID6 (6 thru 9) /
     H1RR1 (6, 8, 9) /
     H1LR1 (6 thru 9) /
     H1LR2 (6 thru 9) /
     H1LR3 (6 thru 9) /
     H1LR4 (6 thru 9) /
     H1CO1 (6, 8, 9) /
     H1CO2M (96 thru 99) /
     H1CO2Y (96 thru 99) /
     H1CO3 (6 thru 8) /
     H1CO4A (96 thru 98) /
     H1CO4B (96 thru 99) /
     H1CO4C (96 thru 99) /
     H1CO5M (96 thru 99) /
     H1CO5Y (96 thru 99) /
     H1CO6 (6 thru 8) /
     H1CO7A (96 thru 99) /
     H1CO7B (96 thru 99) /
     H1CO7C (96 thru 99) /
     H1CO8 (6 thru 8) /
     H1CO9 (6, 7) /
     H1CO10 (6 thru 8) /
     H1CO11 (6, 7) /
     H1CO12A (96 thru 98) /
     H1CO12B (96 thru 98) /
     H1CO12C (96 thru 98) /
     H1CO13 (6 thru 8) /
     H1CO14M (96 thru 98) /
     H1CO14Y (96 thru 98) /
     H1CO15 (7) /
     H1CO16A (6 thru 8) /
     H1CO16B (6 thru 8) /
     H1CO16C (6 thru 8) /
     H1CO16D (6 thru 8) /
     H1CO16E (6 thru 8) /
     H1CO16F (6 thru 8) /
     H1CO16G (6 thru 8) /
     H1CO16H (6 thru 8) /
     H1CO16I (7, 8) /
     H1CO16J (7, 8) /
     H1CO17A (6, 7) /
     H1CO17B (6, 7) /
     H1CO17C (6, 7) /
     H1CO17D (6, 7) /
     H1CO17E (7) /
     H1CO17F (6, 7) /
     H1CO17G (7) /
     H1CO17H (6, 7) /
     H1CO17I (7) /
     H1CO17J (7) /
     H1RI1M_1 (96 thru 99) /
     H1RI1Y_1 (96 thru 99) /
     H1RI2_1 (96 thru 98) /
     H1RI3_1 (96 thru 98) /
     H1RI4_1 (96 thru 98) /
     H1RI5A_1 (96 thru 98) /
     H1RI6_1 (6 thru 8) /
     H1RI7_1 (6 thru 8) /
     H1RI8A_1 (6 thru 8) /
     H1RI8B_1 (6 thru 8) /
     H1RI8C_1 (6 thru 8) /
     H1RI8D_1 (6 thru 8) /
     H1RI8E_1 (6 thru 8) /
     H1RI8F_1 (6 thru 8) /
     H1RI8G_1 (6 thru 8) /
     H1RI8H_1 (6 thru 8) /
     H1RI9_1 (96 thru 98) /
     H1RI10_1 (6 thru 8) /
     H1RI11M1 (96 thru 98) /
     H1RI11Y1 (96 thru 99) /
     H1RI12_1 (96 thru 99) /
     H1RI13_1 (6 thru 8) /
     H1RI14_1 (6 thru 8) /
     H1RI15_1 (96 thru 98) /
     H1RI16_1 (6 thru 9) /
     H1RI17A1 (6 thru 8) /
     H1RI17B1 (6 thru 8) /
     H1RI17C1 (6 thru 8) /
     H1RI17D1 (6 thru 8) /
     H1RI17E1 (6 thru 8) /
     H1RI17F1 (6 thru 8) /
     H1RI18A1 (6 thru 9) /
     H1RI18B1 (6 thru 9) /
     H1RI18C1 (6 thru 9) /
     H1RI18D1 (6 thru 9) /
     H1RI18E1 (6 thru 9) /
     H1RI19A1 (7, 8) /
     H1RI19B1 (7, 8) /
     H1RI19C1 (7, 8) /
     H1RI19D1 (7, 8) /
     H1RI19E1 (7, 8) /
     H1RI19F1 (7, 8) /
     H1RI19G1 (7, 8) /
     H1RI20_1 (6 thru 8) /
     H1RI21A1 (6 thru 9) /
     H1RI21B1 (6 thru 9) /
     H1RI21C1 (6 thru 9) /
     H1RI21D1 (6 thru 9) /
     H1RI21E1 (6 thru 9) /
     H1RI21F1 (6 thru 9) /
     H1RI21G1 (6 thru 9) /
     H1RI21H1 (6 thru 9) /
     H1RI21I1 (6 thru 9) /
     H1RI21J1 (6 thru 9) /
     H1RI21K1 (6 thru 9) /
     H1RI21L1 (6 thru 9) /
     H1RI21M1 (6 thru 9) /
     H1RI21N1 (6 thru 9) /
     H1RI21O1 (6 thru 9) /
     H1RI21P1 (6 thru 9) /
     H1RI21Q1 (6 thru 9) /
     H1RI21R1 (6 thru 9) /
     H1RI22A1 (97) /
     H1RI22B1 (97) /
     H1RI22C1 (97) /
     H1RI22D1 (97) /
     H1RI22E1 (97) /
     H1RI22F1 (97) /
     H1RI22G1 (97) /
     H1RI22H1 (97) /
     H1RI22I1 (97) /
     H1RI22J1 (97) /
     H1RI22K1 (97) /
     H1RI22L1 (97) /
     H1RI22M1 (97) /
     H1RI22N1 (97) /
     H1RI22O1 (97) /
     H1RI22P1 (97) /
     H1RI22Q1 (97) /
     H1RI22R1 (97) /
     H1RI24A1 (6, 7) /
     H1RI25M1 (96 thru 99) /
     H1RI25Y1 (96 thru 99) /
     H1RI26M1 (96 thru 99) /
     H1RI26Y1 (96 thru 99) /
     H1RI27_1 (6 thru 8) /
     H1RI28_1 (7) /
     H1RI29A1 (97) /
     H1RI29B1 (96 thru 98) /
     H1RI29C1 (96 thru 98) /
     H1RI30_1 (7) /
     H1RI31_1 (6 thru 8) /
     H1RI32_1 (7) /
     H1RI33A1 (96 thru 98) /
     H1RI33B1 (97, 98) /
     H1RI33C1 (96, 97) /
     H1RI34_1 (7) /
     H1RI35_1 (6, 7) /
     H1RI36_1 (6 thru 8) /
     H1RI37_1 (6, 7) /
     H1RI38A1 (96 thru 98) /
     H1RI38B1 (96 thru 98) /
     H1RI38C1 (96 thru 98) /
     H1RI39_1 (7) /
     H1RI40_1 (7, 8) /
     H1RI41_1 (9996 thru 9998) /
     H1RI1M_2 (96 thru 99) /
     H1RI1Y_2 (96 thru 99) /
     H1RI2_2 (96 thru 99) /
     H1RI3_2 (96 thru 99) /
     H1RI4_2 (96 thru 99) /
     H1RI5A_2 (96 thru 99) /
     H1RI6_2 (6 thru 9) /
     H1RI7_2 (6 thru 9) /
     H1RI8A_2 (6 thru 9) /
     H1RI8B_2 (6 thru 9) /
     H1RI8C_2 (6 thru 9) /
     H1RI8D_2 (6 thru 9) /
     H1RI8E_2 (6 thru 9) /
     H1RI8F_2 (6 thru 9) /
     H1RI8G_2 (6 thru 9) /
     H1RI8H_2 (6 thru 9) /
     H1RI9_2 (96 thru 99) /
     H1RI10_2 (6 thru 9) /
     H1RI11M2 (96 thru 99) /
     H1RI11Y2 (96 thru 99) /
     H1RI12_2 (96 thru 99) /
     H1RI13_2 (7, 8) /
     H1RI14_2 (6 thru 9) /
     H1RI15_2 (96 thru 99) /
     H1RI16_2 (6 thru 9) /
     H1RI17A2 (7, 8) /
     H1RI17B2 (7, 8) /
     H1RI17C2 (7, 8) /
     H1RI17D2 (7, 8) /
     H1RI17E2 (7, 8) /
     H1RI17F2 (7, 8) /
     H1RI18A2 (6 thru 9) /
     H1RI18B2 (6 thru 9) /
     H1RI18C2 (6 thru 9) /
     H1RI18D2 (6 thru 9) /
     H1RI18E2 (6 thru 9) /
     H1RI19A2 (7, 8) /
     H1RI19B2 (7, 8) /
     H1RI19C2 (7, 8) /
     H1RI19D2 (7, 8) /
     H1RI19E2 (7, 8) /
     H1RI19F2 (7, 8) /
     H1RI19G2 (7, 8) /
     H1RI20_2 (6 thru 8) /
     H1RI21A2 (6 thru 9) /
     H1RI21B2 (6 thru 9) /
     H1RI21C2 (6 thru 9) /
     H1RI21D2 (6 thru 9) /
     H1RI21E2 (6 thru 9) /
     H1RI21F2 (6 thru 9) /
     H1RI21G2 (6 thru 9) /
     H1RI21H2 (6 thru 9) /
     H1RI21I2 (6 thru 9) /
     H1RI21J2 (6 thru 9) /
     H1RI21K2 (6 thru 9) /
     H1RI21L2 (6 thru 9) /
     H1RI21M2 (6 thru 9) /
     H1RI21N2 (6 thru 9) /
     H1RI21O2 (6 thru 9) /
     H1RI21P2 (6 thru 9) /
     H1RI21Q2 (6 thru 9) /
     H1RI21R2 (6 thru 9) /
     H1RI22A2 (97) /
     H1RI22B2 (97) /
     H1RI22C2 (97) /
     H1RI22D2 (97) /
     H1RI22E2 (97) /
     H1RI22F2 (97) /
     H1RI22G2 (97) /
     H1RI22H2 (97) /
     H1RI22I2 (97) /
     H1RI22J2 (97) /
     H1RI22K2 (97) /
     H1RI22L2 (97) /
     H1RI22M2 (97) /
     H1RI22N2 (97) /
     H1RI22O2 (97) /
     H1RI22P2 (97) /
     H1RI22Q2 (97) /
     H1RI22R2 (97) /
     H1RI24A2 (6 thru 8) /
     H1RI25M2 (96 thru 98) /
     H1RI25Y2 (96 thru 98) /
     H1RI26M2 (96 thru 98) /
     H1RI26Y2 (96 thru 98) /
     H1RI27_2 (7, 8) /
     H1RI28_2 (6, 7) /
     H1RI29A2 (97) /
     H1RI29B2 (97) /
     H1RI29C2 (97) /
     H1RI30_2 (7) /
     H1RI31_2 (7, 8) /
     H1RI32_2 (7) /
     H1RI33A2 (97) /
     H1RI33B2 (97, 98) /
     H1RI33C2 (96 thru 98) /
     H1RI34_2 (7) /
     H1RI35_2 (7) /
     H1RI36_2 (7) /
     H1RI37_2 (7) /
     H1RI38A2 (97) /
     H1RI38B2 (96, 97) /
     H1RI38C2 (97, 98) /
     H1RI39_2 (7) /
     H1RI40_2 (7) /
     H1RI41_2 (9996 thru 9998) /
     H1RI1M_3 (96 thru 98) /
     H1RI1Y_3 (96 thru 98) /
     H1RI2_3 (96 thru 98) /
     H1RI3_3 (96 thru 98) /
     H1RI4_3 (96 thru 98) /
     H1RI5A_3 (96 thru 98) /
     H1RI6_3 (6 thru 8) /
     H1RI7_3 (6 thru 8) /
     H1RI8A_3 (6 thru 8) /
     H1RI8B_3 (6 thru 8) /
     H1RI8C_3 (6 thru 8) /
     H1RI8D_3 (6 thru 8) /
     H1RI8E_3 (6 thru 8) /
     H1RI8F_3 (6 thru 8) /
     H1RI8G_3 (6 thru 8) /
     H1RI8H_3 (6 thru 8) /
     H1RI9_3 (96 thru 98) /
     H1RI10_3 (6 thru 8) /
     H1RI11M3 (96 thru 98) /
     H1RI11Y3 (96 thru 98) /
     H1RI12_3 (96 thru 98) /
     H1RI13_3 (7, 8) /
     H1RI14_3 (6 thru 8) /
     H1RI15_3 (96 thru 98) /
     H1RI16_3 (6 thru 8) /
     H1RI17A3 (7, 8) /
     H1RI17B3 (7, 8) /
     H1RI17C3 (7, 8) /
     H1RI17D3 (7, 8) /
     H1RI17E3 (7, 8) /
     H1RI17F3 (7, 8) /
     H1RI18A3 (6 thru 8) /
     H1RI18B3 (6 thru 8) /
     H1RI18C3 (6 thru 8) /
     H1RI18D3 (6 thru 8) /
     H1RI18E3 (6 thru 8) /
     H1RI19A3 (7, 8) /
     H1RI19B3 (7, 8) /
     H1RI19C3 (7, 8) /
     H1RI19D3 (7, 8) /
     H1RI19E3 (7, 8) /
     H1RI19F3 (7, 8) /
     H1RI19G3 (7, 8) /
     H1RI20_3 (6 thru 8) /
     H1RI21A3 (6 thru 8) /
     H1RI21B3 (6 thru 8) /
     H1RI21C3 (6 thru 8) /
     H1RI21D3 (6 thru 8) /
     H1RI21E3 (6 thru 8) /
     H1RI21F3 (6 thru 8) /
     H1RI21G3 (6 thru 8) /
     H1RI21H3 (6 thru 8) /
     H1RI21I3 (6 thru 8) /
     H1RI21J3 (6 thru 8) /
     H1RI21K3 (6 thru 8) /
     H1RI21L3 (6 thru 8) /
     H1RI21M3 (6 thru 8) /
     H1RI21N3 (6 thru 8) /
     H1RI21O3 (6 thru 8) /
     H1RI21P3 (6 thru 8) /
     H1RI21Q3 (6 thru 8) /
     H1RI21R3 (6 thru 8) /
     H1RI22A3 (97) /
     H1RI22B3 (97) /
     H1RI22C3 (97) /
     H1RI22D3 (97) /
     H1RI22E3 (97) /
     H1RI22F3 (97) /
     H1RI22G3 (97) /
     H1RI22H3 (97) /
     H1RI22I3 (97) /
     H1RI22J3 (97) /
     H1RI22K3 (97) /
     H1RI22L3 (97) /
     H1RI22M3 (97) /
     H1RI22N3 (97) /
     H1RI22O3 (97) /
     H1RI22P3 (97) /
     H1RI22Q3 (97) /
     H1RI22R3 (97) /
     H1RI24A3 (6, 7) /
     H1RI25M3 (96 thru 98) /
     H1RI25Y3 (97, 98) /
     H1RI26M3 (96 thru 98) /
     H1RI26Y3 (96 thru 98) /
     H1RI27_3 (7, 8) /
     H1RI28_3 (7) /
     H1RI29A3 (97) /
     H1RI29B3 (97) /
     H1RI29C3 (97) /
     H1RI30_3 (7) /
     H1RI31_3 (7) /
     H1RI32_3 (7) /
     H1RI33A3 (97) /
     H1RI33B3 (97, 98) /
     H1RI33C3 (97) /
     H1RI34_3 (7) /
     H1RI35_3 (7) /
     H1RI36_3 (7, 8) /
     H1RI37_3 (7) /
     H1RI38A3 (97) /
     H1RI38B3 (96 thru 98) /
     H1RI38C3 (97) /
     H1RI39_3 (7) /
     H1RI40_3 (7) /
     H1RI41_3 (9996 thru 9998) /
     RICARD1 (7) /
     RICARD2 (7) /
     RICARD3 (7) /
     H1NR1 (6, 8, 9) /
     H1NR2 (6, 8, 9) /
     H1NR3 (6, 8, 9) /
     H1NR4 (996 thru 999) /
     H1NR5 (6, 8, 9) /
     H1NR6 (996 thru 999) /
     H1NR7 (996 thru 998) /
     H1NR8 (996 thru 999) /
     H1NR10_1 (6, 7) /
     H1NR11_1 (6, 7) /
     H1NR12_1 (6, 7) /
     H1RX1M_1 (96 thru 98) /
     H1RX1Y_1 (96 thru 98) /
     H1RX2_1 (96 thru 98) /
     H1RX3_1 (96 thru 98) /
     H1RX4_1 (96 thru 98) /
     H1RX5A_1 (96 thru 98) /
     H1RX6_1 (6 thru 8) /
     H1RX7_1 (6 thru 8) /
     H1RX8A_1 (6 thru 8) /
     H1RX8B_1 (6 thru 8) /
     H1RX8C_1 (6 thru 8) /
     H1RX8D_1 (6 thru 8) /
     H1RX8E_1 (6 thru 8) /
     H1RX8F_1 (6 thru 8) /
     H1RX8G_1 (6 thru 8) /
     H1RX8H_1 (6 thru 8) /
     H1RX9_1 (96 thru 98) /
     H1RX10_1 (6 thru 8) /
     H1RX11M1 (96 thru 98) /
     H1RX11Y1 (96 thru 98) /
     H1RX12_1 (96 thru 98) /
     H1RX13_1 (6 thru 8) /
     H1RX14_1 (6 thru 8) /
     H1RX15_1 (96 thru 98) /
     H1RX16_1 (6 thru 8) /
     H1RX17A1 (7, 8) /
     H1RX17B1 (7, 8) /
     H1RX17C1 (7, 8) /
     H1RX17D1 (7, 8) /
     H1RX17E1 (7, 8) /
     H1RX17F1 (7, 8) /
     H1RX18A1 (6 thru 8) /
     H1RX18B1 (6 thru 8) /
     H1RX18C1 (6 thru 8) /
     H1RX18D1 (6 thru 8) /
     H1RX18E1 (6 thru 8) /
     H1RX19A1 (7) /
     H1RX19B1 (7) /
     H1RX19C1 (7) /
     H1RX19D1 (7) /
     H1RX19E1 (7) /
     H1RX19F1 (7) /
     H1RX19G1 (7) /
     H1RX20_1 (6 thru 8) /
     H1RX21A1 (6 thru 8) /
     H1RX21B1 (6 thru 8) /
     H1RX21C1 (6 thru 8) /
     H1RX21D1 (6 thru 8) /
     H1RX21E1 (6 thru 8) /
     H1RX21F1 (6 thru 8) /
     H1RX21G1 (6 thru 8) /
     H1RX21H1 (6 thru 8) /
     H1RX21I1 (6 thru 8) /
     H1RX21J1 (6 thru 8) /
     H1RX21K1 (6 thru 8) /
     H1RX21L1 (6 thru 8) /
     H1RX21M1 (6 thru 8) /
     H1RX21N1 (6 thru 8) /
     H1RX21O1 (6 thru 8) /
     H1RX21P1 (6 thru 8) /
     H1RX21Q1 (6 thru 8) /
     H1RX21R1 (6 thru 8) /
     H1RX22A1 (97) /
     H1RX22B1 (97) /
     H1RX22C1 (97) /
     H1RX22D1 (97) /
     H1RX22E1 (97) /
     H1RX22F1 (97) /
     H1RX22G1 (97) /
     H1RX22H1 (97) /
     H1RX22I1 (97) /
     H1RX22J1 (97) /
     H1RX22K1 (97) /
     H1RX22L1 (97) /
     H1RX22M1 (97) /
     H1RX22N1 (97) /
     H1RX22O1 (97) /
     H1RX22P1 (97) /
     H1RX22Q1 (97) /
     H1RX22R1 (97) /
     H1RX24A1 (6 thru 8) /
     H1RX25M1 (96 thru 98) /
     H1RX25Y1 (96 thru 98) /
     H1RX26M1 (96 thru 98) /
     H1RX26Y1 (96 thru 98) /
     H1RX27_1 (6, 7) /
     H1RX28_1 (7) /
     H1RX29A1 (97) /
     H1RX29B1 (96, 97) /
     H1RX29C1 (97) /
     H1RX30_1 (7) /
     H1RX31_1 (6, 7) /
     H1RX32_1 (7) /
     H1RX33A1 (97) /
     H1RX33B1 (97) /
     H1RX33C1 (97) /
     H1RX34_1 (7) /
     H1RX35_1 (7) /
     H1RX36_1 (7) /
     H1RX37_1 (7) /
     H1RX38A1 (97) /
     H1RX38B1 (97) /
     H1RX38C1 (97, 98) /
     H1RX39_1 (7) /
     H1RX40_1 (7, 8) /
     H1RX41_1 (9996 thru 9998) /
     H1NR13_1 (97, 98) /
     H1NR14_1 (6 thru 8) /
     H1NR15_1 (6, 7) /
     H1NR16_1 (6 thru 8) /
     H1NR17A1 (7) /
     H1NR17B1 (7) /
     H1NR17C1 (7) /
     H1NR17D1 (7) /
     H1NR17E1 (7) /
     H1NR17F1 (7) /
     H1NR18A1 (6, 7) /
     H1NR18B1 (6, 7) /
     H1NR18C1 (6, 7) /
     H1NR18D1 (6, 7) /
     H1NR18E1 (6, 7) /
     H1NR19A1 (7) /
     H1NR19B1 (7) /
     H1NR19C1 (7) /
     H1NR19D1 (7) /
     H1NR19E1 (7) /
     H1NR19F1 (7) /
     H1NR19G1 (7) /
     H1NR20A1 (6 thru 8) /
     H1NR20B1 (6 thru 8) /
     H1NR20C1 (6 thru 8) /
     H1NR20D1 (6 thru 8) /
     H1NR20E1 (6 thru 8) /
     H1NR20F1 (6 thru 8) /
     H1NR20G1 (6 thru 8) /
     H1NR20H1 (6 thru 8) /
     H1NR21_1 (6 thru 8) /
     H1NR22_1 (6, 7) /
     H1NR23M1 (96 thru 98) /
     H1NR23Y1 (96 thru 98) /
     H1NR24M1 (96 thru 98) /
     H1NR24Y1 (96 thru 98) /
     H1NR25_1 (6 thru 8) /
     H1NR26_1 (7) /
     H1NR27A1 (97, 98) /
     H1NR27B1 (96, 97) /
     H1NR27C1 (97) /
     H1NR28_1 (7) /
     H1NR29_1 (7) /
     H1NR30_1 (7) /
     H1NR31A1 (97) /
     H1NR31B1 (96 thru 98) /
     H1NR31C1 (97) /
     H1NR32_1 (7) /
     H1NR33_1 (7) /
     H1NR34_1 (7) /
     H1NR35_1 (7) /
     H1NR36A1 (97, 98) /
     H1NR36B1 (96 thru 98) /
     H1NR36C1 (97) /
     H1NR37_1 (7) /
     H1NR38_1 (7, 8) /
     H1NR39_1 (997, 998) /
     H1NR40_1 (7) /
     H1NR41_1 (7) /
     H1NR42_1 (7) /
     H1NR43_1 (97) /
     H1NR10_2 (6 thru 8) /
     H1NR11_2 (6 thru 8) /
     H1NR12_2 (6 thru 8) /
     H1RX1M_2 (96 thru 98) /
     H1RX1Y_2 (96 thru 98) /
     H1RX2_2 (96 thru 98) /
     H1RX3_2 (96 thru 98) /
     H1RX4_2 (96 thru 98) /
     H1RX5A_2 (96 thru 98) /
     H1RX6_2 (6 thru 8) /
     H1RX7_2 (6 thru 8) /
     H1RX8A_2 (6 thru 8) /
     H1RX8B_2 (6 thru 8) /
     H1RX8C_2 (6 thru 8) /
     H1RX8D_2 (6 thru 8) /
     H1RX8E_2 (6 thru 8) /
     H1RX8F_2 (6 thru 8) /
     H1RX8G_2 (6 thru 8) /
     H1RX8H_2 (6 thru 8) /
     H1RX9_2 (96 thru 98) /
     H1RX10_2 (6 thru 8) /
     H1RX11M2 (96 thru 98) /
     H1RX11Y2 (96 thru 98) /
     H1RX12_2 (96 thru 98) /
     H1RX13_2 (6, 7) /
     H1RX14_2 (6 thru 8) /
     H1RX15_2 (96 thru 98) /
     H1RX16_2 (6 thru 8) /
     H1RX17A2 (6, 7) /
     H1RX17B2 (6, 7) /
     H1RX17C2 (6, 7) /
     H1RX17D2 (6, 7) /
     H1RX17E2 (6, 7) /
     H1RX17F2 (6, 7) /
     H1RX18A2 (6 thru 8) /
     H1RX18B2 (6 thru 8) /
     H1RX18C2 (6 thru 8) /
     H1RX18D2 (6 thru 8) /
     H1RX18E2 (6 thru 8) /
     H1RX19A2 (7) /
     H1RX19B2 (7) /
     H1RX19C2 (7) /
     H1RX19D2 (7) /
     H1RX19E2 (7) /
     H1RX19F2 (7) /
     H1RX19G2 (7) /
     H1RX20_2 (6 thru 8) /
     H1RX21A2 (6 thru 8) /
     H1RX21B2 (6 thru 8) /
     H1RX21C2 (6 thru 8) /
     H1RX21D2 (6 thru 8) /
     H1RX21E2 (6 thru 8) /
     H1RX21F2 (6 thru 8) /
     H1RX21G2 (6 thru 8) /
     H1RX21H2 (6 thru 8) /
     H1RX21I2 (6 thru 8) /
     H1RX21J2 (6 thru 8) /
     H1RX21K2 (6 thru 8) /
     H1RX21L2 (6 thru 8) /
     H1RX21M2 (6 thru 8) /
     H1RX21N2 (6 thru 8) /
     H1RX21O2 (6 thru 8) /
     H1RX21P2 (6 thru 8) /
     H1RX21Q2 (6 thru 8) /
     H1RX21R2 (6 thru 8) /
     H1RX22A2 (97) /
     H1RX22B2 (97) /
     H1RX22C2 (97) /
     H1RX22D2 (97) /
     H1RX22E2 (97) /
     H1RX22F2 (97) /
     H1RX22G2 (97) /
     H1RX22H2 (97) /
     H1RX22I2 (97) /
     H1RX22J2 (97) /
     H1RX22K2 (97) /
     H1RX22L2 (97) /
     H1RX22M2 (97) /
     H1RX22N2 (97) /
     H1RX22O2 (97) /
     H1RX22P2 (97) /
     H1RX22Q2 (97) /
     H1RX22R2 (97) /
     H1RX24A2 (6, 7) /
     H1RX25M2 (96 thru 98) /
     H1RX25Y2 (96 thru 98) /
     H1RX26M2 (96 thru 98) /
     H1RX26Y2 (96 thru 98) /
     H1RX27_2 (6, 7) /
     H1RX28_2 (7) /
     H1RX29A2 (97) /
     H1RX29B2 (97) /
     H1RX29C2 (97) /
     H1RX30_2 (7) /
     H1RX31_2 (6, 7) /
     H1RX32_2 (7) /
     H1RX33A2 (97) /
     H1RX33B2 (97) /
     H1RX33C2 (96, 97) /
     H1RX34_2 (7) /
     H1RX35_2 (6, 7) /
     H1RX36_2 (7, 8) /
     H1RX37_2 (7) /
     H1RX38A2 (97) /
     H1RX38B2 (97) /
     H1RX38C2 (97) /
     H1RX39_2 (7) /
     H1RX40_2 (7) /
     H1RX41_2 (9997, 9998) /
     H1NR13_2 (96 thru 98) /
     H1NR14_2 (6 thru 8) /
     H1NR15_2 (6 thru 8) /
     H1NR16_2 (6 thru 8) /
     H1NR17A2 (7, 8) /
     H1NR17B2 (7, 8) /
     H1NR17C2 (7, 8) /
     H1NR17D2 (7, 8) /
     H1NR17E2 (7, 8) /
     H1NR17F2 (7, 8) /
     H1NR18A2 (6 thru 8) /
     H1NR18B2 (6 thru 8) /
     H1NR18C2 (6 thru 8) /
     H1NR18D2 (6 thru 8) /
     H1NR18E2 (6 thru 8) /
     H1NR19A2 (7) /
     H1NR19B2 (7) /
     H1NR19C2 (7) /
     H1NR19D2 (7) /
     H1NR19E2 (7) /
     H1NR19F2 (7) /
     H1NR19G2 (7) /
     H1NR20A2 (6 thru 8) /
     H1NR20B2 (6 thru 8) /
     H1NR20C2 (6 thru 8) /
     H1NR20D2 (6 thru 8) /
     H1NR20E2 (6 thru 8) /
     H1NR20F2 (6 thru 8) /
     H1NR20G2 (6 thru 8) /
     H1NR20H2 (6 thru 8) /
     H1NR21_2 (6 thru 8) /
     H1NR22_2 (6 thru 8) /
     H1NR23M2 (96 thru 98) /
     H1NR23Y2 (96 thru 98) /
     H1NR24M2 (96 thru 98) /
     H1NR24Y2 (96 thru 98) /
     H1NR25_2 (6 thru 8) /
     H1NR26_2 (7) /
     H1NR27A2 (97) /
     H1NR27B2 (97) /
     H1NR27C2 (97) /
     H1NR28_2 (7) /
     H1NR29_2 (7) /
     H1NR30_2 (7) /
     H1NR31A2 (97) /
     H1NR31B2 (97) /
     H1NR31C2 (97, 98) /
     H1NR32_2 (7) /
     H1NR33_2 (7) /
     H1NR34_2 (7) /
     H1NR35_2 (7) /
     H1NR36A2 (97) /
     H1NR36B2 (97) /
     H1NR36C2 (97) /
     H1NR37_2 (7) /
     H1NR38_2 (7, 8) /
     H1NR39_2 (997, 998) /
     H1NR40_2 (7) /
     H1NR41_2 (7) /
     H1NR42_2 (7) /
     H1NR43_2 (97) /
     H1NR10_3 (6 thru 8) /
     H1NR11_3 (6 thru 8) /
     H1NR12_3 (6 thru 8) /
     H1RX1M_3 (97, 98) /
     H1RX1Y_3 (97, 98) /
     H1RX2_3 (97, 98) /
     H1RX3_3 (97) /
     H1RX4_3 (97) /
     H1RX5A_3 (97) /
     H1RX6_3 (7) /
     H1RX7_3 (7) /
     H1RX8A_3 (7) /
     H1RX8B_3 (7) /
     H1RX8C_3 (7) /
     H1RX8D_3 (7) /
     H1RX8E_3 (7) /
     H1RX8F_3 (7) /
     H1RX8G_3 (7) /
     H1RX8H_3 (7) /
     H1RX9_3 (97) /
     H1RX10_3 (7) /
     H1RX11M3 (97, 98) /
     H1RX11Y3 (97, 98) /
     H1RX12_3 (96 thru 98) /
     H1RX13_3 (7, 8) /
     H1RX14_3 (7) /
     H1RX15_3 (97) /
     H1RX16_3 (7) /
     H1RX17A3 (7) /
     H1RX17B3 (7) /
     H1RX17C3 (7) /
     H1RX17D3 (7) /
     H1RX17E3 (7) /
     H1RX17F3 (7) /
     H1RX18A3 (7) /
     H1RX18B3 (7) /
     H1RX18C3 (7) /
     H1RX18D3 (7) /
     H1RX18E3 (7) /
     H1RX19A3 (7) /
     H1RX19B3 (7) /
     H1RX19C3 (7) /
     H1RX19D3 (7) /
     H1RX19E3 (7) /
     H1RX19F3 (7) /
     H1RX19G3 (7) /
     H1RX20_3 (7) /
     H1RX21A3 (6 thru 8) /
     H1RX21B3 (6 thru 8) /
     H1RX21C3 (6 thru 8) /
     H1RX21D3 (6 thru 8) /
     H1RX21E3 (6 thru 8) /
     H1RX21F3 (6 thru 8) /
     H1RX21G3 (6 thru 8) /
     H1RX21H3 (6 thru 8) /
     H1RX21I3 (6 thru 8) /
     H1RX21J3 (6 thru 8) /
     H1RX21K3 (6 thru 8) /
     H1RX21L3 (6 thru 8) /
     H1RX21M3 (6 thru 8) /
     H1RX21N3 (6 thru 8) /
     H1RX21O3 (6 thru 8) /
     H1RX21P3 (6 thru 8) /
     H1RX21Q3 (6 thru 8) /
     H1RX21R3 (6 thru 8) /
     H1RX22A3 (97) /
     H1RX22B3 (97) /
     H1RX22C3 (97) /
     H1RX22D3 (97) /
     H1RX22E3 (97) /
     H1RX22F3 (97) /
     H1RX22G3 (97) /
     H1RX22H3 (97) /
     H1RX22I3 (97) /
     H1RX22J3 (97) /
     H1RX22K3 (97) /
     H1RX22L3 (97) /
     H1RX22M3 (97) /
     H1RX22N3 (97) /
     H1RX22O3 (97) /
     H1RX22P3 (97) /
     H1RX22Q3 (97) /
     H1RX22R3 (97) /
     H1RX24A3 (7) /
     H1RX25M3 (97, 98) /
     H1RX25Y3 (97, 98) /
     H1RX26M3 (97, 98) /
     H1RX26Y3 (97, 98) /
     H1RX27_3 (7) /
     H1RX28_3 (7) /
     H1RX29A3 (97) /
     H1RX29B3 (97) /
     H1RX29C3 (97) /
     H1RX30_3 (7) /
     H1RX31_3 (7) /
     H1RX32_3 (7) /
     H1RX33A3 (97) /
     H1RX33B3 (97) /
     H1RX33C3 (97, 98) /
     H1RX34_3 (7) /
     H1RX35_3 (7) /
     H1RX36_3 (7) /
     H1RX37_3 (7) /
     H1RX38A3 (97) /
     H1RX38B3 (97) /
     H1RX38C3 (97) /
     H1RX39_3 (7) /
     H1RX40_3 (7) /
     H1RX41_3 (9997) /
     H1NR13_3 (96 thru 98) /
     H1NR14_3 (6 thru 8) /
     H1NR15_3 (6 thru 8) /
     H1NR16_3 (6 thru 8) /
     H1NR17A3 (7) /
     H1NR17B3 (7) /
     H1NR17C3 (7) /
     H1NR17D3 (7) /
     H1NR17E3 (7) /
     H1NR17F3 (7) /
     H1NR18A3 (6 thru 8) /
     H1NR18B3 (6 thru 8) /
     H1NR18C3 (6 thru 8) /
     H1NR18D3 (6 thru 8) /
     H1NR18E3 (6 thru 8) /
     H1NR19A3 (7) /
     H1NR19B3 (7) /
     H1NR19C3 (7) /
     H1NR19D3 (7) /
     H1NR19E3 (7) /
     H1NR19F3 (7) /
     H1NR19G3 (7) /
     H1NR20A3 (6 thru 8) /
     H1NR20B3 (6 thru 8) /
     H1NR20C3 (6 thru 8) /
     H1NR20D3 (6 thru 8) /
     H1NR20E3 (6 thru 8) /
     H1NR20F3 (6 thru 8) /
     H1NR20G3 (6 thru 8) /
     H1NR20H3 (6 thru 8) /
     H1NR21_3 (6 thru 8) /
     H1NR22_3 (6 thru 8) /
     H1NR23M3 (96 thru 98) /
     H1NR23Y3 (96 thru 98) /
     H1NR24M3 (96 thru 98) /
     H1NR24Y3 (96 thru 98) /
     H1NR25_3 (6 thru 8) /
     H1NR26_3 (7) /
     H1NR27A3 (97) /
     H1NR27B3 (96, 97) /
     H1NR27C3 (97, 98) /
     H1NR28_3 (7) /
     H1NR29_3 (6, 7) /
     H1NR30_3 (7) /
     H1NR31A3 (97) /
     H1NR31B3 (97) /
     H1NR31C3 (97, 98) /
     H1NR32_3 (7) /
     H1NR33_3 (7) /
     H1NR34_3 (7) /
     H1NR35_3 (7) /
     H1NR36A3 (97) /
     H1NR36B3 (97) /
     H1NR36C3 (97) /
     H1NR37_3 (7) /
     H1NR38_3 (7) /
     H1NR39_3 (997) /
     H1NR40_3 (7) /
     H1NR41_3 (7) /
     H1NR42_3 (6, 7) /
     H1NR43_3 (97) /
     H1NR44 (6 thru 8) /
     H1NR45 (96 thru 98) /
     H1NR46 (96 thru 98) /
     H1NR47 (6, 7) /
     H1NR48 (6 thru 8) /
     H1NR49 (7) /
     H1NR50 (96 thru 98) /
     H1NR51 (96 thru 99) /
     H1NR52 (6 thru 8) /
     H1NR53 (7) /
     RXCARD1 (7) /
     RXCARD2 (7) /
     RXCARD3 (7) /
     H1BC1 (6 thru 9) /
     H1BC2 (6 thru 9) /
     H1BC3 (6 thru 9) /
     H1BC4 (6 thru 9) /
     H1BC5 (6 thru 9) /
     H1BC6 (6 thru 9) /
     H1BC7 (6 thru 9) /
     H1BC8 (6 thru 9) /
     H1TO1 (6, 8, 9) /
     H1TO2 (96 thru 98) /
     H1TO3 (6, 7) /
     H1TO4 (96 thru 98) /
     H1TO5 (96 thru 98) /
     H1TO6M (96 thru 99) /
     H1TO6Y (96 thru 99) /
     H1TO7 (96 thru 98) /
     H1TO8 (6 thru 8) /
     H1TO9 (6, 8, 9) /
     H1TO10 (96 thru 99) /
     H1TO11 (96 thru 98) /
     H1TO12 (6, 8, 9) /
     H1TO13 (7, 8) /
     H1TO14 (96 thru 98) /
     H1TO15 (96 thru 98) /
     H1TO16 (96 thru 99) /
     H1TO17 (96 thru 98) /
     H1TO18 (96 thru 98) /
     H1TO19 (96 thru 98) /
     H1TO20 (6 thru 8) /
     H1TO21 (6, 7, 9) /
     H1TO22 (6, 7) /
     H1TO23 (6, 7) /
     H1TO24 (6 thru 8) /
     H1TO25 (6 thru 8) /
     H1TO26 (6 thru 8) /
     H1TO27 (6 thru 8) /
     H1TO28 (6 thru 8) /
     H1TO29 (6, 8, 9) /
     H1TO30 (96, 98, 99) /
     H1TO31 (996 thru 999) /
     H1TO32 (996 thru 999) /
     H1TO33 (6, 8, 9) /
     H1TO34 (96, 98, 99) /
     H1TO35 (996 thru 999) /
     H1TO36 (996 thru 999) /
     H1TO37 (96, 98, 99) /
     H1TO38 (996 thru 999) /
     H1TO39 (996 thru 999) /
     H1TO40 (96, 98, 99) /
     H1TO41 (996 thru 999) /
     H1TO42 (996 thru 999) /
     H1TO43 (6 thru 9) /
     H1TO44 (6, 7) /
     H1TO45 (97, 98) /
     H1TO46 (7) /
     H1TO47 (7) /
     H1TO48 (7) /
     H1TO49 (7) /
     H1TO50 (6, 8, 9) /
     H1TO51 (6, 8, 9) /
     H1TO52 (6, 8, 9) /
     H1TO53 (6, 8, 9) /
     H1TO54A (6 thru 8) /
     H1TO54B (6 thru 8) /
     H1TO54C (6 thru 8) /
     H1TO54D (6 thru 8) /
     H1DS1 (6, 8, 9) /
     H1DS2 (6, 8, 9) /
     H1DS3 (6, 8, 9) /
     H1DS4 (6, 8, 9) /
     H1DS5 (6, 8, 9) /
     H1DS6 (6, 8, 9) /
     H1DS7 (6, 8, 9) /
     H1DS8 (6, 8, 9) /
     H1DS9 (6, 8, 9) /
     H1DS10 (6, 8, 9) /
     H1DS11 (6, 8, 9) /
     H1DS12 (6, 8, 9) /
     H1DS13 (6, 8, 9) /
     H1DS14 (6, 8, 9) /
     H1DS15 (6, 8, 9) /
     H1JO1 (6 thru 8) /
     H1JO2 (7) /
     H1JO3 (6 thru 8) /
     H1JO4 (7) /
     H1JO5 (6, 7) /
     H1JO6A (6 thru 8) /
     H1JO6B (6 thru 8) /
     H1JO6C (6 thru 8) /
     H1JO6D (6 thru 8) /
     H1JO6E (6 thru 8) /
     H1JO7 (6, 7) /
     H1JO8A (7) /
     H1JO8B (7) /
     H1JO8C (7) /
     H1JO8D (7) /
     H1JO8E (7) /
     H1JO9 (6 thru 8) /
     H1JO10 (6 thru 8) /
     H1JO11 (6, 7) /
     H1JO12 (7) /
     H1JO13 (7) /
     H1JO14 (6, 7) /
     H1JO15 (6, 7) /
     H1JO16 (7) /
     H1JO17 (6, 7) /
     H1JO18A (6 thru 8) /
     H1JO18B (6 thru 8) /
     H1JO18C (6 thru 8) /
     H1JO18D (6 thru 8) /
     H1JO18E (6 thru 8) /
     H1JO19 (6, 7) /
     H1JO20 (6, 7) /
     H1JO21 (6, 7) /
     H1JO22A (6 thru 8) /
     H1JO22B (6 thru 8) /
     H1JO22C (6 thru 8) /
     H1JO22D (6 thru 8) /
     H1JO22E (6 thru 8) /
     H1JO23 (6, 7) /
     H1JO24 (6 thru 8) /
     H1JO25 (6, 8, 9) /
     H1JO26 (6, 8, 9) /
     H1FV1 (6, 8, 9) /
     H1FV2 (6, 8, 9) /
     H1FV3 (6, 8, 9) /
     H1FV4 (6, 8, 9) /
     H1FV5 (6, 8, 9) /
     H1FV6 (6, 8, 9) /
     H1FV7 (6, 8, 9) /
     H1FV8 (6, 8, 9) /
     H1FV9 (6, 8, 9) /
     H1FV10 (6 thru 8) /
     H1FV11 (96, 98, 99) /
     H1FV12 (6 thru 9) /
     H1FV13 (996 thru 999) /
     H1FV14M (96 thru 99) /
     H1FV14Y (96 thru 99) /
     H1MP1 (6 thru 9) /
     H1MP2 (6 thru 9) /
     H1MP3 (6 thru 9) /
     H1MP4 (6 thru 9) /
     H1FP1 (6 thru 9) /
     H1FP2 (6 thru 9) /
     H1FP3 (6 thru 9) /
     H1FP4 (96 thru 98) /
     H1FP5M (96 thru 99) /
     H1FP5D (96 thru 99) /
     H1FP6 (6 thru 9) /
     H1FP7 (6 thru 8) /
     H1FP8 (97, 98) /
     H1FP9M (96 thru 98) /
     H1FP9Y (96 thru 98) /
     H1FP10 (7) /
     H1FP11M1 (97, 98) /
     H1FP11Y1 (97, 98) /
     H1FP12_1 (7) /
     H1FP13A1 (97) /
     H1FP13B1 (97) /
     H1FP13C1 (97) /
     H1FP14_1 (7) /
     H1FP15_1 (7) /
     H1FP17_1 (7) /
     H1FP20M1 (97, 98) /
     H1FP20Y1 (97, 98) /
     H1FP21_1 (7) /
     H1FP22_1 (7) /
     H1FP23A1 (7) /
     H1FP24A1 (7) /
     H1FP11M2 (97, 98) /
     H1FP11Y2 (97, 98) /
     H1FP12_2 (7) /
     H1FP13A2 (97) /
     H1FP13B2 (97) /
     H1FP13C2 (97) /
     H1FP14_2 (7) /
     H1FP15_2 (7) /
     H1FP17_2 (7) /
     H1FP20M2 (97, 98) /
     H1FP20Y2 (97, 98) /
     H1FP21_2 (7) /
     H1FP22_2 (7) /
     H1FP23A2 (7) /
     H1FP24A2 (7) /
     H1FP11M3 (97) /
     H1FP11Y3 (97) /
     H1FP12_3 (7) /
     H1FP13A3 (97) /
     H1FP13B3 (97) /
     H1FP13C3 (97) /
     H1FP14_3 (7) /
     H1FP15_3 (7) /
     H1FP17_3 (7) /
     H1FP20M3 (97, 98) /
     H1FP20Y3 (97, 98) /
     H1FP21_3 (7) /
     H1FP22_3 (7) /
     H1FP23A3 (7) /
     H1FP24A3 (7) /
     H1FP11M4 (97) /
     H1FP11Y4 (97) /
     H1FP12_4 (7) /
     H1FP13A4 (97) /
     H1FP13B4 (97) /
     H1FP13C4 (97) /
     H1FP14_4 (7) /
     H1FP15_4 (7) /
     H1FP17_4 (7) /
     H1FP20M4 (97) /
     H1FP20Y4 (97) /
     H1FP21_4 (7) /
     H1FP22_4 (7) /
     H1FP23A4 (7) /
     H1FP24A4 (7) /
     H1FP11M5 (97) /
     H1FP11Y5 (97) /
     H1FP12_5 (7) /
     H1FP13A5 (97) /
     H1FP13B5 (97) /
     H1FP13C5 (97) /
     H1FP14_5 (7) /
     H1FP15_5 (7) /
     H1FP17_5 (7) /
     H1FP20M5 (97) /
     H1FP20Y5 (97) /
     H1FP21_5 (7) /
     H1FP22_5 (7) /
     H1FP23A5 (7) /
     H1FP24A5 (7) /
     H1SU1 (6, 8, 9) /
     H1SU2 (6 thru 8) /
     H1SU3 (7) /
     H1SU4 (6, 8, 9) /
     H1SU5 (6 thru 8) /
     H1SU6 (6, 8, 9) /
     H1SU7 (7, 8) /
     H1SU8 (6, 8, 9) /
     H1PA1 (6 thru 9) /
     H1PA2 (6 thru 9) /
     H1PA3 (6 thru 9) /
     H1PA4 (6 thru 9) /
     H1PA5 (6 thru 9) /
     H1PA6 (6 thru 9) /
     H1PA7 (6 thru 9) /
     H1PR1 (96, 98) /
     H1PR2 (96, 98) /
     H1PR3 (96, 98) /
     H1PR4 (96, 98) /
     H1PR5 (96, 98) /
     H1PR6 (96, 98) /
     H1PR7 (96, 98) /
     H1PR8 (96, 98) /
     H1NB1 (6, 8, 9) /
     H1NB2 (6, 8, 9) /
     H1NB3 (6, 8, 9) /
     H1NB4 (6, 8, 9) /
     H1NB5 (6, 8) /
     H1NB6 (6, 8) /
     H1NB7 (6, 8) /
     H1RE1 (96, 98, 99) /
     H1RE2 (6 thru 8) /
     H1RE3 (6 thru 8) /
     H1RE4 (6 thru 8) /
     H1RE5 (6 thru 9) /
     H1RE6 (6 thru 8) /
     H1RE7 (6 thru 8) /
     H1EE1 (6, 8) /
     H1EE2 (6, 8) /
     H1EE3 (6, 8) /
     H1EE4 (996.0, 998.0, 999.0) /
     H1EE5 (996 thru 999) /
     H1EE6 (996, 998, 999) /
     H1EE7 (996.0 thru 999.0) /
     H1EE8 (96, 98, 99) /
     H1EE9 (6, 8) /
     H1EE10 (7) /
     H1EE11 (6 thru 8) /
     H1EE12 (6, 8) /
     H1EE13 (6, 8) /
     H1EE14 (6, 8) /
     H1EE15 (6, 8) /
     STUDSIBA (6 thru 8) /
     TWINA (7, 9) /
     H1WS1A (6 thru 9) /
     H1WS2A (6 thru 9) /
     H1WS3A (6 thru 9) /
     H1WS4A (6 thru 9) /
     H1WS5A (6 thru 99) /
     H1WS6A (6 thru 9) /
     H1WS7A (6, 7) /
     H1WS8A (7, 8) /
     H1WS9A (7, 8) /
     H1WS10A (7) /
     H1WS11A (7) /
     H1WS12A (6 thru 9) /
     STUDSIBB (6 thru 8) /
     TWINB (6, 7) /
     H1WS1B (6 thru 8) /
     H1WS2B (6 thru 8) /
     H1WS3B (6 thru 8) /
     H1WS4B (6 thru 8) /
     H1WS5B (96 thru 98) /
     H1WS6B (6 thru 9) /
     H1WS7B (6, 7) /
     H1WS8B (6, 7) /
     H1WS9B (6, 7) /
     H1WS10B (7) /
     H1WS11B (7) /
     H1WS12B (6 thru 8) /
     STUDSIBC (7) /
     TWINC (7) /
     H1WS1C (6 thru 8) /
     H1WS2C (6 thru 8) /
     H1WS3C (6 thru 8) /
     H1WS4C (6 thru 8) /
     H1WS5C (96 thru 98) /
     H1WS6C (6 thru 8) /
     H1WS7C (7) /
     H1WS8C (7) /
     H1WS9C (7) /
     H1WS10C (7) /
     H1WS11C (7) /
     H1WS12C (6 thru 8) /
     STUDSIBD (6 thru 8) /
     TWIND (6, 7) /
     H1WS1D (6, 7) /
     H1WS2D (6, 7) /
     H1WS3D (6, 7) /
     H1WS4D (6, 7) /
     H1WS5D (96, 97) /
     H1WS6D (6, 7) /
     H1WS7D (7) /
     H1WS8D (7) /
     H1WS9D (7) /
     H1WS10D (7) /
     H1WS11D (7) /
     H1WS12D (6, 7) /
     STUDSIBE (6 thru 8) /
     TWINE (6, 7) /
     H1WS1E (6, 7) /
     H1WS2E (6, 7) /
     H1WS3E (6, 7) /
     H1WS4E (6, 7) /
     H1WS5E (96, 97) /
     H1WS6E (6, 7) /
     H1WS7E (7) /
     H1WS8E (7) /
     H1WS9E (7) /
     H1WS10E (7) /
     H1WS11E (7) /
     H1WS12E (6, 7) /
     STUDSIBF (7) /
     TWINF (7) /
     H1WS1F (7) /
     H1WS2F (7) /
     H1WS3F (7) /
     H1WS4F (7) /
     H1WS5F (7) /
     H1WS6F (7) /
     H1WS7F (7) /
     H1WS8F (7) /
     H1WS9F (7) /
     H1WS10F (7) /
     H1WS11F (7) /
     H1WS12F (7) /
     STUDSIBG (7) /
     TWING (7) /
     H1WS1G (7) /
     H1WS2G (7) /
     H1WS3G (7) /
     H1WS4G (7) /
     H1WS5G (97) /
     H1WS6G (7) /
     H1WS7G (7) /
     H1WS8G (7) /
     H1WS9G (7) /
     H1WS10G (7) /
     H1WS11G (7) /
     H1WS12G (7) /
     H1WS13 (6, 8, 9) /
     H1IR1 (6, 8) /
     H1IR2 (6, 8) /
     H1IR3 (6, 8) /
     H1IR4 (6, 8) /
     H1IR5 (6, 8) /
     H1IR6 (6, 8) /
     H1IR7A (7) /
     H1IR7B (7) /
     H1IR7C (7) /
     H1IR7D (7) /
     H1IR7E (7) /
     H1IR7F (7) /
     H1IR7G (7) /
     H1IR7H (7) /
     H1IR7I (7) /
     H1IR7J (7) /
     H1IR7K (7) /
     H1IR7L (7) /
     H1IR7M (7) /
     H1IR7N (7) /
     H1IR7O (7) /
     H1IR7P (7) /
     H1IR7Q (7) /
     H1IR7R (7) /
     H1IR7S (7) /
     H1IR7T (7) /
     H1IR7U (7) /
     H1IR7V (7) /
     H1IR7W (7) /
     H1IR7X (7) /
     H1IR7Y (7) /
     H1IR7Z (7) /
     H1IR7AA (7) /
     H1IR7BB (7) /
     H1IR7CC (7) /
     H1IR7DD (7) /
     H1IR8A (7) /
     H1IR8B (7) /
     H1IR8C (7) /
     H1IR8D (7, 8) /
     H1IR9 (6, 8) /
     H1IR11 (6, 8, 9) /
     H1IR12 (96, 98, 99) /
     H1IR13 (97, 99) /
     H1IR14 (6, 97, 98) /
     H1IR15 (6, 8, 9) /
     H1IR16 (96, 98) /
     H1IR17A (7) /
     H1IR17B (7) /
     H1IR17C (7) /
     H1IR17D (7) /
     H1IR17E (7) /
     H1IR17F (7) /
     H1IR17G (7) /
     H1IR17H (7) /
     H1IR17I (7) /
     H1IR17J (7) /
     H1IR18 (6, 8) /
     H1IR19 (6, 8) /
     H1IR20 (6 thru 8) /
     H1IR21 (6, 8, 9) /
     H1IR22A (6 thru 8) /
     H1IR22B (6 thru 8) /
     H1IR22C (6 thru 8) /
     H1IR22D (6 thru 8) /
     H1IR22E (6 thru 8) /
     H1IR22F (6 thru 8) /
     H1IR22G (6 thru 8) /
     H1IR22H (6 thru 8) /
     H1IR22I (6 thru 8) /
     H1IR22J (6 thru 8) /
     H1IR22K (6 thru 8) /
     H1IR22L (6 thru 8) /
     H1IR22M (6 thru 8) /
     H1IR22N (6 thru 8) /
     H1IR22O (6 thru 8) /
     H1IR22P (6 thru 8) /
     H1IR22Q (6 thru 8) /
     H1IR22R (6 thru 8) /
     H1IR22S (6 thru 8) /
     H1IR22T (6 thru 8) /
     H1IR22U (6 thru 8) /
     H1IR22V (6 thru 8) /
     H1IR22W (6 thru 8) /
     H1IR22X (6 thru 8) /
     H1IR22Y (6 thru 8) /
     H1IR22Z (6 thru 8) /
     H1IR22AA (6 thru 8) /
     H1IR22BB (6 thru 8) /
     H1IR22CC (6 thru 8) /
     H1IR22DD (6 thru 8) /
     H1IR22EE (6 thru 8) /
     H1IR22FF (6 thru 8) /
     H1IR22GG (6 thru 8) /
     H1IR22HH (6 thru 8) /
     H1IR22II (6 thru 8) /
     H1IR22JJ (6 thru 8) /
     H1IR22KK (6 thru 8) /
     H1IR22LL (6 thru 8) /
     H1IR22MM (6 thru 8) /
     H1IR23 (6, 8, 9) /
     H1IR24 (6, 8, 9) /
     H1IR25 (6, 8) /
     H1IR26 (6, 8) /
     H1IR27 (6, 8) /
     H1IR28 (6, 8) /
     S2 (9) /
     S3 (13, 99) /
     S4 (8) /
     S5 (97 thru 99) /
     S7 (97, 99) /
     S10A (7 thru 9) /
     S10B (7 thru 9) /
     S10C (7 thru 9) /
     S10D (7 thru 9) /
     S12 (97, 99) /
     S13 (7, 8) /
     S14 (97, 99) /
     S15 (7 thru 9) /
     S16 (7, 9) /
     S17 (9) /
     S18 (97, 99) /
     S19 (7, 8) /
     S20 (97, 99) /
     S21 (7, 8) /
     S22 (7, 9) /
     S24 (7) /
     S26 (7) /
     S27 (99) /
     S28 (97 thru 99) /
     S45A (99) /
     S45B (99) /
     S45C (99) /
     S45D (99) /
     S45E (99) /
     S45F (99) /
     S46A (9) /
     S46B (9) /
     S46C (9) /
     S46D (9) /
     S47 (9) /
     S48 (9) /
     S50 (9) /
     S53 (9) /
     S55A (7) /
     S55B (7) /
     S55C (7) /
     S55D (7) /
     S59A (99) /
     S59C (99) /
     S59D (99) /
     S59E (99) /
     S59F (99) /
     S59G (99) /
     S60A (9) /
     S60B (9) /
     S60C (9) /
     S60D (9) /
     S60E (9) /
     S60F (9) /
     S60G (9) /
     S60H (9) /
     S60I (9) /
     S60J (9) /
     S60K (9) /
     S60L (9) /
     S60M (9) /
     S60N (9) /
     S60O (9) /
     S61A (9) /
     S61B (9) /
     S61C (9) /
     S61D (9) /
     S61E (9) /
     S61F (9) /
     S62A (9) /
     S62B (9) /
     S62C (9) /
     S62D (9) /
     S62E (9) /
     S62F (9) /
     S62G (9) /
     S62H (9) /
     S62I (9) /
     S62J (9) /
     S62K (9) /
     S62L (9) /
     S62M (9) /
     S62N (9) /
     S62O (9) /
     S62P (9) /
     S62Q (9) /
     S62R (9) /
     S63 (9) /
     S64 (9) /
     S65 (9) /
     PA2 (996) /
     PA3 (6) /
     PA4 (6) /
     PA5_1 (6, 7) /
     PA5_2 (6, 7) /
     PA5_3 (6, 7) /
     PA5_4 (6, 7) /
     PA5_5 (6, 7) /
     PA5_6 (6, 7) /
     PA5_7 (6, 7) /
     PA6_1 (6) /
     PA6_2 (6) /
     PA6_3 (6) /
     PA6_4 (6) /
     PA6_5 (6) /
     PA7_1 (6, 7) /
     PA7_2 (6, 7) /
     PA7_3 (6, 7) /
     PA7_4 (6, 7) /
     PA7_5 (6, 7) /
     PA7_6 (6, 7) /
     PA7_7 (6, 7) /
     PA7_8 (6, 7) /
     PA8B (6, 7) /
     PA10 (6) /
     PA11 (6, 7) /
     PA12 (96) /
     PA13 (6) /
     PA14 (6, 7) /
     PA15 (6, 7) /
     PA16 (6, 7) /
     PA17 (6, 7) /
     PA18 (6) /
     PA19 (6) /
     PA20 (6) /
     PA21 (6) /
     PA22 (96) /
     PA23 (6, 7) /
     PA24 (6, 7) /
     PA25 (6, 7) /
     PA26 (6, 7, 8) /
     PA27A (6) /
     PA27B (6) /
     PA27C (6) /
     PA27D (6) /
     PA27E (6) /
     PA28A (6) /
     PA28B (6) /
     PA28C (6) /
     PA28D (6) /
     PA28E (6) /
     PA28F (6) /
     PA28G (6) /
     PA28H (6) /
     PA28I (6) /
     PA28J (6) /
     PA30 (96, 97) /
     PA31 (6) /
     PA32 (6) /
     PA33 (6) /
     PA34 (6) /
     PA35 (6) /
     PA36 (6) /
     PA37 (6) /
     PA38 (6) /
     PA39 (996, 997) /
     PA40 (96) /
     PA41_1 (6, 7) /
     PA41_2 (6, 7) /
     PA41_3 (6, 7) /
     PA41_4 (6, 7) /
     PA41_5 (6, 7) /
     PA41_6 (6, 7) /
     PA41_7 (6, 7) /
     PA41_8 (6, 7) /
     PA41_9 (6, 7) /
     PA41_10 (6, 7) /
     PA41_11 (6, 7) /
     PA41_12 (6, 7) /
     PA41_13 (6, 7) /
     PA41_14 (6, 7) /
     PA41_15 (6, 7) /
     PA41_16 (6, 7) /
     PA41_17 (6, 7) /
     PA41_18 (6, 7) /
     PA41_19 (6, 7) /
     PA42 (6, 7) /
     PA43 (6, 7) /
     PA44 (6, 7) /
     PA46_1 (6, 7) /
     PA46_2 (6, 7) /
     PA46_3 (6, 7) /
     PA46_4 (6, 7) /
     PA46_5 (6, 7) /
     PA46_6 (6, 7) /
     PA46_7 (6, 7) /
     PA46_8 (6, 7) /
     PA46_9 (6, 7) /
     PA46_10 (6, 7) /
     PA46_11 (6, 7) /
     PA46_12 (6, 7) /
     PA46_13 (6, 7) /
     PA46_14 (6, 7) /
     PA46_15 (6, 7) /
     PA46_16 (6, 7) /
     PA46_17 (6, 7) /
     PA46_18 (6, 7) /
     PA46_19 (6, 7) /
     PA47 (6, 7) /
     PA48 (6, 7) /
     PA49 (6, 7) /
     PA51_1 (6, 7) /
     PA51_2 (6, 7) /
     PA51_3 (6, 7) /
     PA51_4 (6, 7) /
     PA51_5 (6, 7) /
     PA51_6 (6, 7) /
     PA51_7 (6, 7) /
     PA51_8 (6, 7) /
     PA51_9 (6, 7) /
     PA51_10 (6, 7) /
     PA51_11 (6, 7) /
     PA51_12 (6, 7) /
     PA51_13 (6, 7) /
     PA51_14 (6, 7) /
     PA51_15 (6, 7) /
     PA51_16 (6, 7) /
     PA51_17 (6, 7) /
     PA51_18 (6, 7) /
     PA51_19 (6, 7) /
     PA52 (6, 7) /
     PA53 (6, 7) /
     PA54 (6, 7) /
     PA55 (9996) /
     PA56 (6) /
     PA57A (6) /
     PA57B (6) /
     PA57C (6) /
     PA57D (6) /
     PA57E (6) /
     PA57F (6) /
     PA58 (6) /
     PA59 (6) /
     PA60 (6) /
     PA61 (96) /
     PA62 (96) /
     PA63 (6) /
     PA64 (6, 7) /
     PB2 (6, 7) /
     PB3 (6 thru 8) /
     PB4_1 (6, 7) /
     PB4_2 (6, 7) /
     PB4_3 (6, 7) /
     PB4_4 (6, 7) /
     PB4_5 (6, 7) /
     PB4_6 (6, 7) /
     PB4_7 (6, 7) /
     PB5_1 (6, 7) /
     PB5_2 (6, 7) /
     PB5_3 (6, 7) /
     PB5_4 (6, 7) /
     PB5_5 (6, 7) /
     PB6_1 (6, 7) /
     PB6_2 (6, 7) /
     PB6_3 (6, 7) /
     PB6_4 (6, 7) /
     PB6_5 (6, 7) /
     PB6_6 (6, 7) /
     PB6_7 (6, 7) /
     PB6_8 (6, 7) /
     PB7 (96, 97) /
     PB8 (96, 97) /
     PB9 (6, 7) /
     PB10 (6, 7) /
     PB11 (6, 7) /
     PB12 (6, 7) /
     PB13 (6, 7) /
     PB14 (6, 7) /
     PB15 (6, 7) /
     PB16 (6, 7) /
     PB17 (6, 7) /
     PB18 (96, 97) /
     PB19 (6, 7) /
     PB20 (6, 7) /
     PB21 (6 thru 8) /
     PB22 (96 thru 98) /
     PC1 (96) /
     PC2 (7) /
     PC3 (7, 8) /
     PC4 (996 thru 998) /
     PC5 (6 thru 8) /
     PC6B (6, 7) /
     PC7 (6 thru 8) /
     PC8 (996 thru 998) /
     PC9 (6 thru 8) /
     PC10 (6) /
     PC11 (6) /
     PC12 (6) /
     PC13 (6, 8) /
     PC14 (6, 8) /
     PC15 (6, 7) /
     PC16 (6, 7) /
     PC17 (96) /
     PC18 (6, 8) /
     PC19A_P (98) /
     PC19B_O (98, 99) /
     PC20 (96, 98) /
     PC21_1 (6) /
     PC21_2 (6) /
     PC21_3 (6) /
     PC21_4 (6) /
     PC21_5 (6) /
     PC21_6 (6) /
     PC21_7 (6) /
     PC22 (6 thru 8) /
     PC23 (96, 98) /
     PC24 (6) /
     PC25 (6, 7) /
     PC26 (6, 7) /
     PC27 (6, 7) /
     PC28 (6, 7) /
     PC29A (6, 7) /
     PC29B (6, 7) /
     PC29C (6, 7) /
     PC30 (6) /
     PC31 (6) /
     PC32 (6) /
     PC33 (6) /
     PC34A (6) /
     PC34B (6) /
     PC34C (6) /
     PC34D (6) /
     PC34E (6) /
     PC35 (6) /
     PC36_0 (6, 7) /
     PC36_1 (6, 7) /
     PC36_2 (6, 7) /
     PC36_3 (6, 7) /
     PC36_4 (6, 7) /
     PC36_5 (6, 7) /
     PC36_6 (6, 7) /
     PC36_7 (6, 7) /
     PC36_8 (6, 7) /
     PC36_9 (6, 7) /
     PC36_10 (6, 7) /
     PC36_11 (6, 7) /
     PC36_12 (6, 7) /
     PC36_13 (6, 7) /
     PC36_14 (6, 7) /
     PC36_15 (6, 7) /
     PC36_16 (6, 7) /
     PC36_17 (6, 7) /
     PC36_18 (6, 7) /
     PC36_19 (6, 7) /
     PC37 (6, 8) /
     PC38 (6, 8) /
     PC39 (6, 8) /
     PC40 (6, 8) /
     PC41 (6, 8) /
     PC42A (6) /
     PC42B (6) /
     PC42C (6) /
     PC42D (6) /
     PC42E (6) /
     PC43AA (6) /
     PC43AB (6) /
     PC43AC (6) /
     PC43AD (6) /
     PC43BA (6) /
     PC43BB (6) /
     PC44A (6) /
     PC44B (6) /
     PC44C (6) /
     PC44D (6) /
     PC45 (6) /
     PC46 (6) /
     PC47 (6, 8) /
     PC48 (96, 97) /
     PC49A_1 (6, 8) /
     PC49A_2 (6, 8) /
     PC49A_3 (6, 8) /
     PC49B_1 (6, 8) /
     PC49B_2 (6, 8) /
     PC49B_3 (6, 8) /
     PC49C_1 (6, 8) /
     PC49C_2 (6, 8) /
     PC49C_3 (6, 8) /
     PC49D_1 (6, 8) /
     PC49D_2 (6, 8) /
     PC49D_3 (6, 8) /
     PC49E_1 (6, 8) /
     PC49E_2 (6, 8) /
     PC49E_3 (6, 8) /
     PC49F_1 (6, 8) /
     PC49F_2 (6, 8) /
     PC49F_3 (6, 8) /
     PC50 (6) /
     PC51 (6) /
     PC53 (6, 7) /
     PC54 (6 thru 8) /
     PC55 (6, 7) /
     PC58 (6 thru 8) /
     PC59 (96 thru 98) /
     PC60_1 (6, 7) /
     PC60_2 (6, 7) /
     PC60_3 (6, 7) /
     PC60_4 (6, 7) /
     PC60_5 (6, 7) /
     PC60_6 (6, 7) /
     PC60_7 (6, 7) /
     PC60_8 (6, 7) /
     PC60_9 (6, 7) /
     PC60_10 (6, 7) /
     PC60_11 (6, 7) /
     PC60_12 (6, 7) /
     PC60_13 (6, 7) /
     PC60_14 (6, 7) /
     PC60_15 (6, 7) /
     PC60_16 (6, 7) /
     PC60_17 (6, 7) /
     PC60_18 (6, 7) /
     PC61A (6, 7) /
     PC61B (6, 7) /
     PC61C (6, 7) /
     PC61D (6, 7) /
     PC62_1 (6, 7) /
     PC62_2 (6, 7) /
     PC62_4 (6, 7) /
     PC62_5 (6, 7) /
     PC62_8 (6, 7) /
     PC62_10 (6, 7) /
     PC62_11 (6, 7) /
     PC63 (6, 8) /
     PC64 (6 thru 8) /
     PC65_M (96 thru 98) /
     PC65_Y (96 thru 98) /
     PC66_M (96 thru 98) /
     PC66_Y (96 thru 98) /
     PC68_M (96 thru 98) /
     PC68_Y (96 thru 98) /
     PD2 (7, 8) /
     PD3 (6 thru 8) /
     PD4A (7, 8) /
     PD4B (7 thru 9) /
     PD4C (6, 7, 9) /
     PD4D (7 thru 9) /
     PD4E (7, 8) /
     PD4F (7, 8) /
   .

EXECUTE.

* SPSS VARIABLE LEVEL COMMAND.

VARIABLE LEVEL
   IDAY
   H1GI3
   H1DA8
   H1DA9
   H1DA10
   H1DA11
   H1GH45
   H1GH47
   H1GH51
   H1GH60
   H1ED2
   H1HR7A
   H1HR8A
   H1HR10A
   H1HR7B
   H1HR8B
   H1HR10B
   H1HR7C
   H1HR8C
   H1HR10C
   H1HR7D
   H1HR8D
   H1HR10D
   H1HR7E
   H1HR8E
   H1HR10E
   H1HR7F
   H1HR8F
   H1HR10F
   H1HR7G
   H1HR8G
   H1HR10G
   H1HR4H
   H1HR7H
   H1HR8H
   H1HR10H
   H1HR4I
   H1HR7I
   H1HR8I
   H1HR10I
   H1HR4J
   H1HR7J
   H1HR8J
   H1HR10J
   H1HR4K
   H1HR7K
   H1HR8K
   H1HR10K
   H1HR4L
   H1HR7L
   H1HR8L
   H1HR10L
   H1HR4M
   H1HR7M
   H1HR8M
   H1HR10M
   H1HR11M
   H1HR4N
   H1HR6N
   H1HR7N
   H1HR8N
   H1HR10N
   H1HR11N
   H1HR4O
   H1HR6O
   H1HR7O
   H1HR8O
   H1HR10O
   H1HR11O
   H1HR4P
   H1HR6P
   H1HR7P
   H1HR8P
   H1HR10P
   H1HR11P
   H1HR2Q
   H1HR3Q
   H1HR4Q
   H1HR5Q
   H1HR6Q
   H1HR7Q
   H1HR8Q
   H1HR9Q
   H1HR10Q
   H1HR11Q
   H1HR2R
   H1HR3R
   H1HR4R
   H1HR5R
   H1HR6R
   H1HR7R
   H1HR8R
   H1HR9R
   H1HR10R
   H1HR11R
   H1HR2S
   H1HR3S
   H1HR4S
   H1HR5S
   H1HR6S
   H1HR7S
   H1HR8S
   H1HR9S
   H1HR10S
   H1HR11S
   H1HR2T
   H1HR3T
   H1HR4T
   H1HR5T
   H1HR6T
   H1HR7T
   H1HR8T
   H1HR9T
   H1HR10T
   H1HR11T
   H1HR14
   H1RM7
   H1RF7
   H1WP11
   H1WP12
   H1WP15
   H1WP16
   H1RI3_1
   H1RI4_1
   H1RI22R1
   H1RI41_1
   H1RI3_2
   H1RI4_2
   H1RI22R2
   H1RI41_2
   H1RI3_3
   H1RI4_3
   H1RI22R3
   H1RI34_3
   H1RI41_3
   H1NR4
   H1NR6
   H1NR7
   H1NR8
   H1RX3_1
   H1RX22R1
   H1RX41_1
   H1NR13_1
   H1NR39_1
   H1NR43_1
   H1RX3_2
   H1RX22R2
   H1RX41_2
   H1NR13_2
   H1NR39_2
   H1RX3_3
   H1RX4_3
   H1RX22R3
   H1RX29C3
   H1RX30_3
   H1RX41_3
   H1NR13_3
   H1NR39_3
   H1NR45
   H1NR46
   H1NR50
   H1NR51
   H1TO5
   H1TO7
   H1TO10
   H1TO16
   H1TO31
   H1TO32
   H1TO35
   H1TO38
   H1TO39
   H1TO41
   H1TO42
   H1FV13
   H1FP5D
   H1FP13C1
   H1FP13C2
   H1FP13A3
   H1FP13B3
   H1FP13C3
   H1FP14_3
   H1FP20M3
   H1FP20Y3
   H1FP22_3
   H1FP23A3
   H1FP24A3
   H1FP11M4
   H1FP11Y4
   H1FP12_4
   H1FP13A4
   H1FP13B4
   H1FP13C4
   H1FP14_4
   H1FP15_4
   H1FP17_4
   H1FP20M4
   H1FP20Y4
   H1FP21_4
   H1FP22_4
   H1FP23A4
   H1FP24A4
   H1FP11M5
   H1FP11Y5
   H1FP12_5
   H1FP13A5
   H1FP13B5
   H1FP13C5
   H1FP14_5
   H1FP15_5
   H1FP17_5
   H1FP20M5
   H1FP20Y5
   H1FP21_5
   H1FP22_5
   H1FP23A5
   H1FP24A5
   H1EE1
   H1EE2
   H1EE4
   H1EE5
   H1EE6
   H1EE7
   H1EE8
   H1WS7D
   H1WS8D
   H1WS9D
   H1WS10D
   H1WS11D
   H1WS7E
   H1WS8E
   H1WS9E
   H1WS10E
   H1WS11E
   STUDSIBF
   TWINF
   H1WS1F
   H1WS2F
   H1WS3F
   H1WS4F
   H1WS5F
   H1WS6F
   H1WS7F
   H1WS8F
   H1WS9F
   H1WS10F
   H1WS11F
   H1WS12F
   STUDSIBG
   TWING
   H1WS1G
   H1WS2G
   H1WS3G
   H1WS4G
   H1WS5G
   H1WS6G
   H1WS7G
   H1WS8G
   H1WS9G
   H1WS10G
   H1WS11G
   H1WS12G
   H1IR16
   S1
   S3
   S27
   PA2
   PA39
   PA55
   PB18
   PC4
   PC8
   PC19B_O
   PC48
   PC59
   AH_PVT
   AH_RAW
    (scale).

VARIABLE LEVEL
   AID
   IMONTH
   IYEAR
   SCH_YR
   BIO_SEX
   VERSION
   SMP01
   SMP03
   H1GI1M
   H1GI1Y
   H1GI2
   H1GI4
   H1GI5A
   H1GI5B
   H1GI5C
   H1GI5D
   H1GI5E
   H1GI5F
   H1GI6A
   H1GI6B
   H1GI6C
   H1GI6D
   H1GI6E
   H1GI7A
   H1GI7B
   H1GI7C
   H1GI7D
   H1GI7E
   H1GI7F
   H1GI7G
   H1GI8
   H1GI9
   H1GI10
   H1GI11
   H1GI12
   H1GI13M
   H1GI13Y
   H1GI14
   H1GI15
   H1GI16M
   H1GI16Y
   H1GI18
   H1GI19
   H1GI20
   H1GI21
   H1DA1
   H1DA2
   H1DA3
   H1DA4
   H1DA5
   H1DA6
   H1DA7
   H1GH1
   H1GH1A
   H1GH2
   H1GH3
   H1GH4
   H1GH5
   H1GH6
   H1GH7
   H1GH8
   H1GH9
   H1GH10
   H1GH11
   H1GH12
   H1GH13
   H1GH14
   H1GH15
   H1GH16
   H1GH17
   H1GH18
   H1GH19
   H1GH20
   H1GH21
   H1GH22
   H1GH23A
   H1GH23B
   H1GH23C
   H1GH23D
   H1GH23E
   H1GH23F
   H1GH23G
   H1GH23H
   H1GH23I
   H1GH23J
   H1GH24
   H1GH25
   H1GH26
   H1GH27A
   H1GH27B
   H1GH27C
   H1GH27D
   H1GH27E
   H1GH27F
   H1GH27G
   H1GH27H
   H1GH27I
   H1GH27J
   H1GH28
   H1GH29
   H1GH30A
   H1GH30B
   H1GH30C
   H1GH30D
   H1GH30E
   H1GH30F
   H1GH30G
   H1GH31A
   H1GH31B
   H1GH31C
   H1GH31D
   H1GH31F
   H1GH31G
   H1GH32
   H1GH33
   H1GH34
   H1GH35
   H1GH36
   H1GH37
   H1GH38
   H1GH39
   H1GH40
   H1GH41
   H1GH42
   H1GH43
   H1GH44
   H1GH46
   H1GH48
   H1GH49
   H1GH50
   H1GH52
   H1GH53
   H1GH54
   H1GH55
   H1GH56
   H1GH57
   H1GH58
   H1GH59A
   H1GH59B
   H1TS1
   H1TS2
   H1TS3
   H1TS4
   H1TS5
   H1TS6
   H1TS7
   H1TS8
   H1TS9
   H1TS10
   H1TS11
   H1TS12
   H1TS13
   H1TS14
   H1TS15
   H1TS16
   H1TS17
   H1ED1
   H1ED3
   H1ED4A
   H1ED4B
   H1ED4C
   H1ED4D
   H1ED4E
   H1ED4F
   H1ED4G
   H1ED4H
   H1ED4I
   H1ED4J
   H1ED4K
   H1ED4M
   H1ED5
   H1ED6A
   H1ED6B
   H1ED6C
   H1ED6D
   H1ED6E
   H1ED6F
   H1ED6G
   H1ED6H
   H1ED6I
   H1ED6J
   H1ED6K
   H1ED6L
   H1ED6M
   H1ED7
   H1ED8
   H1ED9
   H1ED10
   H1ED11
   H1ED12
   H1ED13
   H1ED14
   H1ED15
   H1ED16
   H1ED17
   H1ED18
   H1ED19
   H1ED20
   H1ED21
   H1ED22
   H1ED23
   H1ED24
   H1PL1
   H1PL2
   H1PL3
   H1PL4
   H1PL5
   H1PL6
   H1PL7
   H1PL8
   H1PL9
   H1PL10
   H1PL11
   H1PL12
   H1PL13
   H1PL14
   H1PL15
   H1PL16
   H1PL17
   H1PL18
   H1PL19
   H1PL20
   H1PL21
   H1PL22
   H1PL23
   H1PL24
   H1PL25
   H1PL26
   H1PL29
   H1PL30
   H1PL31
   H1PL33
   H1PL34
   H1PL37
   H1PL38
   H1HS1
   H1HS2A
   H1HS2B
   H1HS2C
   H1HS2D
   H1HS2E
   H1HS3
   H1HS4A
   H1HS4B
   H1HS4C
   H1HS4D
   H1HS4E
   H1HS5
   H1HS6A
   H1HS6B
   H1HS6C
   H1HS6D
   H1HS6E
   H1HS7
   H1HS8A
   H1HS8B
   H1HS8C
   H1HS8D
   H1HS8E
   H1HS9
   H1HS10A
   H1HS10B
   H1HS10C
   H1HS10D
   H1HS10E
   H1HS11
   H1HS12A
   H1HS12B
   H1HS12C
   H1HS12D
   H1HS12E
   H1RP1
   H1RP2
   H1RP3
   H1RP4
   H1RP5
   H1RP6
   H1SE1
   H1SE2
   H1SE3
   H1SE4
   H1FS1
   H1FS2
   H1FS3
   H1FS4
   H1FS5
   H1FS6
   H1FS7
   H1FS8
   H1FS9
   H1FS10
   H1FS11
   H1FS12
   H1FS13
   H1FS14
   H1FS15
   H1FS16
   H1FS17
   H1FS18
   H1FS19
   H1HR2A
   H1HR3A
   H1HR4A
   H1HR5A
   H1HR6A
   H1HR9A
   H1HR11A
   H1HR2B
   H1HR3B
   H1HR4B
   H1HR5B
   H1HR6B
   H1HR9B
   H1HR11B
   H1HR2C
   H1HR3C
   H1HR4C
   H1HR5C
   H1HR6C
   H1HR9C
   H1HR11C
   H1HR2D
   H1HR3D
   H1HR4D
   H1HR5D
   H1HR6D
   H1HR9D
   H1HR11D
   H1HR2E
   H1HR3E
   H1HR4E
   H1HR5E
   H1HR6E
   H1HR9E
   H1HR11E
   H1HR2F
   H1HR3F
   H1HR4F
   H1HR5F
   H1HR6F
   H1HR9F
   H1HR11F
   H1HR2G
   H1HR3G
   H1HR4G
   H1HR5G
   H1HR6G
   H1HR9G
   H1HR11G
   H1HR2H
   H1HR3H
   H1HR5H
   H1HR6H
   H1HR9H
   H1HR11H
   H1HR2I
   H1HR3I
   H1HR5I
   H1HR6I
   H1HR9I
   H1HR11I
   H1HR2J
   H1HR3J
   H1HR5J
   H1HR6J
   H1HR9J
   H1HR11J
   H1HR2K
   H1HR3K
   H1HR5K
   H1HR6K
   H1HR9K
   H1HR11K
   H1HR2L
   H1HR3L
   H1HR5L
   H1HR6L
   H1HR9L
   H1HR11L
   H1HR2M
   H1HR3M
   H1HR5M
   H1HR6M
   H1HR9M
   H1HR2N
   H1HR3N
   H1HR5N
   H1HR9N
   H1HR2O
   H1HR3O
   H1HR5O
   H1HR9O
   H1HR2P
   H1HR3P
   H1HR5P
   H1HR9P
   H1HR12
   H1HR13
   H1HR15
   H1NM1
   H1NM2
   H1NM3
   H1NM4
   H1NM5
   H1NM6
   H1NM7
   H1NM8
   H1NM9
   H1NM10
   H1NM11
   H1NM12A
   H1NM12B
   H1NM12C
   H1NM12D
   H1NM12E
   H1NM12F
   H1NM12G
   H1NM12H
   H1NM12I
   H1NM12J
   H1NM13
   H1NM14
   H1NF1
   H1NF2
   H1NF3
   H1NF4
   H1NF5
   H1NF6
   H1NF7
   H1NF8
   H1NF9
   H1NF10
   H1NF11
   H1NF12A
   H1NF12B
   H1NF12C
   H1NF12D
   H1NF12E
   H1NF12F
   H1NF12G
   H1NF12H
   H1NF12I
   H1NF12J
   H1NF13
   H1NF14
   H1RM1
   H1RM2
   H1RM3
   H1RM4
   H1RM5
   H1RM6
   H1RM8
   H1RM9
   H1RM10
   H1RM11
   H1RM12
   H1RM13
   H1RM14
   H1RF1
   H1RF2
   H1RF3
   H1RF4
   H1RF5
   H1RF6
   H1RF8
   H1RF9
   H1RF10
   H1RF11
   H1RF12
   H1RF13
   H1RF14
   H1WP1
   H1WP2
   H1WP3
   H1WP4
   H1WP5
   H1WP6
   H1WP7
   H1WP8
   H1WP9
   H1WP10
   H1WP13
   H1WP14
   H1WP17A
   H1WP17B
   H1WP17C
   H1WP17D
   H1WP17E
   H1WP17F
   H1WP17G
   H1WP17H
   H1WP17I
   H1WP17J
   H1WP17K
   H1WP18A
   H1WP18B
   H1WP18C
   H1WP18D
   H1WP18E
   H1WP18F
   H1WP18G
   H1WP18H
   H1WP18I
   H1WP18J
   H1WP18K
   H1MO1
   H1MO2
   H1MO3
   H1MO4
   H1MO5
   H1MO6
   H1MO7
   H1MO8
   H1MO9
   H1MO10
   H1MO11
   H1MO12
   H1MO13
   H1MO14
   H1PF1
   H1PF2
   H1PF3
   H1PF4
   H1PF5
   H1PF6
   H1PF7
   H1PF8
   H1PF9
   H1PF10
   H1PF11
   H1PF12
   H1PF13
   H1PF14
   H1PF15
   H1PF16
   H1PF17
   H1PF18
   H1PF19
   H1PF20
   H1PF21
   H1PF22
   H1PF23
   H1PF24
   H1PF25
   H1PF26
   H1PF27
   H1PF28
   H1PF29
   H1PF30
   H1PF31
   H1PF32
   H1PF33
   H1PF34
   H1PF35
   H1PF36
   H1KQ1A
   H1KQ1B
   H1KQ2A
   H1KQ2B
   H1KQ3A
   H1KQ3B
   H1KQ4A
   H1KQ4B
   H1KQ5A
   H1KQ5B
   H1KQ6A
   H1KQ6B
   H1KQ7A
   H1KQ7B
   H1KQ8A
   H1KQ8B
   H1KQ9A
   H1KQ9B
   H1KQ10A
   H1KQ10B
   FR_FLAG
   H1MF2A
   H1MF3A
   H1MF4A
   H1MF5A
   H1MF6A
   H1MF7A
   H1MF8A
   H1MF9A
   H1MF10A
   H1MF2B
   H1MF3B
   H1MF4B
   H1MF5B
   H1MF6B
   H1MF7B
   H1MF8B
   H1MF9B
   H1MF10B
   H1MF2C
   H1MF3C
   H1MF4C
   H1MF5C
   H1MF6C
   H1MF7C
   H1MF8C
   H1MF9C
   H1MF10C
   H1MF2D
   H1MF3D
   H1MF4D
   H1MF5D
   H1MF6D
   H1MF7D
   H1MF8D
   H1MF9D
   H1MF10D
   H1MF2E
   H1MF3E
   H1MF4E
   H1MF5E
   H1MF6E
   H1MF7E
   H1MF8E
   H1MF9E
   H1MF10E
   H1FF2A
   H1FF3A
   H1FF4A
   H1FF5A
   H1FF6A
   H1FF7A
   H1FF8A
   H1FF9A
   H1FF10A
   H1FF2B
   H1FF3B
   H1FF4B
   H1FF5B
   H1FF6B
   H1FF7B
   H1FF8B
   H1FF9B
   H1FF10B
   H1FF2C
   H1FF3C
   H1FF4C
   H1FF5C
   H1FF6C
   H1FF7C
   H1FF8C
   H1FF9C
   H1FF10C
   H1FF2D
   H1FF3D
   H1FF4D
   H1FF5D
   H1FF6D
   H1FF7D
   H1FF8D
   H1FF9D
   H1FF10D
   H1FF2E
   H1FF3E
   H1FF4E
   H1FF5E
   H1FF6E
   H1FF7E
   H1FF8E
   H1FF9E
   H1FF10E
   H1ID1A
   H1ID1B
   H1ID1C
   H1ID1D
   H1ID1E
   H1ID1F
   H1ID1G
   H1ID1H
   H1ID1I
   H1ID1J
   H1ID1K
   H1ID1L
   H1ID1M
   H1ID1N
   H1ID1O
   H1ID1P
   H1ID1Q
   H1ID1R
   H1ID2_1
   H1ID2_2
   H1ID2_3
   H1ID2_4
   H1ID2_5
   H1ID2_6
   H1ID2_7
   H1ID2_8
   H1ID2_9
   H1ID2_10
   H1ID2_11
   H1ID2_12
   H1ID2_13
   H1ID2_14
   H1ID2_15
   H1ID2_16
   H1ID2_17
   H1ID5
   H1ID6
   H1RR1
   RR_FLAG
   H1LR1
   H1LR2
   H1LR3
   H1LR4
   H1CO1
   H1CO2M
   H1CO2Y
   H1CO3
   H1CO4A
   H1CO4B
   H1CO4C
   H1CO5M
   H1CO5Y
   H1CO6
   H1CO7A
   H1CO7B
   H1CO7C
   H1CO8
   H1CO9
   H1CO10
   H1CO11
   H1CO12A
   H1CO12B
   H1CO12C
   H1CO13
   H1CO14M
   H1CO14Y
   H1CO15
   H1CO16A
   H1CO16B
   H1CO16C
   H1CO16D
   H1CO16E
   H1CO16F
   H1CO16G
   H1CO16H
   H1CO16I
   H1CO16J
   H1CO17A
   H1CO17B
   H1CO17C
   H1CO17D
   H1CO17E
   H1CO17F
   H1CO17G
   H1CO17H
   H1CO17I
   H1CO17J
   H1RI1M_1
   H1RI1Y_1
   H1RI2_1
   H1RI5A_1
   H1RI6_1
   H1RI7_1
   H1RI8A_1
   H1RI8B_1
   H1RI8C_1
   H1RI8D_1
   H1RI8E_1
   H1RI8F_1
   H1RI8G_1
   H1RI8H_1
   H1RI9_1
   H1RI10_1
   H1RI11M1
   H1RI11Y1
   H1RI12_1
   H1RI13_1
   H1RI14_1
   H1RI15_1
   H1RI16_1
   H1RI17A1
   H1RI17B1
   H1RI17C1
   H1RI17D1
   H1RI17E1
   H1RI17F1
   H1RI18A1
   H1RI18B1
   H1RI18C1
   H1RI18D1
   H1RI18E1
   H1RI19A1
   H1RI19B1
   H1RI19C1
   H1RI19D1
   H1RI19E1
   H1RI19F1
   H1RI19G1
   H1RI20_1
   H1RI21A1
   H1RI21B1
   H1RI21C1
   H1RI21D1
   H1RI21E1
   H1RI21F1
   H1RI21G1
   H1RI21H1
   H1RI21I1
   H1RI21J1
   H1RI21K1
   H1RI21L1
   H1RI21M1
   H1RI21N1
   H1RI21O1
   H1RI21P1
   H1RI21Q1
   H1RI21R1
   H1RI22A1
   H1RI22B1
   H1RI22C1
   H1RI22D1
   H1RI22E1
   H1RI22F1
   H1RI22G1
   H1RI22H1
   H1RI22I1
   H1RI22J1
   H1RI22K1
   H1RI22L1
   H1RI22M1
   H1RI22N1
   H1RI22O1
   H1RI22P1
   H1RI22Q1
   H1RI24A1
   H1RI25M1
   H1RI25Y1
   H1RI26M1
   H1RI26Y1
   H1RI27_1
   H1RI28_1
   H1RI29A1
   H1RI29B1
   H1RI29C1
   H1RI30_1
   H1RI31_1
   H1RI32_1
   H1RI33A1
   H1RI33B1
   H1RI33C1
   H1RI34_1
   H1RI35_1
   H1RI36_1
   H1RI37_1
   H1RI38A1
   H1RI38B1
   H1RI38C1
   H1RI39_1
   H1RI40_1
   H1RI1M_2
   H1RI1Y_2
   H1RI2_2
   H1RI5A_2
   H1RI6_2
   H1RI7_2
   H1RI8A_2
   H1RI8B_2
   H1RI8C_2
   H1RI8D_2
   H1RI8E_2
   H1RI8F_2
   H1RI8G_2
   H1RI8H_2
   H1RI9_2
   H1RI10_2
   H1RI11M2
   H1RI11Y2
   H1RI12_2
   H1RI13_2
   H1RI14_2
   H1RI15_2
   H1RI16_2
   H1RI17A2
   H1RI17B2
   H1RI17C2
   H1RI17D2
   H1RI17E2
   H1RI17F2
   H1RI18A2
   H1RI18B2
   H1RI18C2
   H1RI18D2
   H1RI18E2
   H1RI19A2
   H1RI19B2
   H1RI19C2
   H1RI19D2
   H1RI19E2
   H1RI19F2
   H1RI19G2
   H1RI20_2
   H1RI21A2
   H1RI21B2
   H1RI21C2
   H1RI21D2
   H1RI21E2
   H1RI21F2
   H1RI21G2
   H1RI21H2
   H1RI21I2
   H1RI21J2
   H1RI21K2
   H1RI21L2
   H1RI21M2
   H1RI21N2
   H1RI21O2
   H1RI21P2
   H1RI21Q2
   H1RI21R2
   H1RI22A2
   H1RI22B2
   H1RI22C2
   H1RI22D2
   H1RI22E2
   H1RI22F2
   H1RI22G2
   H1RI22H2
   H1RI22I2
   H1RI22J2
   H1RI22K2
   H1RI22L2
   H1RI22M2
   H1RI22N2
   H1RI22O2
   H1RI22P2
   H1RI22Q2
   H1RI24A2
   H1RI25M2
   H1RI25Y2
   H1RI26M2
   H1RI26Y2
   H1RI27_2
   H1RI28_2
   H1RI29A2
   H1RI29B2
   H1RI29C2
   H1RI30_2
   H1RI31_2
   H1RI32_2
   H1RI33A2
   H1RI33B2
   H1RI33C2
   H1RI34_2
   H1RI35_2
   H1RI36_2
   H1RI37_2
   H1RI38A2
   H1RI38B2
   H1RI38C2
   H1RI39_2
   H1RI40_2
   H1RI1M_3
   H1RI1Y_3
   H1RI2_3
   H1RI5A_3
   H1RI6_3
   H1RI7_3
   H1RI8A_3
   H1RI8B_3
   H1RI8C_3
   H1RI8D_3
   H1RI8E_3
   H1RI8F_3
   H1RI8G_3
   H1RI8H_3
   H1RI9_3
   H1RI10_3
   H1RI11M3
   H1RI11Y3
   H1RI12_3
   H1RI13_3
   H1RI14_3
   H1RI15_3
   H1RI16_3
   H1RI17A3
   H1RI17B3
   H1RI17C3
   H1RI17D3
   H1RI17E3
   H1RI17F3
   H1RI18A3
   H1RI18B3
   H1RI18C3
   H1RI18D3
   H1RI18E3
   H1RI19A3
   H1RI19B3
   H1RI19C3
   H1RI19D3
   H1RI19E3
   H1RI19F3
   H1RI19G3
   H1RI20_3
   H1RI21A3
   H1RI21B3
   H1RI21C3
   H1RI21D3
   H1RI21E3
   H1RI21F3
   H1RI21G3
   H1RI21H3
   H1RI21I3
   H1RI21J3
   H1RI21K3
   H1RI21L3
   H1RI21M3
   H1RI21N3
   H1RI21O3
   H1RI21P3
   H1RI21Q3
   H1RI21R3
   H1RI22A3
   H1RI22B3
   H1RI22C3
   H1RI22D3
   H1RI22E3
   H1RI22F3
   H1RI22G3
   H1RI22H3
   H1RI22I3
   H1RI22J3
   H1RI22K3
   H1RI22L3
   H1RI22M3
   H1RI22N3
   H1RI22O3
   H1RI22P3
   H1RI22Q3
   H1RI24A3
   H1RI25M3
   H1RI25Y3
   H1RI26M3
   H1RI26Y3
   H1RI27_3
   H1RI28_3
   H1RI29A3
   H1RI29B3
   H1RI29C3
   H1RI30_3
   H1RI31_3
   H1RI32_3
   H1RI33A3
   H1RI33B3
   H1RI33C3
   H1RI35_3
   H1RI36_3
   H1RI37_3
   H1RI38A3
   H1RI38B3
   H1RI38C3
   H1RI39_3
   H1RI40_3
   RICARD1
   RICARD2
   RICARD3
   H1NR1
   H1NR2
   H1NR3
   H1NR5
   H1NR10_1
   H1NR11_1
   H1NR12_1
   NRRXFLG1
   H1RX1M_1
   H1RX1Y_1
   H1RX2_1
   H1RX4_1
   H1RX5A_1
   H1RX6_1
   H1RX7_1
   H1RX8A_1
   H1RX8B_1
   H1RX8C_1
   H1RX8D_1
   H1RX8E_1
   H1RX8F_1
   H1RX8G_1
   H1RX8H_1
   H1RX9_1
   H1RX10_1
   H1RX11M1
   H1RX11Y1
   H1RX12_1
   H1RX13_1
   H1RX14_1
   H1RX15_1
   H1RX16_1
   H1RX17A1
   H1RX17B1
   H1RX17C1
   H1RX17D1
   H1RX17E1
   H1RX17F1
   H1RX18A1
   H1RX18B1
   H1RX18C1
   H1RX18D1
   H1RX18E1
   H1RX19A1
   H1RX19B1
   H1RX19C1
   H1RX19D1
   H1RX19E1
   H1RX19F1
   H1RX19G1
   H1RX20_1
   H1RX21A1
   H1RX21B1
   H1RX21C1
   H1RX21D1
   H1RX21E1
   H1RX21F1
   H1RX21G1
   H1RX21H1
   H1RX21I1
   H1RX21J1
   H1RX21K1
   H1RX21L1
   H1RX21M1
   H1RX21N1
   H1RX21O1
   H1RX21P1
   H1RX21Q1
   H1RX21R1
   H1RX22A1
   H1RX22B1
   H1RX22C1
   H1RX22D1
   H1RX22E1
   H1RX22F1
   H1RX22G1
   H1RX22H1
   H1RX22I1
   H1RX22J1
   H1RX22K1
   H1RX22L1
   H1RX22M1
   H1RX22N1
   H1RX22O1
   H1RX22P1
   H1RX22Q1
   H1RX24A1
   H1RX25M1
   H1RX25Y1
   H1RX26M1
   H1RX26Y1
   H1RX27_1
   H1RX28_1
   H1RX29A1
   H1RX29B1
   H1RX29C1
   H1RX30_1
   H1RX31_1
   H1RX32_1
   H1RX33A1
   H1RX33B1
   H1RX33C1
   H1RX34_1
   H1RX35_1
   H1RX36_1
   H1RX37_1
   H1RX38A1
   H1RX38B1
   H1RX38C1
   H1RX39_1
   H1RX40_1
   H1NR14_1
   H1NR15_1
   H1NR16_1
   H1NR17A1
   H1NR17B1
   H1NR17C1
   H1NR17D1
   H1NR17E1
   H1NR17F1
   H1NR18A1
   H1NR18B1
   H1NR18C1
   H1NR18D1
   H1NR18E1
   H1NR19A1
   H1NR19B1
   H1NR19C1
   H1NR19D1
   H1NR19E1
   H1NR19F1
   H1NR19G1
   H1NR20A1
   H1NR20B1
   H1NR20C1
   H1NR20D1
   H1NR20E1
   H1NR20F1
   H1NR20G1
   H1NR20H1
   H1NR21_1
   H1NR22_1
   H1NR23M1
   H1NR23Y1
   H1NR24M1
   H1NR24Y1
   H1NR25_1
   H1NR26_1
   H1NR27A1
   H1NR27B1
   H1NR27C1
   H1NR28_1
   H1NR29_1
   H1NR30_1
   H1NR31A1
   H1NR31B1
   H1NR31C1
   H1NR32_1
   H1NR33_1
   H1NR34_1
   H1NR35_1
   H1NR36A1
   H1NR36B1
   H1NR36C1
   H1NR37_1
   H1NR38_1
   H1NR40_1
   H1NR41_1
   H1NR42_1
   H1NR10_2
   H1NR11_2
   H1NR12_2
   NRRXFLG2
   H1RX1M_2
   H1RX1Y_2
   H1RX2_2
   H1RX4_2
   H1RX5A_2
   H1RX6_2
   H1RX7_2
   H1RX8A_2
   H1RX8B_2
   H1RX8C_2
   H1RX8D_2
   H1RX8E_2
   H1RX8F_2
   H1RX8G_2
   H1RX8H_2
   H1RX9_2
   H1RX10_2
   H1RX11M2
   H1RX11Y2
   H1RX12_2
   H1RX13_2
   H1RX14_2
   H1RX15_2
   H1RX16_2
   H1RX17A2
   H1RX17B2
   H1RX17C2
   H1RX17D2
   H1RX17E2
   H1RX17F2
   H1RX18A2
   H1RX18B2
   H1RX18C2
   H1RX18D2
   H1RX18E2
   H1RX19A2
   H1RX19B2
   H1RX19C2
   H1RX19D2
   H1RX19E2
   H1RX19F2
   H1RX19G2
   H1RX20_2
   H1RX21A2
   H1RX21B2
   H1RX21C2
   H1RX21D2
   H1RX21E2
   H1RX21F2
   H1RX21G2
   H1RX21H2
   H1RX21I2
   H1RX21J2
   H1RX21K2
   H1RX21L2
   H1RX21M2
   H1RX21N2
   H1RX21O2
   H1RX21P2
   H1RX21Q2
   H1RX21R2
   H1RX22A2
   H1RX22B2
   H1RX22C2
   H1RX22D2
   H1RX22E2
   H1RX22F2
   H1RX22G2
   H1RX22H2
   H1RX22I2
   H1RX22J2
   H1RX22K2
   H1RX22L2
   H1RX22M2
   H1RX22N2
   H1RX22O2
   H1RX22P2
   H1RX22Q2
   H1RX24A2
   H1RX25M2
   H1RX25Y2
   H1RX26M2
   H1RX26Y2
   H1RX27_2
   H1RX28_2
   H1RX29A2
   H1RX29B2
   H1RX29C2
   H1RX30_2
   H1RX31_2
   H1RX32_2
   H1RX33A2
   H1RX33B2
   H1RX33C2
   H1RX34_2
   H1RX35_2
   H1RX36_2
   H1RX37_2
   H1RX38A2
   H1RX38B2
   H1RX38C2
   H1RX39_2
   H1RX40_2
   H1NR14_2
   H1NR15_2
   H1NR16_2
   H1NR17A2
   H1NR17B2
   H1NR17C2
   H1NR17D2
   H1NR17E2
   H1NR17F2
   H1NR18A2
   H1NR18B2
   H1NR18C2
   H1NR18D2
   H1NR18E2
   H1NR19A2
   H1NR19B2
   H1NR19C2
   H1NR19D2
   H1NR19E2
   H1NR19F2
   H1NR19G2
   H1NR20A2
   H1NR20B2
   H1NR20C2
   H1NR20D2
   H1NR20E2
   H1NR20F2
   H1NR20G2
   H1NR20H2
   H1NR21_2
   H1NR22_2
   H1NR23M2
   H1NR23Y2
   H1NR24M2
   H1NR24Y2
   H1NR25_2
   H1NR26_2
   H1NR27A2
   H1NR27B2
   H1NR27C2
   H1NR28_2
   H1NR29_2
   H1NR30_2
   H1NR31A2
   H1NR31B2
   H1NR31C2
   H1NR32_2
   H1NR33_2
   H1NR34_2
   H1NR35_2
   H1NR36A2
   H1NR36B2
   H1NR36C2
   H1NR37_2
   H1NR38_2
   H1NR40_2
   H1NR41_2
   H1NR42_2
   H1NR43_2
   H1NR10_3
   H1NR11_3
   H1NR12_3
   NRRXFLG3
   H1RX1M_3
   H1RX1Y_3
   H1RX2_3
   H1RX5A_3
   H1RX6_3
   H1RX7_3
   H1RX8A_3
   H1RX8B_3
   H1RX8C_3
   H1RX8D_3
   H1RX8E_3
   H1RX8F_3
   H1RX8G_3
   H1RX8H_3
   H1RX9_3
   H1RX10_3
   H1RX11M3
   H1RX11Y3
   H1RX12_3
   H1RX13_3
   H1RX14_3
   H1RX15_3
   H1RX16_3
   H1RX17A3
   H1RX17B3
   H1RX17C3
   H1RX17D3
   H1RX17E3
   H1RX17F3
   H1RX18A3
   H1RX18B3
   H1RX18C3
   H1RX18D3
   H1RX18E3
   H1RX19A3
   H1RX19B3
   H1RX19C3
   H1RX19D3
   H1RX19E3
   H1RX19F3
   H1RX19G3
   H1RX20_3
   H1RX21A3
   H1RX21B3
   H1RX21C3
   H1RX21D3
   H1RX21E3
   H1RX21F3
   H1RX21G3
   H1RX21H3
   H1RX21I3
   H1RX21J3
   H1RX21K3
   H1RX21L3
   H1RX21M3
   H1RX21N3
   H1RX21O3
   H1RX21P3
   H1RX21Q3
   H1RX21R3
   H1RX22A3
   H1RX22B3
   H1RX22C3
   H1RX22D3
   H1RX22E3
   H1RX22F3
   H1RX22G3
   H1RX22H3
   H1RX22I3
   H1RX22J3
   H1RX22K3
   H1RX22L3
   H1RX22M3
   H1RX22N3
   H1RX22O3
   H1RX22P3
   H1RX22Q3
   H1RX24A3
   H1RX25M3
   H1RX25Y3
   H1RX26M3
   H1RX26Y3
   H1RX27_3
   H1RX28_3
   H1RX29A3
   H1RX29B3
   H1RX31_3
   H1RX32_3
   H1RX33A3
   H1RX33B3
   H1RX33C3
   H1RX34_3
   H1RX35_3
   H1RX36_3
   H1RX37_3
   H1RX38A3
   H1RX38B3
   H1RX38C3
   H1RX39_3
   H1RX40_3
   H1NR14_3
   H1NR15_3
   H1NR16_3
   H1NR17A3
   H1NR17B3
   H1NR17C3
   H1NR17D3
   H1NR17E3
   H1NR17F3
   H1NR18A3
   H1NR18B3
   H1NR18C3
   H1NR18D3
   H1NR18E3
   H1NR19A3
   H1NR19B3
   H1NR19C3
   H1NR19D3
   H1NR19E3
   H1NR19F3
   H1NR19G3
   H1NR20A3
   H1NR20B3
   H1NR20C3
   H1NR20D3
   H1NR20E3
   H1NR20F3
   H1NR20G3
   H1NR20H3
   H1NR21_3
   H1NR22_3
   H1NR23M3
   H1NR23Y3
   H1NR24M3
   H1NR24Y3
   H1NR25_3
   H1NR26_3
   H1NR27A3
   H1NR27B3
   H1NR27C3
   H1NR28_3
   H1NR29_3
   H1NR30_3
   H1NR31A3
   H1NR31B3
   H1NR31C3
   H1NR32_3
   H1NR33_3
   H1NR34_3
   H1NR35_3
   H1NR36A3
   H1NR36B3
   H1NR36C3
   H1NR37_3
   H1NR38_3
   H1NR40_3
   H1NR41_3
   H1NR42_3
   H1NR43_3
   H1NR44
   H1NR47
   H1NR48
   H1NR49
   H1NR52
   H1NR53
   RXCARD1
   RXCARD2
   RXCARD3
   H1BC1
   H1BC2
   H1BC3
   H1BC4
   H1BC5
   H1BC6
   H1BC7
   H1BC8
   H1TO1
   H1TO2
   H1TO3
   H1TO4
   H1TO6M
   H1TO6Y
   H1TO8
   H1TO9
   H1TO11
   H1TO12
   H1TO13
   H1TO14
   H1TO15
   H1TO17
   H1TO18
   H1TO19
   H1TO20
   H1TO21
   H1TO22
   H1TO23
   H1TO24
   H1TO25
   H1TO26
   H1TO27
   H1TO28
   H1TO29
   H1TO30
   H1TO33
   H1TO34
   H1TO36
   H1TO37
   H1TO40
   H1TO43
   H1TO44
   H1TO45
   H1TO46
   H1TO47
   H1TO48
   H1TO49
   H1TO50
   H1TO51
   H1TO52
   H1TO53
   H1TO54A
   H1TO54B
   H1TO54C
   H1TO54D
   H1DS1
   H1DS2
   H1DS3
   H1DS4
   H1DS5
   H1DS6
   H1DS7
   H1DS8
   H1DS9
   H1DS10
   H1DS11
   H1DS12
   H1DS13
   H1DS14
   H1DS15
   H1JO1
   H1JO2
   H1JO3
   H1JO4
   H1JO5
   H1JO6A
   H1JO6B
   H1JO6C
   H1JO6D
   H1JO6E
   H1JO7
   H1JO8A
   H1JO8B
   H1JO8C
   H1JO8D
   H1JO8E
   H1JO9
   H1JO10
   H1JO11
   H1JO12
   H1JO13
   H1JO14
   H1JO15
   H1JO16
   H1JO17
   H1JO18A
   H1JO18B
   H1JO18C
   H1JO18D
   H1JO18E
   H1JO19
   H1JO20
   H1JO21
   H1JO22A
   H1JO22B
   H1JO22C
   H1JO22D
   H1JO22E
   H1JO23
   H1JO24
   H1JO25
   H1JO26
   H1FV1
   H1FV2
   H1FV3
   H1FV4
   H1FV5
   H1FV6
   H1FV7
   H1FV8
   H1FV9
   H1FV10
   H1FV11
   H1FV12
   H1FV14M
   H1FV14Y
   H1MP1
   H1MP2
   H1MP3
   H1MP4
   H1FP1
   H1FP2
   H1FP3
   H1FP4
   H1FP5M
   H1FP6
   H1FP7
   H1FP8
   H1FP9M
   H1FP9Y
   H1FP10
   H1FP11M1
   H1FP11Y1
   H1FP12_1
   H1FP13A1
   H1FP13B1
   H1FP14_1
   H1FP15_1
   H1FP17_1
   H1FP20M1
   H1FP20Y1
   H1FP21_1
   H1FP22_1
   H1FP23A1
   H1FP24A1
   H1FP11M2
   H1FP11Y2
   H1FP12_2
   H1FP13A2
   H1FP13B2
   H1FP14_2
   H1FP15_2
   H1FP17_2
   H1FP20M2
   H1FP20Y2
   H1FP21_2
   H1FP22_2
   H1FP23A2
   H1FP24A2
   H1FP11M3
   H1FP11Y3
   H1FP12_3
   H1FP15_3
   H1FP17_3
   H1FP21_3
   H1SU1
   H1SU2
   H1SU3
   H1SU4
   H1SU5
   H1SU6
   H1SU7
   H1SU8
   H1PA1
   H1PA2
   H1PA3
   H1PA4
   H1PA5
   H1PA6
   H1PA7
   H1PR1
   H1PR2
   H1PR3
   H1PR4
   H1PR5
   H1PR6
   H1PR7
   H1PR8
   H1NB1
   H1NB2
   H1NB3
   H1NB4
   H1NB5
   H1NB6
   H1NB7
   H1RE1
   H1RE2
   H1RE3
   H1RE4
   H1RE5
   H1RE6
   H1RE7
   H1EE3
   H1EE9
   H1EE10
   H1EE11
   H1EE12
   H1EE13
   H1EE14
   H1EE15
   STUDSIBA
   TWINA
   H1WS1A
   H1WS2A
   H1WS3A
   H1WS4A
   H1WS5A
   H1WS6A
   H1WS7A
   H1WS8A
   H1WS9A
   H1WS10A
   H1WS11A
   H1WS12A
   STUDSIBB
   TWINB
   H1WS1B
   H1WS2B
   H1WS3B
   H1WS4B
   H1WS5B
   H1WS6B
   H1WS7B
   H1WS8B
   H1WS9B
   H1WS10B
   H1WS11B
   H1WS12B
   STUDSIBC
   TWINC
   H1WS1C
   H1WS2C
   H1WS3C
   H1WS4C
   H1WS5C
   H1WS6C
   H1WS7C
   H1WS8C
   H1WS9C
   H1WS10C
   H1WS11C
   H1WS12C
   STUDSIBD
   TWIND
   H1WS1D
   H1WS2D
   H1WS3D
   H1WS4D
   H1WS5D
   H1WS6D
   H1WS12D
   STUDSIBE
   TWINE
   H1WS1E
   H1WS2E
   H1WS3E
   H1WS4E
   H1WS5E
   H1WS6E
   H1WS12E
   H1WS13
   H1IR1
   H1IR2
   H1IR3
   H1IR4
   H1IR5
   H1IR6
   H1IR7A
   H1IR7B
   H1IR7C
   H1IR7D
   H1IR7E
   H1IR7F
   H1IR7G
   H1IR7H
   H1IR7I
   H1IR7J
   H1IR7K
   H1IR7L
   H1IR7M
   H1IR7N
   H1IR7O
   H1IR7P
   H1IR7Q
   H1IR7R
   H1IR7S
   H1IR7T
   H1IR7U
   H1IR7V
   H1IR7W
   H1IR7X
   H1IR7Y
   H1IR7Z
   H1IR7AA
   H1IR7BB
   H1IR7CC
   H1IR7DD
   H1IR8A
   H1IR8B
   H1IR8C
   H1IR8D
   H1IR9
   H1IR10
   H1IR11
   H1IR12
   H1IR13
   H1IR14
   H1IR15
   H1IR17A
   H1IR17B
   H1IR17C
   H1IR17D
   H1IR17E
   H1IR17F
   H1IR17G
   H1IR17H
   H1IR17I
   H1IR17J
   H1IR18
   H1IR19
   H1IR20
   H1IR21
   H1IR22A
   H1IR22B
   H1IR22C
   H1IR22D
   H1IR22E
   H1IR22F
   H1IR22G
   H1IR22H
   H1IR22I
   H1IR22J
   H1IR22K
   H1IR22L
   H1IR22M
   H1IR22N
   H1IR22O
   H1IR22P
   H1IR22Q
   H1IR22R
   H1IR22S
   H1IR22T
   H1IR22U
   H1IR22V
   H1IR22W
   H1IR22X
   H1IR22Y
   H1IR22Z
   H1IR22AA
   H1IR22BB
   H1IR22CC
   H1IR22DD
   H1IR22EE
   H1IR22FF
   H1IR22GG
   H1IR22HH
   H1IR22II
   H1IR22JJ
   H1IR22KK
   H1IR22LL
   H1IR22MM
   H1IR23
   H1IR24
   H1IR25
   H1IR26
   H1IR27
   H1IR28
   S2
   S4
   S5
   S6A
   S6B
   S6C
   S6D
   S6E
   S7
   S8
   S9
   S10
   S10A
   S10B
   S10C
   S10D
   S11
   S12
   S13
   S14
   S15
   S16
   S17
   S18
   S19
   S20
   S21
   S22
   S23
   S24
   S25
   S26
   S28
   S29A
   S29B
   S29C
   S29D
   S29E
   S30A
   S30B
   S30C
   S30D
   S30E
   S31A
   S31B
   S31C
   S31D
   S31E
   S32A
   S32B
   S32C
   S32D
   S32E
   S33A
   S33B
   S33C
   S33D
   S33E
   S34A
   S34B
   S34C
   S34D
   S34E
   S35A
   S35B
   S35C
   S35D
   S35E
   S36A
   S36B
   S36C
   S36D
   S36E
   S37A
   S37B
   S37C
   S37D
   S37E
   S38A
   S38B
   S38C
   S38D
   S38E
   S39A
   S39B
   S39C
   S39D
   S39E
   S40A
   S40B
   S40C
   S40D
   S40E
   S41A
   S41B
   S41C
   S41D
   S41E
   S42A
   S42B
   S42C
   S42D
   S42E
   S43A
   S43B
   S43C
   S43D
   S43E
   S44A1
   S44A2
   S44A3
   S44A4
   S44A5
   S44A6
   S44A7
   S44A8
   S44A9
   S44A10
   S44A11
   S44A12
   S44A13
   S44A14
   S44A15
   S44A16
   S44A17
   S44A18
   S44A19
   S44A20
   S44A21
   S44A22
   S44A23
   S44A24
   S44A25
   S44A26
   S44A27
   S44A28
   S44A29
   S44A30
   S44A31
   S44A32
   S44A33
   S44
   S45A
   S45B
   S45C
   S45D
   S45E
   S45F
   S46A
   S46B
   S46C
   S46D
   S47
   S48
   S49
   S50
   S51
   S52
   S53
   S54
   S55A
   S55B
   S55C
   S55D
   S56
   S57
   S58
   S59A
   S59B
   S59C
   S59D
   S59E
   S59F
   S59G
   S60A
   S60B
   S60C
   S60D
   S60E
   S60F
   S60G
   S60H
   S60I
   S60J
   S60K
   S60L
   S60M
   S60N
   S60O
   S61A
   S61B
   S61C
   S61D
   S61E
   S61F
   S62A
   S62B
   S62C
   S62D
   S62E
   S62F
   S62G
   S62H
   S62I
   S62J
   S62K
   S62L
   S62M
   S62N
   S62O
   S62P
   S62Q
   S62R
   S63
   S64
   S65
   S66
   S67
   S68
   PA1
   PA3
   PA4
   PA5_1
   PA5_2
   PA5_3
   PA5_4
   PA5_5
   PA5_6
   PA5_7
   PA6_1
   PA6_2
   PA6_3
   PA6_4
   PA6_5
   PA7_1
   PA7_2
   PA7_3
   PA7_4
   PA7_5
   PA7_6
   PA7_7
   PA7_8
   PA8B
   PA9
   PA10
   PA11
   PA12
   PA13
   PA14
   PA15
   PA16
   PA17
   PA18
   PA19
   PA20
   PA21
   PA22
   PA23
   PA24
   PA25
   PA26
   PA27A
   PA27B
   PA27C
   PA27D
   PA27E
   PA28A
   PA28B
   PA28C
   PA28D
   PA28E
   PA28F
   PA28G
   PA28H
   PA28I
   PA28J
   PA30
   PA31
   PA32
   PA33
   PA34
   PA35
   PA36
   PA37
   PA38
   PA40
   PA41_1
   PA41_2
   PA41_3
   PA41_4
   PA41_5
   PA41_6
   PA41_7
   PA41_8
   PA41_9
   PA41_10
   PA41_11
   PA41_12
   PA41_13
   PA41_14
   PA41_15
   PA41_16
   PA41_17
   PA41_18
   PA41_19
   PA42
   PA43
   PA44
   PA46_1
   PA46_2
   PA46_3
   PA46_4
   PA46_5
   PA46_6
   PA46_7
   PA46_8
   PA46_9
   PA46_10
   PA46_11
   PA46_12
   PA46_13
   PA46_14
   PA46_15
   PA46_16
   PA46_17
   PA46_18
   PA46_19
   PA47
   PA48
   PA49
   PA51_1
   PA51_2
   PA51_3
   PA51_4
   PA51_5
   PA51_6
   PA51_7
   PA51_8
   PA51_9
   PA51_10
   PA51_11
   PA51_12
   PA51_13
   PA51_14
   PA51_15
   PA51_16
   PA51_17
   PA51_18
   PA51_19
   PA52
   PA53
   PA54
   PA56
   PA57A
   PA57B
   PA57C
   PA57D
   PA57E
   PA57F
   PA58
   PA59
   PA60
   PA61
   PA62
   PA63
   PA64
   PB2
   PB3
   PB4_1
   PB4_2
   PB4_3
   PB4_4
   PB4_5
   PB4_6
   PB4_7
   PB5_1
   PB5_2
   PB5_3
   PB5_4
   PB5_5
   PB6_1
   PB6_2
   PB6_3
   PB6_4
   PB6_5
   PB6_6
   PB6_7
   PB6_8
   PB7
   PB8
   PB9
   PB10
   PB11
   PB12
   PB13
   PB14
   PB15
   PB16
   PB17
   PB19
   PB20
   PB21
   PB22
   PC1
   PC2
   PC3
   PC5
   PC6B
   PC7
   PC9
   PC10
   PC11
   PC12
   PC13
   PC14
   PC15
   PC16
   PC17
   PC18
   PC19A_P
   PC20
   PC21_1
   PC21_2
   PC21_3
   PC21_4
   PC21_5
   PC21_6
   PC21_7
   PC22
   PC23
   PC24
   PC25
   PC26
   PC27
   PC28
   PC29A
   PC29B
   PC29C
   PC30
   PC31
   PC32
   PC33
   PC34A
   PC34B
   PC34C
   PC34D
   PC34E
   PC35
   PC36_0
   PC36_1
   PC36_2
   PC36_3
   PC36_4
   PC36_5
   PC36_6
   PC36_7
   PC36_8
   PC36_9
   PC36_10
   PC36_11
   PC36_12
   PC36_13
   PC36_14
   PC36_15
   PC36_16
   PC36_17
   PC36_18
   PC36_19
   PC37
   PC38
   PC39
   PC40
   PC41
   PC42A
   PC42B
   PC42C
   PC42D
   PC42E
   PC43AA
   PC43AB
   PC43AC
   PC43AD
   PC43BA
   PC43BB
   PC44A
   PC44B
   PC44C
   PC44D
   PC45
   PC46
   PC47
   PC49A_1
   PC49A_2
   PC49A_3
   PC49B_1
   PC49B_2
   PC49B_3
   PC49C_1
   PC49C_2
   PC49C_3
   PC49D_1
   PC49D_2
   PC49D_3
   PC49E_1
   PC49E_2
   PC49E_3
   PC49F_1
   PC49F_2
   PC49F_3
   PC50
   PC51
   PC53
   PC54
   PC55
   PC58
   PC60_1
   PC60_2
   PC60_3
   PC60_4
   PC60_5
   PC60_6
   PC60_7
   PC60_8
   PC60_9
   PC60_10
   PC60_11
   PC60_12
   PC60_13
   PC60_14
   PC60_15
   PC60_16
   PC60_17
   PC60_18
   PC61A
   PC61B
   PC61C
   PC61D
   PC62_1
   PC62_2
   PC62_4
   PC62_5
   PC62_8
   PC62_10
   PC62_11
   PC63
   PC64
   PC65_M
   PC65_Y
   PC66_M
   PC66_Y
   PC68_M
   PC68_Y
   PC69
   PD2
   PD3
   PD4A
   PD4B
   PD4C
   PD4D
   PD4E
   PD4F
   PD5
   PD5A
    (nominal).

* SPSS PRINT FORMAT COMMAND.

PRINT FORMAT
   IMONTH (F2)
   IDAY (F2)
   IYEAR (F2)
   SCH_YR (F1)
   BIO_SEX (F1)
   SMP01 (F1)
   SMP03 (F1)
   H1GI1M (F2)
   H1GI1Y (F2)
   H1GI2 (F1)
   H1GI3 (F2)
   H1GI4 (F1)
   H1GI5A (F1)
   H1GI5B (F1)
   H1GI5C (F1)
   H1GI5D (F1)
   H1GI5E (F1)
   H1GI5F (F1)
   H1GI6A (F1)
   H1GI6B (F1)
   H1GI6C (F1)
   H1GI6D (F1)
   H1GI6E (F1)
   H1GI7A (F1)
   H1GI7B (F1)
   H1GI7C (F1)
   H1GI7D (F1)
   H1GI7E (F1)
   H1GI7F (F1)
   H1GI7G (F1)
   H1GI8 (F1)
   H1GI9 (F1)
   H1GI10 (F1)
   H1GI11 (F1)
   H1GI12 (F3)
   H1GI13M (F2)
   H1GI13Y (F2)
   H1GI14 (F1)
   H1GI15 (F1)
   H1GI16M (F2)
   H1GI16Y (F2)
   H1GI18 (F1)
   H1GI19 (F1)
   H1GI20 (F2)
   H1GI21 (F2)
   H1DA1 (F1)
   H1DA2 (F1)
   H1DA3 (F1)
   H1DA4 (F1)
   H1DA5 (F1)
   H1DA6 (F1)
   H1DA7 (F1)
   H1DA8 (F3)
   H1DA9 (F3)
   H1DA10 (F3)
   H1DA11 (F3)
   H1GH1 (F1)
   H1GH1A (F1)
   H1GH2 (F1)
   H1GH3 (F1)
   H1GH4 (F1)
   H1GH5 (F1)
   H1GH6 (F1)
   H1GH7 (F1)
   H1GH8 (F1)
   H1GH9 (F1)
   H1GH10 (F1)
   H1GH11 (F1)
   H1GH12 (F1)
   H1GH13 (F1)
   H1GH14 (F1)
   H1GH15 (F1)
   H1GH16 (F1)
   H1GH17 (F1)
   H1GH18 (F1)
   H1GH19 (F1)
   H1GH20 (F1)
   H1GH21 (F1)
   H1GH22 (F1)
   H1GH23A (F1)
   H1GH23B (F1)
   H1GH23C (F1)
   H1GH23D (F1)
   H1GH23E (F1)
   H1GH23F (F1)
   H1GH23G (F1)
   H1GH23H (F1)
   H1GH23I (F1)
   H1GH23J (F1)
   H1GH24 (F1)
   H1GH25 (F1)
   H1GH26 (F1)
   H1GH27A (F1)
   H1GH27B (F1)
   H1GH27C (F1)
   H1GH27D (F1)
   H1GH27E (F1)
   H1GH27F (F1)
   H1GH27G (F1)
   H1GH27H (F1)
   H1GH27I (F1)
   H1GH27J (F1)
   H1GH28 (F1)
   H1GH29 (F1)
   H1GH30A (F1)
   H1GH30B (F1)
   H1GH30C (F1)
   H1GH30D (F1)
   H1GH30E (F1)
   H1GH30F (F1)
   H1GH30G (F1)
   H1GH31A (F1)
   H1GH31B (F1)
   H1GH31C (F1)
   H1GH31D (F1)
   H1GH31F (F1)
   H1GH31G (F1)
   H1GH32 (F1)
   H1GH33 (F1)
   H1GH34 (F1)
   H1GH35 (F1)
   H1GH36 (F1)
   H1GH37 (F1)
   H1GH38 (F1)
   H1GH39 (F1)
   H1GH40 (F1)
   H1GH41 (F1)
   H1GH42 (F1)
   H1GH43 (F1)
   H1GH44 (F1)
   H1GH45 (F2)
   H1GH46 (F1)
   H1GH47 (F2)
   H1GH48 (F1)
   H1GH49 (F1)
   H1GH51 (F2)
   H1GH52 (F1)
   H1GH53 (F1)
   H1GH54 (F1)
   H1GH55 (F1)
   H1GH56 (F1)
   H1GH57 (F1)
   H1GH58 (F1)
   H1GH59A (F2)
   H1GH59B (F2)
   H1GH60 (F3)
   H1TS1 (F1)
   H1TS2 (F1)
   H1TS3 (F1)
   H1TS4 (F1)
   H1TS5 (F1)
   H1TS6 (F1)
   H1TS7 (F1)
   H1TS8 (F1)
   H1TS9 (F1)
   H1TS10 (F1)
   H1TS11 (F1)
   H1TS12 (F1)
   H1TS13 (F1)
   H1TS14 (F1)
   H1TS15 (F1)
   H1TS16 (F1)
   H1TS17 (F1)
   H1ED1 (F1)
   H1ED2 (F3)
   H1ED3 (F1)
   H1ED4A (F1)
   H1ED4B (F1)
   H1ED4C (F1)
   H1ED4D (F1)
   H1ED4E (F1)
   H1ED4F (F1)
   H1ED4G (F1)
   H1ED4H (F1)
   H1ED4I (F1)
   H1ED4J (F1)
   H1ED4K (F1)
   H1ED4M (F1)
   H1ED5 (F1)
   H1ED6A (F1)
   H1ED6B (F1)
   H1ED6C (F1)
   H1ED6D (F1)
   H1ED6E (F1)
   H1ED6F (F1)
   H1ED6G (F1)
   H1ED6H (F1)
   H1ED6I (F1)
   H1ED6J (F1)
   H1ED6K (F1)
   H1ED6L (F1)
   H1ED6M (F1)
   H1ED7 (F1)
   H1ED8 (F2)
   H1ED9 (F1)
   H1ED10 (F2)
   H1ED11 (F2)
   H1ED12 (F2)
   H1ED13 (F2)
   H1ED14 (F2)
   H1ED15 (F1)
   H1ED16 (F1)
   H1ED17 (F1)
   H1ED18 (F1)
   H1ED19 (F1)
   H1ED20 (F1)
   H1ED21 (F1)
   H1ED22 (F1)
   H1ED23 (F1)
   H1ED24 (F1)
   H1PL1 (F1)
   H1PL2 (F1)
   H1PL3 (F1)
   H1PL4 (F1)
   H1PL5 (F1)
   H1PL6 (F1)
   H1PL7 (F1)
   H1PL8 (F1)
   H1PL9 (F1)
   H1PL10 (F1)
   H1PL11 (F1)
   H1PL12 (F1)
   H1PL13 (F1)
   H1PL14 (F1)
   H1PL15 (F1)
   H1PL16 (F1)
   H1PL17 (F1)
   H1PL18 (F1)
   H1PL19 (F1)
   H1PL20 (F1)
   H1PL21 (F1)
   H1PL22 (F1)
   H1PL23 (F1)
   H1PL24 (F1)
   H1PL25 (F1)
   H1PL26 (F1)
   H1PL29 (F1)
   H1PL30 (F1)
   H1PL31 (F1)
   H1PL33 (F1)
   H1PL34 (F1)
   H1PL37 (F1)
   H1PL38 (F1)
   H1HS1 (F1)
   H1HS2A (F1)
   H1HS2B (F1)
   H1HS2C (F1)
   H1HS2D (F1)
   H1HS2E (F1)
   H1HS3 (F1)
   H1HS4A (F1)
   H1HS4B (F1)
   H1HS4C (F1)
   H1HS4D (F1)
   H1HS4E (F1)
   H1HS5 (F1)
   H1HS6A (F1)
   H1HS6B (F1)
   H1HS6C (F1)
   H1HS6D (F1)
   H1HS6E (F1)
   H1HS7 (F1)
   H1HS8A (F1)
   H1HS8B (F1)
   H1HS8C (F1)
   H1HS8D (F1)
   H1HS8E (F1)
   H1HS9 (F1)
   H1HS10A (F1)
   H1HS10B (F1)
   H1HS10C (F1)
   H1HS10D (F1)
   H1HS10E (F1)
   H1HS11 (F1)
   H1HS12A (F1)
   H1HS12B (F1)
   H1HS12C (F1)
   H1HS12D (F1)
   H1HS12E (F1)
   H1RP1 (F1)
   H1RP2 (F1)
   H1RP3 (F1)
   H1RP4 (F1)
   H1RP5 (F1)
   H1RP6 (F1)
   H1SE1 (F2)
   H1SE2 (F2)
   H1SE3 (F2)
   H1SE4 (F2)
   H1FS1 (F1)
   H1FS2 (F1)
   H1FS3 (F1)
   H1FS4 (F1)
   H1FS5 (F1)
   H1FS6 (F1)
   H1FS7 (F1)
   H1FS8 (F1)
   H1FS9 (F1)
   H1FS10 (F1)
   H1FS11 (F1)
   H1FS12 (F1)
   H1FS13 (F1)
   H1FS14 (F1)
   H1FS15 (F1)
   H1FS16 (F1)
   H1FS17 (F1)
   H1FS18 (F1)
   H1FS19 (F1)
   H1HR2A (F1)
   H1HR3A (F2)
   H1HR4A (F2)
   H1HR5A (F2)
   H1HR6A (F2)
   H1HR7A (F5.1)
   H1HR8A (F3)
   H1HR9A (F1)
   H1HR10A (F2)
   H1HR11A (F2)
   H1HR2B (F1)
   H1HR3B (F2)
   H1HR4B (F2)
   H1HR5B (F2)
   H1HR6B (F2)
   H1HR7B (F5.1)
   H1HR8B (F3)
   H1HR9B (F1)
   H1HR10B (F2)
   H1HR11B (F2)
   H1HR2C (F1)
   H1HR3C (F2)
   H1HR4C (F2)
   H1HR5C (F2)
   H1HR6C (F2)
   H1HR7C (F3)
   H1HR8C (F3)
   H1HR9C (F1)
   H1HR10C (F2)
   H1HR11C (F2)
   H1HR2D (F1)
   H1HR3D (F2)
   H1HR4D (F2)
   H1HR5D (F2)
   H1HR6D (F2)
   H1HR7D (F3)
   H1HR8D (F3)
   H1HR9D (F1)
   H1HR10D (F2)
   H1HR11D (F2)
   H1HR2E (F1)
   H1HR3E (F2)
   H1HR4E (F2)
   H1HR5E (F2)
   H1HR6E (F2)
   H1HR7E (F3)
   H1HR8E (F3)
   H1HR9E (F1)
   H1HR10E (F2)
   H1HR11E (F2)
   H1HR2F (F1)
   H1HR3F (F2)
   H1HR4F (F2)
   H1HR5F (F2)
   H1HR6F (F2)
   H1HR7F (F3)
   H1HR8F (F3)
   H1HR9F (F1)
   H1HR10F (F2)
   H1HR11F (F2)
   H1HR2G (F1)
   H1HR3G (F2)
   H1HR4G (F2)
   H1HR5G (F2)
   H1HR6G (F2)
   H1HR7G (F3)
   H1HR8G (F3)
   H1HR9G (F1)
   H1HR10G (F2)
   H1HR11G (F2)
   H1HR2H (F1)
   H1HR3H (F2)
   H1HR4H (F2)
   H1HR5H (F2)
   H1HR6H (F2)
   H1HR7H (F3)
   H1HR8H (F3)
   H1HR9H (F1)
   H1HR10H (F2)
   H1HR11H (F2)
   H1HR2I (F1)
   H1HR3I (F2)
   H1HR4I (F2)
   H1HR5I (F2)
   H1HR6I (F2)
   H1HR7I (F3)
   H1HR8I (F3)
   H1HR9I (F1)
   H1HR10I (F2)
   H1HR11I (F2)
   H1HR2J (F1)
   H1HR3J (F2)
   H1HR4J (F2)
   H1HR5J (F2)
   H1HR6J (F2)
   H1HR7J (F3)
   H1HR8J (F3)
   H1HR9J (F1)
   H1HR10J (F2)
   H1HR11J (F2)
   H1HR2K (F1)
   H1HR3K (F2)
   H1HR4K (F2)
   H1HR5K (F2)
   H1HR6K (F2)
   H1HR7K (F3)
   H1HR8K (F3)
   H1HR9K (F1)
   H1HR10K (F2)
   H1HR11K (F2)
   H1HR2L (F1)
   H1HR3L (F2)
   H1HR4L (F2)
   H1HR5L (F2)
   H1HR6L (F2)
   H1HR7L (F3)
   H1HR8L (F3)
   H1HR9L (F1)
   H1HR10L (F2)
   H1HR11L (F2)
   H1HR2M (F1)
   H1HR3M (F2)
   H1HR4M (F2)
   H1HR5M (F2)
   H1HR6M (F2)
   H1HR7M (F3)
   H1HR8M (F3)
   H1HR9M (F1)
   H1HR10M (F2)
   H1HR11M (F2)
   H1HR2N (F1)
   H1HR3N (F2)
   H1HR4N (F2)
   H1HR5N (F2)
   H1HR6N (F2)
   H1HR7N (F3)
   H1HR8N (F3)
   H1HR9N (F1)
   H1HR10N (F2)
   H1HR11N (F2)
   H1HR2O (F1)
   H1HR3O (F2)
   H1HR4O (F2)
   H1HR5O (F2)
   H1HR6O (F2)
   H1HR7O (F3)
   H1HR8O (F3)
   H1HR9O (F1)
   H1HR10O (F2)
   H1HR11O (F2)
   H1HR2P (F1)
   H1HR3P (F2)
   H1HR4P (F2)
   H1HR5P (F2)
   H1HR6P (F2)
   H1HR7P (F3)
   H1HR8P (F3)
   H1HR9P (F1)
   H1HR10P (F2)
   H1HR11P (F2)
   H1HR2Q (F1)
   H1HR3Q (F2)
   H1HR4Q (F2)
   H1HR5Q (F2)
   H1HR6Q (F2)
   H1HR7Q (F3)
   H1HR8Q (F3)
   H1HR9Q (F1)
   H1HR10Q (F2)
   H1HR11Q (F2)
   H1HR2R (F1)
   H1HR3R (F2)
   H1HR4R (F2)
   H1HR5R (F2)
   H1HR6R (F2)
   H1HR7R (F3)
   H1HR8R (F3)
   H1HR9R (F1)
   H1HR10R (F2)
   H1HR11R (F2)
   H1HR2S (F1)
   H1HR3S (F2)
   H1HR4S (F2)
   H1HR5S (F2)
   H1HR6S (F2)
   H1HR7S (F3)
   H1HR8S (F3)
   H1HR9S (F1)
   H1HR10S (F2)
   H1HR11S (F2)
   H1HR2T (F1)
   H1HR3T (F2)
   H1HR4T (F2)
   H1HR5T (F2)
   H1HR6T (F2)
   H1HR7T (F3)
   H1HR8T (F3)
   H1HR9T (F1)
   H1HR10T (F2)
   H1HR11T (F2)
   H1HR12 (F2)
   H1HR13 (F2)
   H1HR14 (F2)
   H1HR15 (F2)
   H1NM1 (F1)
   H1NM2 (F1)
   H1NM3 (F2)
   H1NM4 (F2)
   H1NM5 (F1)
   H1NM6 (F1)
   H1NM7 (F1)
   H1NM8 (F2)
   H1NM9 (F2)
   H1NM10 (F1)
   H1NM11 (F1)
   H1NM12A (F1)
   H1NM12B (F1)
   H1NM12C (F1)
   H1NM12D (F1)
   H1NM12E (F1)
   H1NM12F (F1)
   H1NM12G (F1)
   H1NM12H (F1)
   H1NM12I (F1)
   H1NM12J (F1)
   H1NM13 (F1)
   H1NM14 (F1)
   H1NF1 (F1)
   H1NF2 (F1)
   H1NF3 (F2)
   H1NF4 (F2)
   H1NF5 (F1)
   H1NF6 (F1)
   H1NF7 (F1)
   H1NF8 (F2)
   H1NF9 (F2)
   H1NF10 (F1)
   H1NF11 (F1)
   H1NF12A (F1)
   H1NF12B (F1)
   H1NF12C (F1)
   H1NF12D (F1)
   H1NF12E (F1)
   H1NF12F (F1)
   H1NF12G (F1)
   H1NF12H (F1)
   H1NF12I (F1)
   H1NF12J (F1)
   H1NF13 (F1)
   H1NF14 (F1)
   H1RM1 (F2)
   H1RM2 (F1)
   H1RM3 (F3)
   H1RM4 (F2)
   H1RM5 (F1)
   H1RM6 (F1)
   H1RM7 (F3)
   H1RM8 (F1)
   H1RM9 (F1)
   H1RM10 (F1)
   H1RM11 (F2)
   H1RM12 (F2)
   H1RM13 (F2)
   H1RM14 (F1)
   H1RF1 (F2)
   H1RF2 (F1)
   H1RF3 (F3)
   H1RF4 (F2)
   H1RF5 (F1)
   H1RF6 (F1)
   H1RF7 (F3)
   H1RF8 (F1)
   H1RF9 (F1)
   H1RF10 (F1)
   H1RF11 (F2)
   H1RF12 (F2)
   H1RF13 (F2)
   H1RF14 (F1)
   H1WP1 (F1)
   H1WP2 (F1)
   H1WP3 (F1)
   H1WP4 (F1)
   H1WP5 (F1)
   H1WP6 (F1)
   H1WP7 (F1)
   H1WP8 (F2)
   H1WP9 (F1)
   H1WP10 (F1)
   H1WP11 (F1)
   H1WP12 (F1)
   H1WP13 (F1)
   H1WP14 (F1)
   H1WP15 (F1)
   H1WP16 (F1)
   H1WP17A (F1)
   H1WP17B (F1)
   H1WP17C (F1)
   H1WP17D (F1)
   H1WP17E (F1)
   H1WP17F (F1)
   H1WP17G (F1)
   H1WP17H (F1)
   H1WP17I (F1)
   H1WP17J (F1)
   H1WP17K (F1)
   H1WP18A (F1)
   H1WP18B (F1)
   H1WP18C (F1)
   H1WP18D (F1)
   H1WP18E (F1)
   H1WP18F (F1)
   H1WP18G (F1)
   H1WP18H (F1)
   H1WP18I (F1)
   H1WP18J (F1)
   H1WP18K (F1)
   H1MO1 (F1)
   H1MO2 (F1)
   H1MO3 (F1)
   H1MO4 (F1)
   H1MO5 (F1)
   H1MO6 (F1)
   H1MO7 (F1)
   H1MO8 (F1)
   H1MO9 (F1)
   H1MO10 (F1)
   H1MO11 (F1)
   H1MO12 (F1)
   H1MO13 (F1)
   H1MO14 (F1)
   H1PF1 (F1)
   H1PF2 (F1)
   H1PF3 (F1)
   H1PF4 (F1)
   H1PF5 (F1)
   H1PF6 (F1)
   H1PF7 (F1)
   H1PF8 (F1)
   H1PF9 (F1)
   H1PF10 (F1)
   H1PF11 (F1)
   H1PF12 (F1)
   H1PF13 (F1)
   H1PF14 (F1)
   H1PF15 (F1)
   H1PF16 (F1)
   H1PF17 (F1)
   H1PF18 (F1)
   H1PF19 (F1)
   H1PF20 (F1)
   H1PF21 (F1)
   H1PF22 (F1)
   H1PF23 (F1)
   H1PF24 (F1)
   H1PF25 (F1)
   H1PF26 (F1)
   H1PF27 (F1)
   H1PF28 (F1)
   H1PF29 (F1)
   H1PF30 (F1)
   H1PF31 (F1)
   H1PF32 (F1)
   H1PF33 (F1)
   H1PF34 (F1)
   H1PF35 (F1)
   H1PF36 (F1)
   H1KQ1A (F1)
   H1KQ1B (F1)
   H1KQ2A (F1)
   H1KQ2B (F1)
   H1KQ3A (F1)
   H1KQ3B (F1)
   H1KQ4A (F1)
   H1KQ4B (F1)
   H1KQ5A (F1)
   H1KQ5B (F1)
   H1KQ6A (F1)
   H1KQ6B (F1)
   H1KQ7A (F1)
   H1KQ7B (F1)
   H1KQ8A (F1)
   H1KQ8B (F1)
   H1KQ9A (F1)
   H1KQ9B (F1)
   H1KQ10A (F1)
   H1KQ10B (F1)
   FR_FLAG (F1)
   H1MF2A (F1)
   H1MF3A (F2)
   H1MF4A (F1)
   H1MF5A (F1)
   H1MF6A (F1)
   H1MF7A (F1)
   H1MF8A (F1)
   H1MF9A (F1)
   H1MF10A (F1)
   H1MF2B (F1)
   H1MF3B (F2)
   H1MF4B (F1)
   H1MF5B (F1)
   H1MF6B (F1)
   H1MF7B (F1)
   H1MF8B (F1)
   H1MF9B (F1)
   H1MF10B (F1)
   H1MF2C (F1)
   H1MF3C (F2)
   H1MF4C (F1)
   H1MF5C (F1)
   H1MF6C (F1)
   H1MF7C (F1)
   H1MF8C (F1)
   H1MF9C (F1)
   H1MF10C (F1)
   H1MF2D (F1)
   H1MF3D (F2)
   H1MF4D (F1)
   H1MF5D (F1)
   H1MF6D (F1)
   H1MF7D (F1)
   H1MF8D (F1)
   H1MF9D (F1)
   H1MF10D (F1)
   H1MF2E (F1)
   H1MF3E (F2)
   H1MF4E (F1)
   H1MF5E (F1)
   H1MF6E (F1)
   H1MF7E (F1)
   H1MF8E (F1)
   H1MF9E (F1)
   H1MF10E (F1)
   H1FF2A (F1)
   H1FF3A (F2)
   H1FF4A (F1)
   H1FF5A (F1)
   H1FF6A (F1)
   H1FF7A (F1)
   H1FF8A (F1)
   H1FF9A (F1)
   H1FF10A (F1)
   H1FF2B (F1)
   H1FF3B (F2)
   H1FF4B (F1)
   H1FF5B (F1)
   H1FF6B (F1)
   H1FF7B (F1)
   H1FF8B (F1)
   H1FF9B (F1)
   H1FF10B (F1)
   H1FF2C (F1)
   H1FF3C (F2)
   H1FF4C (F1)
   H1FF5C (F1)
   H1FF6C (F1)
   H1FF7C (F1)
   H1FF8C (F1)
   H1FF9C (F1)
   H1FF10C (F1)
   H1FF2D (F1)
   H1FF3D (F2)
   H1FF4D (F1)
   H1FF5D (F1)
   H1FF6D (F1)
   H1FF7D (F1)
   H1FF8D (F1)
   H1FF9D (F1)
   H1FF10D (F1)
   H1FF2E (F1)
   H1FF3E (F2)
   H1FF4E (F1)
   H1FF5E (F1)
   H1FF6E (F1)
   H1FF7E (F1)
   H1FF8E (F1)
   H1FF9E (F1)
   H1FF10E (F1)
   H1ID1A (F1)
   H1ID1B (F1)
   H1ID1C (F1)
   H1ID1D (F1)
   H1ID1E (F1)
   H1ID1F (F1)
   H1ID1G (F1)
   H1ID1H (F1)
   H1ID1I (F1)
   H1ID1J (F1)
   H1ID1K (F1)
   H1ID1L (F1)
   H1ID1M (F1)
   H1ID1N (F1)
   H1ID1O (F1)
   H1ID1P (F1)
   H1ID1Q (F1)
   H1ID1R (F1)
   H1ID2_1 (F2)
   H1ID2_2 (F2)
   H1ID2_3 (F2)
   H1ID2_4 (F2)
   H1ID2_5 (F2)
   H1ID2_6 (F2)
   H1ID2_7 (F2)
   H1ID2_8 (F2)
   H1ID2_9 (F2)
   H1ID2_10 (F2)
   H1ID2_11 (F2)
   H1ID2_12 (F2)
   H1ID2_13 (F2)
   H1ID2_14 (F2)
   H1ID2_15 (F2)
   H1ID2_16 (F2)
   H1ID2_17 (F2)
   H1ID5 (F1)
   H1ID6 (F1)
   H1RR1 (F1)
   RR_FLAG (F1)
   H1LR1 (F1)
   H1LR2 (F1)
   H1LR3 (F1)
   H1LR4 (F1)
   H1CO1 (F1)
   H1CO2M (F2)
   H1CO2Y (F2)
   H1CO3 (F1)
   H1CO4A (F2)
   H1CO4B (F2)
   H1CO4C (F2)
   H1CO5M (F2)
   H1CO5Y (F2)
   H1CO6 (F1)
   H1CO7A (F2)
   H1CO7B (F2)
   H1CO7C (F2)
   H1CO8 (F1)
   H1CO9 (F1)
   H1CO10 (F1)
   H1CO11 (F1)
   H1CO12A (F2)
   H1CO12B (F2)
   H1CO12C (F2)
   H1CO13 (F1)
   H1CO14M (F2)
   H1CO14Y (F2)
   H1CO15 (F1)
   H1CO16A (F1)
   H1CO16B (F1)
   H1CO16C (F1)
   H1CO16D (F1)
   H1CO16E (F1)
   H1CO16F (F1)
   H1CO16G (F1)
   H1CO16H (F1)
   H1CO16I (F1)
   H1CO16J (F1)
   H1CO17A (F1)
   H1CO17B (F1)
   H1CO17C (F1)
   H1CO17D (F1)
   H1CO17E (F1)
   H1CO17F (F1)
   H1CO17G (F1)
   H1CO17H (F1)
   H1CO17I (F1)
   H1CO17J (F1)
   H1RI1M_1 (F2)
   H1RI1Y_1 (F2)
   H1RI2_1 (F2)
   H1RI3_1 (F2)
   H1RI4_1 (F2)
   H1RI5A_1 (F2)
   H1RI6_1 (F1)
   H1RI7_1 (F1)
   H1RI8A_1 (F1)
   H1RI8B_1 (F1)
   H1RI8C_1 (F1)
   H1RI8D_1 (F1)
   H1RI8E_1 (F1)
   H1RI8F_1 (F1)
   H1RI8G_1 (F1)
   H1RI8H_1 (F1)
   H1RI9_1 (F2)
   H1RI10_1 (F1)
   H1RI11M1 (F2)
   H1RI11Y1 (F2)
   H1RI12_1 (F2)
   H1RI13_1 (F1)
   H1RI14_1 (F1)
   H1RI15_1 (F2)
   H1RI16_1 (F1)
   H1RI17A1 (F1)
   H1RI17B1 (F1)
   H1RI17C1 (F1)
   H1RI17D1 (F1)
   H1RI17E1 (F1)
   H1RI17F1 (F1)
   H1RI18A1 (F1)
   H1RI18B1 (F1)
   H1RI18C1 (F1)
   H1RI18D1 (F1)
   H1RI18E1 (F1)
   H1RI19A1 (F1)
   H1RI19B1 (F1)
   H1RI19C1 (F1)
   H1RI19D1 (F1)
   H1RI19E1 (F1)
   H1RI19F1 (F1)
   H1RI19G1 (F1)
   H1RI20_1 (F1)
   H1RI21A1 (F1)
   H1RI21B1 (F1)
   H1RI21C1 (F1)
   H1RI21D1 (F1)
   H1RI21E1 (F1)
   H1RI21F1 (F1)
   H1RI21G1 (F1)
   H1RI21H1 (F1)
   H1RI21I1 (F1)
   H1RI21J1 (F1)
   H1RI21K1 (F1)
   H1RI21L1 (F1)
   H1RI21M1 (F1)
   H1RI21N1 (F1)
   H1RI21O1 (F1)
   H1RI21P1 (F1)
   H1RI21Q1 (F1)
   H1RI21R1 (F1)
   H1RI22A1 (F2)
   H1RI22B1 (F2)
   H1RI22C1 (F2)
   H1RI22D1 (F2)
   H1RI22E1 (F2)
   H1RI22F1 (F2)
   H1RI22G1 (F2)
   H1RI22H1 (F2)
   H1RI22I1 (F2)
   H1RI22J1 (F2)
   H1RI22K1 (F2)
   H1RI22L1 (F2)
   H1RI22M1 (F2)
   H1RI22N1 (F2)
   H1RI22O1 (F2)
   H1RI22P1 (F2)
   H1RI22Q1 (F2)
   H1RI22R1 (F2)
   H1RI24A1 (F1)
   H1RI25M1 (F2)
   H1RI25Y1 (F2)
   H1RI26M1 (F2)
   H1RI26Y1 (F2)
   H1RI27_1 (F1)
   H1RI28_1 (F1)
   H1RI29A1 (F2)
   H1RI29B1 (F2)
   H1RI29C1 (F2)
   H1RI30_1 (F1)
   H1RI31_1 (F1)
   H1RI32_1 (F1)
   H1RI33A1 (F2)
   H1RI33B1 (F2)
   H1RI33C1 (F2)
   H1RI34_1 (F1)
   H1RI35_1 (F1)
   H1RI36_1 (F1)
   H1RI37_1 (F1)
   H1RI38A1 (F2)
   H1RI38B1 (F2)
   H1RI38C1 (F2)
   H1RI39_1 (F1)
   H1RI40_1 (F1)
   H1RI41_1 (F4)
   H1RI1M_2 (F2)
   H1RI1Y_2 (F2)
   H1RI2_2 (F2)
   H1RI3_2 (F2)
   H1RI4_2 (F2)
   H1RI5A_2 (F2)
   H1RI6_2 (F1)
   H1RI7_2 (F1)
   H1RI8A_2 (F1)
   H1RI8B_2 (F1)
   H1RI8C_2 (F1)
   H1RI8D_2 (F1)
   H1RI8E_2 (F1)
   H1RI8F_2 (F1)
   H1RI8G_2 (F1)
   H1RI8H_2 (F1)
   H1RI9_2 (F2)
   H1RI10_2 (F1)
   H1RI11M2 (F2)
   H1RI11Y2 (F2)
   H1RI12_2 (F2)
   H1RI13_2 (F1)
   H1RI14_2 (F1)
   H1RI15_2 (F2)
   H1RI16_2 (F1)
   H1RI17A2 (F1)
   H1RI17B2 (F1)
   H1RI17C2 (F1)
   H1RI17D2 (F1)
   H1RI17E2 (F1)
   H1RI17F2 (F1)
   H1RI18A2 (F1)
   H1RI18B2 (F1)
   H1RI18C2 (F1)
   H1RI18D2 (F1)
   H1RI18E2 (F1)
   H1RI19A2 (F1)
   H1RI19B2 (F1)
   H1RI19C2 (F1)
   H1RI19D2 (F1)
   H1RI19E2 (F1)
   H1RI19F2 (F1)
   H1RI19G2 (F1)
   H1RI20_2 (F1)
   H1RI21A2 (F1)
   H1RI21B2 (F1)
   H1RI21C2 (F1)
   H1RI21D2 (F1)
   H1RI21E2 (F1)
   H1RI21F2 (F1)
   H1RI21G2 (F1)
   H1RI21H2 (F1)
   H1RI21I2 (F1)
   H1RI21J2 (F1)
   H1RI21K2 (F1)
   H1RI21L2 (F1)
   H1RI21M2 (F1)
   H1RI21N2 (F1)
   H1RI21O2 (F1)
   H1RI21P2 (F1)
   H1RI21Q2 (F1)
   H1RI21R2 (F1)
   H1RI22A2 (F2)
   H1RI22B2 (F2)
   H1RI22C2 (F2)
   H1RI22D2 (F2)
   H1RI22E2 (F2)
   H1RI22F2 (F2)
   H1RI22G2 (F2)
   H1RI22H2 (F2)
   H1RI22I2 (F2)
   H1RI22J2 (F2)
   H1RI22K2 (F2)
   H1RI22L2 (F2)
   H1RI22M2 (F2)
   H1RI22N2 (F2)
   H1RI22O2 (F2)
   H1RI22P2 (F2)
   H1RI22Q2 (F2)
   H1RI22R2 (F2)
   H1RI24A2 (F1)
   H1RI25M2 (F2)
   H1RI25Y2 (F2)
   H1RI26M2 (F2)
   H1RI26Y2 (F2)
   H1RI27_2 (F1)
   H1RI28_2 (F1)
   H1RI29A2 (F2)
   H1RI29B2 (F2)
   H1RI29C2 (F2)
   H1RI30_2 (F1)
   H1RI31_2 (F1)
   H1RI32_2 (F1)
   H1RI33A2 (F2)
   H1RI33B2 (F2)
   H1RI33C2 (F2)
   H1RI34_2 (F1)
   H1RI35_2 (F1)
   H1RI36_2 (F1)
   H1RI37_2 (F1)
   H1RI38A2 (F2)
   H1RI38B2 (F2)
   H1RI38C2 (F2)
   H1RI39_2 (F1)
   H1RI40_2 (F1)
   H1RI41_2 (F4)
   H1RI1M_3 (F2)
   H1RI1Y_3 (F2)
   H1RI2_3 (F2)
   H1RI3_3 (F2)
   H1RI4_3 (F2)
   H1RI5A_3 (F2)
   H1RI6_3 (F1)
   H1RI7_3 (F1)
   H1RI8A_3 (F1)
   H1RI8B_3 (F1)
   H1RI8C_3 (F1)
   H1RI8D_3 (F1)
   H1RI8E_3 (F1)
   H1RI8F_3 (F1)
   H1RI8G_3 (F1)
   H1RI8H_3 (F1)
   H1RI9_3 (F2)
   H1RI10_3 (F1)
   H1RI11M3 (F2)
   H1RI11Y3 (F2)
   H1RI12_3 (F2)
   H1RI13_3 (F1)
   H1RI14_3 (F1)
   H1RI15_3 (F2)
   H1RI16_3 (F1)
   H1RI17A3 (F1)
   H1RI17B3 (F1)
   H1RI17C3 (F1)
   H1RI17D3 (F1)
   H1RI17E3 (F1)
   H1RI17F3 (F1)
   H1RI18A3 (F1)
   H1RI18B3 (F1)
   H1RI18C3 (F1)
   H1RI18D3 (F1)
   H1RI18E3 (F1)
   H1RI19A3 (F1)
   H1RI19B3 (F1)
   H1RI19C3 (F1)
   H1RI19D3 (F1)
   H1RI19E3 (F1)
   H1RI19F3 (F1)
   H1RI19G3 (F1)
   H1RI20_3 (F1)
   H1RI21A3 (F1)
   H1RI21B3 (F1)
   H1RI21C3 (F1)
   H1RI21D3 (F1)
   H1RI21E3 (F1)
   H1RI21F3 (F1)
   H1RI21G3 (F1)
   H1RI21H3 (F1)
   H1RI21I3 (F1)
   H1RI21J3 (F1)
   H1RI21K3 (F1)
   H1RI21L3 (F1)
   H1RI21M3 (F1)
   H1RI21N3 (F1)
   H1RI21O3 (F1)
   H1RI21P3 (F1)
   H1RI21Q3 (F1)
   H1RI21R3 (F1)
   H1RI22A3 (F2)
   H1RI22B3 (F2)
   H1RI22C3 (F2)
   H1RI22D3 (F2)
   H1RI22E3 (F2)
   H1RI22F3 (F2)
   H1RI22G3 (F2)
   H1RI22H3 (F2)
   H1RI22I3 (F2)
   H1RI22J3 (F2)
   H1RI22K3 (F2)
   H1RI22L3 (F2)
   H1RI22M3 (F2)
   H1RI22N3 (F2)
   H1RI22O3 (F2)
   H1RI22P3 (F2)
   H1RI22Q3 (F2)
   H1RI22R3 (F2)
   H1RI24A3 (F1)
   H1RI25M3 (F2)
   H1RI25Y3 (F2)
   H1RI26M3 (F2)
   H1RI26Y3 (F2)
   H1RI27_3 (F1)
   H1RI28_3 (F1)
   H1RI29A3 (F2)
   H1RI29B3 (F2)
   H1RI29C3 (F2)
   H1RI30_3 (F1)
   H1RI31_3 (F1)
   H1RI32_3 (F1)
   H1RI33A3 (F2)
   H1RI33B3 (F2)
   H1RI33C3 (F2)
   H1RI34_3 (F1)
   H1RI35_3 (F1)
   H1RI36_3 (F1)
   H1RI37_3 (F1)
   H1RI38A3 (F2)
   H1RI38B3 (F2)
   H1RI38C3 (F2)
   H1RI39_3 (F1)
   H1RI40_3 (F1)
   H1RI41_3 (F4)
   RICARD1 (F1)
   RICARD2 (F1)
   RICARD3 (F1)
   H1NR1 (F1)
   H1NR2 (F1)
   H1NR3 (F1)
   H1NR4 (F3)
   H1NR5 (F1)
   H1NR6 (F3)
   H1NR7 (F3)
   H1NR8 (F3)
   H1NR10_1 (F1)
   H1NR11_1 (F1)
   H1NR12_1 (F1)
   NRRXFLG1 (F1)
   H1RX1M_1 (F2)
   H1RX1Y_1 (F2)
   H1RX2_1 (F2)
   H1RX3_1 (F2)
   H1RX4_1 (F2)
   H1RX5A_1 (F2)
   H1RX6_1 (F1)
   H1RX7_1 (F1)
   H1RX8A_1 (F1)
   H1RX8B_1 (F1)
   H1RX8C_1 (F1)
   H1RX8D_1 (F1)
   H1RX8E_1 (F1)
   H1RX8F_1 (F1)
   H1RX8G_1 (F1)
   H1RX8H_1 (F1)
   H1RX9_1 (F2)
   H1RX10_1 (F1)
   H1RX11M1 (F2)
   H1RX11Y1 (F2)
   H1RX12_1 (F2)
   H1RX13_1 (F1)
   H1RX14_1 (F1)
   H1RX15_1 (F2)
   H1RX16_1 (F1)
   H1RX17A1 (F1)
   H1RX17B1 (F1)
   H1RX17C1 (F1)
   H1RX17D1 (F1)
   H1RX17E1 (F1)
   H1RX17F1 (F1)
   H1RX18A1 (F1)
   H1RX18B1 (F1)
   H1RX18C1 (F1)
   H1RX18D1 (F1)
   H1RX18E1 (F1)
   H1RX19A1 (F1)
   H1RX19B1 (F1)
   H1RX19C1 (F1)
   H1RX19D1 (F1)
   H1RX19E1 (F1)
   H1RX19F1 (F1)
   H1RX19G1 (F1)
   H1RX20_1 (F1)
   H1RX21A1 (F1)
   H1RX21B1 (F1)
   H1RX21C1 (F1)
   H1RX21D1 (F1)
   H1RX21E1 (F1)
   H1RX21F1 (F1)
   H1RX21G1 (F1)
   H1RX21H1 (F1)
   H1RX21I1 (F1)
   H1RX21J1 (F1)
   H1RX21K1 (F1)
   H1RX21L1 (F1)
   H1RX21M1 (F1)
   H1RX21N1 (F1)
   H1RX21O1 (F1)
   H1RX21P1 (F1)
   H1RX21Q1 (F1)
   H1RX21R1 (F1)
   H1RX22A1 (F2)
   H1RX22B1 (F2)
   H1RX22C1 (F2)
   H1RX22D1 (F2)
   H1RX22E1 (F2)
   H1RX22F1 (F2)
   H1RX22G1 (F2)
   H1RX22H1 (F2)
   H1RX22I1 (F2)
   H1RX22J1 (F2)
   H1RX22K1 (F2)
   H1RX22L1 (F2)
   H1RX22M1 (F2)
   H1RX22N1 (F2)
   H1RX22O1 (F2)
   H1RX22P1 (F2)
   H1RX22Q1 (F2)
   H1RX22R1 (F2)
   H1RX24A1 (F1)
   H1RX25M1 (F2)
   H1RX25Y1 (F2)
   H1RX26M1 (F2)
   H1RX26Y1 (F2)
   H1RX27_1 (F1)
   H1RX28_1 (F1)
   H1RX29A1 (F2)
   H1RX29B1 (F2)
   H1RX29C1 (F2)
   H1RX30_1 (F1)
   H1RX31_1 (F1)
   H1RX32_1 (F1)
   H1RX33A1 (F2)
   H1RX33B1 (F2)
   H1RX33C1 (F2)
   H1RX34_1 (F1)
   H1RX35_1 (F1)
   H1RX36_1 (F1)
   H1RX37_1 (F1)
   H1RX38A1 (F2)
   H1RX38B1 (F2)
   H1RX38C1 (F2)
   H1RX39_1 (F1)
   H1RX40_1 (F1)
   H1RX41_1 (F4)
   H1NR13_1 (F2)
   H1NR14_1 (F1)
   H1NR15_1 (F1)
   H1NR16_1 (F1)
   H1NR17A1 (F1)
   H1NR17B1 (F1)
   H1NR17C1 (F1)
   H1NR17D1 (F1)
   H1NR17E1 (F1)
   H1NR17F1 (F1)
   H1NR18A1 (F1)
   H1NR18B1 (F1)
   H1NR18C1 (F1)
   H1NR18D1 (F1)
   H1NR18E1 (F1)
   H1NR19A1 (F1)
   H1NR19B1 (F1)
   H1NR19C1 (F1)
   H1NR19D1 (F1)
   H1NR19E1 (F1)
   H1NR19F1 (F1)
   H1NR19G1 (F1)
   H1NR20A1 (F1)
   H1NR20B1 (F1)
   H1NR20C1 (F1)
   H1NR20D1 (F1)
   H1NR20E1 (F1)
   H1NR20F1 (F1)
   H1NR20G1 (F1)
   H1NR20H1 (F1)
   H1NR21_1 (F1)
   H1NR22_1 (F1)
   H1NR23M1 (F2)
   H1NR23Y1 (F2)
   H1NR24M1 (F2)
   H1NR24Y1 (F2)
   H1NR25_1 (F1)
   H1NR26_1 (F1)
   H1NR27A1 (F2)
   H1NR27B1 (F2)
   H1NR27C1 (F2)
   H1NR28_1 (F1)
   H1NR29_1 (F1)
   H1NR30_1 (F1)
   H1NR31A1 (F2)
   H1NR31B1 (F2)
   H1NR31C1 (F2)
   H1NR32_1 (F1)
   H1NR33_1 (F1)
   H1NR34_1 (F1)
   H1NR35_1 (F1)
   H1NR36A1 (F2)
   H1NR36B1 (F2)
   H1NR36C1 (F2)
   H1NR37_1 (F1)
   H1NR38_1 (F1)
   H1NR39_1 (F3)
   H1NR40_1 (F1)
   H1NR41_1 (F1)
   H1NR42_1 (F1)
   H1NR43_1 (F2)
   H1NR10_2 (F1)
   H1NR11_2 (F1)
   H1NR12_2 (F1)
   NRRXFLG2 (F1)
   H1RX1M_2 (F2)
   H1RX1Y_2 (F2)
   H1RX2_2 (F2)
   H1RX3_2 (F2)
   H1RX4_2 (F2)
   H1RX5A_2 (F2)
   H1RX6_2 (F1)
   H1RX7_2 (F1)
   H1RX8A_2 (F1)
   H1RX8B_2 (F1)
   H1RX8C_2 (F1)
   H1RX8D_2 (F1)
   H1RX8E_2 (F1)
   H1RX8F_2 (F1)
   H1RX8G_2 (F1)
   H1RX8H_2 (F1)
   H1RX9_2 (F2)
   H1RX10_2 (F1)
   H1RX11M2 (F2)
   H1RX11Y2 (F2)
   H1RX12_2 (F2)
   H1RX13_2 (F1)
   H1RX14_2 (F1)
   H1RX15_2 (F2)
   H1RX16_2 (F1)
   H1RX17A2 (F1)
   H1RX17B2 (F1)
   H1RX17C2 (F1)
   H1RX17D2 (F1)
   H1RX17E2 (F1)
   H1RX17F2 (F1)
   H1RX18A2 (F1)
   H1RX18B2 (F1)
   H1RX18C2 (F1)
   H1RX18D2 (F1)
   H1RX18E2 (F1)
   H1RX19A2 (F1)
   H1RX19B2 (F1)
   H1RX19C2 (F1)
   H1RX19D2 (F1)
   H1RX19E2 (F1)
   H1RX19F2 (F1)
   H1RX19G2 (F1)
   H1RX20_2 (F1)
   H1RX21A2 (F1)
   H1RX21B2 (F1)
   H1RX21C2 (F1)
   H1RX21D2 (F1)
   H1RX21E2 (F1)
   H1RX21F2 (F1)
   H1RX21G2 (F1)
   H1RX21H2 (F1)
   H1RX21I2 (F1)
   H1RX21J2 (F1)
   H1RX21K2 (F1)
   H1RX21L2 (F1)
   H1RX21M2 (F1)
   H1RX21N2 (F1)
   H1RX21O2 (F1)
   H1RX21P2 (F1)
   H1RX21Q2 (F1)
   H1RX21R2 (F1)
   H1RX22A2 (F2)
   H1RX22B2 (F2)
   H1RX22C2 (F2)
   H1RX22D2 (F2)
   H1RX22E2 (F2)
   H1RX22F2 (F2)
   H1RX22G2 (F2)
   H1RX22H2 (F2)
   H1RX22I2 (F2)
   H1RX22J2 (F2)
   H1RX22K2 (F2)
   H1RX22L2 (F2)
   H1RX22M2 (F2)
   H1RX22N2 (F2)
   H1RX22O2 (F2)
   H1RX22P2 (F2)
   H1RX22Q2 (F2)
   H1RX22R2 (F2)
   H1RX24A2 (F1)
   H1RX25M2 (F2)
   H1RX25Y2 (F2)
   H1RX26M2 (F2)
   H1RX26Y2 (F2)
   H1RX27_2 (F1)
   H1RX28_2 (F1)
   H1RX29A2 (F2)
   H1RX29B2 (F2)
   H1RX29C2 (F2)
   H1RX30_2 (F1)
   H1RX31_2 (F1)
   H1RX32_2 (F1)
   H1RX33A2 (F2)
   H1RX33B2 (F2)
   H1RX33C2 (F2)
   H1RX34_2 (F1)
   H1RX35_2 (F1)
   H1RX36_2 (F1)
   H1RX37_2 (F1)
   H1RX38A2 (F2)
   H1RX38B2 (F2)
   H1RX38C2 (F2)
   H1RX39_2 (F1)
   H1RX40_2 (F1)
   H1RX41_2 (F4)
   H1NR13_2 (F2)
   H1NR14_2 (F1)
   H1NR15_2 (F1)
   H1NR16_2 (F1)
   H1NR17A2 (F1)
   H1NR17B2 (F1)
   H1NR17C2 (F1)
   H1NR17D2 (F1)
   H1NR17E2 (F1)
   H1NR17F2 (F1)
   H1NR18A2 (F1)
   H1NR18B2 (F1)
   H1NR18C2 (F1)
   H1NR18D2 (F1)
   H1NR18E2 (F1)
   H1NR19A2 (F1)
   H1NR19B2 (F1)
   H1NR19C2 (F1)
   H1NR19D2 (F1)
   H1NR19E2 (F1)
   H1NR19F2 (F1)
   H1NR19G2 (F1)
   H1NR20A2 (F1)
   H1NR20B2 (F1)
   H1NR20C2 (F1)
   H1NR20D2 (F1)
   H1NR20E2 (F1)
   H1NR20F2 (F1)
   H1NR20G2 (F1)
   H1NR20H2 (F1)
   H1NR21_2 (F1)
   H1NR22_2 (F1)
   H1NR23M2 (F2)
   H1NR23Y2 (F2)
   H1NR24M2 (F2)
   H1NR24Y2 (F2)
   H1NR25_2 (F1)
   H1NR26_2 (F1)
   H1NR27A2 (F2)
   H1NR27B2 (F2)
   H1NR27C2 (F2)
   H1NR28_2 (F1)
   H1NR29_2 (F1)
   H1NR30_2 (F1)
   H1NR31A2 (F2)
   H1NR31B2 (F2)
   H1NR31C2 (F2)
   H1NR32_2 (F1)
   H1NR33_2 (F1)
   H1NR34_2 (F1)
   H1NR35_2 (F1)
   H1NR36A2 (F2)
   H1NR36B2 (F2)
   H1NR36C2 (F2)
   H1NR37_2 (F1)
   H1NR38_2 (F1)
   H1NR39_2 (F3)
   H1NR40_2 (F1)
   H1NR41_2 (F1)
   H1NR42_2 (F1)
   H1NR43_2 (F2)
   H1NR10_3 (F1)
   H1NR11_3 (F1)
   H1NR12_3 (F1)
   NRRXFLG3 (F1)
   H1RX1M_3 (F2)
   H1RX1Y_3 (F2)
   H1RX2_3 (F2)
   H1RX3_3 (F2)
   H1RX4_3 (F2)
   H1RX5A_3 (F2)
   H1RX6_3 (F1)
   H1RX7_3 (F1)
   H1RX8A_3 (F1)
   H1RX8B_3 (F1)
   H1RX8C_3 (F1)
   H1RX8D_3 (F1)
   H1RX8E_3 (F1)
   H1RX8F_3 (F1)
   H1RX8G_3 (F1)
   H1RX8H_3 (F1)
   H1RX9_3 (F2)
   H1RX10_3 (F1)
   H1RX11M3 (F2)
   H1RX11Y3 (F2)
   H1RX12_3 (F2)
   H1RX13_3 (F1)
   H1RX14_3 (F1)
   H1RX15_3 (F2)
   H1RX16_3 (F1)
   H1RX17A3 (F1)
   H1RX17B3 (F1)
   H1RX17C3 (F1)
   H1RX17D3 (F1)
   H1RX17E3 (F1)
   H1RX17F3 (F1)
   H1RX18A3 (F1)
   H1RX18B3 (F1)
   H1RX18C3 (F1)
   H1RX18D3 (F1)
   H1RX18E3 (F1)
   H1RX19A3 (F1)
   H1RX19B3 (F1)
   H1RX19C3 (F1)
   H1RX19D3 (F1)
   H1RX19E3 (F1)
   H1RX19F3 (F1)
   H1RX19G3 (F1)
   H1RX20_3 (F1)
   H1RX21A3 (F1)
   H1RX21B3 (F1)
   H1RX21C3 (F1)
   H1RX21D3 (F1)
   H1RX21E3 (F1)
   H1RX21F3 (F1)
   H1RX21G3 (F1)
   H1RX21H3 (F1)
   H1RX21I3 (F1)
   H1RX21J3 (F1)
   H1RX21K3 (F1)
   H1RX21L3 (F1)
   H1RX21M3 (F1)
   H1RX21N3 (F1)
   H1RX21O3 (F1)
   H1RX21P3 (F1)
   H1RX21Q3 (F1)
   H1RX21R3 (F1)
   H1RX22A3 (F2)
   H1RX22B3 (F2)
   H1RX22C3 (F2)
   H1RX22D3 (F2)
   H1RX22E3 (F2)
   H1RX22F3 (F2)
   H1RX22G3 (F2)
   H1RX22H3 (F2)
   H1RX22I3 (F2)
   H1RX22J3 (F2)
   H1RX22K3 (F2)
   H1RX22L3 (F2)
   H1RX22M3 (F2)
   H1RX22N3 (F2)
   H1RX22O3 (F2)
   H1RX22P3 (F2)
   H1RX22Q3 (F2)
   H1RX22R3 (F2)
   H1RX24A3 (F1)
   H1RX25M3 (F2)
   H1RX25Y3 (F2)
   H1RX26M3 (F2)
   H1RX26Y3 (F2)
   H1RX27_3 (F1)
   H1RX28_3 (F1)
   H1RX29A3 (F2)
   H1RX29B3 (F2)
   H1RX29C3 (F2)
   H1RX30_3 (F1)
   H1RX31_3 (F1)
   H1RX32_3 (F1)
   H1RX33A3 (F2)
   H1RX33B3 (F2)
   H1RX33C3 (F2)
   H1RX34_3 (F1)
   H1RX35_3 (F1)
   H1RX36_3 (F1)
   H1RX37_3 (F1)
   H1RX38A3 (F2)
   H1RX38B3 (F2)
   H1RX38C3 (F2)
   H1RX39_3 (F1)
   H1RX40_3 (F1)
   H1RX41_3 (F4)
   H1NR13_3 (F2)
   H1NR14_3 (F1)
   H1NR15_3 (F1)
   H1NR16_3 (F1)
   H1NR17A3 (F1)
   H1NR17B3 (F1)
   H1NR17C3 (F1)
   H1NR17D3 (F1)
   H1NR17E3 (F1)
   H1NR17F3 (F1)
   H1NR18A3 (F1)
   H1NR18B3 (F1)
   H1NR18C3 (F1)
   H1NR18D3 (F1)
   H1NR18E3 (F1)
   H1NR19A3 (F1)
   H1NR19B3 (F1)
   H1NR19C3 (F1)
   H1NR19D3 (F1)
   H1NR19E3 (F1)
   H1NR19F3 (F1)
   H1NR19G3 (F1)
   H1NR20A3 (F1)
   H1NR20B3 (F1)
   H1NR20C3 (F1)
   H1NR20D3 (F1)
   H1NR20E3 (F1)
   H1NR20F3 (F1)
   H1NR20G3 (F1)
   H1NR20H3 (F1)
   H1NR21_3 (F1)
   H1NR22_3 (F1)
   H1NR23M3 (F2)
   H1NR23Y3 (F2)
   H1NR24M3 (F2)
   H1NR24Y3 (F2)
   H1NR25_3 (F1)
   H1NR26_3 (F1)
   H1NR27A3 (F2)
   H1NR27B3 (F2)
   H1NR27C3 (F2)
   H1NR28_3 (F1)
   H1NR29_3 (F1)
   H1NR30_3 (F1)
   H1NR31A3 (F2)
   H1NR31B3 (F2)
   H1NR31C3 (F2)
   H1NR32_3 (F1)
   H1NR33_3 (F1)
   H1NR34_3 (F1)
   H1NR35_3 (F1)
   H1NR36A3 (F2)
   H1NR36B3 (F2)
   H1NR36C3 (F2)
   H1NR37_3 (F1)
   H1NR38_3 (F1)
   H1NR39_3 (F3)
   H1NR40_3 (F1)
   H1NR41_3 (F1)
   H1NR42_3 (F1)
   H1NR43_3 (F2)
   H1NR44 (F1)
   H1NR45 (F2)
   H1NR46 (F2)
   H1NR47 (F1)
   H1NR48 (F1)
   H1NR49 (F1)
   H1NR50 (F2)
   H1NR51 (F2)
   H1NR52 (F1)
   H1NR53 (F1)
   RXCARD1 (F1)
   RXCARD2 (F1)
   RXCARD3 (F1)
   H1BC1 (F1)
   H1BC2 (F1)
   H1BC3 (F1)
   H1BC4 (F1)
   H1BC5 (F1)
   H1BC6 (F1)
   H1BC7 (F1)
   H1BC8 (F1)
   H1TO1 (F1)
   H1TO2 (F2)
   H1TO3 (F1)
   H1TO4 (F2)
   H1TO5 (F2)
   H1TO6M (F2)
   H1TO6Y (F2)
   H1TO7 (F2)
   H1TO8 (F1)
   H1TO9 (F1)
   H1TO10 (F2)
   H1TO11 (F2)
   H1TO12 (F1)
   H1TO13 (F1)
   H1TO14 (F2)
   H1TO15 (F2)
   H1TO16 (F2)
   H1TO17 (F2)
   H1TO18 (F2)
   H1TO19 (F2)
   H1TO20 (F1)
   H1TO21 (F1)
   H1TO22 (F1)
   H1TO23 (F1)
   H1TO24 (F1)
   H1TO25 (F1)
   H1TO26 (F1)
   H1TO27 (F1)
   H1TO28 (F1)
   H1TO29 (F1)
   H1TO30 (F2)
   H1TO31 (F3)
   H1TO32 (F3)
   H1TO33 (F1)
   H1TO34 (F2)
   H1TO35 (F3)
   H1TO36 (F3)
   H1TO37 (F2)
   H1TO38 (F3)
   H1TO39 (F3)
   H1TO40 (F2)
   H1TO41 (F3)
   H1TO42 (F3)
   H1TO43 (F1)
   H1TO44 (F1)
   H1TO45 (F2)
   H1TO46 (F1)
   H1TO47 (F1)
   H1TO48 (F1)
   H1TO49 (F1)
   H1TO50 (F1)
   H1TO51 (F1)
   H1TO52 (F1)
   H1TO53 (F1)
   H1TO54A (F1)
   H1TO54B (F1)
   H1TO54C (F1)
   H1TO54D (F1)
   H1DS1 (F1)
   H1DS2 (F1)
   H1DS3 (F1)
   H1DS4 (F1)
   H1DS5 (F1)
   H1DS6 (F1)
   H1DS7 (F1)
   H1DS8 (F1)
   H1DS9 (F1)
   H1DS10 (F1)
   H1DS11 (F1)
   H1DS12 (F1)
   H1DS13 (F1)
   H1DS14 (F1)
   H1DS15 (F1)
   H1JO1 (F1)
   H1JO2 (F1)
   H1JO3 (F1)
   H1JO4 (F1)
   H1JO5 (F1)
   H1JO6A (F1)
   H1JO6B (F1)
   H1JO6C (F1)
   H1JO6D (F1)
   H1JO6E (F1)
   H1JO7 (F1)
   H1JO8A (F1)
   H1JO8B (F1)
   H1JO8C (F1)
   H1JO8D (F1)
   H1JO8E (F1)
   H1JO9 (F1)
   H1JO10 (F1)
   H1JO11 (F1)
   H1JO12 (F1)
   H1JO13 (F1)
   H1JO14 (F1)
   H1JO15 (F1)
   H1JO16 (F1)
   H1JO17 (F1)
   H1JO18A (F1)
   H1JO18B (F1)
   H1JO18C (F1)
   H1JO18D (F1)
   H1JO18E (F1)
   H1JO19 (F1)
   H1JO20 (F1)
   H1JO21 (F1)
   H1JO22A (F1)
   H1JO22B (F1)
   H1JO22C (F1)
   H1JO22D (F1)
   H1JO22E (F1)
   H1JO23 (F1)
   H1JO24 (F1)
   H1JO25 (F1)
   H1JO26 (F1)
   H1FV1 (F1)
   H1FV2 (F1)
   H1FV3 (F1)
   H1FV4 (F1)
   H1FV5 (F1)
   H1FV6 (F1)
   H1FV7 (F1)
   H1FV8 (F1)
   H1FV9 (F1)
   H1FV10 (F1)
   H1FV11 (F2)
   H1FV12 (F1)
   H1FV13 (F3)
   H1FV14M (F2)
   H1FV14Y (F2)
   H1MP1 (F1)
   H1MP2 (F1)
   H1MP3 (F1)
   H1MP4 (F1)
   H1FP1 (F1)
   H1FP2 (F1)
   H1FP3 (F1)
   H1FP4 (F2)
   H1FP5M (F2)
   H1FP5D (F2)
   H1FP6 (F1)
   H1FP7 (F1)
   H1FP8 (F2)
   H1FP9M (F2)
   H1FP9Y (F2)
   H1FP10 (F1)
   H1FP11M1 (F2)
   H1FP11Y1 (F2)
   H1FP12_1 (F1)
   H1FP13A1 (F2)
   H1FP13B1 (F2)
   H1FP13C1 (F2)
   H1FP14_1 (F1)
   H1FP15_1 (F1)
   H1FP17_1 (F1)
   H1FP20M1 (F2)
   H1FP20Y1 (F2)
   H1FP21_1 (F1)
   H1FP22_1 (F1)
   H1FP23A1 (F1)
   H1FP24A1 (F1)
   H1FP11M2 (F2)
   H1FP11Y2 (F2)
   H1FP12_2 (F1)
   H1FP13A2 (F2)
   H1FP13B2 (F2)
   H1FP13C2 (F2)
   H1FP14_2 (F1)
   H1FP15_2 (F1)
   H1FP17_2 (F1)
   H1FP20M2 (F2)
   H1FP20Y2 (F2)
   H1FP21_2 (F1)
   H1FP22_2 (F1)
   H1FP23A2 (F1)
   H1FP24A2 (F1)
   H1FP11M3 (F2)
   H1FP11Y3 (F2)
   H1FP12_3 (F1)
   H1FP13A3 (F2)
   H1FP13B3 (F2)
   H1FP13C3 (F2)
   H1FP14_3 (F1)
   H1FP15_3 (F1)
   H1FP17_3 (F1)
   H1FP20M3 (F2)
   H1FP20Y3 (F2)
   H1FP21_3 (F1)
   H1FP22_3 (F1)
   H1FP23A3 (F1)
   H1FP24A3 (F1)
   H1FP11M4 (F2)
   H1FP11Y4 (F2)
   H1FP12_4 (F1)
   H1FP13A4 (F2)
   H1FP13B4 (F2)
   H1FP13C4 (F2)
   H1FP14_4 (F1)
   H1FP15_4 (F1)
   H1FP17_4 (F1)
   H1FP20M4 (F2)
   H1FP20Y4 (F2)
   H1FP21_4 (F1)
   H1FP22_4 (F1)
   H1FP23A4 (F1)
   H1FP24A4 (F1)
   H1FP11M5 (F2)
   H1FP11Y5 (F2)
   H1FP12_5 (F1)
   H1FP13A5 (F2)
   H1FP13B5 (F2)
   H1FP13C5 (F2)
   H1FP14_5 (F1)
   H1FP15_5 (F1)
   H1FP17_5 (F1)
   H1FP20M5 (F2)
   H1FP20Y5 (F2)
   H1FP21_5 (F1)
   H1FP22_5 (F1)
   H1FP23A5 (F1)
   H1FP24A5 (F1)
   H1SU1 (F1)
   H1SU2 (F1)
   H1SU3 (F1)
   H1SU4 (F1)
   H1SU5 (F1)
   H1SU6 (F1)
   H1SU7 (F1)
   H1SU8 (F1)
   H1PA1 (F1)
   H1PA2 (F1)
   H1PA3 (F1)
   H1PA4 (F1)
   H1PA5 (F1)
   H1PA6 (F1)
   H1PA7 (F1)
   H1PR1 (F2)
   H1PR2 (F2)
   H1PR3 (F2)
   H1PR4 (F2)
   H1PR5 (F2)
   H1PR6 (F2)
   H1PR7 (F2)
   H1PR8 (F2)
   H1NB1 (F1)
   H1NB2 (F1)
   H1NB3 (F1)
   H1NB4 (F1)
   H1NB5 (F1)
   H1NB6 (F1)
   H1NB7 (F1)
   H1RE1 (F2)
   H1RE2 (F1)
   H1RE3 (F1)
   H1RE4 (F1)
   H1RE5 (F1)
   H1RE6 (F1)
   H1RE7 (F1)
   H1EE1 (F1)
   H1EE2 (F1)
   H1EE3 (F1)
   H1EE4 (F5.1)
   H1EE5 (F3)
   H1EE6 (F3)
   H1EE7 (F5.1)
   H1EE8 (F2)
   H1EE9 (F1)
   H1EE10 (F1)
   H1EE11 (F1)
   H1EE12 (F1)
   H1EE13 (F1)
   H1EE14 (F1)
   H1EE15 (F1)
   STUDSIBA (F1)
   TWINA (F1)
   H1WS1A (F1)
   H1WS2A (F1)
   H1WS3A (F1)
   H1WS4A (F1)
   H1WS5A (F2)
   H1WS6A (F1)
   H1WS7A (F1)
   H1WS8A (F1)
   H1WS9A (F1)
   H1WS10A (F1)
   H1WS11A (F1)
   H1WS12A (F1)
   STUDSIBB (F1)
   TWINB (F1)
   H1WS1B (F1)
   H1WS2B (F1)
   H1WS3B (F1)
   H1WS4B (F1)
   H1WS5B (F2)
   H1WS6B (F1)
   H1WS7B (F1)
   H1WS8B (F1)
   H1WS9B (F1)
   H1WS10B (F1)
   H1WS11B (F1)
   H1WS12B (F1)
   STUDSIBC (F1)
   TWINC (F1)
   H1WS1C (F1)
   H1WS2C (F1)
   H1WS3C (F1)
   H1WS4C (F1)
   H1WS5C (F2)
   H1WS6C (F1)
   H1WS7C (F1)
   H1WS8C (F1)
   H1WS9C (F1)
   H1WS10C (F1)
   H1WS11C (F1)
   H1WS12C (F1)
   STUDSIBD (F1)
   TWIND (F1)
   H1WS1D (F1)
   H1WS2D (F1)
   H1WS3D (F1)
   H1WS4D (F1)
   H1WS5D (F2)
   H1WS6D (F1)
   H1WS7D (F1)
   H1WS8D (F1)
   H1WS9D (F1)
   H1WS10D (F1)
   H1WS11D (F1)
   H1WS12D (F1)
   STUDSIBE (F1)
   TWINE (F1)
   H1WS1E (F1)
   H1WS2E (F1)
   H1WS3E (F1)
   H1WS4E (F1)
   H1WS5E (F2)
   H1WS6E (F1)
   H1WS7E (F1)
   H1WS8E (F1)
   H1WS9E (F1)
   H1WS10E (F1)
   H1WS11E (F1)
   H1WS12E (F1)
   STUDSIBF (F1)
   TWINF (F1)
   H1WS1F (F1)
   H1WS2F (F1)
   H1WS3F (F1)
   H1WS4F (F1)
   H1WS5F (F1)
   H1WS6F (F1)
   H1WS7F (F1)
   H1WS8F (F1)
   H1WS9F (F1)
   H1WS10F (F1)
   H1WS11F (F1)
   H1WS12F (F1)
   STUDSIBG (F1)
   TWING (F1)
   H1WS1G (F1)
   H1WS2G (F1)
   H1WS3G (F1)
   H1WS4G (F1)
   H1WS5G (F2)
   H1WS6G (F1)
   H1WS7G (F1)
   H1WS8G (F1)
   H1WS9G (F1)
   H1WS10G (F1)
   H1WS11G (F1)
   H1WS12G (F1)
   H1WS13 (F1)
   H1IR1 (F1)
   H1IR2 (F1)
   H1IR3 (F1)
   H1IR4 (F1)
   H1IR5 (F1)
   H1IR6 (F1)
   H1IR7A (F1)
   H1IR7B (F1)
   H1IR7C (F1)
   H1IR7D (F1)
   H1IR7E (F1)
   H1IR7F (F1)
   H1IR7G (F1)
   H1IR7H (F1)
   H1IR7I (F1)
   H1IR7J (F1)
   H1IR7K (F1)
   H1IR7L (F1)
   H1IR7M (F1)
   H1IR7N (F1)
   H1IR7O (F1)
   H1IR7P (F1)
   H1IR7Q (F1)
   H1IR7R (F1)
   H1IR7S (F1)
   H1IR7T (F1)
   H1IR7U (F1)
   H1IR7V (F1)
   H1IR7W (F1)
   H1IR7X (F1)
   H1IR7Y (F1)
   H1IR7Z (F1)
   H1IR7AA (F1)
   H1IR7BB (F1)
   H1IR7CC (F1)
   H1IR7DD (F1)
   H1IR8A (F1)
   H1IR8B (F1)
   H1IR8C (F1)
   H1IR8D (F1)
   H1IR9 (F1)
   H1IR10 (F1)
   H1IR11 (F1)
   H1IR12 (F2)
   H1IR13 (F2)
   H1IR14 (F2)
   H1IR15 (F1)
   H1IR16 (F2)
   H1IR17A (F1)
   H1IR17B (F1)
   H1IR17C (F1)
   H1IR17D (F1)
   H1IR17E (F1)
   H1IR17F (F1)
   H1IR17G (F1)
   H1IR17H (F1)
   H1IR17I (F1)
   H1IR17J (F1)
   H1IR18 (F1)
   H1IR19 (F1)
   H1IR20 (F1)
   H1IR21 (F1)
   H1IR22A (F1)
   H1IR22B (F1)
   H1IR22C (F1)
   H1IR22D (F1)
   H1IR22E (F1)
   H1IR22F (F1)
   H1IR22G (F1)
   H1IR22H (F1)
   H1IR22I (F1)
   H1IR22J (F1)
   H1IR22K (F1)
   H1IR22L (F1)
   H1IR22M (F1)
   H1IR22N (F1)
   H1IR22O (F1)
   H1IR22P (F1)
   H1IR22Q (F1)
   H1IR22R (F1)
   H1IR22S (F1)
   H1IR22T (F1)
   H1IR22U (F1)
   H1IR22V (F1)
   H1IR22W (F1)
   H1IR22X (F1)
   H1IR22Y (F1)
   H1IR22Z (F1)
   H1IR22AA (F1)
   H1IR22BB (F1)
   H1IR22CC (F1)
   H1IR22DD (F1)
   H1IR22EE (F1)
   H1IR22FF (F1)
   H1IR22GG (F1)
   H1IR22HH (F1)
   H1IR22II (F1)
   H1IR22JJ (F1)
   H1IR22KK (F1)
   H1IR22LL (F1)
   H1IR22MM (F1)
   H1IR23 (F1)
   H1IR24 (F1)
   H1IR25 (F1)
   H1IR26 (F1)
   H1IR27 (F1)
   H1IR28 (F1)
   S1 (F2)
   S2 (F1)
   S3 (F2)
   S4 (F1)
   S5 (F2)
   S6A (F1)
   S6B (F1)
   S6C (F1)
   S6D (F1)
   S6E (F1)
   S7 (F2)
   S8 (F1)
   S9 (F1)
   S10 (F1)
   S10A (F1)
   S10B (F1)
   S10C (F1)
   S10D (F1)
   S11 (F1)
   S12 (F2)
   S13 (F1)
   S14 (F2)
   S15 (F1)
   S16 (F1)
   S17 (F1)
   S18 (F2)
   S19 (F1)
   S20 (F2)
   S21 (F1)
   S22 (F1)
   S23 (F1)
   S24 (F1)
   S25 (F1)
   S26 (F1)
   S27 (F2)
   S28 (F2)
   S29A (F1)
   S29B (F1)
   S29C (F1)
   S29D (F1)
   S29E (F1)
   S30A (F1)
   S30B (F1)
   S30C (F1)
   S30D (F1)
   S30E (F1)
   S31A (F1)
   S31B (F1)
   S31C (F1)
   S31D (F1)
   S31E (F1)
   S32A (F1)
   S32B (F1)
   S32C (F1)
   S32D (F1)
   S32E (F1)
   S33A (F1)
   S33B (F1)
   S33C (F1)
   S33D (F1)
   S33E (F1)
   S34A (F1)
   S34B (F1)
   S34C (F1)
   S34D (F1)
   S34E (F1)
   S35A (F1)
   S35B (F1)
   S35C (F1)
   S35D (F1)
   S35E (F1)
   S36A (F1)
   S36B (F1)
   S36C (F1)
   S36D (F1)
   S36E (F1)
   S37A (F1)
   S37B (F1)
   S37C (F1)
   S37D (F1)
   S37E (F1)
   S38A (F1)
   S38B (F1)
   S38C (F1)
   S38D (F1)
   S38E (F1)
   S39A (F1)
   S39B (F1)
   S39C (F1)
   S39D (F1)
   S39E (F1)
   S40A (F1)
   S40B (F1)
   S40C (F1)
   S40D (F1)
   S40E (F1)
   S41A (F1)
   S41B (F1)
   S41C (F1)
   S41D (F1)
   S41E (F1)
   S42A (F1)
   S42B (F1)
   S42C (F1)
   S42D (F1)
   S42E (F1)
   S43A (F1)
   S43B (F1)
   S43C (F1)
   S43D (F1)
   S43E (F1)
   S44A1 (F1)
   S44A2 (F1)
   S44A3 (F1)
   S44A4 (F1)
   S44A5 (F1)
   S44A6 (F1)
   S44A7 (F1)
   S44A8 (F1)
   S44A9 (F1)
   S44A10 (F1)
   S44A11 (F1)
   S44A12 (F1)
   S44A13 (F1)
   S44A14 (F1)
   S44A15 (F1)
   S44A16 (F1)
   S44A17 (F1)
   S44A18 (F1)
   S44A19 (F1)
   S44A20 (F1)
   S44A21 (F1)
   S44A22 (F1)
   S44A23 (F1)
   S44A24 (F1)
   S44A25 (F1)
   S44A26 (F1)
   S44A27 (F1)
   S44A28 (F1)
   S44A29 (F1)
   S44A30 (F1)
   S44A31 (F1)
   S44A32 (F1)
   S44A33 (F1)
   S44 (F1)
   S45A (F2)
   S45B (F2)
   S45C (F2)
   S45D (F2)
   S45E (F2)
   S45F (F2)
   S46A (F1)
   S46B (F1)
   S46C (F1)
   S46D (F1)
   S47 (F1)
   S48 (F1)
   S49 (F1)
   S50 (F1)
   S51 (F1)
   S52 (F1)
   S53 (F1)
   S54 (F1)
   S55A (F1)
   S55B (F1)
   S55C (F1)
   S55D (F1)
   S56 (F1)
   S57 (F1)
   S58 (F1)
   S59A (F2)
   S59B (F1)
   S59C (F2)
   S59D (F2)
   S59E (F2)
   S59F (F2)
   S59G (F2)
   S60A (F1)
   S60B (F1)
   S60C (F1)
   S60D (F1)
   S60E (F1)
   S60F (F1)
   S60G (F1)
   S60H (F1)
   S60I (F1)
   S60J (F1)
   S60K (F1)
   S60L (F1)
   S60M (F1)
   S60N (F1)
   S60O (F1)
   S61A (F1)
   S61B (F1)
   S61C (F1)
   S61D (F1)
   S61E (F1)
   S61F (F1)
   S62A (F1)
   S62B (F1)
   S62C (F1)
   S62D (F1)
   S62E (F1)
   S62F (F1)
   S62G (F1)
   S62H (F1)
   S62I (F1)
   S62J (F1)
   S62K (F1)
   S62L (F1)
   S62M (F1)
   S62N (F1)
   S62O (F1)
   S62P (F1)
   S62Q (F1)
   S62R (F1)
   S63 (F1)
   S64 (F1)
   S65 (F1)
   S66 (F1)
   S67 (F1)
   S68 (F1)
   PA1 (F1)
   PA2 (F3)
   PA3 (F1)
   PA4 (F1)
   PA5_1 (F1)
   PA5_2 (F1)
   PA5_3 (F1)
   PA5_4 (F1)
   PA5_5 (F1)
   PA5_6 (F1)
   PA5_7 (F1)
   PA6_1 (F1)
   PA6_2 (F1)
   PA6_3 (F1)
   PA6_4 (F1)
   PA6_5 (F1)
   PA7_1 (F1)
   PA7_2 (F1)
   PA7_3 (F1)
   PA7_4 (F1)
   PA7_5 (F1)
   PA7_6 (F1)
   PA7_7 (F1)
   PA7_8 (F1)
   PA8B (F1)
   PA9 (F1)
   PA10 (F1)
   PA11 (F1)
   PA12 (F2)
   PA13 (F1)
   PA14 (F1)
   PA15 (F1)
   PA16 (F1)
   PA17 (F1)
   PA18 (F1)
   PA19 (F1)
   PA20 (F1)
   PA21 (F1)
   PA22 (F2)
   PA23 (F1)
   PA24 (F1)
   PA25 (F1)
   PA26 (F1)
   PA27A (F1)
   PA27B (F1)
   PA27C (F1)
   PA27D (F1)
   PA27E (F1)
   PA28A (F1)
   PA28B (F1)
   PA28C (F1)
   PA28D (F1)
   PA28E (F1)
   PA28F (F1)
   PA28G (F1)
   PA28H (F1)
   PA28I (F1)
   PA28J (F1)
   PA30 (F2)
   PA31 (F1)
   PA32 (F1)
   PA33 (F1)
   PA34 (F1)
   PA35 (F1)
   PA36 (F1)
   PA37 (F1)
   PA38 (F1)
   PA39 (F3)
   PA40 (F2)
   PA41_1 (F1)
   PA41_2 (F1)
   PA41_3 (F1)
   PA41_4 (F1)
   PA41_5 (F1)
   PA41_6 (F1)
   PA41_7 (F1)
   PA41_8 (F1)
   PA41_9 (F1)
   PA41_10 (F1)
   PA41_11 (F1)
   PA41_12 (F1)
   PA41_13 (F1)
   PA41_14 (F1)
   PA41_15 (F1)
   PA41_16 (F1)
   PA41_17 (F1)
   PA41_18 (F1)
   PA41_19 (F1)
   PA42 (F1)
   PA43 (F1)
   PA44 (F1)
   PA46_1 (F1)
   PA46_2 (F1)
   PA46_3 (F1)
   PA46_4 (F1)
   PA46_5 (F1)
   PA46_6 (F1)
   PA46_7 (F1)
   PA46_8 (F1)
   PA46_9 (F1)
   PA46_10 (F1)
   PA46_11 (F1)
   PA46_12 (F1)
   PA46_13 (F1)
   PA46_14 (F1)
   PA46_15 (F1)
   PA46_16 (F1)
   PA46_17 (F1)
   PA46_18 (F1)
   PA46_19 (F1)
   PA47 (F1)
   PA48 (F1)
   PA49 (F1)
   PA51_1 (F1)
   PA51_2 (F1)
   PA51_3 (F1)
   PA51_4 (F1)
   PA51_5 (F1)
   PA51_6 (F1)
   PA51_7 (F1)
   PA51_8 (F1)
   PA51_9 (F1)
   PA51_10 (F1)
   PA51_11 (F1)
   PA51_12 (F1)
   PA51_13 (F1)
   PA51_14 (F1)
   PA51_15 (F1)
   PA51_16 (F1)
   PA51_17 (F1)
   PA51_18 (F1)
   PA51_19 (F1)
   PA52 (F1)
   PA53 (F1)
   PA54 (F1)
   PA55 (F4)
   PA56 (F1)
   PA57A (F1)
   PA57B (F1)
   PA57C (F1)
   PA57D (F1)
   PA57E (F1)
   PA57F (F1)
   PA58 (F1)
   PA59 (F1)
   PA60 (F1)
   PA61 (F2)
   PA62 (F2)
   PA63 (F1)
   PA64 (F1)
   PB2 (F1)
   PB3 (F1)
   PB4_1 (F1)
   PB4_2 (F1)
   PB4_3 (F1)
   PB4_4 (F1)
   PB4_5 (F1)
   PB4_6 (F1)
   PB4_7 (F1)
   PB5_1 (F1)
   PB5_2 (F1)
   PB5_3 (F1)
   PB5_4 (F1)
   PB5_5 (F1)
   PB6_1 (F1)
   PB6_2 (F1)
   PB6_3 (F1)
   PB6_4 (F1)
   PB6_5 (F1)
   PB6_6 (F1)
   PB6_7 (F1)
   PB6_8 (F1)
   PB7 (F2)
   PB8 (F2)
   PB9 (F1)
   PB10 (F1)
   PB11 (F1)
   PB12 (F1)
   PB13 (F1)
   PB14 (F1)
   PB15 (F1)
   PB16 (F1)
   PB17 (F1)
   PB18 (F2)
   PB19 (F1)
   PB20 (F1)
   PB21 (F1)
   PB22 (F2)
   PC1 (F2)
   PC2 (F1)
   PC3 (F1)
   PC4 (F3)
   PC5 (F1)
   PC6B (F1)
   PC7 (F1)
   PC8 (F3)
   PC9 (F1)
   PC10 (F1)
   PC11 (F1)
   PC12 (F1)
   PC13 (F1)
   PC14 (F1)
   PC15 (F1)
   PC16 (F1)
   PC17 (F2)
   PC18 (F1)
   PC19A_P (F2)
   PC19B_O (F2)
   PC20 (F2)
   PC21_1 (F1)
   PC21_2 (F1)
   PC21_3 (F1)
   PC21_4 (F1)
   PC21_5 (F1)
   PC21_6 (F1)
   PC21_7 (F1)
   PC22 (F1)
   PC23 (F2)
   PC24 (F1)
   PC25 (F1)
   PC26 (F1)
   PC27 (F1)
   PC28 (F1)
   PC29A (F1)
   PC29B (F1)
   PC29C (F1)
   PC30 (F1)
   PC31 (F1)
   PC32 (F1)
   PC33 (F1)
   PC34A (F1)
   PC34B (F1)
   PC34C (F1)
   PC34D (F1)
   PC34E (F1)
   PC35 (F1)
   PC36_0 (F1)
   PC36_1 (F1)
   PC36_2 (F1)
   PC36_3 (F1)
   PC36_4 (F1)
   PC36_5 (F1)
   PC36_6 (F1)
   PC36_7 (F1)
   PC36_8 (F1)
   PC36_9 (F1)
   PC36_10 (F1)
   PC36_11 (F1)
   PC36_12 (F1)
   PC36_13 (F1)
   PC36_14 (F1)
   PC36_15 (F1)
   PC36_16 (F1)
   PC36_17 (F1)
   PC36_18 (F1)
   PC36_19 (F1)
   PC37 (F1)
   PC38 (F1)
   PC39 (F1)
   PC40 (F1)
   PC41 (F1)
   PC42A (F1)
   PC42B (F1)
   PC42C (F1)
   PC42D (F1)
   PC42E (F1)
   PC43AA (F1)
   PC43AB (F1)
   PC43AC (F1)
   PC43AD (F1)
   PC43BA (F1)
   PC43BB (F1)
   PC44A (F1)
   PC44B (F1)
   PC44C (F1)
   PC44D (F1)
   PC45 (F1)
   PC46 (F1)
   PC47 (F1)
   PC48 (F2)
   PC49A_1 (F1)
   PC49A_2 (F1)
   PC49A_3 (F1)
   PC49B_1 (F1)
   PC49B_2 (F1)
   PC49B_3 (F1)
   PC49C_1 (F1)
   PC49C_2 (F1)
   PC49C_3 (F1)
   PC49D_1 (F1)
   PC49D_2 (F1)
   PC49D_3 (F1)
   PC49E_1 (F1)
   PC49E_2 (F1)
   PC49E_3 (F1)
   PC49F_1 (F1)
   PC49F_2 (F1)
   PC49F_3 (F1)
   PC50 (F1)
   PC51 (F1)
   PC53 (F1)
   PC54 (F1)
   PC55 (F1)
   PC58 (F1)
   PC59 (F2)
   PC60_1 (F1)
   PC60_2 (F1)
   PC60_3 (F1)
   PC60_4 (F1)
   PC60_5 (F1)
   PC60_6 (F1)
   PC60_7 (F1)
   PC60_8 (F1)
   PC60_9 (F1)
   PC60_10 (F1)
   PC60_11 (F1)
   PC60_12 (F1)
   PC60_13 (F1)
   PC60_14 (F1)
   PC60_15 (F1)
   PC60_16 (F1)
   PC60_17 (F1)
   PC60_18 (F1)
   PC61A (F1)
   PC61B (F1)
   PC61C (F1)
   PC61D (F1)
   PC62_1 (F1)
   PC62_2 (F1)
   PC62_4 (F1)
   PC62_5 (F1)
   PC62_8 (F1)
   PC62_10 (F1)
   PC62_11 (F1)
   PC63 (F1)
   PC64 (F1)
   PC65_M (F2)
   PC65_Y (F2)
   PC66_M (F2)
   PC66_Y (F2)
   PC68_M (F2)
   PC68_Y (F2)
   PC69 (F1)
   PD2 (F1)
   PD3 (F1)
   PD4A (F1)
   PD4B (F1)
   PD4C (F1)
   PD4D (F1)
   PD4E (F1)
   PD4F (F1)
   PD5 (F1)
   PD5A (F1)
   AH_PVT (F3)
   AH_RAW (F2)
  .

* Create SPSS system file.

*SAVE OUTFILE="spss-filename.sav".
