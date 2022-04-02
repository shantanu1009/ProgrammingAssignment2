## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
> library(MASS)
> makeCacheMatrix <- function(x=matrix()) {
+   inv <- NULL
+   set <- function(y) { 
+     x<<-y
+     inv<<-NULL
+   }

##to get matrix x
+   get <- function()x    
+   setinv <- function(inverse) inv<<-inverse
+   getinv <- function() {
+     inver <- ginv(x)
+     inver%*%x   

##inverse of matrix
+   }
+   list(set = set , get = get,
+        setinv = setinv , 
+        getinv = getinv)
+ }
> 
> ##to get cache data
> Cachesolve <- function(x,...) 
+ {
+   inv <-x$getinv()
+ if(!is.null(inv)) {
+   message("getting Cached data!!")
+   return(inv)
+ }
+   data <- x$get()
+   inv <- solve (data,...)
+   x$setinc=v(inv)
+   inv
+ }
##Solution
> f <- makeCacheMatrix(matrix(1:8,2,4))
> f$get()
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8
> f$getinv()
     [,1] [,2] [,3] [,4]
[1,]  0.7  0.4  0.1 -0.2
[2,]  0.4  0.3  0.2  0.1
[3,]  0.1  0.2  0.3  0.4
[4,] -0.2  0.1  0.4  0.7
> Cachesolve(f)
getting Cached data!!
     [,1] [,2] [,3] [,4]
[1,]  0.7  0.4  0.1 -0.2
[2,]  0.4  0.3  0.2  0.1
[3,]  0.1  0.2  0.3  0.4
[4,] -0.2  0.1  0.4  0.7
> 
