// Add a stateful widget

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//主函数（main）使用了 (=>) 符号，这是 Dart 中单行函数或方法的简写
void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {//Stateless widgets 是不可变的，这意味着它们的属性不能改变——所有的值都是 final。
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new RandomWords(),
        ),
      ),
    );
  }
}

//Stateful widgets 持有的状态可能在 widget 生命周期中发生变化，实现一个 stateful widget
// 至少需要两个类：1）一个 StatefulWidget 类；2）一个 State 类，
// StatefulWidget 类本身是不变的，但是 State 类在 widget 生命周期中始终存在。
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final WordPair wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}