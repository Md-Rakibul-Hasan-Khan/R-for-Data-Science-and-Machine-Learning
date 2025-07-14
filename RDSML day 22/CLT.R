# demonstration of CLT

# generate 10000 numbers for uniform distribution
r = runif(10000)
r
hist(r)
meanr = mean(r)
sdr = sd(r)

# draw 3 random samples from the distribution
samples1 = sample(r,4)
samples1

samples2 = sample(r,4)
samples2

samples3 = sample(r,4)
samples3

mean(samples1)
mean(samples2)
mean(samples3)

# run a for loop
cl00 = mean (sample(r,4))
cl00

for (i in 1:100){
  cl00 = c(cl00, mean(sample(r,100)))
}

cl00
mean(cl00)

hist(cl00)


