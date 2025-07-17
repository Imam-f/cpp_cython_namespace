// Project2.cpp
#include "Project2.h"
#include <iostream>

namespace Project2Namespace {

ClassFromProject2::ClassFromProject2() {
    // Constructor implementation
    std::cout << "ClassFromProject2 constructor called." << std::endl;
}

void ClassFromProject2::method_in_project2(ClassFromProject1* obj) {
    // Method implementation that uses ClassFromProject1
    std::cout << "Method in Project2 called.    " << var++ << std::endl;
    std::cout << "Calling method_in_project1 from Project1:    " << var << std::endl;
    obj->method_in_project1();
}

} // namespace Project2Namespace
