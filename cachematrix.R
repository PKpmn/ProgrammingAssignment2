## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse, which is really a list containing a function to:

makeCacheMatrix <- function(x = matrix()) {
  ##set the value of the matrix

  ##get the value of the matrix

  ##set the value of the inverse

  ##get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
      x <<- y
      i <<- NULL
    }
    get <- function() {x}
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() {i}
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}



## Write a short comment describing this function

##This function computes the inverse of the special “matrix” returned by the function above. 
##It first checks if the inverse of the matrix has already been calculated. If so, it gets the inverse from the cache and skips the computation.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
