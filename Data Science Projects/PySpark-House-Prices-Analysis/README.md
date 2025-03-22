# PySpark House Prices Analysis

## Objectives
- Develop accurate predictive models for estimating residential property sale prices.
- Aid homeowners, buyers, and real estate professionals in decision-making by providing accurate price estimates.
- Identify and quantify the impact of property features on sale prices, empowering homeowners and guiding prospective buyers.
- Reveal market trends through the examination of historical data, providing insights for real estate investors and policymakers.
- Explore various regression techniques, from traditional linear regression to advanced algorithms, to support data scientists in selecting the most effective modeling approaches.
- Delve into feature engineering to optimize model accuracy, benefiting data scientists and analysts.

## Overview
This study delves into the intricate dynamics of residential property prices using Kaggle’s House Prices dataset, sourced from Ames, Iowa. With 79 distinct variables capturing various facets of homes, we embark on a journey to uncover the hidden patterns and influential factors behind sale prices. Our objective is to employ advanced regression techniques to develop accurate predictive models, shedding light on the complexities of the real estate market.

## Introduction
Our exploration of predictive analytics using Kaggle’s House Prices dataset takes us into the realm of residential properties in Ames, Iowa. This dataset offers a rich tapestry of variables, delving into every conceivable aspect of these homes. Unlike conventional assumptions that prioritize factors like room count or garden size in determining property value, this dataset reveals a nuanced interplay of features influencing sale prices.

We selected this dataset for its potential in feature engineering and its demand for advanced regression techniques, focusing on SalePrice as the target variable. Contrasting with more traditional datasets like the Boston Housing dataset, this presents a contemporary and intricate alternative, aligning perfectly with our pursuit of cutting-edge analysis.

Through this project, our objective is to unravel the intricacies of residential property prices, crafting accurate predictive models, and delivering actionable insights for stakeholders in the real estate market.

## Dataset
The dataset used in this study can be found on [House Prices Dataset](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques/data?select=train.csv)

## Methodology
- Data Source: Kaggle’s House Prices dataset
- Tools: PySpark, Pandas (for visualization purposes)
- Techniques: Advanced regression techniques, feature engineering, exploratory data analysis (EDA)

## Model Implementation
In our analysis, we implement the following machine learning models:

### Linear Regression
In order to find the best model to predict housing prices, we will start by trying a Linear Regression model . Linear Regression is known for its simplicity and interpretability which makes it a good starting point for regression problems like ours. Our dataset, which has key features like OverallQual, GrLivArea, GarageCars, and several others, in order to predict a single value is an ideal scenario to use this model. We aim to explore the relationship between these features and the house prices, hypothesizing from our EDA that factors like the overall quality of the house, living area, and garage capacity are significant predictors of price. Our goal here is to establish a baseline performance that the later, more complex models can be compared against. Our evaluation will not only involve assessing the model's accuracy but also involve a residual analysis to ensure the reliability and robustness of our predictions.

![Residual Plot](/Images/linear_regression.png)

This plot shows the difference between predicted and real values. A perfect model would have a line of residuals across a horizontal line at 0, meaning that the predicted is the same as the real value at all areas. However, we can see from this plt that as the actual value increases, the residuals also increase. This suggests that the Linear Regression model may be underestimating the housing prices for higher-valued houses. while the Linear Regression model provides a useful baseline, the residual plot reveals that there are improvements to be made to better capture the nuances of the dataset and improve prediction accuracy, particularly for houses at the higher end of the price spectrum.

### Decision Tree

Now we will move onto the Decision Tree model. Decision Trees offer a more flexible approach to modeling non-linear relationships and interactions between variables without the need for specific feature engineering. They are good at capturing complex patterns in the data by dividing the space into a hierarchy of yes or no decisions, making them goodfor datasets where the relationship between the variables and the target may not be easily approximated by a straight line. Our housing dataset has a diverse range of features from OverallQual to YearRemodAdd, and a Decision Tree has the potential to discern the nuanced decision rules that might factor into the sale price. However, a  consideration with Decision Trees is their tendency to overfit the training data. To prevent this, we will perform hyperparameter tuning, such as the depth of the tree and the minimum number of samples required to split, ensuring that the model generalizes well to unseen data. The following code will initialize our Decision Tree model, tune its hyperparameters, and evaluate its performance.

