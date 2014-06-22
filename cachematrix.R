## What language should I use? I'll do it in english
## The next functions are my solutions to the second programming assignment.
## The first creates a list of functions that chache the inverse of a matrix.
## The second function does the actual calculation.

## The function makeCacheMatrix creates a list of functions that make it
## possible to cache the inverse of a matrix once it has been calculated.

makeCacheMatrix <- function(x = matrix()) {
   inv <- NULL
   set <- function(y) {
      x <<- y
      inv <<- NULL
   }
   get <- function() x
   setinvv <- function(inverse) inv <<- inverse
   getinv <- function() inv
   list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## This function is analogous to the function cachemean in the example

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   inv <- x$getinv()
   if (is.null(inv)) { ## The inverse has not been calculated, so calculate it.
      data <- x$get()  ## Getting the data to make the calculation
      inv <- solve(data, ...)  ## Calculate the inverse of x
      x$setinv(inv)  ## Setting the inverse of x
   }
   inv  ## Return the inverse
}
