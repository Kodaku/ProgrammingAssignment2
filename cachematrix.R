## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(current_matrix = matrix()) {
  m <- NULL
  set <- function(new_matrix) {
    current_matrix <<- new_matrix
    m <- NULL
  }
  get <- function() current_matrix
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
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
