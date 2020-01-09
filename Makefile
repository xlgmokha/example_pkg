all : build

build :
	cd example_pkg && python3 setup.py sdist bdist_wheel
