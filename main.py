from fastapi import FastAPI
import random

title='TITLE HERE'
description='Description here.'
version='v0.1.0'
contact={'name':'Condados, L. G. P', 'email':'condadoslgpc@gmail.com'}
license='MIT Licensed'

app = FastAPI(title=title,
              description=description,
              version=version,
              contact=contact,
              license=license)

@app.post('/predict', tags=['Predictions'])
def predict():
    return {'predictions': random.random()}