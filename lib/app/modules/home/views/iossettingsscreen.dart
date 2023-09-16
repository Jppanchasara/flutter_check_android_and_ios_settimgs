// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:exam/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class IOSSettingsScreen extends StatefulWidget {
  const IOSSettingsScreen({super.key});

  @override
  State<IOSSettingsScreen> createState() => _IOSSettingsScreenState();
}

class _IOSSettingsScreenState extends State<IOSSettingsScreen> {
  final HomeController homeController = Get.put(HomeController());
  Color buttoncolor = const Color(0xff007efa);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
               decoration: BoxDecoration(
             
        color: Color(0xff1c1c1e)
            ),
              child: Column(
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'MyZone',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                 decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff1c1c1e)
            ),
                child: CupertinoListTile(
                 leading: CircleAvatar(
                   radius: 15,
                   backgroundColor: Colors.white,
                   child: Icon(
                     CupertinoIcons.person_solid,
                     color: buttoncolor,
                   ),
                 ),
                 subtitle: Text('DeviArt ID,Profile &More',
                     style: TextStyle(fontSize: 12)),
                 trailing: Icon(
                   Icons.arrow_forward_ios_rounded,
                   color: buttoncolor,
                 ),
                 title: Text(
                   'Haard Parmar',style: TextStyle(fontSize: 14,color: Colors.white)
                 ),
                  ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            containertwo(),
            SizedBox(
              height: 10,
            ),
            containerthree(),
            SizedBox(
              height: 10,
            ),
            containerfour(),
             SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  divider() {
    return Divider(
      indent: 58,
      color: Color.fromARGB(255, 46, 46, 48),
      thickness: 1,
    );
  }

  containerfour() {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff1c1c1e)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            children: [
              ReusebaleListTile(
                icon: Icon(
                  CupertinoIcons.location,
                  color: buttoncolor,
                ),
                title: 'Change Mobile Number',
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: buttoncolor,
                ),
              ),
              divider(),
              ReusebaleListTile(
                icon: Icon(
                  CupertinoIcons.airplane,
                  color: buttoncolor,
                ),
                title: 'Two-Step Verification',
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: buttoncolor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  containerthree() {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      child: Container(
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff1c1c1e)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            children: [
              ReusebaleListTile(
                icon: Icon(
                  CupertinoIcons.gift,
                  color: buttoncolor,
                ),
                title: 'My Coupons',
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: buttoncolor,
                ),
              ),
              divider(),
              ReusebaleListTile(
                icon: Icon(
                 CupertinoIcons.star,
                  color: buttoncolor,
                ),
                title: 'Prime Products',
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: buttoncolor,
                ),
              ),
              divider(),
              ReusebaleListTile(
                icon: Icon(
                  CupertinoIcons.bag,
                  color: buttoncolor,
                ),
                title: 'Combo Products',
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: buttoncolor,
                ),
              ),
              divider(),
              ReusebaleListTile(
                icon: Icon(
                  CupertinoIcons.heart,
                  color: buttoncolor,
                ),
                title: 'Wishlist',
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: buttoncolor,
                ),
              ),
              divider(),
              ReusebaleListTile(
                icon: Icon(
                  CupertinoIcons.return_icon,
                  color: buttoncolor,
                ),
                title: 'Return Products',
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: buttoncolor,
                ),
              ),
              divider(),
              ReusebaleListTile(
                icon: Icon(
                  CupertinoIcons.smallcircle_circle,
                  color: buttoncolor,
                ),
                title: 'Targets',
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: buttoncolor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  containertwo() {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      child: Container(
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff1c1c1e)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            children: [
              ReusebaleListTile(
                icon: Icon(
                  CupertinoIcons.phone_fill,
                  color: buttoncolor,
                ),
                title: 'Change Mobile Number',
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: buttoncolor,
                ),
              ),
              divider(),
              ReusebaleListTile(
                icon: Icon(
                  CupertinoIcons.checkmark_alt,
                  color: buttoncolor,
                ),
                title: 'Two-Step Verification',
                trailing: Obx(
                  () => CupertinoSwitch(
                    // This bool value toggles the switch.
                    value: homeController.isSwitched.value,
                    activeColor: buttoncolor,
                    onChanged: (on) {
                      // This is called when the user toggles the switch.
                      homeController.changeSwich(on);
                    },
                  ),
                ),
              ),
              divider(),
              ReusebaleListTile(
                icon: Icon(
                  CupertinoIcons.bitcoin,
                  color: buttoncolor,
                ),
                title: 'Biomentic Authentication',
                trailing: Obx(
                  () => CupertinoSwitch(
                    // This bool value toggles the switch.
                    value: homeController.isSwitched.value,
                    activeColor:buttoncolor,
                    onChanged: (on) {
                      // This is called when the user toggles the switch.
                      homeController.changeSwich(on);
                    },
                  ),
                ),
              ),
              divider(),
              ReusebaleListTile(
                icon: Icon(
                  CupertinoIcons.person_crop_circle_badge_plus,
                  color: buttoncolor,
                ),
                title: 'Social Accounts',
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: buttoncolor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReusebaleListTile extends StatelessWidget {
  final String title;

  Widget? trailing;
  Icon icon;
  ReusebaleListTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: 
Container(
        height: 28,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                icon,
                SizedBox(
                  width: 15,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            InkWell(
              child: trailing,
            )
          ],
        ),
      ),);
  }
}
