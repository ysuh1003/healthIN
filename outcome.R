#### outcome evaluation 
### all coronary revascularzation 
### myocardial infarction (code + admission)
AMI02 <-
  fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2002.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(SICK_SYM, 1,3)=="I21" | substr(SICK_SYM, 1,3)=="I22" | substr(SICK_SYM, 1,3)=="I23" | substr(SICK_SYM, 1,3)=="I46") %>%
  select(KEY_SEQ, RECU_FR_DT) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2002.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
               filter(FORM_CD=="2") %>% select(PERSON_ID, KEY_SEQ), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  group_by(PERSON_ID) %>% summarise(AMI_date=min(RECU_FR_DT))
AMI03 <-
  fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2003.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(SICK_SYM, 1,3)=="I21" | substr(SICK_SYM, 1,3)=="I22" | substr(SICK_SYM, 1,3)=="I23" | substr(SICK_SYM, 1,3)=="I46") %>%
  select(KEY_SEQ, RECU_FR_DT) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2003.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
               filter(FORM_CD=="2") %>% select(PERSON_ID, KEY_SEQ), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  group_by(PERSON_ID) %>% summarise(AMI_date=min(RECU_FR_DT))
AMI04 <-
  fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2004.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(SICK_SYM, 1,3)=="I21" | substr(SICK_SYM, 1,3)=="I22" | substr(SICK_SYM, 1,3)=="I23" | substr(SICK_SYM, 1,3)=="I46") %>%
  select(KEY_SEQ, RECU_FR_DT) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2004.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
               filter(FORM_CD=="2") %>% select(PERSON_ID, KEY_SEQ), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  group_by(PERSON_ID) %>% summarise(AMI_date=min(RECU_FR_DT))
AMI05 <-
  fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2005.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(SICK_SYM, 1,3)=="I21" | substr(SICK_SYM, 1,3)=="I22" | substr(SICK_SYM, 1,3)=="I23" | substr(SICK_SYM, 1,3)=="I46") %>%
  select(KEY_SEQ, RECU_FR_DT) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2005.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
               filter(FORM_CD=="2") %>% select(PERSON_ID, KEY_SEQ), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  group_by(PERSON_ID) %>% summarise(AMI_date=min(RECU_FR_DT))
AMI06 <-
  fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2006.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(SICK_SYM, 1,3)=="I21" | substr(SICK_SYM, 1,3)=="I22" | substr(SICK_SYM, 1,3)=="I23" | substr(SICK_SYM, 1,3)=="I46") %>%
  select(KEY_SEQ, RECU_FR_DT) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2006.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
               filter(FORM_CD=="2") %>% select(PERSON_ID, KEY_SEQ), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  group_by(PERSON_ID) %>% summarise(AMI_date=min(RECU_FR_DT))
AMI07 <-
  fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2007.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(SICK_SYM, 1,3)=="I21" | substr(SICK_SYM, 1,3)=="I22" | substr(SICK_SYM, 1,3)=="I23" | substr(SICK_SYM, 1,3)=="I46") %>%
  select(KEY_SEQ, RECU_FR_DT) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2007.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
               filter(FORM_CD=="2") %>% select(PERSON_ID, KEY_SEQ), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  group_by(PERSON_ID) %>% summarise(AMI_date=min(RECU_FR_DT))
AMI08 <-
  fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2008.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(SICK_SYM, 1,3)=="I21" | substr(SICK_SYM, 1,3)=="I22" | substr(SICK_SYM, 1,3)=="I23" | substr(SICK_SYM, 1,3)=="I46") %>%
  select(KEY_SEQ, RECU_FR_DT) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2008.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
               filter(FORM_CD=="2") %>% select(PERSON_ID, KEY_SEQ), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  group_by(PERSON_ID) %>% summarise(AMI_date=min(RECU_FR_DT))
AMI09 <-
  fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2009.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(SICK_SYM, 1,3)=="I21" | substr(SICK_SYM, 1,3)=="I22" | substr(SICK_SYM, 1,3)=="I23" | substr(SICK_SYM, 1,3)=="I46") %>%
  select(KEY_SEQ, RECU_FR_DT) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2009.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
               filter(FORM_CD=="2") %>% select(PERSON_ID, KEY_SEQ), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  group_by(PERSON_ID) %>% summarise(AMI_date=min(RECU_FR_DT))
AMI10 <-
  fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2010.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(SICK_SYM, 1,3)=="I21" | substr(SICK_SYM, 1,3)=="I22" | substr(SICK_SYM, 1,3)=="I23" | substr(SICK_SYM, 1,3)=="I46") %>%
  select(KEY_SEQ, RECU_FR_DT) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2010.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
               filter(FORM_CD=="2") %>% select(PERSON_ID, KEY_SEQ), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  group_by(PERSON_ID) %>% summarise(AMI_date=min(RECU_FR_DT))
AMI11 <-
  fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2011.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(SICK_SYM, 1,3)=="I21" | substr(SICK_SYM, 1,3)=="I22" | substr(SICK_SYM, 1,3)=="I23" | substr(SICK_SYM, 1,3)=="I46") %>%
  select(KEY_SEQ, RECU_FR_DT) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2011.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
               filter(FORM_CD=="2") %>% select(PERSON_ID, KEY_SEQ), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  group_by(PERSON_ID) %>% summarise(AMI_date=min(RECU_FR_DT))
AMI12 <-
  fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2012.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(SICK_SYM, 1,3)=="I21" | substr(SICK_SYM, 1,3)=="I22" | substr(SICK_SYM, 1,3)=="I23" | substr(SICK_SYM, 1,3)=="I46") %>%
  select(KEY_SEQ, RECU_FR_DT) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2012.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
               filter(FORM_CD=="2") %>% select(PERSON_ID, KEY_SEQ), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  group_by(PERSON_ID) %>% summarise(AMI_date=min(RECU_FR_DT))
