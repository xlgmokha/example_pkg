all : build

build :
	cd example_pkg && python3 setup.py sdist bdist_wheel

publish : build
	cd example_pkg && python3 -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*
