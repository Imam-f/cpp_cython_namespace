# test.py
from src import PyClassFromProject1
from src import PyClassFromProject2

# Create instances of the wrapped classes
obj1 = PyClassFromProject1()
obj2 = PyClassFromProject2()

# Call methods
obj1.method_in_project1()
obj2.method_in_project2(obj1)
