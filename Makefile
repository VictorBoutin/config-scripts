default: python

update:
	update

python:
	sh macos_python.sh

clean:
	rm -fr /tmp/tensor*
