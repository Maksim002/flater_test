import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        listTileTheme: const ListTileThemeData(iconColor: Colors.black),
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
          labelLarge: TextStyle(
            color: Colors.black45,
            fontSize: 14
          )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemCount: 15,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, i) => ListTile(
            leading: SvgPicture.asset("assets/icon_im.svg",
                width: 35, height: 35),

            title: Text("wdw", style: theme.textTheme.bodySmall),
            subtitle: Text("sss", style: theme.textTheme.labelLarge),
            trailing: const Icon(Icons.arrow_forward_ios, weight: 15),
            onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const CoinCoinSten()
                    ),
                );
            },
          ),
      ),
    );
  }
}

class CoinCoinSten extends StatefulWidget {
  const CoinCoinSten({super.key});

  @override
  State<CoinCoinSten> createState() => _CoinCoinStenState();
}

class _CoinCoinStenState extends State<CoinCoinSten> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("wd"),
      ),
    );
  }
}

