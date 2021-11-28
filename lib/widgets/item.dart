import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class item extends StatelessWidget {
  final String title;
  final Color titleColor;
  final Color subtitleColor;
  final String totalAmount;
  final IconData;
  final Color IconColor;
  final Color colour;
  const item({
    Key? key,
    required this.title,
    required this.totalAmount,
    required this.IconData,
    required this.colour,
    required this.titleColor,
    required this.subtitleColor,
    required this.IconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .3,
      width: size.width * .95,
      decoration: BoxDecoration(
          color: colour,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              IconData,
              size: 30,
              color: IconColor ,
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: titleColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10
                ),
                Text(
                  ' ₦${totalAmount}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: subtitleColor,
                    fontSize: 26,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
