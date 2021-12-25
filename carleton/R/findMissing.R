findMissing <-
function(data){
  #data = data frame
  #returns all rows that have at least
  #one missing value (in a numeric column)
  #usage: findMissing(MyDataset)

  m<-dim(data)[1]
 #row numbers with complete cases
 index<-(1:m)[complete.cases(data)]

 #where missing rows occur
  missing.rows<-setdiff((1:m), index)

 return(missing.rows)
#note: this doesn't return rows with NA in factor columns

}
