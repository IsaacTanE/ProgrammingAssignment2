## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(y) {
                x <<- y
                inverse <<- NULL

}
get <- function() x
setinverse <- function(inverse) inverse <<- inverse
getinverse <- function() inverse
        
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

## Write a short comment describing this function
# Computing and cache the inverse of a matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinverse()
        if(!is.null(inverse)) {
                message("cached matrix inverse")
                return(inverse)
}
        data <- x$get()
        inverse <- solve(data, ...)
        x$setinverse(inverse)
        inverse
}
