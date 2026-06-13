import streamlit as st
import numpy as np
import pickle

# Load Model wi

with open(r'D:\AI & ML\Machine_Learning_19\Supervise_learning\Classification\Titanic_survive_log_model.pkl','rb') as file:
    model = pickle.load(file)

# Set the Title

st.title('Titanic Survival Prediction Model')

st.write('Input Feature for Prediction')

# Pclass Sex Age SibSp Parch Fare Embarked 

# Define data feature of prediction

Pclass = st.number_input('Pclass',min_value=1,max_value=3)
Sex = st.number_input('Sex',min_value=0,max_value=1)
Age = st.number_input('Age',min_value=0,max_value=80)
SibSp = st.number_input('SibSp',min_value=0,max_value=8)
Parch = st.number_input('Parch',min_value=0,max_value=6)
Fare = st.number_input('Fare',min_value=0,max_value=600)
Embarked = st.number_input('Embarked',min_value=0,max_value=2)
  
# make preddiction functiopn

if st.button('Prediction'):
    input_data = np.array([[Pclass,Sex,Age,SibSp,Parch,Fare,Embarked]])
    Var_prediction = model.predict(input_data)

    if Var_prediction == 0:
        st.success('Not Survived')
    else:
        st.success('Survived')

        