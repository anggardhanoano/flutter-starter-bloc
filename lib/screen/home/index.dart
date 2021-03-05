import 'package:flutter/material.dart';
import 'package:starterkit/screen/home/subscreen/counter/index.dart';
import 'package:starterkit/screen/home/subscreen/home/index.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  final PageStorageBucket bucket = PageStorageBucket();

  int selectedIndex = 0;

  Widget _bottomNavigationBar(int current) => BottomNavigationBar(
        onTap: (int index) => setState(() => selectedIndex = index),
        currentIndex: current,
        key: Key('bottom'),
        selectedItemColor: Color(0xFFE96200),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'Counter'),
        ],
      );

  final List<Widget> pages = [
    Home(
      key: PageStorageKey('Home'),
    ),
    Counter(
      key: PageStorageKey('Counter'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starter Kit'),
      ),
      bottomNavigationBar: _bottomNavigationBar(selectedIndex),
      body: PageStorage(
        child: pages[selectedIndex],
        bucket: bucket,
      ),
    );
  }
}
