import 'dart:convert';

import 'package:ceasar_cipher_app/views/result_encoding.dart';
import 'package:flutter/material.dart';

class EncodingView extends StatefulWidget {
  const EncodingView({super.key});

  @override
  State<EncodingView> createState() => _EncodingViewState();
}

// var encoded = utf8.encode('Aidai');

// encodinMethod() {
//   var encoded = utf8.encode('Aidai');
// }

class _EncodingViewState extends State<EncodingView> {
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
        title: const Center(child: Text('Encoding ')),
        backgroundColor: const Color(0xffB00020),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(
            // onChanged: (value) {
            //   setState(() {
            //     myController.text = value.toString();
            //   });
            // },
            controller: myController,
          ),
          const SizedBox(height: 30),
          TextField(
            controller: shift,
            // onChanged: (value) {
            //   setState(() {
            //     shift.text = value.toString();
            //   });
            // },
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
              'Encoding',
              style: TextStyle(color: Colors.red, fontSize: 17),
            ),
          ),
        ]),
      ),
    );
  }

  void decoding() {
    // toUnicode = utf8.encode(myController.text).toString();
    arrayUnicode = utf8.encode(myController.text); // text encode to utf8 type
    for (int i = 0; i < arrayUnicode.length; i++) {
      if (left) {
        print(left);
        parse = int.parse(shift.text); // turn shift into integer
        toThree = arrayUnicode[i] - parse; // add shift to unicode
        arraynew.add(toThree); // new array with shifts
      } else if (right) {
        print(right);
        parse = int.parse(shift.text); // turn shift into integer
        toThree = arrayUnicode[i] + parse; // add shift to unicode
        // arraynew[i] = toThree;
        arraynew.add(toThree);
        print('tothree $toThree');
      }
    }

    // arraynew.add(toThree); // new array with shifts
    setState(() {});
    print(arrayUnicode);
    // print(arraynew.add(toThree));
    cipher = utf8.decode(arraynew);
    arraynew.clear();

    print(cipher);
  }

// encoding
  void encoding() {
    // toUnicode = utf8.encode(myController.text).toString();
    arrayUnicode = utf8.encode(myController.text); // text encode to utf8 type
    for (int i = 0; i < arrayUnicode.length; i++) {
      if (left) {
        print(left);
        parse = int.parse(shift.text); // turn shift into integer
        toThree = arrayUnicode[i] - parse; // add shift to unicode
        arraynew.add(toThree); // new array with shifts
      } else if (right) {
        print(right);
        parse = int.parse(shift.text); // turn shift into integer
        toThree = arrayUnicode[i] + parse; // add shift to unicode
        // arraynew[i] = toThree;
        arraynew.add(toThree);
        print('tothree $toThree');
      }
    }

    // arraynew.add(toThree); // new array with shifts
    setState(() {});
    print(arrayUnicode);
    // print(arraynew.add(toThree));
    cipher = utf8.decode(arraynew);
    arraynew.clear();

    print(cipher);
  }
}
