#!/bin/bash

echo "BUILD START"

# Activate virtual environment if needed
# Replace 'venv' with your virtual environment directory name
source env/bin/activate
# Install dependencies
python3 -m pip install -r requirements.txt

# Collect static files
python3 manage.py collectstatic --noinput --clear

echo "BUILD END"
