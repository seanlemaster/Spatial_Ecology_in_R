# This code will develop user-based functions 

sean <- function(num1,num2){
  z = num1 + num2
  return(z)
  }

somma <- function(x,y){
  z=x+y
  return(z)
  }

# Exercise: build a funct to multiply two numbers

multiply <-function(baby, dumb){
  alanna = baby * dumb
  return(alanna)
  }

# Exercise: build a funct to make the sum of three numbers

three <-function(baby, dumb, dog){
  alanna = baby + dumb + dog
  return(alanna)
  }


mf <- function(nx,ny){
  par(mfrow=c(nx,ny))
  }

mf(1,2)
plot(3,5)
plot(6,7)

# Putting default values inside functions, where there are 2 rows and 1 column
mfdef <- function(nx=2,ny=1){
  par(mfrow=c(nx,ny))
  }

mfdef()
plot(3,5)
plot(6,7)


# Using operators if else to look if a number is positive or negative
numeri <- function(x){
  if(x>0){
    print("This number is positive!")
    }
  else {
    print("This number is negative, idiot!")
    }
  }


# Considering all the potential cases

numeri <- function(x){
  if(x>0){
    print("This number is positive!")
    }
  else if (x<0){
    print("This number is negative, idiot!")
    }
  else {
    print("Zero is nor positive nor negative")
    }
  }

# Developing for loops
loop <- function(){
  for (i in 1:10) {
    print(i)
    }
  }

loop()

# Exercise: develop a loop that will print 13000 numbers
loop <- function(){
  for (i in 1:13000) {
    print(i)
    }
  }

# Loop with an operation inside
loop2 <- function(){
  for (i in 1:10) {
    multi <- i * 4
    print(multi)
    }
  }

# Exercise: make a loop with the power operator
loop2 <- function(){
  for (i in 1:10) {
    multi <- i ^ 4
    print(multi)
    }
  }

# making an outpit
sink("numbers.txt.")
loop2()
    
