// Project1.cpp
#include "Project1.h"
#include <iostream>

namespace Project1Namespace {

int var = 10;

ClassFromProject1::ClassFromProject1() {
    // Constructor implementation
    std::cout << "ClassFromProject1 constructor called." << std::endl;
}

void ClassFromProject1::method_in_project1() {
    // Method implementation
    std::cout << "Method in Project1 called." << std::endl;
}

} // namespace Project1Namespace
