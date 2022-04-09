import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yiqilma_app/bloc/bottomNavBar_cubit/bnBar_state.dart';
import 'package:yiqilma_app/bloc/bottomNavBar_cubit/bnavBar_cubit.dart';
import 'package:yiqilma_app/core/constants/page_diriction.dart';

class BottomNavBarView extends StatelessWidget {
  BottomNavBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavCubit(),
      child: BlocConsumer<BottomNavCubit, BottomNavState>(
          listener: (context, state) {},
          builder: (context, state) {
             return Scaffold(
                body: PageDerictions.bottomNavBarPAgesDerition[
                    context.watch<BottomNavCubit>().initial],
                bottomNavigationBar: BottomNavigationBar(
                    backgroundColor: Color(0xFF141416),
                    showUnselectedLabels: true,
                    items: [
                      BottomNavigationBarItem(
                        backgroundColor: Color(0xFF141416),
                        icon: context.watch<BottomNavCubit>().initial == 0
                            ? SvgPicture.asset("assets/Document_bold.svg")
                            : SvgPicture.asset("assets/contacts.svg"),
                        label: 'Contacts',
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: Color(0xFF141416),
                        icon: context.watch<BottomNavCubit>().initial == 1
                            ? SvgPicture.asset("assets/Bookmark_bold.svg")
                            : SvgPicture.asset("assets/Bookmark.svg"),
                        label: 'History',
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: Color(0xFF141416),
                        icon: context.watch<BottomNavCubit>().initial == 2
                            ? SvgPicture.asset("assets/Plus_bold.svg")
                            : SvgPicture.asset("assets/Plus.svg"),
                        label: 'New',
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: Color(0xFF141416),
                        icon: context.watch<BottomNavCubit>().initial == 3
                            ? SvgPicture.asset("assets/time_bold.svg")
                            : SvgPicture.asset("assets/time.svg"),
                        label: 'Saved',
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: Color(0xFF141416),
                        icon: context.watch<BottomNavCubit>().initial == 4
                            ? SvgPicture.asset("assets/Profile_bold.svg")
                            : SvgPicture.asset("assets/Profile.svg"),
                        label: 'Profile',
                      ),
                    ],
                    currentIndex: context.watch<BottomNavCubit>().initial,
                    selectedItemColor: Colors.green,
                    onTap: (v){
                       context.read<BottomNavCubit>().changestate(v);
                    }
            
                )
              );
            
          }),
    );
  }
}
