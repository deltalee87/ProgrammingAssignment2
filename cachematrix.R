## This code has two functions which creates a matrix and its inverse and stores
## it for later use. 

## This function creates and caches a matrix and caches its inverse

makecacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) i <<- solve
  getsolve <- function() i
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

## This function calculates the inverse of a matrix if it doesn't already
##exist, otherwise it get the stored result.

cachesolve <- function(x, ...) {
  i <- x$getmean()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setsolve(i)
  i
}
