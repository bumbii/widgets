import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:single_word_clickable_text/single_word_clickable_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Single Word Clickable Text Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text('Single Word Clickable Text Demo'),
        ),
        body: Center(
          child: SingleWordClickableText(
            text: 'Click a word to show a toast with a work click.',
            onWordPressed: (word) {
              Fluttertoast.showToast(
                  msg: word,
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            },
            textStyle: TextStyle(fontSize: 18, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
