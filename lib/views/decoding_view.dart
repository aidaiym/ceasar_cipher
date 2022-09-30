import 'dart:convert';

import 'package:ceasar_cipher_app/views/result_encoding.dart';
import 'package:flutter/material.dart';

class DecodingView extends StatefulWidget {
  const DecodingView({super.key});

  @override
  State<DecodingView> createState() => _DecodingViewState();
}

class _DecodingViewState extends State<DecodingView> {
  final myController = TextEditingController();
  final shift = TextEditingController();
  List arrayUnicode = [];
  int toInt = 0;
  int parse = 0;
  int toThree = 0;
  bool isSelected = false;
  bool left = false;
  bool right = false;
  List<int> arraynew = [];
  String cipher = '';
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Decoding ')),
        backgroundColor: const Color(0xffB00020),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(
            controller: myController,
          ),
          const SizedBox(height: 30),
          TextField(
            controller: shift,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    left = true;
                    isSelected = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(130, 110),
                    elevation: 10,
                    backgroundColor: !isSelected ? Colors.green : Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: const BorderSide(color: Colors.red),
                    )),
                child: const Text('Left', style: TextStyle(fontSize: 17)),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    right = true;
                    isSelected = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(130, 110),
                    elevation: 10,
                    backgroundColor: !isSelected ? Colors.green : Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: const BorderSide(color: Colors.red),
                    )),
                child: const Text('Right', style: TextStyle(fontSize: 17)),
              ),
            ],
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              setState(() {
                decoding();
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultEncoding(
                          cipher: cipher,
                        )),
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

  void decoding() {
    arrayUnicode = utf8.encode(myController.text);
    for (int i = 0; i < arrayUnicode.length; i++) {
      if (right) {
        parse = int.parse(shift.text);
        toThree = arrayUnicode[i] - parse;
        arraynew.add(toThree);
        if (arraynew[i] > 122) {
          arraynew[i] = 96 + parse;
        }
      } else if (left) {
        parse = int.parse(shift.text);
        toThree = arrayUnicode[i] + parse;
        arraynew.add(toThree);
        if (arraynew[i] < 97) {
          arraynew[i] = 122 - parse;
        }
      }
    }
    setState(() {});
    cipher = utf8.decode(arraynew);
    arraynew.clear();
  }
}
