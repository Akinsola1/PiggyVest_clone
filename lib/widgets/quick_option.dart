import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class quick_option extends StatelessWidget {
  final Color color;
  final IconData;
  final String title;
  final String subtitle;
  final String trailing;
  final Color contentColor;
  const quick_option(
      {Key? key,
      required this.color,
      required this.IconData,
      required this.title,
      required this.subtitle,
      required this.trailing, required this.contentColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 210,
      width: size.width * .43,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10)
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              IconData,
              color:contentColor,
              size: 23,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                color: contentColor,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 13
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              trailing,
              style: TextStyle(
                color: contentColor,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
