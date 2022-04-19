import 'package:flutter/material.dart';
import 'package:flutter_flavor/config.dart';


class MyApp extends StatelessWidget {

  final FlavorConfig flavorConfig;
  MyApp({Key? key, required this.flavorConfig});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(flavorConfig: flavorConfig),
    );
  }
}

class MyHomePage extends StatefulWidget {

  final FlavorConfig flavorConfig;
  MyHomePage({Key? key, required this.flavorConfig});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String navBarTitle = "";

  @override
  void initState() {
    // TODO: implement initState

    if (widget.flavorConfig.flavor == Flavor.prod) {
      navBarTitle = "This is Production App";

    } else {
      navBarTitle = "This is Demo App";
    }
    super.initState();


  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(navBarTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
