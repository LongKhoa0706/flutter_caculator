import 'package:flutter/material.dart';

class CaculatorProvider with ChangeNotifier{
    int num1 = 0, num2 = 0, sum = 0;

    CaculatorProvider();

    void doPlus(String number1 , String number2 ){
      num1 = int.parse(number1);
      num2 = int.parse(number2);
       sum = num1 + num2;
       notifyListeners();
    }
    void doMinus(String number1 , String number2 ){
      num1 = int.parse(number1);
      num2 = int.parse(number2);
      sum = num1 - num2;
      notifyListeners();
    }

    void doMul(String number1 , String number2 ){
      num1 = int.parse(number1);
      num2 = int.parse(number2);
      sum = num1 * num2;
      notifyListeners();
    }

    void doDivision(String number1 , String number2 ){
      num1 = int.parse(number1);
      num2 = int.parse(number2);
      sum = num1 ~/ num2;
      notifyListeners();
    }



}