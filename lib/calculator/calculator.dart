class Calculator {
  double _addition(double num1, double num2) {
    return num1 + num2;
  }

  double _substraction(double num1, double num2) {
    return num1 - num2;
  }

  double _miltiplication(double num1, double num2) {
    return num1 * num2;
  }

  double _devision(double num1, double num2) {
    return num1 / num2;
  }

  String getAnswer(List conditions) {
    double answer;
    if (conditions[1] == "+") {
      answer = _addition(conditions[0], conditions[2]);
    } else if (conditions[1] == "-") {
      answer = _substraction(conditions[0], conditions[2]);
    } else if (conditions[1] == "/") {
      answer = _devision(conditions[0], conditions[2]);
    } else if (conditions[1] == "*") {
      answer = _miltiplication(conditions[0], conditions[2]);
    } else {
      return "Please use only '+ - * /'";
    }

    if (answer % 1 == 0) {
      return answer.toInt().toString();
    } else {
      return answer.toString();
    }
  }
}
