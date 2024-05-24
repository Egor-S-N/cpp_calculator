#include "calculator.h"

#include <iostream>

Calculator::Calculator(){
    std::cout << "Calc_init\n";
}

double Calculator::get_result(){
    return this->result;
}


void Calculator::plus_operation(double first, double second){
    this->result = first + second;
}