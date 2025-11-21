import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'Menupage.dart';
import 'Searchpage.dart';
import 'Settingpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IndexPage(),
    );
  }
}

class IndexPage extends StatefulWidget {
  @override
  State<IndexPage> createState() => IndexPageState();
}

class IndexPageState extends State<IndexPage> {
  int _bottomNavbar = 0;

  // الصفحات
  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    MenuPage(),
    SettingPage(),
  ];

  // دالة لجلب عنوان الصفحة
  String _getTitle(int index) {
    switch (index) {
      case 0:
        return "الصفحة الرئيسة";
      case 1:
        return "صفحة البحث";
      case 2:
        return "صفحة القائمة ";
      case 3:
        return "صفحة الإعدادات";
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

      // هنا نعرض الصفحات بدون إعادة بناء
      body: IndexedStack(
        index: _bottomNavbar,
        children: _pages,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavbar,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _bottomNavbar = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "بحث",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "قائمة",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "الإعدادات",
          ),
        ],
      ),
    );
  }
}