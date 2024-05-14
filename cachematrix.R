## the function to create a matrix to cache the inversed matrix of the matrix x

makeCacheMatrix <- function(x = matrix()) {
  inverse<- NULL    ## the variable to store the inverse
  ## function to set the matrix
  setMatrix <- function (y) {
    x<<-y           ## assigns the input matrix to X using lexical scoping
    inverse <- NULL ## resets the value of the variable to Null
  }               
                    ## function to get caches matrix
  getMatrix <- function () x 
                    ## function to calculate the inverse of the matrix
  setInverse<- function() inverse <<- solve(x)
                    ## function to cache the inversed matrix
  getInverse <- function() inverse
                    ## return a list of functions
  list(setMatrix = setMatrix, getMatrix= getMatrix, setInverse=setInverse, getInverse= getInverse)
}


## function to calculate the inverse of the matrix

cacheSolve <- function(x, ...) {
  matrix1 <- x$getInverse ## retrieve the cached inverse
  
  if (!is.null (matrix1)) {
    return (matrix1)
  }
  
  ## if the inverse is not cached calculate it and save it
  matrix1 <- x$setInverse
  matrix1             ## Return a matrix that is the inverse of 'x'
}
