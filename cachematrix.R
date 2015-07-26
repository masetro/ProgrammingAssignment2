
## This function  creates a special "matrix" object that can cache its 
## inverse.
makeCacheMatrix <- function(x = matrix()) {
        ## inverted matrix object
        m_inv <- NULL
        
        ## set the value of the 
        set <- function(y) {
                x <<- y
                m_inv <<- NULL
        }
        ## retrieve the value of the matrix
        get <- function() x
        
        setinverted <- function(inverted) m_inv <<- inverted
        getinverted <- function() m_inv
        
        list(set = set, get = get, setinverted = setinverted,
             getinverted = getinverted)
}


## Computes the inverse of a special "matrix" object defined 
## in makeCacheMatrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m_inv <- x$getinverted()
        ## check to see if the object is already created
        ## if so, return the "cache"
        if(!is.null(m_inv)) {
                message("getting cached data")
                return(m_inv)
        }
        
        ## if not, process the inversion using the solve function
        data <- x$get()
        m_inv <- solve(data)
        x$setinverted(m_inv)
        m_inv
}
