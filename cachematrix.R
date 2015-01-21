## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a matrix containing a list of functions as
##  1- set the value of the matrix
##  2- get the value of the matrix
##  3- set the value of the inverse
##  4- get the value of the inverse
##
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set = set, get= get, setsolve = setsolve, getsolve = getsolve)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if (!is.null(m)) {
          message("Getting cached data")
          return (m)
        }
        m <- solve(x$get(), ...)
        x$setsolve(m)
        m
}
