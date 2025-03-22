# Loan Repayment Prediction Analysis System

## Introduction
In the domain of financial lending, accurately predicting loan repayment is a critical task for financial institutions. This project aims to develop a loan repayment system that utilizes machine learning algorithms to predict the risk of loan default and manage repayment processes effectively. By evaluating and comparing various machine learning models, we aim to identify the most reliable approach for predicting loan repayment, thereby aiding in risk management and financial planning.

## Features
- Predict loan repayment risk based on applicant demographics and financial details.
- Evaluate multiple machine learning models to determine the most effective one.
- Manage repayment processes effectively with reliable predictions.

## Dataset
The dataset consists of 614 loan applications with the following key features:
- **Loan_ID:** Unique identifier for the loan application.
- **Gender:** Gender of the applicant.
- **Married:** Marital status of the applicant.
- **Dependents:** Number of dependents.
- **Education:** Education level of the applicant.
- **ApplicantIncome:** Income of the applicant.
- **CoapplicantIncome:** Income of the coapplicant.
- **LoanAmount:** Amount of the loan.
- **Credit_History:** Credit history of the applicant.
- **Loan_Status:** Status of the loan (target variable).

## Machine Learning Algorithms
To predict loan repayment status, we implemented the following machine learning algorithms:

- **Logistic Regression:** Chosen for its simplicity and interpretability, Logistic Regression serves as a strong baseline for comparison with more complex models. It is well-suited for binary classification tasks and provides insights into the relationships between features and the target variable.
  - **Performance:** Achieved an accuracy of 82.25% and a precision of 86.29%. It serves as a strong baseline model with high precision, particularly in predicting non-repaid loans, but has a moderate number of false positives.

- **K-Nearest Neighbors (KNN):** This non-parametric algorithm classifies data points based on the majority class among its k-nearest neighbors. We chose KNN to explore the impact of local data structures and to understand the influence of neighborhood-based classification on loan repayment prediction.
  - **Performance:** Achieved an accuracy of 78.70% and a precision of 81.67%. While it is a simple and intuitive model, its performance is lower than that of Logistic Regression and Random Forest. The accuracy and precision of KNN are significantly influenced by the choice of k.

- **Random Forest:** An ensemble learning method that constructs multiple decision trees and combines their predictions. We selected Random Forest for its ability to handle diverse features, capture complex interactions, and reduce overfitting through ensemble averaging.
  - **Performance:** Achieved the highest accuracy of 82.84% and a precision of 86.64%. This model benefits from tuning the max_leaf_nodes parameter and effectively captures complex interactions between features. It maintained strong performance in cross-validation with an accuracy of 84.72% and precision of 85.67%, making it the most effective model for loan repayment prediction in this evaluation.

## Challenges
- **Imbalanced Data:** The initial imbalance in loan status could bias the model, even after applying techniques like SMOTE.
- **Missing Values:** Handling missing data by filling with mean or mode might not capture the true underlying patterns.
- **Feature Selection:** Some features may not have been fully optimized or engineered for the best predictive power.
- **Model Complexity:** Simpler models like Logistic Regression and KNN might not capture complex interactions between features as effectively as more advanced models.
- **Overfitting Risk:** Tuning parameters such as max_leaf_nodes in Random Forest needs careful balancing to avoid overfitting.

## Future Improvements
- **Hyperparameter Tuning:** Further optimize model performance by exploring a wider range of hyperparameters using grid search or random search.
- **Feature Engineering:** Create new features or transform existing ones to capture more information and improve model accuracy.
- **Ensemble Methods:** Combine multiple models, such as boosting or stacking, to leverage the strengths of different algorithms.
- **Advanced Algorithms:** Explore sophisticated algorithms like Gradient Boosting, XGBoost, or deep learning models for potentially better performance.
- **Real-Time Prediction:** Implement the model in a real-time system to provide immediate loan repayment predictions and assist decision-making processes for financial institutions.

## Technologies Used
- Python
- Pandas
- NumPy
- Scikit-learn
- Matplotlib
- Seaborn

## Installation Instructions
1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/loan-repayment-prediction.git
    ```
2. Navigate to the project directory:
    ```bash
    cd loan-repayment-prediction
    ```
3. Create and activate a virtual environment:
    ```bash
    python3 -m venv venv
    source venv/bin/activate  # On Windows use `venv\Scripts\activate`
    ```
4. Install the required packages:
    ```bash
    pip install -r requirements.txt
    ```

## Implementation 
Execute all the cells of the Jupyter notebook sequentially, starting with data acquisition, followed by preprocessing, and then model implementation, evaluation, and prediction.

## Authors
- Rohit Annasaheb Ragde
- Disha Yadav

