import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Learning extends StatefulWidget {
  const Learning({super.key}); // Correcting the constructor

  @override
  // ignore: library_private_types_in_public_api
  _Learning5 createState() => _Learning5(); // Correcting the generic type
}

class _Learning5 extends State<Learning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning from flutter teacher'),
      ),
      body: Center(
        child: Text.rich(
          TextSpan(
            text: 'hello everyone\n',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.amber,
            ),
            children: [
              const TextSpan(
                text: 'Prakhar\n',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlue,
                ),
              ),
              TextSpan(
                text: 'Don\'t have an account? ',
                style: const TextStyle(
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: 'Sign Up\n',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        debugPrint('You tapped on Sign Up');
                      },
                  ),
                ],
              ),
              const TextSpan(
                text: 'I ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
                children: [
                  WidgetSpan(
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(text: ' Flutter')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
