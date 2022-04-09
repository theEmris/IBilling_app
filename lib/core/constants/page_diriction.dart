import 'package:yiqilma_app/bloc/newPage_cubit.dart/new_page_view.dart';
import 'package:yiqilma_app/screens/contracts_page.dart';
import 'package:yiqilma_app/screens/history_page.dart';
import 'package:yiqilma_app/screens/profile_page.dart';
import 'package:yiqilma_app/screens/saved_page.dart';

class PageDerictions {
  static List bottomNavBarPAgesDerition = [
    ContractsPage(),

    HistoryPage(),

    new_page_view(),

    SavedPage(),  

    ProfilePage(),

  
  ];

}
