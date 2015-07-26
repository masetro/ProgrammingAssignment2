
## This function  creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  ## inverted matrix object
  m_inv <- NULL
  
  ## 
  set <- function(x) {
    x <<- y
    m_inv <<- NULL
  }
  get <- function() x
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
