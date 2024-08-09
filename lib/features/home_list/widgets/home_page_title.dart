import 'package:flater_agent/features/home_list/bloc/home_crypto_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTitle extends StatelessWidget {
  final HomeCryptoBloc homeBloc;

  const HomeTitle({super.key, required this.homeBloc});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<HomeCryptoBloc, HomeCryptoState>(
      bloc: homeBloc,
      builder: (context, state) {
        if (state is HomeLoaded) {
          return ListView.separated(
            itemCount: state.cryptoCoin.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, i) {
              final coinName = state.cryptoCoin[i].name;
              return ListTile(
                leading: Image.network(state.cryptoCoin[i].imageUrl),
                title: Text(coinName, style: theme.textTheme.bodySmall),
                subtitle: Text(state.cryptoCoin[i].priseInUDS.toString(),
                    style: theme.textTheme.labelLarge),
                trailing: const Icon(Icons.arrow_forward_ios, weight: 15),
                onTap: () {
                  Navigator.of(context).pushNamed("/coin", arguments: coinName);
                },
              );
            },
          );
        } else if (state is HomeFailure) {
           return Center(child: Text(state.external?.toString() ?? "Exs"),
           );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
