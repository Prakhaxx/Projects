import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  Uint8List? rawImage;
  void getImage() async {
    ByteData byteData = await rootBundle.load('images/jpg4.jpg');
    Uint8List tempImage = byteData.buffer.asUint8List();
    setState(() {
      rawImage = tempImage;
    });
  }

  @override
  void initState() {
    super.initState();
    getImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.amberAccent,
                    child: Image.asset(
                      'images/default.png',
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.amberAccent,
                    child: Image.network(
                      'https://images.pexels.com/photos/1366630/pexels-photo-1366630.jpeg?auto=compress&cs=tinysrgb&w=300',
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.amberAccent,
                    child: Image.file(
                      File('/storage/emulated/0/Download/first.jpg'),
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.amberAccent,
                    child: rawImage != null
                        ? Image.memory(rawImage!)
                        : const CircularProgressIndicator(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
