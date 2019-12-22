# METHODS FOR SCIENTIFIC RESEARCH
# Assignment 2

# QUESTION 4

# Read a txt file, named "mtcars.txt"
question4 <- read.delim(file.choose(), header = T)
question4$type <- as.numeric(question4$type)

# Group comparison
## Add a new factor variable to the data collection
question4$type <- as.factor(question4$type)
train = question4[sample(2, nrow(question4), replace = T, prob = c(1.0, 0.1))==1,]
# Fit the model: question4 is the training data.
mymodel = glm(success ~ type + parameters, data = train, family = 'binomial')

summary(mymodel)


# Two-way table 
xtabs(~success + type, data = question4)

str(question4)
# Sample the data
ind = sample(2, nrow(question4), replace = T, prob = c(1.0, 0.1))


newdata<-with(question4, data.frame(question4$parameters=mean(question4$parameters), type=factor(0:1)))

## Individual predicated probabilities: TESTS
predict(mymodel2,  with(question4, data.frame(parameters=mean(parameters), type=factor(1:2))), type="response")
#predict(glm(success ~ type + parameters, data = train, family = 'binomial'),  with(question4, data.frame(parameters=mean(parameters), type=factor(1:2))), type="response")


