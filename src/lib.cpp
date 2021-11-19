#include "lib.hpp"
#include <iostream>

MyLib::MyLib()
{
    std::cout << "MyLib - Constructor\n"
              << std::endl;
}

MyLib::~MyLib()
{
    std::cout << "MyLib - Destructor\n"
              << std::endl;
}

bool MyLib::initialize()
{
    std::cout << "MyLib - Initialize\n"
              << std::endl;

    return true;
}