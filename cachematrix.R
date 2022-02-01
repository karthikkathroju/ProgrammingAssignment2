## Put comments here that give an overall description of what your
## functions do
## There are two functions that cache the inverse of a matrix
## Write a short comment describing this function
##makeCacheMatrix consists of set,get,setinv,getinv
makeCacheMatrix <- function(x = matrix()) {
  inv<- NULL
  set<- function(y){
        x<<-y
        inv<<-NULL
  }
get<-function(x)                   #function to get matrix x
setinv<- function(inverse)inv<<-inverse
getinverse<- function() inv
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function
## This function is used to get cache data
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv<-x$getinverse()
if(!is.null(inv)) {
  message("getting cached data")
  return(inv)
}
  data<-x$get()
inv<-solve(data,...)  
x$setinverse(inv)
inv
  }
x <- makeCacheMatrix(matrix(rnorm(9),3,3)
cacheSolve(x)                     
