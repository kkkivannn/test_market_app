import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/theme/icons.dart';

class TownSelector extends StatelessWidget {
  const TownSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(
          flex: 2,
        ),
        SvgPicture.asset(
          SvgImg.label,
          color: const Color(0xffFF6E4E),
          height: 15,
          width: 12,
        ),
        const SizedBox(
          width: 11,
        ),
        Text(
          'Zihuatanejo, Gro',
          style: TextStyle(
            fontFamily: 'MarkPro',
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: kPrimaryColor,
          ),
        ),
        SizedBox(
          width: 25,
          child: PopupMenuButton(
            splashRadius: 10,
            constraints: const BoxConstraints(minWidth: 8),
            icon: SvgPicture.asset(
              SvgImg.selectTown,
              width: 10,
              height: 5,
            ),
            itemBuilder: (context) => [],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 17),
          child: SvgPicture.asset(SvgImg.someIcon),
        ),
      ],
    );
  }
}
