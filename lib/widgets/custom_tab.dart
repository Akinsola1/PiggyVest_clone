import 'package:flutter/material.dart';

class customTab extends StatelessWidget {
  final int selected;
  final Function callBack;
  customTab({Key? key, required this.selected, required this.callBack})
      : super(key: key);

  final tabs = ['Active', 'Explore', 'Matured'];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 56,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      child: ListView.separated(
        padding:const EdgeInsets.symmetric(horizontal: 5),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () {
            callBack(index);
          },
          child: Container(
            decoration: BoxDecoration(
                color: selected == index ? Colors.purple : Colors.grey[200],
                borderRadius: BorderRadius.circular(5)),
            child: Text(
              tabs[index],
              style: selected == index ? TextStyle(color: Colors.white, fontWeight: FontWeight.w500) : TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
            margin: const EdgeInsets.symmetric(vertical: 5),
            alignment: Alignment.center,
            width: (width - 40) / 2 - 10,
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 10,
        ),
        itemCount: tabs.length,
      ),
    );
  }
}