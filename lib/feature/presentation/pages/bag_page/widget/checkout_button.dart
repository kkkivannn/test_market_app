import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CheckoutButton extends StatefulWidget {
  const CheckoutButton({Key? key}) : super(key: key);

  @override
  State<CheckoutButton> createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kSecondaryColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          minimumSize: MaterialStateProperty.all(const Size(0, 54)),
        ),
        onPressed: () {},
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 118),
          child: Text(
            'Checkout',
            style: TextStyle(
              fontFamily: 'MarkPro',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
