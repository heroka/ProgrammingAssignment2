## Put comments here that give an overall description of what your
## functions do

#goal of assigment: write a set of functions that can cache
#inversing of a matrix. inverse of matrix is matrix that when multiplied by original matrix
#yields identity matrix


## Write a short comment describing this function

#function returns special 'matrix' (but is list contaning
#functions to set value of matrix and its inverse, and
#to get value of matrix or its inverse.)
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  
  setinv <- function(inv) inv <<- mean
  
  getinv <- function() inv
  
  list(set=set,get=get,setinv=setinv,getinv=getinv)

}


## Write a short comment describing this function

#function returns inverse of matrix. However, it
#checks if it hasn't been calculated first. If that is
#the case, it returns the calculated inverse.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv
}




