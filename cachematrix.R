## in combination, these functions take a matrix as an input and produce return an inverted
## matrix.  the inverted matrix will be stored in the cache to avoid having to recalculate
## the matrix for future use

## function contains a list of functions that will set the input matrix values and store
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


## function will create an inverse of a given matrix if it has not previously done so
## for that matrix.  If it has previously inverted the matrix, the matrix will be stored
## in makeCacheMatrix function and will be re-displayed by the cacheSolve function

cacheSolve <- function(x, ...) {
        m <- x$getinverse() ## pull inverse matrix from makeCacheMatrix if it exists
        if(!is.null(m)){ ## return cached data if cacheSolve has been called on this matrix
                message("getting cached data")
                return(m)
        }
        data <- x$get() ## pull matrix data if cacheSolve has not been previously called on this matrix
        m <- solve(data, ...) ## invert matrix
        x$setinverse(m) ## store inverted matrix in cache
        m ## return inverted matrix
}
