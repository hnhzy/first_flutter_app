import 'package:flutter/material.dart';//创建了一个具有 Material Design 风格的应用
import 'package:english_words/english_words.dart';  // 新增了这一行

//主函数（main）使用了 (=>) 符号，这是 Dart 中单行函数或方法的简写
void main() => runApp(new MyApp());

//该应用程序继承了 StatelessWidget，这将会使应用本身也成为一个 widget。在 Flutter 中，
// 大多数东西都是 widget，包括对齐 (alignment)、填充 (padding) 和布局 (layout)。
class MyApp extends StatelessWidget {//Stateless widgets 是不可变的，这意味着它们的属性不能改变——所有的值都是 final。
  @override
  Widget build(BuildContext context) {
    //一个 widget 的主要工作是提供一个 build() 方法来描述如何根据其他较低级别的 widgets 来显示自己。
    final wordPair = new WordPair.random(); // 新增了这一行
    return new MaterialApp(
//      title: 'Welcome to Flutter1',
      //Scaffold 是 Material library 中提供的一个 widget，
      // 它提供了默认的导航栏、标题和包含主屏幕 widget 树的 body 属性。widget 树可以很复杂。
      home: new Scaffold(
        appBar: new AppBar(//标题栏
          title: const Text('Welcome to Flutter3'),
        ),
        body: new Center(//body部分 // 这里把之前的 "const" 换成了 "new".
          //child: const Text('Hello World'),   // 我们不用这样的方式生成文字了
          child: new Text(wordPair.asPascalCase),  // 这是新的文字生成方式
          //asCamelCase  驼峰、asPascalCase  首个字母大写、asLowerCase   全部小写、asUpperCase   全部大写
        ),
      ),
    );
  }
}