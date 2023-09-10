import 'dart:convert';
import 'package:http/http.dart' as http;
import 'crypto_currency.dart';

class CryptoCurrencyConvertor {
  Future<List<CryptoCurrency>> getData() async {
    final List<CryptoCurrency> currencies = [];
    final httpPackageUrl = Uri.https('api.blockchair.com', '/stats');
    final httpPackageInfo = await http.read(httpPackageUrl);
    final httpPackageJson =
        jsonDecode(httpPackageInfo)["data"] as Map<String, dynamic>;
    httpPackageJson.remove('cross-chain');
    currencies.length.runtimeType;
    httpPackageJson.forEach((key, value) {
      if (value["data"].isNotEmpty) {
        CryptoCurrency currency = CryptoCurrency(
            id: currencies.length,
            title: key,
            marketPriceUsd: value['data']['market_price_usd'].toDouble(),
            priceUsdChangePercentage: value['data']
                    ['market_price_usd_change_24h_percentage']
                .toDouble());
        currencies.add(currency);
      }
    });
    return currencies;
  }

  void printCurrencies(List currencies) {
    currencies.forEach((element) {
      print(
          "${(element.id! + 1)} | ${element.title} - USD | Price - ${element.marketPriceUsd}\$ | Changed ${element.priceUsdChangePercentage}%");
    });
  }
}
