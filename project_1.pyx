cimport project_1_cpp
cimport cython

cdef class PyClassFromProject1:
    def __cinit__(self):
        self.c_obj = new project_1_cpp.ClassFromProject1()

    def __dealloc__(self):
        del self.c_obj

    cpdef void method_in_project1(self):
        self.c_obj.method_in_project1()

ctypedef fused fuse_a:
    int
    char

ctypedef fused fuse_b:
    int
    char

cdef print_one(fuse_a a, fuse_b b):
    if fuse_a is int:
        return a
    else:
        return b

cdef int a = 1
cdef char b = 'a'
cdef c = print_one(a, b)
print(c, cython.typeof(c))