AMI13 <-
  fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2013.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(SICK_SYM, 1,3)=="I21" | substr(SICK_SYM, 1,3)=="I22" | substr(SICK_SYM, 1,3)=="I23" | substr(SICK_SYM, 1,3)=="I46") %>%
  select(KEY_SEQ, RECU_FR_DT) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2013.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
               filter(FORM_CD=="2") %>% select(PERSON_ID, KEY_SEQ), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  group_by(PERSON_ID) %>% summarise(AMI_date=min(RECU_FR_DT))

AMI <- rbind(AMI02, AMI03) %>% rbind(., AMI04) %>% rbind(., AMI05) %>% rbind(., AMI06) %>% rbind(., AMI07) %>% rbind(., AMI08) %>%
  rbind(., AMI09) %>% rbind(., AMI10) %>% rbind(., AMI11) %>% rbind(., AMI12) %>% rbind(., AMI13) %>%
  group_by(PERSON_ID) %>% summarise(., AMI=rep(1, times=length(unique(PERSON_ID))), AMI_date=min(AMI_date))

length(AMI$PERSON_ID)==length(unique(AMI$PERSON_ID))
write.table(AMI, "AMI.csv", row.names=FALSE, col.names=TRUE, sep=",")


###### Cardiac death (I20:25) in death certification 
HRD02<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2002.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(DTH_CODE1, 1, 3)=="I20" | substr(DTH_CODE1, 1, 3)=="I21" |
           substr(DTH_CODE1, 1, 3)=="I22"| substr(DTH_CODE1, 1, 3)=="I23" |
           substr(DTH_CODE1, 1, 3)=="I24" | substr(DTH_CODE1, 1, 3)=="I25" |
           substr(DTH_CODE1, 1, 3)=="I46") %>%
  select(PERSON_ID, DTH_MDY)
HRD03<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2003.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(DTH_CODE1, 1, 3)=="I20" | substr(DTH_CODE1, 1, 3)=="I21" |
           substr(DTH_CODE1, 1, 3)=="I22"| substr(DTH_CODE1, 1, 3)=="I23" |
           substr(DTH_CODE1, 1, 3)=="I24" | substr(DTH_CODE1, 1, 3)=="I25"|
           substr(DTH_CODE1, 1, 3)=="I46") %>%
  select(PERSON_ID, DTH_MDY)
HRD04<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2004.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(DTH_CODE1, 1, 3)=="I20" | substr(DTH_CODE1, 1, 3)=="I21" |
           substr(DTH_CODE1, 1, 3)=="I22"| substr(DTH_CODE1, 1, 3)=="I23" |
           substr(DTH_CODE1, 1, 3)=="I24" | substr(DTH_CODE1, 1, 3)=="I25"|
           substr(DTH_CODE1, 1, 3)=="I46") %>%
  select(PERSON_ID, DTH_MDY)
HRD05<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2005.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(DTH_CODE1, 1, 3)=="I20" | substr(DTH_CODE1, 1, 3)=="I21" |
           substr(DTH_CODE1, 1, 3)=="I22"| substr(DTH_CODE1, 1, 3)=="I23" |
           substr(DTH_CODE1, 1, 3)=="I24" | substr(DTH_CODE1, 1, 3)=="I25"|
           substr(DTH_CODE1, 1, 3)=="I46") %>%
  select(PERSON_ID, DTH_MDY)
HRD06<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2006.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(DTH_CODE1, 1, 3)=="I20" | substr(DTH_CODE1, 1, 3)=="I21" |
           substr(DTH_CODE1, 1, 3)=="I22"| substr(DTH_CODE1, 1, 3)=="I23" |
           substr(DTH_CODE1, 1, 3)=="I24" | substr(DTH_CODE1, 1, 3)=="I25"|
           substr(DTH_CODE1, 1, 3)=="I46") %>%
  select(PERSON_ID, DTH_MDY)
HRD07<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2007.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(DTH_CODE1, 1, 3)=="I20" | substr(DTH_CODE1, 1, 3)=="I21" |
           substr(DTH_CODE1, 1, 3)=="I22"| substr(DTH_CODE1, 1, 3)=="I23" |
           substr(DTH_CODE1, 1, 3)=="I24" | substr(DTH_CODE1, 1, 3)=="I25"|
           substr(DTH_CODE1, 1, 3)=="I46") %>%
  select(PERSON_ID, DTH_MDY)
HRD08<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2008.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(DTH_CODE1, 1, 3)=="I20" | substr(DTH_CODE1, 1, 3)=="I21" |
           substr(DTH_CODE1, 1, 3)=="I22"| substr(DTH_CODE1, 1, 3)=="I23" |
           substr(DTH_CODE1, 1, 3)=="I24" | substr(DTH_CODE1, 1, 3)=="I25"|
           substr(DTH_CODE1, 1, 3)=="I46") %>%
  select(PERSON_ID, DTH_MDY)
HRD09<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2009.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(DTH_CODE1, 1, 3)=="I20" | substr(DTH_CODE1, 1, 3)=="I21" |
           substr(DTH_CODE1, 1, 3)=="I22"| substr(DTH_CODE1, 1, 3)=="I23" |
           substr(DTH_CODE1, 1, 3)=="I24" | substr(DTH_CODE1, 1, 3)=="I25"|
           substr(DTH_CODE1, 1, 3)=="I46") %>%
  select(PERSON_ID, DTH_MDY)
