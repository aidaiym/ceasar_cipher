import 'package:flutter/material.dart';

class IncodingView extends StatefulWidget {
  const IncodingView({super.key});

  @override
  State<IncodingView> createState() => _IncodingViewState();
}

class _IncodingViewState extends State<IncodingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Incoding'),
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
