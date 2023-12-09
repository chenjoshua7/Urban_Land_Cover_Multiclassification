library(readr)

df_test <- read_csv("data/testing.csv")
df_train <- read_csv("data/training.csv")

X_train <- df_train[,-1]
y_train <- as.data.frame(df_train[,1])
X_test <- df_test[,-1]
y_test <- as.data.frame(df_test[,1])

columns = sort(unique(y_test$class))
y_train_dum <- as.data.frame(model.matrix(~ class - 1, data = y_train))
y_test_dum <- as.data.frame(model.matrix(~ class - 1, data = y_test))
colnames(y_train_dum) = columns
colnames(y_test_dum) = columns

# Check this is done correctly
colSums(y_train_dum) == table(y_train)
colSums(y_test_dum) == table(y_test)

write_csv(y_train_dum, 'processed_data/y_train_dum.csv')
write_csv(y_test_dum, 'processed_data/y_test_dum.csv')
write_csv(X_train, 'processed_data/X_train.csv')
write_csv(X_test, 'processed_data/X_test.csv')
