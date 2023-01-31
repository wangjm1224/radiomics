
rm(list=ls()) # 清除环境变量




 
#
# 筛选特征 -----------------------------------------------------------------

library(pROC)
library(glmnet)

setwd("F:/02Radiomics/00_Radiomics_features/02可重复性特征/0Data/") 

m <- read.csv("2WJZ_SETc单纯t检验的特征量.csv",header = T)
X=m[,13:484]
Y=m$species
View(X)

set.seed(36)
fit<-glmnet(x=X,y=Y,alpha=1,family="binomial",nlambda=100)##alpha=1就是LASSO  

plot(fit,xvar="lambda", label = TRUE)   ##收敛图
fit<-cv.glmnet(x=as.matrix(X),Y,alpha=1,family="binomial",
               nlambda=100,nfolds=10,type.measure = c("deviance"))
plot(fit)



fit.best <- fit$lambda.1se  
fit.best 
rr.best <- glmnet(X, Y, alpha = 1, lambda = fit.best )
r=coef(rr.best)
lasso_value=as.data.frame(which(r==0),arr.ind=T)
lasso_names=rownames(lasso_value)[-1]
Lasso_coef=data.frame(Feature=rownames(lasso_value),
                      Coef=r[which(r==0),arr.ind=T])
write.csv(Lasso_coef,"SETc的特征集.csv")

------------
  
  
  

#  lasso降维 -----------------------------------------------------------------


library(pROC)
library(glmnet)

setwd("F:/02Radiomics/00_Radiomics_features/02可重复性特征/0Data.csv") # 设置工作目录

m <- read.csv("3数据集SETc.csv",header = T)
X=m[,13:364]
Y=m$DIS
#View(X)

set.seed(36)
fit<-glmnet(x=X,y=Y,alpha=1,family="binomial",nlambda=100)##alpha=1就是LASSO  

plot(fit,xvar="lambda", label = TRUE)   ##收敛图
fit<-cv.glmnet(x=as.matrix(X),Y,alpha=1,family="binomial",
               nlambda=100,nfolds=10,type.measure = c("deviance"))
plot(fit)



fit.best <- fit$lambda.1se  
fit.best 
rr.best <- glmnet(X, Y, alpha = 1, lambda = fit.best )
r=coef(rr.best)
lasso_value=as.data.frame(which(r!=0),arr.ind=T)
lasso_names=rownames(lasso_value)[-1]
Lasso_coef=data.frame(Feature=rownames(lasso_value),
                      Coef=r[which(r!=0),arr.ind=T])
write.csv(Lasso_coef,"COEF.csv")

