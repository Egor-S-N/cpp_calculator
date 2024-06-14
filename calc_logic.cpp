#include "calc_logic.h"
#include <QDebug>
Calc_logc::Calc_logc(QObject *parent) : QObject(parent) {}

double Calc_logc::add(double a, double b) {
    qDebug()<<"тест1";
    return a + b;
}

double Calc_logc::subtract(double a, double b) {
    return a - b;
}

double Calc_logc::multiply(double a, double b) {
    return a * b;
}

double Calc_logc::divide(double a, double b) {
    if (b == 0.0) return 0.0; // для простоты, возвращаем 0 при делении на 0
    return a / b;
}