import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Table(
                columnWidths: const <int, TableColumnWidth>{
                  0: IntrinsicColumnWidth(flex: 1.0),
                  1: IntrinsicColumnWidth(flex: .5),
                  2: IntrinsicColumnWidth(flex: .8),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.top,
              children: [
                TableRow(children: [
                  Container(
                    child: const Text("1"),
                    color: Colors.blue,
                  ),
                  Container(
                    child: const Text("2"),
                    color: Colors.yellow,
                  ),
                  Container(
                    child: const Text("3"),
                    color: Colors.red,
                  )
                ]),
                TableRow(
                  children: [
                    Container(
                      child: const Text("4"),
                      color: Colors.red,
                    ),
                    Container(
                      child: const Text("5"),
                      color: Colors.yellow,
                    ),
                    Container(
                      child: const Text("6"),
                      color: Colors.blue,
                    )
                  ]
                )
              ],)));
  }
}
