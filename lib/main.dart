import 'package:dio/dio.dart';
import 'package:flater_agent/app.dart';
import 'package:flater_agent/repositories/cripto_coin/abstract_coin_repository.dart';
import 'package:flater_agent/repositories/cripto_coin/crypto_coin_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt.I.registerLazySingleton<AbstractCoinRepository>(() => CryptoCoinRepository(Dio()));
  runApp(const MyApp());
}
