import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome TO Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome To Flutter'),
          ),
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWordsState extends State<RandomWords> {
  
  @override 
  Widget build(BuildContext context){
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }

}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}