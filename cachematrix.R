## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
Minverse<-NULL
  set <- function(y) {
    x <<- y
     Minverse<<- NULL
  }
  get <- function() {x}
  setinverse<-function(solve) Minverse<<-solve
  getinverse <- function() {Minverse}
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

  ## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
m <- x$getinverse()
  if(!is.null(Minverse)) {
    message("getting cached data")
    return(Minverse)
  }
  data <- x$get()
  Minverse <- solve(data, ...)
  x$setinverse(Minverse)
  Minverse
       
}
