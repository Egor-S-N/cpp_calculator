// calc_logic.h
#ifndef CALC_LOGIC_H
#define CALC_LOGIC_H

#include <QObject>

class Calc_logc : public QObject
{
    Q_OBJECT
public:
    explicit Calc_logc(QObject *parent = nullptr);  // Сделайте конструктор явным и публичным

    Q_INVOKABLE double add(double a, double b);
    Q_INVOKABLE double subtract(double a, double b);
    Q_INVOKABLE double multiply(double a, double b);
    Q_INVOKABLE double divide(double a, double b);
};

#endif // CALC_LOGIC_H
