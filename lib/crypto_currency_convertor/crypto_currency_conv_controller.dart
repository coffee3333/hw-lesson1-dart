import 'dart:io';
import 'crypto_currency_convertor.dart';
import 'crypto_currency.dart';

class CryptoCurrencyConvertorController {
  CryptoCurrencyConvertor convertorData = CryptoCurrencyConvertor();
  late List<CryptoCurrency> currencies = [];
  final List _exitAnswer = ["no", "n"];

  void convertPaarMenu(CryptoCurrency paar) {
    int option = 0;
    double amount = 0;
    print("You've choosed ${paar.title} - USD paar");
    while (true) {
      print(
          "Please enter options (1) to sell ${paar.title} (2) to buy ${paar.title}");
      try {
        option = int.parse(stdin.readLineSync()!);
        if (option == 1) {
          while (true) {
            print("Please enter how many ${paar.title}'s you have");
            try {
              amount = double.parse(stdin.readLineSync()!);
              print("You will get ${amount * paar.marketPriceUsd!} USD");
              break;
            } on FormatException {
              print("You should write a nummber of paare");
            }
          }
          break;
        } else if (option == 2) {
          while (true) {
            print("Please enter how many USD's you have");
            try {
              amount = double.parse(stdin.readLineSync()!);
              print(
                  "You will get ${amount / paar.marketPriceUsd!} in ${paar.title}'s");
              break;
            } on FormatException {
              print("You should write a nummber of paare");
            }
          }
          break;
        } else {
          throw new FormatException();
        }
      } on FormatException {
        print("You should write a nummber of paare");
      }
    }
  }

  void currencyConvertRun() async {
    while (true) {
      print("*** Welcome to Crypto Currencies Convertor App ***");
      int paarNum = 0;
      currencies = await convertorData.getData();
      print("Here is a list of paars: ");
      convertorData.printCurrencies(currencies);
      while (true) {
        print("Choose the paare by number (1,2,3...)");
        try {
          paarNum = int.parse(stdin.readLineSync()!);
          if (paarNum > currencies.length) {
            throw new FormatException();
          }
          break;
        } on FormatException {
          print("You should write a nummber of paare");
        }
      }

      convertPaarMenu(currencies[paarNum - 1]);

      print("Do you wana continue ?");
      if (_exitAnswer.contains(stdin.readLineSync()!)) {
        break;
      }
    }
  }
}
