import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yiqilma_app/core/constants/page_diriction.dart';


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  PageDerictions.bottomNavBarPAgesDerition[_selectedIndex]
,      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF141416),
        showUnselectedLabels: true,
        items:[
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF141416),
           
            icon: _selectedIndex == 0  ?   SvgPicture.asset("assets/Document_bold.svg"): SvgPicture.asset("assets/contacts.svg"),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
             backgroundColor: Color(0xFF141416),
            icon: _selectedIndex == 1  ? SvgPicture.asset("assets/Bookmark_bold.svg"):SvgPicture.asset("assets/Bookmark.svg"),
            label: 'History',
          ),
          BottomNavigationBarItem(
             backgroundColor: Color(0xFF141416),
            icon: _selectedIndex == 2  ? SvgPicture.asset("assets/Plus_bold.svg") : SvgPicture.asset("assets/Plus.svg"),
            label: 'New',
          ),

          BottomNavigationBarItem(
             backgroundColor: Color(0xFF141416),
            icon: _selectedIndex == 3 ? SvgPicture.asset("assets/time_bold.svg") :  SvgPicture.asset("assets/time.svg"),
            label: 'Saved',
          ),

          BottomNavigationBarItem(
            
             backgroundColor: Color(0xFF141416),
            icon: _selectedIndex == 4 ? SvgPicture.asset("assets/Profile_bold.svg") : SvgPicture.asset("assets/Profile.svg"),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}




