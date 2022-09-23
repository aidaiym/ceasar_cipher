import 'dart:convert';
import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();
  final shift = TextEditingController();
  List arrayUnicode = [];
  int toInt = 0;
  int parse = 0;
  int toThree = 0;
  List<int> arraynew = [];
  String cipher = '';
  @override
  void encount() {
    // toUnicode = utf8.encode(myController.text).toString();
    arrayUnicode = utf8.encode(myController.text); // text encode to utf8 type
    for (int i = 0; i < arrayUnicode.length; i++) {
      parse = int.parse(shift.text); // turn shift into integer
      toThree = arrayUnicode[i] + parse; // add shift to unicode
      arraynew.add(toThree); // new array with shifts
    }

    print(arrayUnicode);
    print(arraynew);

    cipher = utf8.decode(arraynew);

    print(cipher);
  }

  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      myController;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ceaser cipher'),
        backgroundColor: Color(0xffB00020),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: myController,
            ),
            SizedBox(height: 30),
            TextField(
              controller: shift,
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  encount();
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('$cipher'),
                      );
                    },
                  );
                },
                child: Text('Encoding'))
          ],
        ),
      ),
    );
  }
}
