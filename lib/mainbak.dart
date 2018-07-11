import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

//Stateless widgets 是不可变的，这意味着它们的属性不能改变——所有的值都是 final。
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter'),
    );
  }
}

//Stateful widgets 持有的状态可能在 widget 生命周期中发生变化，实现一个 stateful widget
// 至少需要两个类：1）一个 StatefulWidget 类；2）一个 State 类，StatefulWidget 类本身是不变的，
// 但是 State 类在 widget 生命周期中始终存在。
class MyHomePage extends StatefulWidget {//标题部分
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {//添加按钮点击调用函数
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times+reload111:',
            ),
            new Text(
              '$_counter',//变量的引用方式
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
