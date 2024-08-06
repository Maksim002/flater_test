import 'package:flater_agent/repositories/cripto_coin/models/crypto_coin.dart';
import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  final List<CryptoCoin>? cryptoCoinList;

  const HomeTitle({
    super.key,
    this.cryptoCoinList,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return (cryptoCoinList == null)
        ? const Center(child: CircularProgressIndicator())
        : ListView.separated(
            itemCount: cryptoCoinList!.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, i) {
              final coinName = cryptoCoinList![i].name;
              return ListTile(
                leading: Image.network(cryptoCoinList![i].imageUrl),
                title: Text(coinName, style: theme.textTheme.bodySmall),
                subtitle: Text(cryptoCoinList![i].priseInUDS.toString(),
                    style: theme.textTheme.labelLarge),
                trailing: const Icon(Icons.arrow_forward_ios, weight: 15),
                onTap: () {
                  Navigator.of(context).pushNamed("/coin", arguments: coinName);
                },
              );
            },
          );
  }
}
