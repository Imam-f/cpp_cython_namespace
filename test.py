# test.py
from src.project_1 import PyClassFromProject1
from src.project_2 import PyClassFromProject2

# Create instances of the wrapped classes
obj1 = PyClassFromProject1()
obj2 = PyClassFromProject2()

# Call methods
obj1.method_in_project1()
obj2.method_in_project2(obj1)
