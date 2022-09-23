import 'dart:convert';

import 'package:flutter/material.dart';

class IncodingView extends StatefulWidget {
  const IncodingView({super.key, required this.encodingText});
  final String encodingText;
  @override
  State<IncodingView> createState() => _IncodingViewState();
}

var encoded = utf8.encode('Aidai');

encodinMethod() {
  var encoded = utf8.encode('Aidai');
}

class _IncodingViewState extends State<IncodingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$encoded'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
    );
  }
}
