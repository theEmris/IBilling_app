import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yiqilma_app/bloc/newPage_cubit.dart/new_page_cubit.dart';
import 'package:yiqilma_app/screens/create/new_contracts.dart';
import 'package:yiqilma_app/screens/create/new_invoice.dart';
import 'package:yiqilma_app/size_config.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(getH(20)))),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      backgroundColor: Color(0xFF2A2A2D),
      title: Text("what do you want to create ?"),
      contentPadding: EdgeInsets.only(top: 10),
      content: Container(
        width: getW(327),
        height: getH(220),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Ink(
                color: Color(0xff4E4E4E),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: (() {
                      context.read<NewPageCubit>().changePage(false);
                    }),
                    leading: SvgPicture.asset("assets/Paper.svg"),
                    title: Text(
                      "contract",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Ink(
                color: Color(0xff4E4E4E),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: (() {
                      context.read<NewPageCubit>().changePage(true);
                    }),
                    leading: SvgPicture.asset("assets/Vector.svg"),
                    title: Text(
                      "invoice",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewContractsPage {}
