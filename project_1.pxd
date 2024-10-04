cimport project_1_cpp 

cdef class PyClassFromProject1:
    cdef project_1_cpp.ClassFromProject1* c_obj
    cpdef void method_in_project1(self)