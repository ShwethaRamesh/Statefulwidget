import 'package:first_app/nextpage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() {
    print('1.home: createState()');
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    print('1a. home: mounted: $mounted');
    print('2. home: initState()');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('3. home: didUpdateWidget');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(MyHomePage oldWidget) {
    print('5. home: didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  void _incrementCounter() {
    setState(() {
      print('6. home: setState');
      _counter++;
    });
  }

  @override
  void dispose() {
    print('7. home: dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('4. home: build');
    return Scaffold(
      appBar:
          AppBar(centerTitle: true, title: Text('Home_page'), actions: <Widget>[
        IconButton(
            icon: Icon(Icons.camera),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyNextPage()));
              //MyNextPage();
            })
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Homepage:',
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
