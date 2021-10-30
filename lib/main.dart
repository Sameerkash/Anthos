import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'views/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anthos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppView(),
    );
  }
}
