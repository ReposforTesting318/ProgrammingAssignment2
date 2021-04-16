## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
  i <- NULL
  
  ## Setter
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ## Getter
  get <- function() m

  
  ## Inverse Setter
  setinverse <- function(inverse) i <<- inverse

  
  ## Inverse getter
  getinverse <- function() i
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## If already set
  if( !is.null(x$getinverse()) ) {
    message("getting cached data")
    return(m)
  }

  data <- x$get()
  m <- solve(data) %*% data
  x$setinverse(m)
  return(m)
}
