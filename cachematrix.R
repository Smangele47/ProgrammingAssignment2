## Put comments here that give an overall description of what your
## functions do
    #I have 2 functions, the makeCacheMatrix function and the cacheSolve function
    #The makeCacheMatrix which creates a special matrix object that can cache its inverse.
    #The cacheSolve which computes the inverse of the special matrix returned by makeCacheMatrix

## Write a short comment describing this function
   #The makeCacheMatrix consists of get and set methods wich gets the matrix x
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL                     #iniitializing the inverse as a  Null
  set <- function(y){
    x <<- y
    inv <<- NULL
    
  }
        
   #This function gets the matrix x
get <- function(){x}   
setInverse <- function (inverse) {inv <<- inverse}
getInverse <- function() {inv}
  list (set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
    #This function gets cacha data
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv))                   # An if statement to check whether the inverse is null
  {
    message("getting cached data")    #This message will display after getting cache data
    return(inv)                       #returning the inverse value
    
  }
     #calculating the iverse value
 mat <- x$get()
 inv <- solve(mat, ...)
 x$setInverse(inv)
 inv                                 #returning the inverse of the special matrix 
}
