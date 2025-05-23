import 'package:firstflutter/blood.dart';
import 'package:firstflutter/diabetes.dart';
import 'package:firstflutter/home.dart';
import 'package:firstflutter/libids.dart';
import 'package:firstflutter/clinical.dart';
import 'package:flutter/material.dart';

class NavigationBtn extends StatefulWidget {
  const NavigationBtn({super.key});

  @override
  State<NavigationBtn> createState() => _NavigationBtnState();
}

class _NavigationBtnState extends State<NavigationBtn> {
  int currentI = 4;
  List screens = const [Clinical(), Diabetes(), Blood(), Libids(), Home()];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.medical_services), label: 'معمل'),
            BottomNavigationBarItem(
                icon: Icon(Icons.medication_outlined), label: 'سكر'),
            BottomNavigationBarItem(icon: Icon(Icons.bloodtype), label: 'دم'),
            BottomNavigationBarItem(icon: Icon(Icons.layers), label: 'دهون'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          ],
          backgroundColor: Colors.blue,
          elevation: 3.0,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme:
              const IconThemeData(color: Colors.black, size: 40.0),
          selectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
          unselectedIconTheme:
              const IconThemeData(color: Colors.black, size: 40.0),
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
          currentIndex: 4,
          onTap: (index) {
            setState(() {
              currentI = index;
            });
          },
        ),
        body: screens[currentI],
      ),
    );
  }
}
