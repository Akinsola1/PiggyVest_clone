import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class activity extends StatelessWidget {
  final IconData;
  final String title;
  final String subtitle;
  final Color color;
  const activity({ Key? key, this.IconData,required this.title,required this.subtitle,required this.color }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
        ),
        borderRadius:const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
              bottomRight: Radius.circular(10)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         const  Padding(padding: EdgeInsets.all(7)),
          Icon(MdiIcons.thumbUp, color: color, size: 28,),
         const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: color,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
             const SizedBox(
                height: 5,
              ),
              Text(
                subtitle,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}