HRD10<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2010.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(DTH_CODE1, 1, 3)=="I20" | substr(DTH_CODE1, 1, 3)=="I21" |
           substr(DTH_CODE1, 1, 3)=="I22"| substr(DTH_CODE1, 1, 3)=="I23" |
           substr(DTH_CODE1, 1, 3)=="I24" | substr(DTH_CODE1, 1, 3)=="I25"|
           substr(DTH_CODE1, 1, 3)=="I46") %>%
  select(PERSON_ID, DTH_MDY)
HRD11<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2011.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(DTH_CODE1, 1, 3)=="I20" | substr(DTH_CODE1, 1, 3)=="I21" |
           substr(DTH_CODE1, 1, 3)=="I22"| substr(DTH_CODE1, 1, 3)=="I23" |
           substr(DTH_CODE1, 1, 3)=="I24" | substr(DTH_CODE1, 1, 3)=="I25"|
           substr(DTH_CODE1, 1, 3)=="I46") %>%
  select(PERSON_ID, DTH_MDY)
HRD12<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2012.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(DTH_CODE1, 1, 3)=="I20" | substr(DTH_CODE1, 1, 3)=="I21" |
           substr(DTH_CODE1, 1, 3)=="I22"| substr(DTH_CODE1, 1, 3)=="I23" |
           substr(DTH_CODE1, 1, 3)=="I24" | substr(DTH_CODE1, 1, 3)=="I25"|
           substr(DTH_CODE1, 1, 3)=="I46") %>%
  select(PERSON_ID, DTH_MDY)
HRD13<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2013.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(substr(DTH_CODE1, 1, 3)=="I20" | substr(DTH_CODE1, 1, 3)=="I21" |
           substr(DTH_CODE1, 1, 3)=="I22"| substr(DTH_CODE1, 1, 3)=="I23" |
           substr(DTH_CODE1, 1, 3)=="I24" | substr(DTH_CODE1, 1, 3)=="I25"|
           substr(DTH_CODE1, 1, 3)=="I46") %>%
  select(PERSON_ID, DTH_MDY)

HRD<- rbind(HRD02, HRD03) %>% rbind(., HRD04) %>% rbind(., HRD05) %>% rbind(., HRD06) %>% rbind(., HRD07) %>% rbind(., HRD08) %>%
  rbind(., HRD09) %>% rbind(., HRD10) %>% rbind(., HRD11) %>% rbind(., HRD12) %>% rbind(., HRD13)
colnames(HRD) <- c("PERSON_ID", "HRD_date")
HRD$HRD <- rep(1, times=length(HRD$PERSON_ID))
summary(HRD)
write.table(HRD, "HRD.csv", row.names=FALSE, col.names=TRUE, sep=",")

### stroke related death (death code : I60-66, 69) / SRD
SRD02<-fread("/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2002.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(  substr(DTH_CODE1, 1, 3)=="I60" | substr(DTH_CODE1, 1, 3)=="I61" | substr(DTH_CODE1, 1, 3)=="I62" | substr(DTH_CODE1, 1, 3)=="I63" |
           substr(DTH_CODE1, 1, 3)=="I64" | substr(DTH_CODE1, 1, 3)=="I69") %>%
  select(PERSON_ID, DTH_MDY)
SRD03<-fread("/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2003.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(  substr(DTH_CODE1, 1, 3)=="I60" | substr(DTH_CODE1, 1, 3)=="I61" | substr(DTH_CODE1, 1, 3)=="I62" | substr(DTH_CODE1, 1, 3)=="I63" |
             substr(DTH_CODE1, 1, 3)=="I64" | substr(DTH_CODE1, 1, 3)=="I69") %>%
  select(PERSON_ID, DTH_MDY)
SRD04<-fread("/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2004.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(  substr(DTH_CODE1, 1, 3)=="I60" | substr(DTH_CODE1, 1, 3)=="I61" | substr(DTH_CODE1, 1, 3)=="I62" | substr(DTH_CODE1, 1, 3)=="I63" |
             substr(DTH_CODE1, 1, 3)=="I64" | substr(DTH_CODE1, 1, 3)=="I69") %>%
  select(PERSON_ID, DTH_MDY)
SRD05<-fread("/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2005.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(  substr(DTH_CODE1, 1, 3)=="I60" | substr(DTH_CODE1, 1, 3)=="I61" | substr(DTH_CODE1, 1, 3)=="I62" | substr(DTH_CODE1, 1, 3)=="I63" |
             substr(DTH_CODE1, 1, 3)=="I64" | substr(DTH_CODE1, 1, 3)=="I69") %>%
  select(PERSON_ID, DTH_MDY)
SRD06<-fread("/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2006.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(  substr(DTH_CODE1, 1, 3)=="I60" | substr(DTH_CODE1, 1, 3)=="I61" | substr(DTH_CODE1, 1, 3)=="I62" | substr(DTH_CODE1, 1, 3)=="I63" |
             substr(DTH_CODE1, 1, 3)=="I64" | substr(DTH_CODE1, 1, 3)=="I69") %>%
  select(PERSON_ID, DTH_MDY)
SRD07<-fread("/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2007.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(  substr(DTH_CODE1, 1, 3)=="I60" | substr(DTH_CODE1, 1, 3)=="I61" | substr(DTH_CODE1, 1, 3)=="I62" | substr(DTH_CODE1, 1, 3)=="I63" |
             substr(DTH_CODE1, 1, 3)=="I64" | substr(DTH_CODE1, 1, 3)=="I69") %>%
  select(PERSON_ID, DTH_MDY)
SRD08<-fread("/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2008.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(  substr(DTH_CODE1, 1, 3)=="I60" | substr(DTH_CODE1, 1, 3)=="I61" | substr(DTH_CODE1, 1, 3)=="I62" | substr(DTH_CODE1, 1, 3)=="I63" |
             substr(DTH_CODE1, 1, 3)=="I64" | substr(DTH_CODE1, 1, 3)=="I69") %>%
  select(PERSON_ID, DTH_MDY)
