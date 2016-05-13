## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## sets matrix
## gets value of matrix
## sets inverse
## gets inverse

makeCacheMatrix <- function(x = matrix()) {
        inverse = NULL
        set = function(y) {
                x <<- y
                inverse <<- NULL
        }
        get = function() x
        setinverse = function(inv)  inverse <<- inv
        getinverse = function() inverse
        list(set = set, get = get, 
             setinverse = setinverse, 
             getinverse = getinverse)
}


## Write a short comment describing this function
## sees if inverse already exists
## if not, calculates invers and displays

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
        inverse = x$getinverse()
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        matx1 = x$get()
        inverse = solve(matx1, ...)
        inverse
}