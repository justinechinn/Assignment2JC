model_1=glm(female~smoke, data = cohort)
plot(model_1)
plot(cohort$female, cohort$smoke,
     col="red", pch=16, cex=2, cex.lab=1.5,
     xlab="Female", ylab="Smoking")
lines(loess.smooth(cohort$female, cohort$smoke, span=.80), col="red")
lm(age~smoke, data=cohort)
Call:
  lm(formula = age ~ smoke, data = cohort)

Coefficients:
  (Intercept)        smoke  
44.031       -0.586  

lm(smoke~cost, data=cohort)
Call:
  lm(formula = smoke ~ cost, data = cohort)

Coefficients:
  (Intercept)         cost  
-3.9074799    0.0004435  

lm(age~cardiac, data=cohort)
Call:
  lm(formula = age ~ cardiac, data = cohort)

Coefficients:
  (Intercept)      cardiac  
43.855        1.665  
summary(cohort)
> summary(cohort)
smoke            female            age           cardiac          cost      
Min.   :0.0000   Min.   :0.0000   Min.   :18.00   Min.   :0.00   Min.   : 7878  
1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:31.00   1st Qu.:0.00   1st Qu.: 8874  
Median :0.0000   Median :1.0000   Median :44.00   Median :0.00   Median : 9143  
Mean   :0.1578   Mean   :0.5548   Mean   :43.94   Mean   :0.05   Mean   : 9166  
3rd Qu.:0.0000   3rd Qu.:1.0000   3rd Qu.:57.00   3rd Qu.:0.00   3rd Qu.: 9426  
Max.   :1.0000   Max.   :1.0000   Max.   :70.00   Max.   :1.00   Max.   :10790  