SRD09<-fread("/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2009.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(  substr(DTH_CODE1, 1, 3)=="I60" | substr(DTH_CODE1, 1, 3)=="I61" | substr(DTH_CODE1, 1, 3)=="I62" | substr(DTH_CODE1, 1, 3)=="I63" |
             substr(DTH_CODE1, 1, 3)=="I64" | substr(DTH_CODE1, 1, 3)=="I69") %>%
  select(PERSON_ID, DTH_MDY)
SRD10<-fread("/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2010.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(  substr(DTH_CODE1, 1, 3)=="I60" | substr(DTH_CODE1, 1, 3)=="I61" | substr(DTH_CODE1, 1, 3)=="I62" | substr(DTH_CODE1, 1, 3)=="I63" |
             substr(DTH_CODE1, 1, 3)=="I64" | substr(DTH_CODE1, 1, 3)=="I69") %>%
  select(PERSON_ID, DTH_MDY)
SRD11<-fread("/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2011.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(  substr(DTH_CODE1, 1, 3)=="I60" | substr(DTH_CODE1, 1, 3)=="I61" | substr(DTH_CODE1, 1, 3)=="I62" | substr(DTH_CODE1, 1, 3)=="I63" |
             substr(DTH_CODE1, 1, 3)=="I64" | substr(DTH_CODE1, 1, 3)=="I69") %>%
  select(PERSON_ID, DTH_MDY)
SRD12<-fread("/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2012.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(  substr(DTH_CODE1, 1, 3)=="I60" | substr(DTH_CODE1, 1, 3)=="I61" | substr(DTH_CODE1, 1, 3)=="I62" | substr(DTH_CODE1, 1, 3)=="I63" |
             substr(DTH_CODE1, 1, 3)=="I64" | substr(DTH_CODE1, 1, 3)=="I69") %>%
  select(PERSON_ID, DTH_MDY)
SRD13<-fread("/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2013.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>%
  filter(  substr(DTH_CODE1, 1, 3)=="I60" | substr(DTH_CODE1, 1, 3)=="I61" | substr(DTH_CODE1, 1, 3)=="I62" | substr(DTH_CODE1, 1, 3)=="I63" |
             substr(DTH_CODE1, 1, 3)=="I64" | substr(DTH_CODE1, 1, 3)=="I69") %>%
  select(PERSON_ID, DTH_MDY)

SRD <- rbind(SRD02, SRD03) %>% rbind(., SRD04) %>% rbind(., SRD05) %>% rbind(., SRD06) %>% rbind(., SRD07) %>% rbind(., SRD08) %>%
  rbind(., SRD09) %>% rbind(., SRD10) %>% rbind(., SRD11) %>% rbind(., SRD12) %>% rbind(., SRD13)
colnames(SRD) <- c("PERSON_ID", "SRD_date")
SRD$SRD <- rep(1, times=length(SRD$PERSON_ID))
summary(SRD)
write.table(SRD, "SRD.csv", row.names=FALSE, col.names=TRUE, sep=",")

### non-cardiac/ischemic death 
NCD02<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2002.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% select(PERSON_ID, DTH_MDY, DTH_CODE1) %>% 
  subset(., is.na(DTH_MDY)==FALSE)
NCD03<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2003.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% select(PERSON_ID, DTH_MDY, DTH_CODE1) %>% 
  subset(., is.na(DTH_MDY)==FALSE)
NCD04<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2004.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% select(PERSON_ID, DTH_MDY, DTH_CODE1) %>% 
  subset(., is.na(DTH_MDY)==FALSE)
NCD05<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2005.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% select(PERSON_ID, DTH_MDY, DTH_CODE1) %>% 
  subset(., is.na(DTH_MDY)==FALSE)
NCD06<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2006.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% select(PERSON_ID, DTH_MDY, DTH_CODE1) %>% 
  subset(., is.na(DTH_MDY)==FALSE)
NCD07<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2007.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% select(PERSON_ID, DTH_MDY, DTH_CODE1) %>% 
  subset(., is.na(DTH_MDY)==FALSE)
NCD08<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2008.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% select(PERSON_ID, DTH_MDY, DTH_CODE1) %>% 
  subset(., is.na(DTH_MDY)==FALSE)
NCD09<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2009.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% select(PERSON_ID, DTH_MDY, DTH_CODE1) %>% 
  subset(., is.na(DTH_MDY)==FALSE)
NCD10<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2010.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% select(PERSON_ID, DTH_MDY, DTH_CODE1) %>% 
  subset(., is.na(DTH_MDY)==FALSE)
NCD11<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2011.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% select(PERSON_ID, DTH_MDY, DTH_CODE1) %>% 
  subset(., is.na(DTH_MDY)==FALSE)
NCD12<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2012.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% select(PERSON_ID, DTH_MDY, DTH_CODE1) %>% 
  subset(., is.na(DTH_MDY)==FALSE)
NCD13<-read.table(file="/Users/ysuh/Data/HSC_DB/JK/nhis_heals_jk_2013.txt", 
                  header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% select(PERSON_ID, DTH_MDY, DTH_CODE1) %>% 
  subset(., is.na(DTH_MDY)==FALSE)

NCD <- rbind(NCD02, NCD03) %>% rbind(., NCD04) %>% rbind(., NCD05) %>% rbind(., NCD06) %>% rbind(., NCD07) %>% rbind(., NCD08) %>%
  rbind(., NCD09) %>% rbind(., NCD10) %>% rbind(., NCD11) %>% rbind(., NCD12) %>% rbind(., NCD13) %>%
  group_by(PERSON_ID) %>% summarise(., NCD=rep(1, times=length(unique(PERSON_ID))), NCD_date=min(DTH_MDY)) %>% 
  anti_join(., SRD, by=c("PERSON_ID"="PERSON_ID")) %>% anti_join(., HRD, by=c("PERSON_ID"="PERSON_ID"))
write.table(NCD, "NCD.csv", row.names=FALSE, col.names=TRUE, sep=",")

######  Stroke: Code (I60:64) + admission + CT or MR
#### ischemic 
ischemic02 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2002.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                           filter(substr(SICK_SYM, 1,3)=="I63") %>% select(KEY_SEQ, RECU_FR_DT), 
                         fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2002.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                           filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2002.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., ischemic_date=min(RECU_FR_DT))
ischemic03 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2003.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                           filter(substr(SICK_SYM, 1,3)=="I63") %>% select(KEY_SEQ, RECU_FR_DT), 
                         fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2003.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                           filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2003.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., ischemic_date=min(RECU_FR_DT))
