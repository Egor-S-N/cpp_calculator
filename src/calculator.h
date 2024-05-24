#ifndef CALCULATOR_H
#define CALCULATOR_H

//структура типа операции
enum math_operation{
    SUMM_OPERATION,       // сложение
    MINUS_OPERATION,      // вычитание
    MULTIPLY_OPERATION,   // умножение
    DIVISION_OPERATION    // деление
};

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

    /**
    * @brief Выполняет вычитание двух чисел.
    * 
    * Эта функция принимает два числа с плавающей точкой и записывает результат в переменную.
    * 
    * @param first Первое число для вычитания.
    * @param second Второе число для вычитания.
    */
    void minus_operation(double first, double second);

    /**
    * @brief Выполняет умножение двух чисел.
    * 
    * Эта функция принимает два числа с плавающей точкой и записывает результат в переменную.
    * 
    * @param first Первое число для умножения.
    * @param second Второе число для второе.
    */
    void multiply_operation(double first, double second);

    /**
    * @brief Выполняет деление двух чисел.
    * 
    * Эта функция принимает два числа с плавающей точкой и записывает результат в переменную.
    * 
    * @param first Первое число для деления.
    * @param second Второе число для деления.
    */
    void division_operation(double first, double second);
private:
    //результат операций
    double result;

};

#endif
