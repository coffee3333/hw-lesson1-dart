import 'app/app.dart';
import 'package:dart_hw_1/calculator/calculator_controller.dart';
import 'package:dart_hw_1/even_check/even_checker_controller.dart';
import 'package:dart_hw_1/temperature_convertor/temperature_convertor_controller.dart';
import 'package:dart_hw_1/multiplication_table/multiplication_table_controller.dart';

void main(List<String> arguments) {
  CalculatorController calcApp = CalculatorController();
  EvenChekerController evenCheckerApp = EvenChekerController();
  TemperatereConvertorControler convertApp = TemperatereConvertorControler();
  MultiplicationTableController multiTableApp = MultiplicationTableController();
  App application = App(calcApp, evenCheckerApp, convertApp, multiTableApp);

  application.runApp();
}
