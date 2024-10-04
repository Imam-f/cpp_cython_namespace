cimport project_1_cpp

cdef extern from "Project2.h" namespace "Project2Namespace":
    cdef cppclass ClassFromProject2:
        ClassFromProject2()
        void method_in_project2(project_1_cpp.ClassFromProject1* obj)
