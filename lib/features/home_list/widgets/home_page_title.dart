import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.separated(
      itemCount: 15,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, i) {
        const name = "BNB";
        return ListTile(
          leading:
          SvgPicture.asset("assets/icon_im.svg", width: 35, height: 35),
          title: Text(name, style: theme.textTheme.bodySmall),
          subtitle: Text("sss", style: theme.textTheme.labelLarge),
          trailing: const Icon(Icons.arrow_forward_ios, weight: 15),
          onTap: () {
            Navigator.of(context).pushNamed("/coin", arguments: name);
          },
        );
      },
    );
  }
}