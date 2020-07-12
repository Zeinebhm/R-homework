
Wage <- readXL("C:/Users/hamdi/OneDrive/Desktop/wage.xls", rownames=FALSE, 
  header=TRUE, na="", sheet="Feuil1", stringsAsFactors=TRUE)
editDataset(Wage)
editDataset(Wage)
editDataset(Wage)

cor(Wage[,c("educ","exper","Wage")], use="complete")
cor(Wage[,c("educ","exper","Wage")], use="complete")
RegModel.1 <- lm(Wage~exper, data=Wage)
summary(RegModel.1)
RegModel.2 <- lm(Wage~educ+exper+female+married+tenure, data=Wage)
summary(RegModel.2)

