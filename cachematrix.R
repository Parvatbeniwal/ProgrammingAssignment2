## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
#Initializing inverse to null 
     inverse <- NULL
     
     setMatrix <- function(y){
          x <<- y
          inverse <<- NULL
     }
     
     #Creating a function to get matrix
     getMatrix <- function() x
     
     setInverse <- function(matrixInverse) inverse <<- matrixInverse
     getInverse <- function() inverse
     
     #List of functions   
     list(setMatrix = setMatrix, getMatrix = getMatrix,
          setInverse = setInverse,
          getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  i <- x$getInverse()
     if(!is.null(i)) {
          message("getting cached data")
          return(i)
     }
     data <- x$getMatrix()
     i <- solve(data)
     x$setInverse(i)
     i

}
