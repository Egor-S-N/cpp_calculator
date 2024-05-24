#ifndef CALCULATOR_H
#define CALCULATOR_H


class Calculator{

public:
    //конструктор по умолчанию
    Calculator();
    
    /**
    * @brief Возвращает результат последней операции.

    * @return double Результат последней операции.
    */
    double get_result();

    /**
    * @brief Выполняет сложение двух чисел.
    * 
    * Эта функция принимает два числа с плавающей точкой и записывает результат в переменную.
    * 
    * @param first Первое число для сложения.
    * @param second Второе число для сложения.
    */
    void plus_operation(double first, double second);
private:
    //результат операций
    double result;

};

#endif
