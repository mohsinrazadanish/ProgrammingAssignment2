# # ##  This function will exploit the laxigraphic scoping of R to store the already computed matrix Inverse. 
# # 
# # ## This function create a special matrix
# # 
# # makeCacheMatrix <- function(X = numeric()) {
# #   inv<-NULL
# #   set<-function(y){
# #     X<<-Y
# #     inv<<-NULL
# #   }
# #   get<-function() x
# #   setinverse<-function(inverse) inv<<-inverse
# #   getinverse<-function() inv
# #   list(set=set, get=get,setinverse=setinverse,getinverse=getinverse)
# #   
# # }
# # 
# # 
# # ## This functionn compute the inverse. If inverse is in cache than cached vallue is returned
# # 
# # cacheSolve <- function(X, ...) {
# #   ## Return a matrix that is the inverse of 'x'
# #   inv<-X$getinverse()
# #   if(!is.null(inv)){
# #     message("getting cached data")
# #     return(inv)
# #   }
# #   data<-X$get()
# #   inv<-solve(data,...)
# #   X$setinverse(inv)
# #   inv
# # }
# 
# ##  This function will exploit the laxigraphic scoping of R to store the already computed matrix Inverse. 
# 
# ## This function create a special matrix
# 
# makeCacheMatrix <- function(X = matrix()) {
#   inv<-NULL
#   set<-function(Y){
#     X<<-Y
#     inv<<-NULL
#   }
#   get<-function() X
#   setinverse<-function(inverse) inv<<-inverse
#   getinverse<-function() inv
#   list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
#   
# }
# 
# 
# ## This functionn compute the inverse. If inverse is in cache than cached vallue is returned
# 
# cacheSolve <- function(X, ...) {
#   ## Return a matrix that is the inverse of 'x'
#   inv<-X$getinverse()
#   if(!is.null(inv)){
#     message("getting cached data")
#     return(inv)
#   }
#   data<-X$get()
#   inv<-solve(data,...)
#   X$setinverse(inv)
#   inv
# }


##  This function will exploit the laxigraphic scoping of R to store the already computed matrix Inverse. 

## This function create a special matrix

makeCacheMatrix <- function(X = matrix()) {
  inv<-NULL
  set<-function(Y){
    X<<-Y
    inv<<-NULL
  }
  get<-function() X
  setinverse<-function(inverse) inv<<-inverse
  getinverse<-function() inv
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
  
}


## This functionn compute the inverse. If inverse is in cache than cached vallue is returned

cacheSolve <- function(X, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv<-X$getinverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data<-X$get()
  inv<-solve(data,...)
  X$setinverse(inv)
  inv
}
