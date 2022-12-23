import 'package:first_app/homePage.dart';
import 'package:flutter/material.dart';

class MyNextPage extends StatefulWidget {
  const MyNextPage({super.key});

  @override
  State<MyNextPage> createState() {
    print('1. other: createState()');
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyNextPage> {
  int _counter = 0;

  @override
  void initState() {
    print('1a. other: mounted: $mounted');
    print('2. other: initState()');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('3. other: didUpdateWidget');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(MyNextPage oldWidget) {
    print('5. other: didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  void _incrementCounter() {
    setState(() {
      print('6. other: setState');
      _counter++;
    });
  }

  @override
  void dispose() {
    print('7. other: dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('4. other: build');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Nextpage'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.home), onPressed: () {}),
        ],
        // leading: IconButton(
        //   icon: const Icon(Icons.back_hand),
        //   tooltip: 'Menu Icon',
        //   onPressed: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => const MyHomePage()));
        //   },
        // ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Nextpage:',
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
