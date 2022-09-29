import 'package:flutter/material.dart';

class ResultEncoding extends StatelessWidget {
  const ResultEncoding({super.key, required this.cipher});
  final String cipher;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Encoding ')),
        backgroundColor: const Color(0xffB00020),
      ),
      body: Center(
        child: Text(
          'Encoded text:  $cipher',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
