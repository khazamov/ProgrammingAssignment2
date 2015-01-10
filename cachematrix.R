## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

imObj <- NULL

set <- function(y) {  
  x <<- y
  imObj <- NULL
}

get <- function() return(x)
inverseSet <- function(Obj) imObj <<- Obj

inverseGet <- function() return(imObj)

list(inverseSet = inverseSet, inverseGet = inverseGet,
     set = set, get = get )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
 imObj <- x$inverseGet()
 
 if(!is.null(imObj))
 {    
   return(imObj)
 }
 
  else if (is.null(imObj))
  {
    mObj <- x$get()
    imObj <- solve(mObj)
    x$inverseSet(imObj)  
    
  }
   

}
