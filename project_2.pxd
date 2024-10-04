cimport project_1  # Import declarations from project1.pxd
cimport project_2_cpp

cdef class PyClassFromProject2:
    cdef project_2_cpp.ClassFromProject2* c_obj
    cpdef void method_in_project2(self, project_1.PyClassFromProject1 obj)