import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:piggyvest_clone1/widgets/activity.dart';
import 'package:piggyvest_clone1/widgets/quick_option.dart';
import 'package:piggyvest_clone1/widgets/to_do.dart';
import 'package:piggyvest_clone1/widgets/widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:line_icons/line_icons.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);
  @override
  State<homePage> createState() => _homePageState();
}

// for the carousel
int _currentIndex = 0;
List cardList = [
  item(
    title: 'Total Savings',
    totalAmount: '10,000',
    colour: Colors.blue.shade700,
    IconData: Icons.shield_outlined,
    titleColor: Colors.white,
    subtitleColor: Colors.white,
    IconColor: Colors.white,
  ),
  item(
    title: 'Total Investment',
    totalAmount: '0.00',
    colour: Colors.purple.shade600,
    IconData: MdiIcons.trendingUp,
    titleColor: Colors.white,
    subtitleColor: Colors.white,
    IconColor: Colors.white,
  ),
  const item(
    title: 'Flex Dollar',
    totalAmount: '1000',
    colour: Colors.black,
    IconData: Icons.attach_money,
    titleColor: Colors.white,
    subtitleColor: Colors.white,
    IconColor: Colors.white,
  ),
  const item(
    title: 'Flex Naira',
    totalAmount: '1,000,000',
    colour: Colors.white,
    IconData: Icons.account_balance_wallet,
    titleColor: Colors.black,
    subtitleColor: Colors.pink,
    IconColor: Colors.pink,
  ),
  const item(
    title: 'Link Abeg Account',
    totalAmount: '****',
    colour: Colors.purple,
    IconData: Icons.alternate_email,
    titleColor: Colors.white,
    subtitleColor: Colors.white,
    IconColor: Colors.white,
  ),
];
List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}

// for the carousel
class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue.shade700,
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Faruq,',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Hello, wash your hands 👋 ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Spacer(),
                Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade700,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.person, color: Colors.white))
              ]),
              const SizedBox(
                height: 18,
              ),
              Column(
                children: <Widget>[
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: false,
                      reverse: false,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: false,
                      viewportFraction: 1,
                      aspectRatio: 3.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    items: cardList.map((card) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                          child: Card(
                            color: Colors.white,
                            child: card,
                          ),
                        );
                      });
                    }).toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(cardList, (index, url) {
                      return Container(
                        width: 15.0,
                        height: 3.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 5.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: _currentIndex == index
                              ? Colors.blue.shade600
                              : Colors.blue.shade100,
                        ),
                      );
                    }),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                  'QUIZ: DO YOU NEED HELP SAVING? ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 15
                ),
                Container(
                  height: size.height * .2,
                  width: size.width,
                  decoration: BoxDecoration(
                    image:const  DecorationImage(
                        image: AssetImage(
                            'assets/images/stormseeker-rX12B5uX7QM-unsplash.jpg'), fit: BoxFit.fitWidth),
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              ]),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                            text: 'TO-DO LIST - ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            )),
                        TextSpan(
                          text: 'REFRESH',
                          style: TextStyle(
                              color: Colors.blue.shade900, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const To_do(title: 'Safelock ₦50,000 for 61 - 90 days'),
                  const SizedBox(height: 20),
                  const To_do(title: 'Set yur securiy question now! 🔐'),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              activity(
                  title: 'See your recent activities',
                  subtitle: 'see your most recent activities on PiggyVest',
                  color: Colors.blue.shade700),
              const SizedBox(
                height: 20,
              ),
              activity(
                  title: 'Create a Safelock',
                  subtitle:
                      'Avoid spending temptation, Tap to create \n a safelock',
                  color: Colors.blue.shade300),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'QUICK OPTIONS',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      quick_option(
                          color: Colors.orange.shade100,
                          IconData: LineIcons.mousePointer,
                          title: 'My W.E.A.C Result',
                          subtitle: 'See your 2020 W.A.E.C result',
                          trailing: 'View Result',
                          contentColor: Colors.orange),
                      const SizedBox(
                        width: 8,
                      ),
                      quick_option(
                          color: Colors.grey.shade300,
                          IconData: LineIcons.percent,
                          title: 'Todays Rates',
                          subtitle:
                              "Check put today's rates across all savings feautures on PiggyVest",
                          trailing: 'See Rates',
                          contentColor: Colors.black),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      quick_option(
                          color: Colors.pink.shade100,
                          IconData: LineIcons.film,
                          title: 'Flex Naira',
                          subtitle:
                              'Flexible savings for emergencies. free transfer, withdrawals etc. 8% p.a',
                          trailing: 'View Flex',
                          contentColor: Colors.pink.shade700),
                      const SizedBox(
                        width: 7,
                      ),
                      quick_option(
                          color: Colors.grey.shade300,
                          IconData: LineIcons.dollarSign,
                          title: 'Flex Dollar',
                          subtitle:
                              'Save and grow your wealthy in dollars. Up to 7% p.a in dollars',
                          trailing: 'Open',
                          contentColor: Colors.black),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
