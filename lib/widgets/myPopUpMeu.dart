import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yiqilma_app/core/constants/UiConstants.dart';
import 'package:yiqilma_app/size_config.dart';

class myPopUpMenu extends StatelessWidget {
  const myPopUpMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return PopupMenuButton(
        color: Color(0xFF2A2A2D),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.grey, width: 2)),
        icon: SvgPicture.asset("assets/arrow.svg"),
        itemBuilder: (_) => [
              PopupMenuItem(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: getH(100),
                      width: getW(300),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Paid",
                            style: TextStyle(color: UiContstants.kTextColor()),
                          ),
                          Radio(
                              value: "Paid",
                              groupValue: Text,
                              onChanged: (v) {}),
                        ],
                      ),
                    ),
                  ),
                  value: null),
              PopupMenuItem(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: getH(100),
                      width: getW(300),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "In Progress",
                            style: TextStyle(color: UiContstants.kTextColor()),
                          ),
                          Radio(
                              value: "In Progress",
                              groupValue: Text,
                              onChanged: (v) {}),
                        ],
                      ),
                    ),
                  ),
                  value: null),
              PopupMenuItem(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: getH(100),
                          width: getW(300),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Rejected by Payme",
                                  style: TextStyle(
                                      color: UiContstants.kTextColor()),
                                ),
                                Radio(
                                    value: "Rejected by Payme",
                                    groupValue: Text,
                                    onChanged: (v) {}),
                                
                              ])))),



                              PopupMenuItem(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: getH(100),
                                        width: getW(300),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "Rejected by IQ",
                                              style: TextStyle(
                                                  color: UiContstants
                                                      .kTextColor()),
                                            ),
                                            Radio(
                                                value: "Rejected by IQ",
                                                groupValue: Text,
                                                onChanged: (v) {})
                                          ],
                                        ),
                                      ),
                                    ),
                                    value: null)
            ]);
  }
}
