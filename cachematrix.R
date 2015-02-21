## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # setters
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  
  # getters
  get <- function() x
  setm <- function(solve) m <<- solve
  getm <- function() m
  list(set = set, get = get,
       setm = setm,
       getm = getm)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
