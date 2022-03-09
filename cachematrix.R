## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(current_matrix = matrix()) {
  i <- NULL
  set <- function(new_matrix) {
    current_matrix <<- new_matrix
    i <- NULL
  }
  get <- function() current_matrix
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(new_matrix, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- new_matrix$getinverse()
  if(!is.null(m)) {
    message("Getting cached Data")
    return (m)
  }
  new_data <- new_matrix$get()
  m <- solve(new_data) %*% new_data
  new_matrix$setinverse(m)
  m
}
