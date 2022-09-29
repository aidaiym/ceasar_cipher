import 'package:ceasar_cipher_app/views/main_view.dart';
import 'package:flutter/material.dart';

import 'views/choose_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChooseView(),
    );
  }
}
