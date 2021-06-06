### Below script was used to acquire differentially expressed genes using expected counts data.

library(edgeR)

x<-read.table("counts_example.txt",header=T, row.names="gene_id")

target_edit_group<-read.table("group.txt",header=T,row.names=1)

head(target_edit_group)

### Get only resistant (R) samples.
 
da_R<-x[,c(1:45)]

target_R<-target_edit_group[c(1:45),]

design<-model.matrix(~Times+ Times:Dothi,data=target_R)
rownames(design)<-colnames(da_R)

y<-DGEList(counts=da_R) 
y<-calcNormFactors(y)
y<-estimateDisp(y,design)
y$common.dispersion


fit<-glmQLFit(y,design)


### Genes respond to DothiG  at 4d relative to control
qlf_1_G<- glmQLFTest(fit, coef=4)   
summary(decideTests(qlf_1_G,adjust.method="fdr",p.value=0.05)) 


### Genes respond to DothiY  at 4d relative to control
qlf_1_Y<- glmQLFTest(fit, coef=7) 
summary(decideTests(qlf_1_Y,adjust.method="fdr",p.value=0.05)) 


### Genes respond to DothiG  at 8w relative to control
qlf_2_G<- glmQLFTest(fit, coef=5)    
summary(decideTests(qlf_2_G,adjust.method="fdr",p.value=0.05)) 


### Genes respond to DothiY at 8w relative to control
qlf_2_Y<- glmQLFTest(fit, coef=8)  
summary(decideTests(qlf_2_Y,adjust.method="fdr",p.value=0.05)) 


### Genes respond to DothiG  at 12w relative to control
qlf_3_G<- glmQLFTest(fit, coef=6)     
summary(decideTests(qlf_3_G,adjust.method="fdr",p.value=0.05)) 


### Genes respond to DothiY  at 12w relative to control
qlf_3_Y<- glmQLFTest(fit, coef=9)       
summary(decideTests(qlf_3_Y,adjust.method="fdr",p.value=0.05)) 


