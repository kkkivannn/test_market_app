import 'package:flutter/material.dart';
import 'package:test_market_app/constants.dart';

class SubInfo extends StatefulWidget {
  const SubInfo({Key? key}) : super(key: key);

  @override
  State<SubInfo> createState() => _SubInfoState();
}

class _SubInfoState extends State<SubInfo> {
  List<bool> onTap = [
    false,
    true,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> subInfo = [
      {
        "title": "Shop",
      },
      {
        "title": "Details",
      },
      {
        "title": 'Features',
      },
    ];
    return SizedBox(
      height: 33,
      child: Padding(
        padding: const EdgeInsets.only(right: 35, left: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            subInfo.length,
            (index) => InkWell(
              onTap: () {
                setState(() {
                  if (onTap[index] == false) {
                    for (var i = 0; i < onTap.length; i++) {
                      if (onTap[i] == true) {
                        onTap[i] = false;
                      }
                    }
                    onTap[index] = true;
                  } else {
                    onTap[index] = false;
                  }
                });
              },
              child: SizedBox(
                width: 90,
                child: Column(
                  children: [
                    Text(
                      subInfo[index]['title'],
                      style: TextStyle(
                        fontFamily: 'MarkPro',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                    onTap[index] == false
                        ? Container()
                        : Container(
                            height: 2,
                            width: 85,
                            decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
