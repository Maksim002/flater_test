import 'package:flutter/material.dart';

class CoinSingleSten extends StatefulWidget {
  const CoinSingleSten({super.key});

  @override
  State<CoinSingleSten> createState() => _CoinSingleStenState();
}

class _CoinSingleStenState extends State<CoinSingleSten> {
  String? nameValue;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final arg = ModalRoute.of(context)?.settings.arguments;
    assert(arg != null && arg is String, "Ns lt,bk");
    setState(() {
      nameValue = arg as String;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(nameValue ?? "..."),
      ),
    );
  }
}
