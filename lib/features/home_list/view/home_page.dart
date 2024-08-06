import 'package:flater_agent/repositories/cripto_coin/crypto_coin_repository.dart';
import 'package:flater_agent/repositories/cripto_coin/models/crypto_coin.dart';
import 'package:flutter/material.dart';
import '../widgets/home_page_title.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<CryptoCoin>? cryptoCoinList;

  @override
  void initState() {
    loadCryptoCoin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: HomeTitle(cryptoCoinList: cryptoCoinList),
    );
  }

  Future<void> loadCryptoCoin() async {
    cryptoCoinList = await CryptoCoinRepository().getCoinList();
    setState(() {});
  }
}
