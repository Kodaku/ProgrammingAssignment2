## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
  inverse_mat <- NULL
  set <- function(matrix) {
    m <<- matrix
    inverse_mat <<- NULL
  }
  get <- function() m
  setinverse <- function(solve) inverse_mat <<- solve
  getinverse <- function() inverse_mat
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(matrix, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- matrix$get()
  m <- solve(data) %*% data
  x$setinverse(m)
  m
}
