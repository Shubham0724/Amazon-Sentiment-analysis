### Sentimental analysis ###
library(syuzhet)

###Read File ###
df1<-read.csv("Amazon-review-data.csv",stringsAsFactors = FALSE)



###Restored data in character format###
review1<-as.character(df1$Content)

###Obtain Sentiment Scores###
get_nrc_sentiment('happy')
get_nrc_sentiment('abuse')

###store this data set into variables###
s1<-get_nrc_sentiment(review1)

###combine text and sentiment columns ###
review_sentiment1<-cbind(df1$Content.s1)

###Bar plot for sentiments###
barplot(colSums(s1), col=rainbow(10),ylab = 'Count',main='Amazon feedback')
