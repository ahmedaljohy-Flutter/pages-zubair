import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Power.dart';
import 'Hands.dart';
import 'Phones.dart';
import 'Tec_Sup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IndexPage(),
    );
  }
}

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => IndexPageState();
}

class IndexPageState extends State<IndexPage> {
  int _bottomNavbar = 4; // الصفحة التي يفتح عليها المشروع

  final List<Widget> _pages = [
    Tec_Sup_page(),     // الدعم الفني
    Power(),       // الشواحن
    Hands(),         // السماعات
    Phones(),      // هواتف ذكية
    HomePage(),         // الصفحة الرئيسة
  ];

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return "الدعم الفني";
      case 1:
        return "شواحن واكسسوارات";
      case 2:
        return "سماعات واجهزة صوتية";
      case 3:
        return "هواتف ذكية";
      case 4:
        return "الصفحة الرئيسة";
      default:
        return "Flutter App";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_getTitle(_bottomNavbar)),
        backgroundColor: Colors.blue,
      ),
      body: IndexedStack(
        index: _bottomNavbar,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavbar,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavbar = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent),
            label: "الدعم الفني",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.battery_charging_full),
            label: "شواحن",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.headphones),
            label: "سماعات",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smartphone),
            label: "هواتف ذكية",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "الرئيسية",
          ),
        ],
      ),
    );
  }
}
