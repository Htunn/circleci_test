setup:
		python3 -m venv .circleci_test 

install:
		pip install --upgrade pip && \
					pip install -r requirements.txt

test:
		python -m pytest -vv --cov=circleci_test tests/*.py

lint:
		pylint --disable=R, C circleci_test cli web

all: install lint test