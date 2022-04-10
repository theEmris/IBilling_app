import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yiqilma_app/bloc/fiter_bloc/filter_view.dart';
import 'package:yiqilma_app/core/constants/UiConstants.dart';
import 'package:yiqilma_app/screens/SearchPage.dart';

class myAppBars {
  static miniAppar(String titleName) {
    return AppBar(
      backgroundColor: UiContstants.kPrimarycolor(),
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 13.0, left: 8.0),
            child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  "assets/Ellipse.jpg",
                )),
          ),
          Text(titleName)
        ],
      ),
    );
  }

  static myAppBar(BuildContext context, String titleName) {
    return AppBar(
      backgroundColor: UiContstants.kPrimarycolor(),
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 13.0, left: 8.0),
            child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  "assets/Ellipse.jpg",
                )),
          ),
          Text(titleName)
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: InkWell(
            child: SvgPicture.asset("assets/Filter.svg"),
            onTap: () {
              print("smile");
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) =>FilterView()));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SvgPicture.asset("assets/line.svg"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: InkWell(
            child: SvgPicture.asset("assets/lupa.svg"),
            onTap: () {
              print("smile");
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SearchPage()));
            },
          ),
        ),
      ],
    );
  }
}
