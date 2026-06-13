import streamlit as st
import numpy as np
import pickle

with open(r'D:\AI & ML\Machine_Learning_19\Train_models\Student_performence_ind.pkl','rb') as file:
    Model = pickle.load(file)


st.title('Student Performanfce Index')
st.write('Input Your information ')

# 'Hours Studied','Previous Scores','Extracurricular Activities',
#             'Sleep Hours','Sample Question Papers Practiced' 

Hours_Studied = st.number_input('Hours Studied',min_value= 1, max_value= 9)

Previous_Scores= st.number_input('Previous Scores',min_value=40 , max_value=99 )

Extracurricular_Activities = st.number_input('Extracurricular Activities',min_value=0 , max_value=1 )

Sleep_Hours = st.number_input('Sleep Hours',min_value=4 , max_value= 9)

Sample_Question_Papers_Practiced = st.number_input('Sample Question Papers Practiced',min_value=0 , max_value=9 )


columns = ['Hours Studied','Previous Scores','Extracurricular Activities','Sleep Hours','Sample Question Papers Practiced']

if st.button('Student Performance Index'):
    
    input_data  = np.array([[Hours_Studied,Previous_Scores,Extracurricular_Activities,Sleep_Hours,Sample_Question_Papers_Practiced]])
    New_predict = Model.predict(input_data)
    st.success(f'Predicted Performance Index: {New_predict[0]:.2f}')
