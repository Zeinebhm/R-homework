
Notes <- readXL("C:/Users/hamdi/OneDrive/Desktop/Notes.xlsx", 
  rownames=FALSE, header=TRUE, na="", sheet="Feuil1", stringsAsFactors=TRUE)
row.names(Notes) <- as.character(Notes$Sujet)
Notes$Sujet <- NULL
cor(Notes[,c("Français","Latin","Math","Musique","Sciences")], 
  use="complete")
scatterplotMatrix(~Français+Latin+Math+Musique+Sciences, regLine=FALSE, 
  smooth=FALSE, diagonal=list(method="density"), data=Notes)

