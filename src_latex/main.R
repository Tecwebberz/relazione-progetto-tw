backslash<-"\\"
percent<-"%"
latex.table<-function(data,nrows) {
tmp<-unlist(data);dim(tmp)<-c((nrows),length(tmp)/nrows);
for (i in 1:dim(tmp)[1]) {
  cat(tmp[i,1]);
  for (j in 2:dim(tmp)[2]) {
    cat(" &",tmp[i,j]);
  };
  cat("\\\\");
};
}
topercent<-function(x,r=0){paste(round(x*100,r),"\\%",sep="")}
cat(signif(0,4),"\n")
