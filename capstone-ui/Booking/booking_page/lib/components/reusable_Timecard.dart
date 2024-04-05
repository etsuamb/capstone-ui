import 'package:flutter/material.dart';
class ReusableTimeCard extends StatelessWidget {
  final text;
  void Function()? onTap;
  Color? cardColor;
  ReusableTimeCard(
      {required this.text, required this.onTap, required this.cardColor});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 110,
        height: 66,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Color(0xFF50A9E2),
          ),
          color: cardColor,
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              text,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
