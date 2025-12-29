#!/bin/bash

# run flask
python3 app.py &

# run vue
cd ../frontend
npm start