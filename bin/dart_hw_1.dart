import 'dart:io';
import 'package:dart_hw_1/calculator/calculator_controller.dart' as calc_app;
import 'package:dart_hw_1/even_check/even_checker_controller.dart' as even_app;
import 'package:dart_hw_1/temperature_convertor/temperature_convertor_controller.dart'
    as convert_app;
import 'package:dart_hw_1/multiplication_table/multiplication_table_controller.dart'
    as multi_table_app;

void main(List<String> arguments) {
  calc_app.CalculatorController calcApp = calc_app.CalculatorController();
  even_app.EvenChekerController evenCheckerApp =
      even_app.EvenChekerController();
  convert_app.TemperatereConvertorControler convertApp =
      convert_app.TemperatereConvertorControler();
  multi_table_app.MultiplicationTableController multiTableApp =
      multi_table_app.MultiplicationTableController();
  while (true) {
    print("*** WELCOME to my project ***");
    int answer = 0;
    while (true) {
      try {
        print(
            "Please choose the app (1) Calculator (2) Multi Table (3) Even checker");
        answer = int.parse(stdin.readLineSync()!);
        break;
      } on FormatException {
        print("Please enter the number");
      }
    }

    if (answer == 1) {
      calcApp.calcRun();
    } else if (answer == 2) {
      multiTableApp.multiTableRun();
    } else if (answer == 3) {
      evenCheckerApp.checkerRun();
    } else if (answer == 4) {
      convertApp.temperatureConvertRun();
    } else {
      break;
    }
  }
}
