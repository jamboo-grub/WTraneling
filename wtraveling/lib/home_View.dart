
import 'package:flutter/material.dart';
import 'package:wtraveling/ui/cari_view.dart';
import 'package:wtraveling/ui/destinasi_view.dart';
import 'package:wtraveling/ui/profile_view.dart';
import 'package:wtraveling/ui/utama_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _seletedIndex = 0;
  final _layoutPage = [
//    Home(),
    Destinasi(),
    Cari(),
    Profile(),
    
  ];

  void _onTabItem(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      
      body: _layoutPage.elementAt(_seletedIndex),
      
            bottomNavigationBar: BottomNavigationBar(
            // backgroundColor: Color,
            // fixedColor: Colors.green,
            selectedItemColor: Colors.lightBlue,
            unselectedItemColor: Colors.black54,
  
        items: <BottomNavigationBarItem>[
        
          BottomNavigationBarItem(
            
            
            icon: Icon(Icons.home, ),
            title: Text('Home'),
          ),
          
          BottomNavigationBarItem(
            icon: Image.asset('assets/loupe(3).png', width: 30.0, height: 29.0,),
            title: Text('Cari'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,),
            title: Text('Profile'),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _seletedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
