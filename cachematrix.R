## these functions compute the inverse of a matrix and cashe it for later use 

## this fuction creates a list object that contains a matrix and its inverse 

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <- NULL
  }
  get <- function() x
  
  setInverse <- function(inverse) inv <<- inverse 
  getInverser <- function() inv
  list( get = get, set = set, getInverse = getInverse, setInverse = setInverse)
  
}


## This function  computes the inverse of a matrix and cashes it into x

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data,...)
  x$setInverse(inv)
  inv
}
