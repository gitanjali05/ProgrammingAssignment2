## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeVector <- function(x = numeric()) {
  s<-NULL
  set<-function(y){
    x<<-y
    s<<- NULL
  }
  get <- function(){x}
  setSum <- function(Sum)
  {s<<-Sum}
  getSum <- function() {s}
  list(set=set,get=get,setSum=setSum, getSum=getSum)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  s<-x$getSum()
  if(!is.null(s)){
    message("getting cached data")
    return(s)
  }
  d<- x$get()
  s<-solve(d,...)
  x$setSum(s)
  s 
}
