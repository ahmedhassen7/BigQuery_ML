# BigQuery_ML
GCP projects on Machine Learning with BigQuery_ML

## Predicting_purchases 

(BigQuery machine learning) is a feature in BigQuery where data analysts can create, train, evaluate, and predict with machine learning models with minimal coding.

### Objectives
 - Use BigQuery to find public datasets
 - Query and explore the dataset
 - Create the training and evaluation datasets
 - Create a classification model with BigQuery ML feature
 - Evaluate and Predict the model
 
### 1.Explore the ecommerce Dataset

We are going to explore the data through some questions 

#### out of the total visitors who visited our website, what % made a purchase?
find the Query in the pruchase_rate.sql

#### What are the top 5 selling products?
find the Query in top_products.sql

### How many visitors bought on subsequent visits to the website?
find this Query in subsequent_visit.sql

### 2. Create the training dataset (choosing the relevant features for the model)
- bounces (whether the visitor left the website immediately)
- timeOnSite (how long the visitor was on our website)

### 3. Create the Classification Model with BigQuery_ML
Model will be trained on the first 9 months of session 
fin the Query in classification_model1.sql

### 4. Evaluate the model
for this task we choose the Receiver Operating characteristic (ROC) curve to evaluate our model
We try to see, if the features we did select gave our model a good performance 
the evaluation was made on two month period on wich the model was not trained on 
fin the Query in Evaluate_model1.sql
- with less than 72% on the ROC curve, our model did not perform well. So in the next part we will try to enhance the performance by adding more features 

### 5.Improve the model performance 

Features we did add 
- How far the visitor got in the checkout process on their first visit
- Where the visitor came from (traffic source: organic search, referring site etc.)
- Device category (mobile, tablet, desktop) 
- Geographic information (country)

find the Queries in classification_model2.sql/evaluate_model2.sql

with recent modifications, we are up to 91% which is considered to be a good score 

### 6. Make some predcitions 

find the Query in the predict.sql
