// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CurrencyConverterMaterialpage extends StatefulWidget {
  const CurrencyConverterMaterialpage({super.key});

  @override
  State<CurrencyConverterMaterialpage> createState() =>
      _CurrencyConverterMaterialpageState();
}

class _CurrencyConverterMaterialpageState
    extends State<CurrencyConverterMaterialpage> {
  final TextEditingController _textEditingController = TextEditingController();
  double _result = 0;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.3,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(60),
      ),
    );

    return Scaffold(
      backgroundColor: const Color.fromRGBO(71, 215, 217, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(71, 215, 217, 1),
        elevation: 5,
        title: const Text('Currency Converter'), // Changed text here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _result == 0
                  ? '0'
                  : '$_result INR', // Display the result if available
              style: const TextStyle(
                color: Color.fromRGBO(246, 248, 244, 1),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _textEditingController,
                style: const TextStyle(
                  color: Colors.green,
                ),
                decoration: const InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontSize: 15,
                  ),
                  prefixIcon: Icon(Icons.attach_money),
                  prefixIconColor: Colors.lightGreenAccent,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    // Calculate the result and update the state
                    _result = double.parse(_textEditingController.text) * 81;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                  foregroundColor: MaterialStateProperty.all(Colors.black54),
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 50)),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
