import 'package:flutter/material.dart';

final theme = ThemeData(
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
);