![Residual Plot](https://github.com/rohitaragde/Projects/blob/master/Data%20Science%20Projects/PySpark-House-Prices-Analysis/Images/decision_tree.png)


These feature importances show that Overall Quality is clearly the best variable for predicting sale price. It also shows that the feature we created has proven to be useful - GrLivArea2. It has 3x higher importance score than the original variable that was not squared.



### Random Forest

To follow up the decision tree model, we will try the Random Forest Regressor, an ensemble learning method known for its versatility. Random Forest builds on the simplicity of decision trees by creating an ensemble of trees with controlled randomness, which is meant to improve the model's generalization. Since there are many different factors influencing housing prices and the potential interactions between them, random forest is able to uncover the underlying patterns within our dataset. By combining the predictions of numerous decision trees, each trained on different subsets of the data, the Random Forest model reduces the risk of overfitting and gets a more comprehensive picture of the data's intricacies. We will tune the hyperparemeters such as the number of trees in the forest and the depth of each tree, which is important for balancing bias and variance and achieving a model that generalizes well to new data.

Root Mean Squared Error (RMSE): 38707.43179219108
R-squared: 0.7598180871351901

## Model Evaluation
Residual plots for each model revealed that the models perform worse when trying to predict the price of more expensive homes. This could partially be explained by the difference between between the predicted and actual price being a far larger value, but still a similar percentage off than those of lower values.

Comparing all models, it was observed that the Random Forest model performed the best in terms of MSE and R². This comparative analysis highlighted the strengths and weaknesses of each model, with Random Forest and Neural Networks capturing complex patterns effectively, and linear regression struggling with the non-linear nature of the data.

In summary, our exploration through different modeling techniques has provided valuable insights into predicting housing prices. The varying performances and characteristics of each model underscore the complexity of the task and the importance of choosing the right model for the specific nuances of the dataset.

![Model Evaluation](/Images/model_performance.png)



## Potential Improvements

Advanced Feature Engineering: Continuously explore feature engineering possibilities, considering more sophisticated techniques like dimensionality reduction and text analytics for property descriptions.

**Time-Series Analysis:** Incorporate time-series analysis to capture evolving market trends and adapt to changing dynamics.

**Advanced Modeling:** Experiment with state-of-the-art machine learning and deep learning models to capture complex feature interactions.

**Cross-Validation:** Implement robust cross-validation strategies to ensure model stability and reliability.

**Feature Importance Analysis:** Conduct in-depth feature importance analysis to unveil hidden relationships and patterns.

## Refining Data Selection for Ongoing Analysis with Rationale
Some important data useful for analysis:

**OverallQual**: The overall quality of the house is a critical factor in determining its sale price.  

**GrLivArea**: The above-ground living area's square footage has a substantial impact on property values.  

**GarageCars**: The number of cars the garage can accommodate is a practical feature that influences price.  

**TotalBsmtSF**: The total square feet of the basement is a significant contributor to property value.  

**YearBuilt**: The year the house was built is a fundamental factor in property pricing, reflecting its age and potentially its condition.  

## Key Insights
Our analysis of housing price prediction models using Linear Regression, Decision Tree, and Random Forest revealed valuable insights:
- The Random Forest model demonstrated superior predictive accuracy and explanatory power compared to other models.
- Key predictors of housing prices, including Overall Quality, Yardage Above Land, and Basement Sq Ft, were identified through feature importance analysis.
- These findings have significant implications for stakeholders in the real estate industry, enabling more informed decisions regarding property valuation, investment strategies, and market trends.

## Future Research
Moving forward, further research could explore additional ensemble learning methods and feature selection techniques to continue improving predictive models in the real estate domain.


## Future Work
- Further exploration of advanced regression techniques and feature engineering methods to enhance model accuracy.
- Integration of additional datasets to capture more comprehensive insights into residential property prices.

