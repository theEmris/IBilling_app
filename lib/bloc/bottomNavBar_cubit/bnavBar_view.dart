
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yiqilma_app/bloc/bottomNavBar_cubit/bnBar_state.dart';
import 'package:yiqilma_app/bloc/bottomNavBar_cubit/bnavBar_cubit.dart';
import 'package:yiqilma_app/core/constants/page_diriction.dart';







class BottomNavBarView extends StatelessWidget {
   BottomNavBarView({Key? key}) : super(key: key);
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: myScaffold(),
    );
  }

  Scaffold myScaffold() {
    return Scaffold(
    
    appBar: AppBar(
      title: Text("bottomnavBarView"),
    ),
    body: BlocBuilder(builder: (context, state) {
      if (state is BottomNavComplete) {
        return PageDerictions.bottomNavBarPAgesDerition[state.index];
      } else {
        return Center(
          child: Text("birgamiz"),
        );
      }
    }),
    bottomNavigationBar: BottomNavigationBarmine(selectedIndex: _selectedIndex),
  );
  }

}

class BottomNavigationBarmine extends StatelessWidget {
  const BottomNavigationBarmine({
    Key? key,
    required int selectedIndex,
  }) : _selectedIndex = selectedIndex, super(key: key);

  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF141416),
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Color(0xFF141416),
          icon: _selectedIndex == 0
              ? SvgPicture.asset("assets/Document_bold.svg")
              : SvgPicture.asset("assets/contacts.svg"),
          label: 'Contacts',
        ),
        BottomNavigationBarItem(
          backgroundColor: Color(0xFF141416),
          icon: _selectedIndex == 1
              ? SvgPicture.asset("assets/Bookmark.svg")
              : SvgPicture.asset("assets/Bookmark.svg"),
          label: 'History',
        ),
        BottomNavigationBarItem(
          backgroundColor: Color(0xFF141416),
          icon: _selectedIndex == 2
              ? SvgPicture.asset("assets/Plus_bold.svg")
              : SvgPicture.asset("assets/Plus.svg"),
          label: 'New',
        ),
        BottomNavigationBarItem(
          backgroundColor: Color(0xFF141416),
          icon: _selectedIndex == 3
              ? SvgPicture.asset("assets/time_bold.svg")
              : SvgPicture.asset("assets/time.svg"),
          label: 'Saved',
        ),
        BottomNavigationBarItem(
          backgroundColor: Color(0xFF141416),
          icon: _selectedIndex == 4
              ? SvgPicture.asset("assets/Profile_bold.svg")
              : SvgPicture.asset("assets/Profile.svg"),
          label: 'Profile',
        ),
      ],
      currentIndex: 2,
      selectedItemColor: Colors.green,
      onTap:context.read<BottomNavCubit>().changestate(_selectedIndex),

    );
  }
}