ischemic04 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2004.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                           filter(substr(SICK_SYM, 1,3)=="I63") %>% select(KEY_SEQ, RECU_FR_DT), 
                         fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2004.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                           filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2004.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., ischemic_date=min(RECU_FR_DT))
ischemic05 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2005.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                           filter(substr(SICK_SYM, 1,3)=="I63") %>% select(KEY_SEQ, RECU_FR_DT), 
                         fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2005.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                           filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2005.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., ischemic_date=min(RECU_FR_DT))
ischemic06 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2006.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                           filter(substr(SICK_SYM, 1,3)=="I63") %>% select(KEY_SEQ, RECU_FR_DT), 
                         fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2006.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                           filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2006.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., ischemic_date=min(RECU_FR_DT))
ischemic07 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2007.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                           filter(substr(SICK_SYM, 1,3)=="I63") %>% select(KEY_SEQ, RECU_FR_DT), 
                         fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2007.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                           filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2007.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., ischemic_date=min(RECU_FR_DT))
ischemic08 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2008.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                           filter(substr(SICK_SYM, 1,3)=="I63") %>% select(KEY_SEQ, RECU_FR_DT), 
                         fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2008.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                           filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2008.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., ischemic_date=min(RECU_FR_DT))
ischemic09 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2009.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                           filter(substr(SICK_SYM, 1,3)=="I63") %>% select(KEY_SEQ, RECU_FR_DT), 
                         fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2009.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                           filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2009.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., ischemic_date=min(RECU_FR_DT))
ischemic10 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2010.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                           filter(substr(SICK_SYM, 1,3)=="I63") %>% select(KEY_SEQ, RECU_FR_DT), 
                         fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2010.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                           filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2010.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., ischemic_date=min(RECU_FR_DT))
ischemic11 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2011.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                           filter(substr(SICK_SYM, 1,3)=="I63") %>% select(KEY_SEQ, RECU_FR_DT), 
                         fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2011.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                           filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2011.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., ischemic_date=min(RECU_FR_DT))
ischemic12 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2012.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                           filter(substr(SICK_SYM, 1,3)=="I63") %>% select(KEY_SEQ, RECU_FR_DT), 
                         fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2012.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                           filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2012.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., ischemic_date=min(RECU_FR_DT))
ischemic13 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2013.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                           filter(substr(SICK_SYM, 1,3)=="I63") %>% select(KEY_SEQ, RECU_FR_DT), 
                         fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2013.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                           filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2013.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., ischemic_date=min(RECU_FR_DT))

ischemic <- rbind(ischemic02, ischemic03) %>% rbind(., ischemic04) %>% rbind(., ischemic05) %>% rbind(., ischemic06) %>% rbind(., ischemic07) %>% rbind(., ischemic08) %>%
  rbind(., ischemic09) %>% rbind(., ischemic10) %>% rbind(., ischemic11) %>% rbind(., ischemic12) %>% rbind(., ischemic13) %>%
  group_by(PERSON_ID) %>% summarise(., ischemic=rep(1, times=length(unique(PERSON_ID))), ischemic_date=min(ischemic_date))
write.table(ischemic, "ischemic.csv", row.names=FALSE, col.names=TRUE, sep=",")

colnames(ischemic02) <-c("PERSON_ID", "ischemic02_Date") ; colnames(ischemic03) <-c("PERSON_ID", "ischemic03_Date") 
colnames(ischemic04) <-c("PERSON_ID", "ischemic04_Date") ; colnames(ischemic05) <-c("PERSON_ID", "ischemic05_Date") 
colnames(ischemic06) <-c("PERSON_ID", "ischemic06_Date") ; colnames(ischemic07) <-c("PERSON_ID", "ischemic07_Date") 
colnames(ischemic08) <-c("PERSON_ID", "ischemic08_Date") ; colnames(ischemic09) <-c("PERSON_ID", "ischemic09_Date") 
colnames(ischemic10) <-c("PERSON_ID", "ischemic10_Date") ; colnames(ischemic11) <-c("PERSON_ID", "ischemic11_Date") 
colnames(ischemic12) <-c("PERSON_ID", "ischemic12_Date") ; colnames(ischemic13) <-c("PERSON_ID", "ischemic13_Date") 

full_join(ischemic02, ischemic03, by=c("PERSON_ID"="PERSON_ID")) %>%
  full_join(., ischemic04, by=c("PERSON_ID"="PERSON_ID")) %>%
  full_join(., ischemic05, by=c("PERSON_ID"="PERSON_ID")) %>%
  full_join(., ischemic06, by=c("PERSON_ID"="PERSON_ID")) %>%
  full_join(., ischemic07, by=c("PERSON_ID"="PERSON_ID")) %>%
  full_join(., ischemic08, by=c("PERSON_ID"="PERSON_ID")) %>%
  full_join(., ischemic09, by=c("PERSON_ID"="PERSON_ID")) %>%
  full_join(., ischemic10, by=c("PERSON_ID"="PERSON_ID")) %>%
  full_join(., ischemic11, by=c("PERSON_ID"="PERSON_ID")) %>%
  full_join(., ischemic12, by=c("PERSON_ID"="PERSON_ID")) %>%
  full_join(., ischemic13, by=c("PERSON_ID"="PERSON_ID")) %>%
  write.table(., file="ischemic_ver01.csv", sep=",", row.names=FALSE, fileEncoding="UTF-8")

