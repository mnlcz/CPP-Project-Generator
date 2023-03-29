#include "main.hpp"

int hola_test()
{
    return hola() != "Hola mundo!";
}

int main()
{
    int fallas = 0;

    fallas += hola_test();

    return fallas;
}
