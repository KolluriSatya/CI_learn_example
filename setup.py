import os
from setuptools import setup

# Utility function to read the README file.
# Used for the long_description.  It's nice, because now 1) we have a top level
# README file and 2) it's easier to type in the README file than to put a raw
# string in below ...
def read(fname):
    return open(os.path.join(os.path.dirname(__file__), fname)).read()

setup(
    name = "an_example_conda_project",
    version = "1.2.4",
    author = "Kolluri Satya",
    author_email = "satyakprasannakolluri1995@gmail.com",
    description = ("An demonstration of how to create, document, and publish "
                   "to the cheese shop a5 pypi.org."),
    license = "BSD",
    keywords = "example learning",
    url = "https://https://github.com/KolluriSatya/CI_learn_example",
    packages=['conda'],
    classifiers=[
        "Development Status :: 01 - testing",
        "Topic :: Conda install and build",
        "License :: OSI Approved :: BSD License",
    ],
)
