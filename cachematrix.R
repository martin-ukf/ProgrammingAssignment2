## Put comments here that give an overall description of what your
## functions do
## This functions create a special object, which stores a matrix and cached its inverse matrix. 

## Write a short comment describing this function
## Function makeCacheMatrix creates a list of functions, which set and get the values of matrix.

makeCacheMatrix <- function(x = matrix()) {
  # something like setters
  m <- NULL
  set <- function(y){
    # special operator used for assignment a value to an object
    x <<- y
    m <<- NULL
  }
  
  # something like getters
  get <- function() x
  setm <- function(solve) m <<- solve
  getm <- function() m
  list(set = set, 
       get = get,
       setm = setm,
       getm = getm
       )
}


## Write a short comment describing this function.
## This function calculates an inverse matrix for matrix created above. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getm()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setm(m)
  m
  
}
