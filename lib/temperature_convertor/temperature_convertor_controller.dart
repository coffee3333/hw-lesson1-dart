import 'dart:io';
import 'temperature_convertor.dart' as conv;

class TemperatereConvertorControler {
  final List _exitAnswer = ["no", "n"];
  conv.TemperatureConvertor convertor = conv.TemperatureConvertor();

  void temperatureConvertRun() {
    double valueToCheck = 0.0;

    print("*** Welcome from Celsius to Fahrenheit convertor ***");
    while (true) {
      while (true) {
        try {
          print("Please enter the value in Celsius");
          valueToCheck = double.parse(stdin.readLineSync()!);
          print(
              "the $valueToCheck in Fahrebheit is ${convertor.getFTemperature(valueToCheck)}");
          break;
        } on FormatException {
          print("Please enter the nummer!!!");
        }
      }
      print("Do you wana continue ?");
      if (_exitAnswer.contains(stdin.readLineSync()!)) {
        break;
      }
    }
  }
}
