install:
	pip install --upgrade pip && pip install -r requirements.txt


format:
	black *.py
	

lint:
	pylint --disable=R,C hello cli
	

test:
	python -m pytest -vv --cov=lib --cov=cli tests/*.py
	python -m pytest --nbval-lax notebook.ipynb


all: install lint test