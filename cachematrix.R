## Functions for programming assignment 2
## define a matrix and it's inverse
## check if the inverse matrix exists in cache and retrieve from cache before calculating

## creates a list containing four functions

makeCacheMatrix <- function(x = matrix()) {
  InverseMatrix <- NULL
  set <- function(y) {
    X <<- y
    InverseMatrix <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) InverseMatrix <<- solve
  getsolve <- function() InverseMatrix
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  InverseMatrix <- x$getsolve()
  if(!is.null(InverseMatrix)) {
    print("getting cached data")
    return(InverseMatrix)
  }
  data <- x$get()
  InverseMatrix <- solve(data, ...)
  x$setsolve(InverseMatrix)
  InverseMatrix
}
