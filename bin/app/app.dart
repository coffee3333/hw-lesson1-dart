import 'dart:io';

class App {
  late dynamic calcApp;
  late dynamic evenCheckerApp;
  late dynamic convertApp;
  late dynamic multiTableApp;
  late dynamic convCurrencyApp;

  App(this.calcApp, this.evenCheckerApp, this.convertApp, this.multiTableApp,
      this.convCurrencyApp);

  void runApp() async {
    while (true) {
      print("*** WELCOME to my project ***");
      int answer = 0;
      while (true) {
        try {
          print(
              "Please choose the app (1) Calculator (2) Multi Table (3) Even checker \n(4) Temperature Convert (5) Crypto Currency Convertor (0) Exit");
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
      } else if (answer == 5) {
        await convCurrencyApp.currencyConvertRun();
      } else {
        break;
      }
    }
  }
}
