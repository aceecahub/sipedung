#!/bin/bash

# run flask
cd backend
source .venv/bin/activate
python3 app.py &

# run vue
cd ../frontend
npm run dev