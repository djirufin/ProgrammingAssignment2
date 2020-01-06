## Put comments here that give an overall description of what your
## functions do

## This function cache the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) s <<- solve
  getinverse <- function() s
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This is a calling function to implement the above

cacheSolve <- function(x, ...) {
        s <- x$getinvserse()
        if(!is.null(s)){
          return(s)
        }
        m <- x$get()
        s <- solve(a = m, ...)
        x$setinverse(s)
        s
}
