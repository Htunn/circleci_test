setup:
		python3 -m venv .circleci_test 

install:
		pip install --upgrade pip && \
					pip install -r requirements.txt

test:
		python -m pytest -vv tests/*.py

validate-circleci:
		# see https://circleci.com/docs/2.0/local-ci/ # processing-a-config
		circleci config process .circleci/config.yml

run-circleci-local:
		circleci local execute

lint:
		pylint tests/*.py

all: install lint test