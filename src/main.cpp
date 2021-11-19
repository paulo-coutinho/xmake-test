#include "lib.hpp"
#include <memory>

int main()
{
    auto obj = std::make_shared<MyLib>();
    obj->initialize();

    return EXIT_SUCCESS;
}