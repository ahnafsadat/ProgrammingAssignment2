#The overall script will inverse a matrix and will keep it in the cache 


## The following function will create a object that will mainly contain 4 functions 
makeCacheMatrix <- function(x = matrix()) {
    inverse_x <- NULL
    set <- function(y){
        x <<- y
        inverse_x <<- NULL
    }
    get <- function() x
    
    setinverse <- function(inverse) inverse_x <<- inverse
    getinverse <- function() inverse_x  
    
    list(set=set, get=get, setinverse = setinverse, getinverse = getinverse)
    
}


## The function will return the inverse of a matrix; if it is in the cache it will return in cache value otherwise calculate it


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse_x <- x$getinverse()
        if(!is.null(inverse_x)){
            print("Getting The Catched Inverse Matrix")
        }
        else{
            data <- x$get()
            inverse_x <- solve(data)
            x$setinverse(inverse_x)
        }
        
        inverse_x
}
