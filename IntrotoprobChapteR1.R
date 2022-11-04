# Introduction to Probability 2nd Edition by Blitzstein and Hwang
# Chapter 1 

# R code examples.


##Vectors 

# Creating a vector 

v <- c(3,1,4,1,5,9)

# Using functions on a vector 

max(v)    # gives the maximum number in a vector. In this case 9
min(v)    # gives the minimum number in a vector. In this case 1
length(v) # gives the length of the vector. In this case 6

# Selecting parts of a vector

v[3] #You can select the v[ith] part of a vector. In this case the 3rd which is a 4

v[3:5] #This is a request for the vector between these two positions in the vector.

v[c(3,5:6)] #These methods can also be combined

v[-(1:3)] # You can use the minus sign for a variable to be returned without the 
          # specified positions. 

# R and component wise interpretation

1/(1:10)^2 # R will assess the code iteratively.


#Factorials and binomial coefficients

n <- 8
k <- 4

factorial(n) # This is n! So if n = 3 this is 3*2*1
choose(n,k)  # This reads as n choose k


#Sampling and simulation

n <- 10; k <- 5 # Numbers 1 to 10, choose 5.
sample(n,k)

sample(n,k, replace=TRUE) # replace=TRUE is the argument to use when you want to
                          # sample with replacement 

sample(letters,4) # Sample also works on non-numeric vectors too.

sample(3,100, replace = TRUE, prob = c(0.05,.90,0.05)) # You can also weight the
                                                       # outcome. Guess which number
                                                       # is more frequent?



#Matching problem simulation

n <- 100                                     # Number of cards in the deck
r <- replicate(10^4, sum(sample(n)==(1:n)))  # Shuffle, count matches
sum(r>=1)/10^4                               # Proportion with a match


#Birthday problem calculation and simulation

k <- 23
1-prod((365-k+1):365)/365^k  # Finds the probability of 2 people have the same 
                             # birthday if there are 23 people in the room.

pbirthday(23)     # Probability of the 2 people out of 23 having the same birthday
qbirthday(0.80)   # With 80% certainty what number of people are needed for a same 
                  # birthday. In this case 35.

#And now the simulation

b <- sample(1:365,23,replace = TRUE) # Generates 23 random birthdays
tabulate(b)

r <- replicate(10^4, max(tabulate(sample(1:365,23,replace = TRUE))))
sum(r>=2)/10^4  # Repeat 10000 times




















