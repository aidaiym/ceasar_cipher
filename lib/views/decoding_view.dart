import 'package:flutter/material.dart';

class DecodingView extends StatefulWidget {
  const DecodingView({super.key});

  @override
  State<DecodingView> createState() => _DecodingViewState();
}

class _DecodingViewState extends State<DecodingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decoding'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('answer'),
        ],
      ),
    );
  }
}
