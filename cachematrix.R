## The function makeCacheMatrix() creates a special "matrix" object that can cache its inverse
## The function cacheSolve() function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If ##the inverse has already been calculated (and the matrix has not changed), then the cachesolve retrieves the inverse from ## the cache.

## makeCacheMatrix() function to create a special matrix object that can cache its inverse
## It calls cacheSolve() to get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
	## 1. Create a globalMatrix object and set it to null
	globalMatrix <- NULL
	## 2. Create a setMatrix() function that just sets the argument passed to this function to the argument passed to ## setMatrix. Also reset globalMatrix to null, because we just setMatrix to a new value.
	setMatrix  <- function(y){
		x <<- y
		globalMatrix <<- NULL
	}
	## 3. Return the argument to this function.
	getMatrix <- function() x 
	## 4. Set the globalMatrix object to the argument to this setInverse() function.
	setInverse <- function(a) globalMatrix <<- a
	## 5. Get globalMatrix
	getInverse <- function() globalMatrix
	## 6. Return a list of all the functions.
	list (setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
}


## cacheSolve() function to compute the inverse of the special "matrix" returned makeCacheMatrix()
## It checks if the inverse has already been calculated and the matrix has not changed. If yes, it retrieves the ##inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Get the inverse currently stored in x (the argument)
        localMatrix <- x$getInverse()
        ## Check if the inverse is null. If not null, that means it has been computed. Just return the value.
        if(!is.null(localMatrix)) {
        	message("getting cached data")
        	return(localMatrix)
        }
        ## Flow will only come here if the inverse got is null. In that case 1. Get the Matrix
        data <- x$getMatrix()
        ## 2. Use the solve() function to get the inverse of the matrix
        localMatrix <- solve(data,...)
        ## 3. Use the setInverse() function of x(the argument to this function) to set the inverse 
        x$setInverse(localMatrix)
        ## Return the local matrix (which is the inverse of the argument)
        localMatrix
        
}
