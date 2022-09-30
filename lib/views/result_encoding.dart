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
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Encoded text:  $cipher',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 30),
          TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('$cipher'),
                  );
                },
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
