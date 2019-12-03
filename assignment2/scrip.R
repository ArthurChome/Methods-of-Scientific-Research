# METHODS FOR SCIENTIFIC RESEARCH
# Assignment 2

# QUESTION 4
# Read a txt file, named "mtcars.txt"
question4 <- read.delim(file.choose(), header = T)
question4$type <- as.numeric(question4$type)

# Two-way table 
xtabs(~success + type, data = question4)

str(question4)
# Sample the data
ind = sample(2, nrow(question4), replace = T, prob = c(1.0, 0.1))

train = question4[sample(2, nrow(question4), replace = T, prob = c(1.0, 0.1))==1,]

trainingData <- question4[1:200,]
test <- question4[200:200,]

# Fit the model: question4 is the training data.
mymodel = glm(success ~ type + parameters, data = train, family = 'binomial')

summary(mymodel)

## Individual predicated probabilities
# You have to give a value for all 
predict(mymodel,  data.frame(type=1, parameters=18050), type="response")
predict(mymodel,  data.frame(type=2, parameters=18274), type="response")


