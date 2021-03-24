import 'dart:math';


class CalculatorBrain{


  final int height;
  final int weight;
  double _bmi;
  CalculatorBrain(this.height, this.weight);


  String calculateBMI(){
    _bmi = weight / pow(height/100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else {
      return'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return "A BMI of over indicates that you are heavily overweight. ";
    }else if(_bmi > 18.5){
      return 'A BMI of indicates that you are at a healthy weight for your height.';
    }else {
      return' A BMI of indicates that you are underweight, so you may need to put on some weight. ';
    }

  }
}