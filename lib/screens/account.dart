import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:line_icons/line_icons.dart';

class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool tap = false;
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
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'My Account',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      'Faruq Akinsola',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 25,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              height: size.height * .17,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Enable \nTwo-factor Authentication',
                      style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: 15,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade50,
                        image : const DecorationImage(image: AssetImage('assets/images/padlock.jpeg'), fit: BoxFit.cover)
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SwitchButton(
              title: 'Enable Finger Print/Face ID',
              tap: true,
            ),
            const SizedBox(height: 5),
            const SwitchButton(
              title: 'Show Dashboard Account Balance',
              tap: true,
            ),
            const SizedBox(height: 5),
            const SwitchButton(
              title: 'Enable Finger Print/Face ID',
              tap: false,
            ),
            const SizedBox(
              height: 25,
            ),
            Column(children: [
              Row(children: const [
                piggyData(title: 'Flex Number by Wema', subtitle: '7810325565', crossAxisAlignment: CrossAxisAlignment.start,),
                SizedBox( width: 5,),
                piggyData(title: 'Piggy Points', subtitle: '2', crossAxisAlignment: CrossAxisAlignment.end,),
              ]),
              const SizedBox(
                height: 20,
              ),
              Row(children: const [
                piggyData(title: 'Create a Piggylink ID', subtitle: '#Piggylink ID', crossAxisAlignment: CrossAxisAlignment.start,),
                SizedBox( width: 5,),
                piggyData(title: 'Referral Earnings', subtitle: '#0', crossAxisAlignment: CrossAxisAlignment.end,),
              ])
            ]),

          const SizedBox( height:30 ,),
           const AccountOptions(title: 'Todays Rate', IconData: LineIcons.percent,),
           const SizedBox( height:10 ,),
  const AccountOptions(title: 'My Account Settings', IconData: LineIcons.user,),
  const SizedBox( height:18 ,),
  const AccountOptions(title: 'Self Help', IconData: LineIcons.paperclip),
  const SizedBox( height:18 ,),
  const AccountOptions(title: 'Update KYC', IconData: LineIcons.edit,),
  const SizedBox( height:18 ,),
  const AccountOptions(title: 'Refer & Earn ₦1,000.00', IconData: LineIcons.share,),
  const SizedBox( height:18 ,),
  const AccountOptions(title: 'Withdraw Funds', IconData: LineIcons.dollarSign,),
  const SizedBox( height:18 ,),
  const AccountOptions(title: 'My Card & Bank Settings', IconData: LineIcons.wallet,),
  const SizedBox( height:18 ,),
  const AccountOptions(title: 'Update KYC', IconData: Icons.chat_bubble_outline,),
  const SizedBox( height:18 ,),
  const AccountOptions(title: 'View PiggyVest Library', IconData: LineIcons.book,),
  const SizedBox( height:18 ,),
  const AccountOptions(title: 'Contact Us', IconData: LineIcons.phone,),
  const SizedBox( height:18 ,),
  const AccountOptions(title: 'Log Out', IconData: Icons.logout_outlined, islogout: true,),
          ],
        ),
      ),
    ));
  }
}

class SwitchButton extends StatefulWidget {
  final String title;
  final bool tap;
  const SwitchButton({Key? key, required this.title, required this.tap})
      : super(key: key);

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = widget.tap;
    return Row(
      children: [
        Text(
          widget.title,
          style: const TextStyle(color: Colors.black, fontSize: 15),
        ),
        const Spacer(),
        Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
            });
          },
          activeTrackColor: Colors.green.shade200,
          activeColor: Colors.green.shade600,
        )
      ],
    );
  }
}

class piggyData extends StatelessWidget {
  final String title;
  final String subtitle;
  final CrossAxisAlignment crossAxisAlignment;
  const piggyData({Key? key, required this.title, required this.subtitle,required this.crossAxisAlignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 65,
          width: size.width * .45,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade200,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: crossAxisAlignment,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Prompt-Thin',
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

// class Account {
//   final String title;
//   final IconData;
//   Account ({
//     required this.title, required this.IconData
//   });
// }


class AccountOptions extends StatelessWidget {
  final String title;
  final IconData;
  final islogout;
  const AccountOptions({ Key? key, required this.title, required this.IconData, this.islogout = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 65,
      width: size.width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(10),
      ),
      child:islogout ?  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
             Icon(
              IconData,
              color: Colors.red,
              size: 35,
            ),
            const SizedBox( width: 10,),
            Text(
              title,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 15,
              )
            ), 
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_outlined))
          ],
        ),
      ) : 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
             Icon(
              IconData,
              color: Colors.black,
              size: 35,
            ),
            const SizedBox( width: 10,),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
              )
            )
          ],
        ),
      ) 
    );
  }
}