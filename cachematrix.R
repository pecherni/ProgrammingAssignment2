## Put comments here that give an overall description of what your
## functions do
## Caching the matrix (the makeCacheMatrix function) and finding the inverse matrix (cacheSolve returns the inverse of X).
## Write a short comment describing this function
## A set of functions for setting the input and output matrix.  Returns a list of functions.
makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function (y) {
    x <<- y
    m <<- NULL
  }
  get <-function() x
  setmatrix <- function(solve) m<<- solve
  getmatrix <- function() m
  list (set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}


## Write a short comment describing this function
## If there is already a cached result, it simply returns to speed up the result("getting cached data").
## If the matrix has changed, a new value is cached with the setinverse function.
## cacacheSolve uses functions from the makeCacheMatrix list.
cacheSolve <- function(x, ...) {
  m <- x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setmatrix(m)
  m
 
        ## Return a matrix that is the inverse of 'x'
}
