import 'package:dio/dio.dart';
import 'package:flater_agent/repositories/cripto_coin/models/crypto_coin.dart';

class CryptoCoinRepository {
  Future<List<CryptoCoin>> getCoinList() async {
    final response = await Dio().get(
        "https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,AOA,ANT&tsyms=USD,EUR");
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data["RAW"] as Map<String, dynamic>;
    final dataList = dataRaw.entries.map((e) {

      final usdDate = (e.value as Map<String, dynamic>)["USD"] as Map<String, dynamic>;
      final price = usdDate["PRICE"];
      final imageUrl = usdDate["IMAGEURL"];

      return CryptoCoin(e.key, price, ("https://www.cryptocompare.com$imageUrl"));
    })
        .toList();
    return dataList;
  }
}
