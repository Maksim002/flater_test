import 'package:flater_agent/features/home_list/bloc/home_crypto_bloc.dart';
import 'package:flater_agent/features/home_list/widgets/widgets.dart';
import 'package:flater_agent/repositories/cripto_coin/crypto_coin.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final homeBloc = HomeCryptoBloc(GetIt.I<AbstractCoinRepository>());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: HomeTitle(homeBloc: homeBloc),
      floatingActionButton: FloatingActionButton(onPressed: () {
        homeBloc.add(HomeLoad());
      }),
    );
  }
}
