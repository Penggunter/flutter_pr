import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 230, 163, 48)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _text = '';
  int _listViewCount = 3;
  int _currentPageIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _text =  'Шевелёв Игорь Анатольевич\nИКБО-25-21\n21И0627';
    });
  }
  // TODO
  void _changeNextScreen() {
    print("hello world!");
  }
  void _changePageScreen(int numberPage) {
    _currentPageIndex = numberPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const <Widget>[
        // Home page
        Card(
          child: Center(
            child: Text("Home page"),
          ),
        ),
      ][_currentPageIndex],


      // FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.accessible_forward_sharp),
      ),


      // NavigationBar
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          NavigationDestination(
            icon: Icon(Icons.people),
            label: 'Profile',
          )
        ]
      ),
    );

    
  }
}

