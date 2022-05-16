
install:
	pip install --upgrade pip && pip install -r requirements.txt

unittest:
	python -m pytest -vv --cov=hello test_hello.py

lint:
	pylint --disable=R,C hello.py

all: install lint test