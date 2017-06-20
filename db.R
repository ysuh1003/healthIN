#### making CV prediction model focusing on life style modification 
#### baseline characteritics 

getwd()
### imac setwd 
setwd("~/Desktop/healthIN/healthIN_predictionmodel")
### macbook setwd 
setwd("/Users/ysuh13/Desktop/healthIN/healthIN_predictionmodel/healthIN_CVmac13")
ls()
rm(list=ls(pattern=""))

#### Read JK data 
JK02 <-fread("/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2002.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8")
JK03 <-fread("/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2003.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8")

### read and select GJ data then remove duplicate(select only GJ03)
GJ02 <-fread("/Users/ysuh/Data/HSC_DB/GJ/nhis_heals_gj_2002.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  .[,c(2, 4 , 5:10, 14:20, 23, 24, 27:32)] %>% left_join(., JK02 %>% select(PERSON_ID, SEX, AGE), by=c("PERSON_ID"="PERSON_ID"))
GJ03 <-fread("/Users/ysuh/Data/HSC_DB/GJ/nhis_heals_gj_2003.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8")%>%
  .[,c(2, 4 , 5:10, 14:20, 23, 24, 27:32)] %>% left_join(., JK03 %>% select(PERSON_ID, SEX, AGE), by=c("PERSON_ID"="PERSON_ID"))
GJD <- inner_join(GJ02 %>% select(PERSON_ID), GJ03 %>% select(PERSON_ID), by=c("PERSON_ID"="PERSON_ID"))
GJ02 <- anti_join(GJ02, GJD, by=c("PERSON_ID"="PERSON_ID"))
GJ <- rbind(GJ02, GJ03)

### merging information of statin
GJ <- left_join(GJ, fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/B_statin.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8"), by=c("PERSON_ID"="PERSON_ID"))
GJ$statin[is.na(GJ$statin)] <- 0
GJ$statin_date[is.na(GJ$statin_date)] <- 20031231
GJ$statin[GJ$statin_date>GJ$HME_DT] <- 0 

#### female == 0 
GJ$SEX[GJ$SEX==2] <- 0

#### categoralization and re-cord   
##### length(GJ$PERSON_ID[is.na(GJ$FMLY_APOP_PATIEN_YN)|is.na(GJ$FMLY_HDISE_PATIEN_YN)]) == 56862
GJ$BP_HIGH_1 <-cut(GJ$BP_HIGH, c(0,120,140,160,300), right=FALSE, labels=c("~120", "120~139", "140~159", "160~"))
GJ$BP_LWST_1 <-cut(GJ$BP_LWST, c(0,70,80,90,300), right=FALSE, labels=c("~70", "70~79", "80~89", "90~"))
GJ$TOT_CHOLE_1 <-cut(GJ$TOT_CHOLE, c(0,160,200,240,280,1000), right=FALSE, labels=c("~159", "160~199", "200~239", "240~279", "280~"))
GJ$smoking <- rep(NA, times=length(GJ$PERSON_ID))
GJ$smoking[GJ$SMK_STAT_TYPE_RSPS_CD==3] <- 2
GJ$smoking[GJ$SMK_STAT_TYPE_RSPS_CD==2] <- 1     
GJ$smoking[GJ$SMK_STAT_TYPE_RSPS_CD==1] <- 0  
GJ$smoking<-as.factor(GJ$smoking)
GJ$exercise <- rep(NA, times=length(GJ$PERSON_ID))
GJ$exercise[GJ$EXERCI_FREQ_RSPS_CD==1] <- 1
GJ$exercise[GJ$EXERCI_FREQ_RSPS_CD==2] <- 2 
GJ$exercise[GJ$EXERCI_FREQ_RSPS_CD==3] <- 3  
GJ$exercise[GJ$EXERCI_FREQ_RSPS_CD==4] <- 4  
GJ$exercise[GJ$EXERCI_FREQ_RSPS_CD==5] <- 5 
GJ$exercise <-as.factor(GJ$exercise)
GJ$familial <- rep(NA, times=(length(GJ$PERSON_ID))) 
GJ$familial[GJ$FMLY_APOP_PATIEN_YN==2] <- 1
GJ$familial[GJ$FMLY_HDISE_PATIEN_YN==2] <- 1
GJ$familial[GJ$FMLY_APOP_PATIEN_YN==1] <- 0
GJ$familial[GJ$FMLY_HDISE_PATIEN_YN==1] <- 0
GJ$familial <- as.factor(GJ$familial)

#### drinking hazard
GJ$DRK_HA <- rep (NA, times=length(GJ$PERSON_ID))
GJ$DRK_HA[GJ$DRNK_HABIT_RSPS_CD== 1] <- 0
GJ$DRK_HA[GJ$DRNK_HABIT_RSPS_CD== 2] <- 1
GJ$DRK_HA[GJ$DRNK_HABIT_RSPS_CD== 3] <- 1
GJ$DRK_HA[GJ$DRNK_HABIT_RSPS_CD== 3 & GJ$SEX==0 & GJ$TM1_DRKQTY_RSPS_CD>=3] <- 2
GJ$DRK_HA[GJ$DRNK_HABIT_RSPS_CD== 4] <- 1
GJ$DRK_HA[GJ$DRNK_HABIT_RSPS_CD== 4 & GJ$SEX==1 & GJ$TM1_DRKQTY_RSPS_CD==3] <- 2
GJ$DRK_HA[GJ$DRNK_HABIT_RSPS_CD== 4 & GJ$SEX==1 & GJ$TM1_DRKQTY_RSPS_CD==4] <- 3
GJ$DRK_HA[GJ$DRNK_HABIT_RSPS_CD== 4 & GJ$SEX==0 & GJ$TM1_DRKQTY_RSPS_CD==2] <- 2
GJ$DRK_HA[GJ$DRNK_HABIT_RSPS_CD== 4 & GJ$SEX==0 & GJ$TM1_DRKQTY_RSPS_CD>=3] <- 3
GJ$DRK_HA[GJ$DRNK_HABIT_RSPS_CD== 5] <- 3
GJ$DRK_HA[GJ$DRNK_HABIT_RSPS_CD== 5 && GJ$TM1_DRKQTY_RSPS_CD==1] <- 2
GJ$DRK_HA <- as.factor(GJ$DRK_HA)

### merging information of antidiabetic medication 
GJ <- left_join(GJ, fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/anti_DM.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8"), by=c("PERSON_ID"="PERSON_ID"))
GJ$anti_DM[is.na(GJ$anti_DM)] <- 0 
GJ$anti_DM_date[is.na(GJ$anti_DM_date)] <- 20031231
GJ$anti_DM[GJ$anti_DM==1&GJ$anti_DM_date>GJ$HME_DT] <- 0
GJ$anti_DM <-as.factor(GJ$anti_DM)

### denition of DM is during DM medication before GJ + answer that i have DM + glucose AC >126
GJ <- left_join(GJ, fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/DM.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8"), by=c("PERSON_ID"="PERSON_ID"))
GJ$DM[is.na(GJ$DM)] <- 0
GJ$DM_date[is.na(GJ$DM_date)] <- 20031231
GJ$DM[GJ$DM_date>GJ$HME_DT&GJ$DM==1] <-0
GJ$DM[GJ$HCHK_PMH_CD1==7] <- 1
GJ$DM[GJ$HCHK_PMH_CD2==7] <- 1
GJ$DM[GJ$HCHK_PMH_CD3==7] <- 1
GJ$DM[GJ$BLDS>=126] <- 1
GJ$DM[GJ$anti_DM==1] <- 1
GJ$DM <- as.factor(GJ$DM)

### anti_HTN medication 
GJ <- left_join(GJ, fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/anti_HTN.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8"), by=c("PERSON_ID"="PERSON_ID"))
GJ$anti_HTN[is.na(GJ$anti_HTN)] <- 0 
GJ$anti_HTN_date[is.na(GJ$anti_HTN_date)] <- 20031231 
GJ$anti_HTN[GJ$anti_HTN==1&GJ$anti_HTN_date>GJ$HME_DT] <-0
GJ$anti_HTN <- as.factor(GJ$anti_HTN)
GJ$anti_HTN1 <- rep(0, times=(length(GJ$PERSON_ID)))
GJ$anti_HTN1[GJ$anti_HTN==0] <- 1
GJ$anti_HTN1 <- as.factor(GJ$anti_HTN1)

### denition of HTN is during HTN medication before GJ + answer that i have HTN
GJ <- left_join(GJ, fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/HTN.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8"), by=c("PERSON_ID"="PERSON_ID"))
GJ$HTN[is.na(GJ$HTN)] <- 0
GJ$HTN_date[is.na(GJ$HTN_date)] <- 20031231
GJ$HTN[GJ$HTN_date>GJ$HME_DT&GJ$HTN==1] <-0
GJ$HTN[GJ$HCHK_PMH_CD1==4] <- 1
GJ$HTN[GJ$HCHK_PMH_CD2==4] <- 1
GJ$HTN[GJ$HCHK_PMH_CD3==4] <- 1
GJ$HTN[GJ$BP_HIGH>140] <- 1
GJ$HTN[GJ$BP_LWST>90] <- 1
GJ$HTN[GJ$anti_HTN==1] <- 1
GJ$HTN <- as.factor(GJ$HTN)

##### data cleaning 
#### remove outliers
GJc0<-GJ %>% subset(., BMI>13.0 & BMI<45) %>% subset (., BP_HIGH>70 & BP_HIGH<280) %>%
  subset(., BLDS>40 & BLDS<700) %>% subset(., BP_HIGH>BP_LWST) %>% subset(., TOT_CHOLE>30 & TOT_CHOLE<700)

### remove patients with AF 
GJc1 <- anti_join(GJc0, fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/B_AF.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8"), by=c("PERSON_ID"="PERSON_ID"))


### remove persons who have cardiac dz and stroke 
GJc1$S_CHD <-rep(0, times=length(GJc1$PERSON_ID))
GJc1$S_CHD[GJc1$HCHK_PMH_CD1==5] <- 1
GJc1$S_CHD[GJc1$HCHK_PMH_CD2==5] <- 1
GJc1$S_CHD[GJc1$HCHK_PMH_CD3==5] <- 1
GJc1$S_stroke <-rep(0, times=length(GJc1$PERSON_ID))
GJc1$S_stroke[GJc1$HCHK_PMH_CD1==6] <- 1
GJc1$S_stroke[GJc1$HCHK_PMH_CD2==6] <- 1
GJc1$S_stroke[GJc1$HCHK_PMH_CD3==6] <- 1
GJc1 <- left_join(GJc1, fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/Old_MI.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8"), by=c("PERSON_ID"="PERSON_ID")) 
GJc1$oldMI[is.na(GJc1$oldMI)] <- 0 
GJc1$oldMI[GJc1$oldMI==1&GJc1$oldMIdate>GJc1$HME_DT] <- 0
GJc1 <- left_join(GJc1, fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/Old_stroke.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8"), by=c("PERSON_ID"="PERSON_ID")) 
GJc1$Old_stroke[is.na(GJc1$Old_stroke)] <- 0 
GJc1$Old_stroke[GJc1$Old_stroke==1&GJc1$oldstrokedate>GJc1$HME_DT] <- 0

GJc1 <- GJc1 %>% subset(Old_stroke==0&oldMI==0)
GJc2 <- GJc1 %>% subset(S_CHD==0&S_stroke==0)

#### merging outcomes = composite of MI and stroke
GJc2 <- left_join(GJc2, fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/outcomes.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8"), by=c("PERSON_ID"="PERSON_ID"))
GJc2$HRD[is.na(GJc2$HRD)] <- 0 
GJc2$SRD[is.na(GJc2$SRD)] <- 0 
GJc2$NCD[is.na(GJc2$NCD)] <- 0 
GJc2$HRD_date[is.na(GJc2$HRD_date)] <- 20131231
GJc2$SRD_date[is.na(GJc2$SRD_date)] <- 20131231
GJc2$NCD_date[is.na(GJc2$NCD_date)] <- 20131231
GJc2$ischemic[is.na(GJc2$ischemic)] <- 0
GJc2$ischemic_date[is.na(GJc2$ischemic_date)] <- 20131231
GJc2$hemorrhagic[is.na(GJc2$hemorrhagic)] <- 0 
GJc2$hemorrhagic_date[is.na(GJc2$hemorrhagic_date)] <- 020131231
GJc2$unspecific[is.na(GJc2$unspecific)] <- 0 
GJc2$unspecific_date[is.na(GJc2$unspecific_date)] <- 20131231
GJc2$stroke[is.na(GJc2$stroke)] <- 0 
GJc2$stroke_date[is.na(GJc2$stroke_date)] <- 20131231
GJc2$AMI[is.na(GJc2$AMI)] <- 0 
GJc2$AMI_date[is.na(GJc2$AMI_date)] <- 20131231
GJc2$ASCVD[is.na(GJc2$ASCVD)] <- 0 
GJc2$ASCVD_date[is.na(GJc2$ASCVD_date)] <- 20131231
GJc2$lastFU_date[is.na(GJc2$lastFU_date)] <- 20131231
GJc2$death_date[is.na(GJc2$death_date)] <- 20131231


#### calculation of FU duration
GJc2$FUD<- as.numeric(difftime(as.Date(paste(substr(GJc2$lastFU_date, 1, 4),"-",substr(GJc2$lastFU_date, 5, 6),"-",substr(GJc2$lastFU_date, 7, 8), sep="")), 
                             as.Date(paste(substr(GJc2$HME_DT, 1, 4),"-",substr(GJc2$HME_DT, 5, 6),"-",substr(GJc2$HME_DT, 7, 8), sep="")), units="days"))
GJc2$FUDd<- as.numeric(difftime(as.Date(paste(substr(GJc2$death_date, 1, 4),"-",substr(GJc2$death_date, 5, 6),"-",substr(GJc2$death_date, 7, 8), sep="")), 
                             as.Date(paste(substr(GJc2$HME_DT, 1, 4),"-",substr(GJc2$HME_DT, 5, 6),"-",substr(GJc2$HME_DT, 7, 8), sep="")), units="days"))


#### length(GJc2$PERSON_ID[GJc2$FUD<=0]) = 1
length(GJc2$PERSON_ID[GJc2$FUD<=0])
GJc2[GJc2$FUD<=0,]

#### length(GJc2$PERSON_ID[GJc2$FUD>=4380]) == 3
length(GJc2$PERSON_ID[GJc2$FUD>=4380])
GJc2[GJc2$FUD>=4380,]

#### length(GJc2$PERSON_ID[GJc2$HME_DT<20020101]) == 2
length(GJc2$PERSON_ID[GJc2$HME_DT<20020101])

#### length(GJc2$PERSON_ID[GJc2$FUD<=90]) == 478
length(GJc2$PERSON_ID[GJc2$FUD<=90])

GJc3 <- GJc2 %>% subset(FUD>90&HME_DT>=20020101)


names(GJc3)

DB <- GJc3 %>% select(PERSON_ID, FUD, FUDd, ASCVD, NCD, HME_DT, ASCVD_date, death_date,
                    AGE, SEX, BMI, DM, anti_DM, HTN, anti_HTN, anti_HTN1, BP_HIGH, BP_HIGH_1, BP_LWST, BP_LWST_1, 
                    statin, TOT_CHOLE, TOT_CHOLE_1, BLDS, HMG, GAMMA_GTP, OLIG_PROTE_CD,
                    SGOT_AST, SGPT_ALT, familial, smoking, DRK_HA, exercise) %>% data.frame(.)

write.table(DB, "DB.csv", row.names=FALSE, col.names=TRUE, sep=",")
DB <- fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/DB.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8")
DB$DM <- as.numeric(DB$DM)
DB$anti_HTN <- as.numeric(DB$anti_HTN)
DB$anti_HTN1 <- as.numeric(DB$anti_HTN1)







