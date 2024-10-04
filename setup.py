# setup.py
from setuptools import setup, Extension
from Cython.Build import cythonize
import os

project1_include = os.path.abspath('P1')
project2_include = os.path.abspath('P2')

extensions = [
    Extension(
        "project_1",
        ["project_1.pyx", "P1/Project1.cpp"],
        include_dirs=[project1_include],
        language="c++",
    ),
    Extension(
        "project_2",
        # ["project_1.pyx", "P1/Project1.cpp"] +
        ["P1/Project1.cpp"] +
        ["project_2.pyx", "P2/Project2.cpp"],
        include_dirs=[project1_include, project2_include],
        language="c++",
    ),
]

setup(
    name="CombinedProjects",
    ext_modules=cythonize(extensions),
)
