## Put comments here that give an overall description of what your
## functions do

## The following function is to 1) get data from the user, 2) store that data, and 3) store the calculated inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  inva<-NULL
  set<-function(l)x<<-l
  get<-function() x
  setinv<-function(inp) inva<<-inp
  getinv<-function()inva
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## The below function 1) checks the 'makeCacheMatrix' for cached inverse, else calculates a new inverse

cacheSolve <- function(x, ...) {
    temp<-x$getinv()
    if(!is.null(temp)) { 
      message("getting cache data")
      return(inva)
    }
    data<-x$get()
    inva<-solve(data)
    x$setinv(inva)
    x$getinv()
}
