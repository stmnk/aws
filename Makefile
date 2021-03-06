install:
	pip install --upgrade pip && pip install -r requirements.txt


format:
	black *.py
	

lint:
	pylint --disable=R,C hello cli
	

test:
	python -m pytest -vv --cov=libs --cov=cli tests/*.py
	python -m pytest --nbval-lax notebook.ipynb


all: install format lint test