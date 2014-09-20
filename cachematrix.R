## The function makeCacheMatrix() creates a special "matrix" object that can cache its inverse
## The function cacheSolve() function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve retrieves the inverse from the cache.

## makeCacheMatrix() function to create a special matrix object that can cache its inverse
## It calls cacheSolve() to get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {

}


## cacheSolve() function to compute the inverse of the special "matrix" returned makeCacheMatrix()
## It checks if the inverse has already been calculated and the matrix has not changed. If yes, it retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
