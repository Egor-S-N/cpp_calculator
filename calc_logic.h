// calc_logic.h
#ifndef CALC_LOGIC_H
#define CALC_LOGIC_H

#include <QObject>
#include <QLabel>

class Calc_logc : public QObject
{
    Q_OBJECT
public:
    explicit Calc_logc(QObject *parent = nullptr); 



    Q_INVOKABLE double add(double a, double b);
    Q_INVOKABLE double subtract(double a, double b);
    Q_INVOKABLE double multiply(double a, double b);
    Q_INVOKABLE double divide(double a, double b);
    Q_INVOKABLE double clear_val();
    Q_INVOKABLE double btn_num_click(QString btn_text_value);


private:
    QLabel* val_label;
    double first_value;
    double second_value;
};

#endif // CALC_LOGIC_H
