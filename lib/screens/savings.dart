import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:piggyvest_clone1/widgets/activity.dart';
import 'package:piggyvest_clone1/widgets/quick_option.dart';

class savings extends StatelessWidget {
  const savings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Savings',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '₦10,000',
                        style: TextStyle(
                          color: Colors.blue.shade700,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.info_outline,
                          size: 35, color: Colors.blue.shade700)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: size.height * .18,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade700,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10)),
                      const Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/damir-spanic-vwaTtIhCjVg-unsplash.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      quick_option(
                          color: Colors.blue.shade100,
                          IconData: Icons.shield_outlined,
                          title: 'Piggybank',
                          subtitle:
                              'Strict savings automatically. Daily, weekly or Monthly. 10% p.a',
                          trailing: '₦10,000',
                          contentColor: Colors.blue.shade700),
                      SizedBox(
                        width: 7,
                      ),
                      quick_option(
                          color: Colors.pink.shade100,
                          IconData: LineIcons.film,
                          title: 'Flex Naira',
                          subtitle:
                              'Flexible savings for emergencies. Free transfer, withdrawals etc. 8% p.a',
                          trailing: '₦0.58',
                          contentColor: Colors.pink.shade700),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      quick_option(
                          color: Colors.blue.shade50,
                          IconData: LineIcons.lock,
                          title: 'Safelock',
                          subtitle:
                              'Lcok funnds to avoid temptations. Upfront interest. Up to 13% p.a',
                          trailing: '₦0.00',
                          contentColor: Colors.blue.shade500),
                      SizedBox(
                        width: 7,
                      ),
      
                      quick_option(
                          color: Colors.green.shade100,
                          IconData: MdiIcons.target,
                          title: 'Targets',
                          subtitle:
                              'Reach your unique individual saving goals. 9% p.a',
                          trailing: '₦0.00',
                          contentColor: Colors.green.shade600),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      quick_option(
                          color: Colors.grey.shade200,
                          IconData: LineIcons.dollarSign,
                          title: 'Flex Dollar',
                          subtitle:
                              'Save & grow your wealth in dollars. Up to 7% p.a in dollars',
                          trailing: '\$0.00',
                          contentColor: Colors.black),
                      SizedBox(
                        width: 7,
                      ),
      
                      quick_option(
                          color: Colors.purple.shade100,
                          IconData: Icons.alternate_email_outlined,
                          title: 'Abeg Account',
                          subtitle:
                              'Abeg is a socila payment platform for super quick transfers',
                          trailing: 'Connect Accont',
                          contentColor: Colors.purple.shade700),
                    ],
                  )
                ],
              ),
             const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
