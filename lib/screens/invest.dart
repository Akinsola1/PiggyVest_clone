import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:piggyvest_clone1/widgets/custom_tab.dart';

class invest extends StatefulWidget {
  const invest({Key? key}) : super(key: key);

  @override
  State<invest> createState() => _investState();
}

class _investState extends State<invest> {
  @override
  Widget build(BuildContext context) {
    var tabIndex = 0;
    final pagecontroller = PageController();
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Investify',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '₦0.00',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon:
                      Icon(Icons.info_outline, size: 35, color: Colors.purple),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: size.height * .19,
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.purple.shade50,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/invest.png'),
                      fit: BoxFit.contain)),
            ),
            const SizedBox(
              height: 5,
            ),
            customTab(
                selected: tabIndex,
                callBack: (int index) {
                  setState(() {
                    tabIndex = index;
                  });
                  if (pagecontroller.hasClients) {
                    pagecontroller.jumpToPage(index);
                  }
                }),
            const SizedBox(
              height: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'INVEST WITH INVESTIFY',
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: size.height * .25,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.purple.shade100,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          MdiIcons.trendingUp,
                          size: 30,
                          color: Colors.purple,
                        ),
                        Text(
                          'Try Investify!',
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                            'Join other piggy vest users to co-invest in well-vetted & amazing investment opportunities. Starting for as little as ₦5,000.'),
                        Text('See Investments',
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 18))
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
