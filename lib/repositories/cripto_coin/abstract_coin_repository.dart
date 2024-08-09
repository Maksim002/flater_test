import 'package:flater_agent/repositories/cripto_coin/models/crypto_coin.dart';

abstract class AbstractCoinRepository {
  Future<List<CryptoCoin>> getCoinList();
}
