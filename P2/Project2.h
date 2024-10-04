// Project2Header.h
#ifndef PROJECT2_H
#define PROJECT2_H

#include "Project1.h"  // Include Project1's header

namespace Project2Namespace {

using namespace Project1Namespace;  // Use Project1's namespace

class ClassFromProject2 {
public:
    ClassFromProject2();
    void method_in_project2(ClassFromProject1* obj);
};

} // namespace Project2Namespace

#endif // PROJECT2_H
