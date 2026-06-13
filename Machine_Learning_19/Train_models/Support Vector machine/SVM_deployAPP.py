import streamlit as st
import numpy as np
import pickle

# Load Model
with open(r'D:\AI & ML\Machine_Learning_19\Supervise_learning\Classification\SVM_deployAPP.pkl','rb') as file:
    my_model = pickle.load(file)

st.title('Iris Prediction Machine')
st.write('Input Feature for Prediction')

# Inputs
sepal_length = st.number_input('sepal_length', min_value=4.3, max_value=7.9, format="%.2f")
sepal_width = st.number_input('sepal_width', min_value=2.0, max_value=4.4, format="%.2f")
petal_length = st.number_input('petal_length', min_value=1.0, max_value=6.9, format="%.2f")
petal_width = st.number_input('petal_width', min_value=0.1, max_value=2.5, format="%.2f")

# Prediction
if st.button('Prediction'):
    input_data = np.array([[sepal_length, sepal_width, petal_length, petal_width]])
    Var_prediction = my_model.predict(input_data)

    if Var_prediction == 0:
        st.success('Setosa')
    elif Var_prediction == 1:
        st.success('Versicolor')
    else:
        st.success('Virginica')
