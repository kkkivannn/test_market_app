import 'package:flutter/material.dart';
import 'package:test_market_app/constants.dart';

class CapacityProduct extends StatefulWidget {
  final List<String> capacity;
  const CapacityProduct({Key? key, required this.capacity}) : super(key: key);

  @override
  State<CapacityProduct> createState() => _CapacityProductState();
}

class _CapacityProductState extends State<CapacityProduct> {
  List<bool> onTap = [
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: List.generate(
          widget.capacity.length,
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
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: onTap[index] ? kSecondaryColor : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  '${widget.capacity[index]} GB',
                  style: TextStyle(
                    fontFamily: "MarkPro",
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color:
                        onTap[index] ? Colors.white : const Color(0xff8D8D8D),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