rm(list=ls(pattern="ischemic"))

#### hemorrhagic 
hemorrhagic02 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2002.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                              filter(substr(SICK_SYM, 1,3)=="I60" | substr(SICK_SYM, 1,3)=="I61" | substr(SICK_SYM, 1,3)=="I62") %>% select(KEY_SEQ, RECU_FR_DT), 
                            fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2002.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                              filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2002.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., hemorrhagic_date=min(RECU_FR_DT))
hemorrhagic03 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2003.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                              filter(substr(SICK_SYM, 1,3)=="I60" | substr(SICK_SYM, 1,3)=="I61" | substr(SICK_SYM, 1,3)=="I62") %>% select(KEY_SEQ, RECU_FR_DT), 
                            fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2003.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                              filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2003.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., hemorrhagic_date=min(RECU_FR_DT))
hemorrhagic04 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2004.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                              filter(substr(SICK_SYM, 1,3)=="I60" | substr(SICK_SYM, 1,3)=="I61" | substr(SICK_SYM, 1,3)=="I62") %>% select(KEY_SEQ, RECU_FR_DT),  
                            fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2004.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                              filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2004.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., hemorrhagic_date=min(RECU_FR_DT))
inner_join(read.table(file="/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2005.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
             filter(substr(SICK_SYM, 1,3)=="I60" | substr(SICK_SYM, 1,3)=="I61" | substr(SICK_SYM, 1,3)=="I62") %>% select(KEY_SEQ, RECU_FR_DT), 
           read.table(file="/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2005.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
             filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>% write.table(., "hemorrhagic05_1.csv", row.names=FALSE, col.names=TRUE, sep=",")
hemorrhagic05 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2005.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                              filter(substr(SICK_SYM, 1,3)=="I60" | substr(SICK_SYM, 1,3)=="I61" | substr(SICK_SYM, 1,3)=="I62") %>% select(KEY_SEQ, RECU_FR_DT), 
                            fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2005.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                              filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2005.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., hemorrhagic_date=min(RECU_FR_DT))
hemorrhagic06 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2006.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                              filter(substr(SICK_SYM, 1,3)=="I60" | substr(SICK_SYM, 1,3)=="I61" | substr(SICK_SYM, 1,3)=="I62") %>% select(KEY_SEQ, RECU_FR_DT), 
                            fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2006.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                              filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2006.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., hemorrhagic_date=min(RECU_FR_DT))
hemorrhagic07 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2007.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                              filter(substr(SICK_SYM, 1,3)=="I60" | substr(SICK_SYM, 1,3)=="I61" | substr(SICK_SYM, 1,3)=="I62") %>% select(KEY_SEQ, RECU_FR_DT), 
                            fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2007.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                              filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2007.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., hemorrhagic_date=min(RECU_FR_DT))
hemorrhagic08 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2008.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                              filter(substr(SICK_SYM, 1,3)=="I60" | substr(SICK_SYM, 1,3)=="I61" | substr(SICK_SYM, 1,3)=="I62") %>% select(KEY_SEQ, RECU_FR_DT),  
                            fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2008.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                              filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2008.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., hemorrhagic_date=min(RECU_FR_DT))
hemorrhagic09 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2009.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                              filter(substr(SICK_SYM, 1,3)=="I60" | substr(SICK_SYM, 1,3)=="I61" | substr(SICK_SYM, 1,3)=="I62") %>% select(KEY_SEQ, RECU_FR_DT), 
                            fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2009.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                              filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2009.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., hemorrhagic_date=min(RECU_FR_DT))
hemorrhagic10 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2010.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                              filter(substr(SICK_SYM, 1,3)=="I60" | substr(SICK_SYM, 1,3)=="I61" | substr(SICK_SYM, 1,3)=="I62") %>% select(KEY_SEQ, RECU_FR_DT),  
                            fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2010.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                              filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2010.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., hemorrhagic_date=min(RECU_FR_DT))
hemorrhagic11 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2011.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                              filter(substr(SICK_SYM, 1,3)=="I60" | substr(SICK_SYM, 1,3)=="I61" | substr(SICK_SYM, 1,3)=="I62") %>% select(KEY_SEQ, RECU_FR_DT), 
                            fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2011.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                              filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2011.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., hemorrhagic_date=min(RECU_FR_DT))
hemorrhagic12 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2012.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                              filter(substr(SICK_SYM, 1,3)=="I60" | substr(SICK_SYM, 1,3)=="I61" | substr(SICK_SYM, 1,3)=="I62") %>% select(KEY_SEQ, RECU_FR_DT),  
                            fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2012.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                              filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2012.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., hemorrhagic_date=min(RECU_FR_DT))
hemorrhagic13 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2013.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                              filter(substr(SICK_SYM, 1,3)=="I60" | substr(SICK_SYM, 1,3)=="I61" | substr(SICK_SYM, 1,3)=="I62") %>% select(KEY_SEQ, RECU_FR_DT), 
                            fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2013.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                              filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2013.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., hemorrhagic_date=min(RECU_FR_DT))

