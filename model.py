# -*- coding: utf-8 -*-
"""Untitled6.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1hgNm0TGc0bsMRe3X6F2dxYyw0o5Z5Lfc
"""

import numpy as np
import pandas as pd
import tensorflow as tf
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder
from sklearn.preprocessing import StandardScaler
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense, Dropout
from tensorflow.keras.optimizers import Adam

# Load your dataset
# Assuming your dataset is in a CSV file
dataset = pd.read_csv('crop_data.csv')  # Replace with your dataset path

# Split dataset into features (X) and labels (y)
X = dataset.iloc[:, :-1].values
y = dataset.iloc[:, -1].values

# Encode labels to numerical values
le = LabelEncoder()
y = le.fit_transform(y)

# Split the data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Normalize the input features (optional but recommended)
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)

# Build the deep learning model with extra hidden layers
model = Sequential()

# Input layer
model.add(Dense(units=128, activation='relu', input_dim=X_train.shape[1]))
model.add(Dropout(0.2))

# Hidden layers
model.add(Dense(units=256, activation='relu'))
model.add(Dropout(0.2))

model.add(Dense(units=256, activation='relu'))
model.add(Dropout(0.2))

model.add(Dense(units=128, activation='relu'))
model.add(Dropout(0.2))

# Output layer
model.add(Dense(units=len(np.unique(y)), activation='softmax'))

# Compile the model
model.compile(optimizer=Adam(learning_rate=0.001), loss='sparse_categorical_crossentropy', metrics=['accuracy'])

# Train the model
model.fit(X_train, y_train, epochs=100, batch_size=64, validation_data=(X_test, y_test))

# Evaluate the model
test_loss, test_accuracy = model.evaluate(X_test, y_test)
print(f"Test Loss: {test_loss}, Test Accuracy: {test_accuracy}")

# Make predictions for new data
# Replace 'new_data' with your own input data
new_data = np.array([[12,33,70,45.453934,35.23490739,15.380185271,30.6317566]])
scaled_new_data = scaler.transform(new_data)
predictions = model.predict(scaled_new_data)

# Decode the predicted label
predicted_crop = le.inverse_transform([np.argmax(predictions)])
print(f"Recommended Crop: {predicted_crop[0]}")