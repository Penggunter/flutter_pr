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
  int _currentPageIndex = 0;
  String _imageURL = 'https://static.vecteezy.com/system/resources/previews/013/262/916/non_2x/penguin-avatar-illustration-vector.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: <Widget>[
        // Home page
        const Card(
          child: Center(
            child: Text("Home page"),
          ),
        ),

        // Chat page
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Card(
                  color: Color.fromARGB(255, 230, 163, 48),
                  child: Text("Hello student from mirea!"),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Card(
                  color: Color.fromARGB(255, 230, 163, 48),
                  child: Text("Nice to meet you!"),
                ),
              )
            ],
          )
        ),

        // Profile page
        Center(
          child: Card(
            child: SizedBox(
              width: 128,
              height: 128,
              child: Image.network(_imageURL),
            ),
          ),
        ),
      ][_currentPageIndex],


      // NavigationBar
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        selectedIndex: _currentPageIndex,
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

