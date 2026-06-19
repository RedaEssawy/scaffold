## Upgrade Pip and install the requirements
install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

## Run the code formatter black on all Python files
format:
	black *.py

## Run the linter on the Python files
lint:
	pylint --disable=R,C hello.py

## Run the tests with pytest and generate a coverage report
test:
	python -m pytest -vv --cov=hello test_hello.py

all: install lint test