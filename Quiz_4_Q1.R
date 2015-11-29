> Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
> download.file(Url, "Quiz4Q1.csv")
trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
Content type 'text/csv' length 4246554 bytes (4.0 MB)
downloaded 4.0 MB

> Q1Data <- read.csv("Quiz4Q1.csv")
> names(Q1Data)
  [1] "RT"       "SERIALNO" "DIVISION" "PUMA"     "REGION"   "ST"      
  [7] "ADJUST"   "WGTP"     "NP"       "TYPE"     "ACR"      "AGS"     
 [13] "BDS"      "BLD"      "BUS"      "CONP"     "ELEP"     "FS"      
 [19] "FULP"     "GASP"     "HFL"      "INSP"     "KIT"      "MHP"     
 [25] "MRGI"     "MRGP"     "MRGT"     "MRGX"     "PLM"      "RMS"     
 [31] "RNTM"     "RNTP"     "SMP"      "TEL"      "TEN"      "VACS"    
 [37] "VAL"      "VEH"      "WATP"     "YBL"      "FES"      "FINCP"   
 [43] "FPARC"    "GRNTP"    "GRPIP"    "HHL"      "HHT"      "HINCP"   
 [49] "HUGCL"    "HUPAC"    "HUPAOC"   "HUPARC"   "LNGI"     "MV"      
 [55] "NOC"      "NPF"      "NPP"      "NR"       "NRC"      "OCPIP"   
 [61] "PARTNER"  "PSF"      "R18"      "R60"      "R65"      "RESMODE" 
 [67] "SMOCP"    "SMX"      "SRNT"     "SVAL"     "TAXP"     "WIF"     
 [73] "WKEXREL"  "WORKSTAT" "FACRP"    "FAGSP"    "FBDSP"    "FBLDP"   
 [79] "FBUSP"    "FCONP"    "FELEP"    "FFSP"     "FFULP"    "FGASP"   
 [85] "FHFLP"    "FINSP"    "FKITP"    "FMHP"     "FMRGIP"   "FMRGP"   
 [91] "FMRGTP"   "FMRGXP"   "FMVYP"    "FPLMP"    "FRMSP"    "FRNTMP"  
 [97] "FRNTP"    "FSMP"     "FSMXHP"   "FSMXSP"   "FTAXP"    "FTELP"   
[103] "FTENP"    "FVACSP"   "FVALP"    "FVEHP"    "FWATP"    "FYBLP"   
[109] "wgtp1"    "wgtp2"    "wgtp3"    "wgtp4"    "wgtp5"    "wgtp6"   
[115] "wgtp7"    "wgtp8"    "wgtp9"    "wgtp10"   "wgtp11"   "wgtp12"  
[121] "wgtp13"   "wgtp14"   "wgtp15"   "wgtp16"   "wgtp17"   "wgtp18"  
[127] "wgtp19"   "wgtp20"   "wgtp21"   "wgtp22"   "wgtp23"   "wgtp24"  
[133] "wgtp25"   "wgtp26"   "wgtp27"   "wgtp28"   "wgtp29"   "wgtp30"  
[139] "wgtp31"   "wgtp32"   "wgtp33"   "wgtp34"   "wgtp35"   "wgtp36"  
[145] "wgtp37"   "wgtp38"   "wgtp39"   "wgtp40"   "wgtp41"   "wgtp42"  
[151] "wgtp43"   "wgtp44"   "wgtp45"   "wgtp46"   "wgtp47"   "wgtp48"  
[157] "wgtp49"   "wgtp50"   "wgtp51"   "wgtp52"   "wgtp53"   "wgtp54"  
[163] "wgtp55"   "wgtp56"   "wgtp57"   "wgtp58"   "wgtp59"   "wgtp60"  
[169] "wgtp61"   "wgtp62"   "wgtp63"   "wgtp64"   "wgtp65"   "wgtp66"  
[175] "wgtp67"   "wgtp68"   "wgtp69"   "wgtp70"   "wgtp71"   "wgtp72"  
[181] "wgtp73"   "wgtp74"   "wgtp75"   "wgtp76"   "wgtp77"   "wgtp78"  
[187] "wgtp79"   "wgtp80"  
> splitNames <- strsplit(names(Q1Data),"wgtp")
> splitNames[[123]]
[1] ""   "15"
> names(Q1Data)[[123]]
[1] "wgtp15"