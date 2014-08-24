## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#Creating makeCacheMatrix fuction
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}



## Write a short comment describing this function

#following function returns the inverse of the matrix.
# First it checks if inverse has been already computed
# If yes, gets the result of inv
#If No,it will compute the inverse and sets the value in Cache

cacheSolve <- function(x, ...) {

        ## Return a matrix that is the inverse of 'x'

    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}

