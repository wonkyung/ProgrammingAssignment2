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
##
## 0. Attempt to get the inverse
## 1. If a non-null value is found, return the value
## 2. if null is returned,get the inverse using the solve() function
## 3. store the inverse matrix using the setsolve function 
## 4. return the inverted value
##
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
