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

void Calculator::minus_operation(double first, double second){
    this->result = first - second;
}

void Calculator::multiply_operation(double first, double second){
    this->result = first * second;
}

void Calculator::division_operation(double first, double second){
    this->result = first / second;
}