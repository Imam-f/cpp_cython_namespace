cimport project_1  # Import declarations from project1.pxd
cimport project_2_cpp
# cimport project1

cdef class PyClassFromProject2:
    def __cinit__(self):
        self.c_obj = new project_2_cpp.ClassFromProject2()

    def __dealloc__(self):
        del self.c_obj

    cpdef void method_in_project2(self, project_1.PyClassFromProject1 obj):
        if not isinstance(obj, project_1.PyClassFromProject1):
            raise TypeError("Expected a PyClassFromProject1 instance")
        self.c_obj.method_in_project2(obj.c_obj)