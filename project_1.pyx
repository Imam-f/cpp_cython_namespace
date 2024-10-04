cimport project_1_cpp

cdef class PyClassFromProject1:
    def __cinit__(self):
        self.c_obj = new project_1_cpp.ClassFromProject1()

    def __dealloc__(self):
        del self.c_obj

    cpdef void method_in_project1(self):
        self.c_obj.method_in_project1()
