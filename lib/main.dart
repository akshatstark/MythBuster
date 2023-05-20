import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logo.jpg",
                    height: 30,
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.cyanAccent,
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: TabBar(
                    tabs: [
                      Tab(
                        child: Text(
                          'COVID-19',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Common Flu',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          '    Mental Awareness',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: [
                      GridView.count(
                        crossAxisCount: 2,
                        children: <Widget>[
                          Image.asset('assets/covid1.jpg'),
                          Image.asset('assets/covid2.jpg'),
                          Image.asset('assets/covid3.jpg'),
                          Image.asset('assets/covid4.jpg'),
                          Image.asset('assets/covid5.jpg'),
                          Image.asset('assets/covid6.jpg'),
                          Image.asset('assets/safety.png'),
                          Image.asset('assets/social.png'),
                        ],
                      ),
                      GridView.count(
                        crossAxisCount: 2,
                        children: <Widget>[
                          Image.asset('assets/flu1.jpg'),
                          Image.asset('assets/flu2.jpg'),
                          Image.asset('assets/flu3.jpg'),
                          Image.asset('assets/flu4.jpg'),
                          Image.asset('assets/flu5.jpg'),
                          Image.asset('assets/flu6.jpg'),
                        ],
                      ),
                      GridView.count(
                        crossAxisCount: 2,
                        children: <Widget>[
                          Image.asset('assets/mh1.jpg'),
                          Image.asset('assets/mh2.jpg'),
                          Image.asset('assets/mh3.jpg'),
                          Image.asset('assets/mh4.jpg'),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
