## These two functions could cache the inverse of a certain matrix.
## And when it is calculated again, the functions could retrieve the inverse from the cache. 

## The followed function will  cache the inverse of a certain matrix

makeCacheMatrix <- function(x = matrix()) { 
        m<-NULL                      
        get=function(){x}          
        getinverse=function() m 
        setinverse=function(m1) m<<-m1                                           
        list(get=get, 
             getinverse=getinverse, 
             setinverse=setinverse)
}


## The followed function will return the inverse of the matrix ('x') in the above function. 
## If the inverse was calculated, it will retrieve the inverse from the cache. 
## Otherwise, it will calculate the inverse again.

cacheSolve <- function(a) {      ## a is the vector created with the above function
                                 ## the code should be "a=makeCacheMatrix(x=matrix())"
        m<-a$getinverse()         
        if(!is.null(m)){
                message("getting cached inverse")
                return(m)
        }                       
        else{
                data<-a$get()
                m1<-solve(data)
                m<-a$setinverse(m1)
                m
        }
        
}
