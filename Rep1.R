2->a
b<-5
c=6
d=7
f=8
load(file="fish_data.Rdata")
head(fish)
tail(fish)
fish$avg.DNE.m[7]="test"
fish$avg.DNE.m
class(fish$avg.DNE.m)
fish$avg.DNE.m=as.integer(fish$avg.DNE.m)
fish$avg.DNE.m
class(fish$avg.DNE.m)
fish$avg.DNE.m=as.character(fish$avg.DNE.m)

fish$area_fac[[7]]
mat=matrix (data=1:12, nrow=3, ncol=4, dimnames=list(c('r1','r2','r3'),c('c1','c2','c3','c4')))
mat
mat[7]=NA
mat


df=data.frame(a=(1, 2 ,3, 4), b=c())