hemorrhagic <- rbind(hemorrhagic02, hemorrhagic03) %>% rbind(., hemorrhagic04) %>% rbind(., hemorrhagic05) %>% rbind(., hemorrhagic06) %>% rbind(., hemorrhagic07) %>% rbind(., hemorrhagic08) %>%
  rbind(., hemorrhagic09) %>% rbind(., hemorrhagic10) %>% rbind(., hemorrhagic11) %>% rbind(., hemorrhagic12) %>% rbind(., hemorrhagic13) %>%
  group_by(PERSON_ID) %>% summarise(., hemorrhagic=rep(1, times=length(unique(PERSON_ID))), hemorrhagic_date=min(hemorrhagic_date))
write.table(hemorrhagic, "hemorrhagic.csv", row.names=FALSE, col.names=TRUE, sep=",")

rm(list=ls(pattern="hemorrhagic"))

#### unspecific
unspecific02 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2002.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                             filter(substr(SICK_SYM, 1,3)=="I64") %>% select(KEY_SEQ, RECU_FR_DT), 
                           fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2002.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                             filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2002.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., unspecific_date=min(RECU_FR_DT))
unspecific03 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2003.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                             filter(substr(SICK_SYM, 1,3)=="I64") %>% select(KEY_SEQ, RECU_FR_DT), 
                           fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2003.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                             filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2003.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., unspecific_date=min(RECU_FR_DT))
unspecific04 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2004.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                             filter(substr(SICK_SYM, 1,3)=="I64") %>% select(KEY_SEQ, RECU_FR_DT), 
                           fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2004.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                             filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2004.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., unspecific_date=min(RECU_FR_DT))
unspecific05 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2005.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                             filter(substr(SICK_SYM, 1,3)=="I64") %>% select(KEY_SEQ, RECU_FR_DT), 
                           fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2005.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                             filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2005.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., unspecific_date=min(RECU_FR_DT))
unspecific06 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2006.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                             filter(substr(SICK_SYM, 1,3)=="I64") %>% select(KEY_SEQ, RECU_FR_DT), 
                           fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2006.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                             filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2006.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., unspecific_date=min(RECU_FR_DT))
unspecific07 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2007.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                             filter(substr(SICK_SYM, 1,3)=="I64") %>% select(KEY_SEQ, RECU_FR_DT), 
                           fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2007.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                             filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2007.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., unspecific_date=min(RECU_FR_DT))
unspecific08 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2008.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                             filter(substr(SICK_SYM, 1,3)=="I64") %>% select(KEY_SEQ, RECU_FR_DT), 
                           fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2008.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                             filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2008.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., unspecific_date=min(RECU_FR_DT))
unspecific09 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2009.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                             filter(substr(SICK_SYM, 1,3)=="I64") %>% select(KEY_SEQ, RECU_FR_DT), 
                           fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2009.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                             filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2009.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., unspecific_date=min(RECU_FR_DT))
unspecific10 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2010.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                             filter(substr(SICK_SYM, 1,3)=="I64") %>% select(KEY_SEQ, RECU_FR_DT), 
                           fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2010.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                             filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2010.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., unspecific_date=min(RECU_FR_DT))
unspecific11 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2011.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                             filter(substr(SICK_SYM, 1,3)=="I64") %>% select(KEY_SEQ, RECU_FR_DT), 
                           fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2011.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                             filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2011.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., unspecific_date=min(RECU_FR_DT))
unspecific12 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2012.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                             filter(substr(SICK_SYM, 1,3)=="I64") %>% select(KEY_SEQ, RECU_FR_DT), 
                           fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2012.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                             filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2012.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., unspecific_date=min(RECU_FR_DT))
