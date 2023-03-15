import 'package:flutter/material.dart';
import 'package:ilsottosopra/assets/gaia_page.dart';
import 'package:ilsottosopra/screens/home_page.dart';
import 'package:ilsottosopra/assets/setting_page.dart';
import 'package:ilsottosopra/screens/account_screen.dart';
import 'package:ilsottosopra/screens/settings_screen.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

int selectedIndex=0;

List<Widget> screens= const[
HomePage(),
SettingsScreen(),
AccountScreen(),
];

void changeIndex(int index){
  setState(() {
    selectedIndex=index;
  });
  
}

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top:80.0),
          child: Column(
            children: [
              const Divider(
                color: Color.fromARGB(72, 14, 14, 14),
                thickness: 1,
              ),
              Row(
                children: [],
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Image.asset("lib/assets/logo.png", width: 200,)
      ),
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar:BottomNavigationBar(   
        onTap:
         changeIndex,
        currentIndex:selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
      ),
    );
  }
}