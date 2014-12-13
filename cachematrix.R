## Put comments here that give an overall description of what your
## functions do

## the inverse of the matrix in the cache if cacheSolve has been called

makeCacheMatrix <- function(x = matrix()) {

        m <- NULL ##set m to NULL
        set <- function(y) { ##modify existing matrix
                x <<- y
                m <<- NULL
        }
        get <- function() x ## return matrix input
        setinverse <- function(inverse) m <<-inverse ##invert matrix values and set m globally
        getinverse <- function() m ## return inverted matrix
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