unspecific13 <- inner_join(fread("/Users/ysuh/Data/HSC_DB/40t/nhis_heals_gy40_t1_2013.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
                             filter(substr(SICK_SYM, 1,3)=="I64") %>% select(KEY_SEQ, RECU_FR_DT), 
                           fread("/Users/ysuh/Data/HSC_DB/20t/nhis_heals_gy20_t1_2013.TXT", header=TRUE, sep="\t", stringsAsFactors=FALSE) %>% select(PERSON_ID, KEY_SEQ, FORM_CD) %>%
                             filter(FORM_CD=="2"), by=c("KEY_SEQ"="KEY_SEQ")) %>%
  inner_join(., fread("/Users/ysuh/Data/HSC_DB/30t/nhis_heals_gy30_t1_2013.TXT", 
                      header=TRUE, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") %>% 
               select(KEY_SEQ, DIV_CD) %>% filter (substr(DIV_CD, 1,5)=="HE101" | substr(DIV_CD, 1,5)=="HE201" |
                                                     substr(DIV_CD, 1,5)=="HE135" | substr(DIV_CD, 1,5)=="HE235" |
                                                     substr(DIV_CD, 1,5)=="HE236" | substr(DIV_CD, 1,5)=="HA451" |
                                                     substr(DIV_CD, 1,5)=="HA461" | substr(DIV_CD, 1,5)=="HA471"), by=c("KEY_SEQ"="KEY_SEQ")) %>% 
  group_by(PERSON_ID) %>% summarise(., unspecific_date=min(RECU_FR_DT))

unspecific <- rbind(unspecific02, unspecific03) %>% rbind(., unspecific04) %>% rbind(., unspecific05) %>% rbind(., unspecific06) %>% rbind(., unspecific07) %>% rbind(., unspecific08) %>%
  rbind(., unspecific09) %>% rbind(., unspecific10) %>% rbind(., unspecific11) %>% rbind(., unspecific12) %>% rbind(., unspecific13) %>%
  group_by(PERSON_ID) %>% summarise(., unspecific=rep(1, times=length(unique(PERSON_ID))), unspecific_date=min(unspecific_date))
write.table(unspecific, "unspecific.csv", row.names=FALSE, col.names=TRUE, sep=",")

rm(list=ls(pattern="unspecific"))

## Outcome merging: ASCVD(AMI+STROKE+HRD+SRD) + NCD
AMI <- fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/AMI.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8")
HRD <- fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/HRD.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8")
SRD <- fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/SRD.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8")
ischemic <- fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/ischemic.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8")
hemorrhagic <- fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/hemorrhagic.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8")
unspecific <- fread("/Users/ysuh/Desktop/healthIN/healthIN_predictionmodel/unspecific.csv", header=TRUE, sep=",", stringsAsFactors=FALSE, encoding="UTF-8")


stroke <- full_join(ischemic, hemorrhagic, by=c("PERSON_ID"="PERSON_ID")) %>% 
  full_join(., unspecific, by=c("PERSON_ID"="PERSON_ID"))
stroke$ischemic[is.na(stroke$ischemic)] <- 0
stroke$ischemic_date[is.na(stroke$ischemic_date)] <- 20131231
stroke$hemorrhagic[is.na(stroke$hemorrhagic)] <- 0
stroke$hemorrhagic_date[is.na(stroke$hemorrhagic_date)] <- 20131231
stroke$unspecific[is.na(stroke$unspecific)] <- 0
stroke$unspecific_date[is.na(stroke$unspecific_date)] <- 20131231
stroke$stroke <- rep(0, times=length(stroke$PERSON_ID))
stroke$stroke[stroke$ischemic==1 | stroke$hemorrhagic==1 | stroke$unspecific==1] <-1
stroke$stroke_date <- rep(20131231, times=length(stroke$PERSON_ID))
stroke$stroke_date <- pmin(stroke$ischemic_date, stroke$hemorrhagic_date, stroke$unspecific_date)
ASCVD <- full_join(stroke, AMI, by=c("PERSON_ID"="PERSON_ID")) %>% full_join(., SRD, by=c("PERSON_ID"="PERSON_ID")) %>%
  full_join(., HRD, by=c("PERSON_ID"="PERSON_ID"))
ASCVD$ischemic[is.na(ASCVD$ischemic)] <- 0
ASCVD$ischemic_date[is.na(ASCVD$ischemic_date)] <- 20131231
ASCVD$hemorrhagic[is.na(ASCVD$hemorrhagic)] <- 0 
ASCVD$hemorrhagic_date[is.na(ASCVD$hemorrhagic_date)] <- 020131231
ASCVD$unspecific[is.na(ASCVD$unspecific)] <- 0 
ASCVD$unspecific_date[is.na(ASCVD$unspecific_date)] <- 20131231
ASCVD$HRD[is.na(ASCVD$HRD)] <- 0 
ASCVD$HRD_date[is.na(ASCVD$HRD_date)] <- 20131231
ASCVD$SRD[is.na(ASCVD$SRD)] <- 0 
ASCVD$SRD_date[is.na(ASCVD$SRD_date)] <- 20131231
ASCVD$stroke[is.na(ASCVD$stroke)] <- 0 
ASCVD$stroke_date[is.na(ASCVD$stroke_date)] <- 20131231
ASCVD$AMI[is.na(ASCVD$AMI)] <- 0 
ASCVD$AMI_date[is.na(ASCVD$AMI_date)] <- 20131231
ASCVD$ASCVD <- rep(0, times=length(ASCVD$PERSON_ID))
ASCVD$ASCVD[ASCVD$AMI==1 | ASCVD$stroke==1 | ASCVD$HRD==1 | ASCVD$SRD==1] <- 1
ASCVD$ASCVD_date <- rep(20131231, times=length(ASCVD$PERSON_ID)) 
ASCVD$ASCVD_date <- pmin(ASCVD$stroke_date, ASCVD$AMI_date, ASCVD$SRD_date, ASCVD$HRD_date)

##### merging NCD 
outcomes <-full_join(ASCVD, NCD, by=c("PERSON_ID"="PERSON_ID"))
outcomes$HRD[is.na(outcomes$HRD)] <- 0 
outcomes$SRD[is.na(outcomes$SRD)] <- 0 
outcomes$NCD[is.na(outcomes$NCD)] <- 0 
outcomes$HRD_date[is.na(outcomes$HRD_date)] <- 20131231
outcomes$SRD_date[is.na(outcomes$SRD_date)] <- 20131231
outcomes$NCD_date[is.na(outcomes$NCD_date)] <- 20131231
outcomes$death_date <-pmin(outcomes$HRD_date, outcomes$SRD_date, outcomes$NCD_date)
outcomes$ischemic[is.na(outcomes$ischemic)] <- 0
outcomes$ischemic_date[is.na(outcomes$ischemic_date)] <- 20131231
outcomes$hemorrhagic[is.na(outcomes$hemorrhagic)] <- 0 
outcomes$hemorrhagic_date[is.na(outcomes$hemorrhagic_date)] <- 020131231
outcomes$unspecific[is.na(outcomes$unspecific)] <- 0 
outcomes$unspecific_date[is.na(outcomes$unspecific_date)] <- 20131231
outcomes$stroke[is.na(outcomes$stroke)] <- 0 
outcomes$stroke_date[is.na(outcomes$stroke_date)] <- 20131231
outcomes$AMI[is.na(outcomes$AMI)] <- 0 
outcomes$AMI_date[is.na(outcomes$AMI_date)] <- 20131231
outcomes$ASCVD[is.na(outcomes$ASCVD)] <- 0 
outcomes$ASCVD_date[is.na(outcomes$ASCVD_date)] <- 20131231
outcomes$lastFU_date <- pmin(outcomes$ASCVD_date, outcomes$death_date)

write.table(outcomes, "outcomes.csv", row.names=FALSE, col.names=TRUE, sep=",")
