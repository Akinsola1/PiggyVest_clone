import 'package:flutter/material.dart';

class To_do extends StatelessWidget {
  final String title;
  const To_do({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 70,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          const Padding(padding: EdgeInsets.all(6)),
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.blue.shade700,
                width: 2,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
