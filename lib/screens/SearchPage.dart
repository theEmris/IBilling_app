import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yiqilma_app/core/constants/UiConstants.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Container(
          height: 20,
          
          width: double.infinity,
          child: TextFormField(
            controller: _controller,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                hintText: "search by keywords",
                hintStyle: UiContstants.valuetextStyles(context),
                suffixIcon: InkWell(
                  onTap: () {
                    _controller.clear();
                  },
                  child: SvgPicture.asset(
                    "assets/delete.svg",
                    height: 5,
                    width: 5,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
