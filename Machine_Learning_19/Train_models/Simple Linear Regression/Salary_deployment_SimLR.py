import streamlit as st
import pickle 
import numpy as np


with open(r'D:\AI & ML\Machine_Learning_19\Train_models\Linear_Train_model_sala.pkl','rb') as file:
    New_model = pickle.load(file)

st.title('Salary Pridiction')

Year_of_Experience = st.number_input('YearsExperience',min_value=1 , max_value=10 )

# When user enter number in streamlit then that value store in Year_of_Experience variable that's why.


if st.button('Predict Salary'):
    input_data = np.array([[Year_of_Experience]])
    prediction = New_model.predict(input_data)
    st.success(f'Predicted Salary: {prediction[0]:.2f}')