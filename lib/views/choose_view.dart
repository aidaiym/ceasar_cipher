import 'package:ceasar_cipher_app/views/decoding_view.dart';
import 'package:flutter/material.dart';

import 'encoding_view.dart';

class ChooseView extends StatefulWidget {
  const ChooseView({super.key});

  @override
  State<ChooseView> createState() => _ChooseViewState();
}

class _ChooseViewState extends State<ChooseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC6CDFF),
      appBar: AppBar(
        title: const Center(child: Text('Ceaser cipher')),
        backgroundColor: const Color(0xffB00020),
      ),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EncodingView()),
              );
            },
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(160, 50),
                elevation: 10,
                backgroundColor: const Color.fromRGBO(214, 0, 27, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: const BorderSide(color: Colors.red),
                )),
            child: const Text('Encoding', style: TextStyle(fontSize: 17)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DecodingView()),
              );
            },
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(160, 50),
                elevation: 10,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: const BorderSide(color: Colors.red),
                )),
            child: const Text(
              'Decoding',
              style: TextStyle(color: Colors.red, fontSize: 17),
            ),
          ),
        ]),
      ),
    );
  }
}
