// ignore_for_file: unused_import, implementation_imports, prefer_const_constructors, must_be_immutable

import 'package:exam/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingsScreen extends StatefulWidget {
  
  SettingsScreen({super.key, });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final HomeController homeController = Get.put(HomeController());
  final Color iconColor = Color(0xffacc9fa);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        backgroundColor: Color(0xff1a1b20),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: [
              appBarview(),
              ReusebaleListTile(
                  icon: Icon(
                    Icons.phone,
                    color: iconColor,
                  ),
                  subTitle: 'Upadete Contact Details',
                  title: 'Change Mobile Number'),
              ReusebaleListTile(
                  icon: Icon(
                    Icons.safety_check,
                    color: iconColor,
                  ),
                  subTitle: 'Enhance Secuurity with OTP',
                  title: 'Two-Step Verification',
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black12,
                    child: Switch(),
                  )),
              ReusebaleListTile(
                  icon: Icon(
                    Icons.biotech_sharp,
                    color:iconColor,
                  ),
                  subTitle: 'Quick & Safe Access to Account',
                  title: 'Biometrics Authentication',
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black12,
                    child: Switch(),
                  )),
              ReusebaleListTile(
                  icon: Icon(
                    Icons.person_pin,
                    color: iconColor,
                  ),
                  subTitle: 'Link & Sync Profiles',
                  title: 'Social Profiles'),
              ReusebaleListTile(
                  icon: Icon(
                    Icons.card_giftcard,
                    color: iconColor,
                  ),
                  subTitle: 'View & Redeem Offers',
                  title: 'My Cuupons'),
              ReusebaleListTile(
                icon: Icon(
                  Icons.star,
                  color:iconColor,
                ),
                subTitle: 'Exclusive Access to prime Members ',
                title: 'Prime Products',
              ),
              ReusebaleListTile(
                  icon: Icon(
                    Icons.shopping_bag,
                    color:iconColor,
                  ),
                  subTitle: 'Buy More,Save More',
                  title: 'Combo Offer'),
              ReusebaleListTile(
                  icon: Icon(
                    Icons.favorite_border,
                    color: iconColor,
                  ),
                  subTitle: 'Save Favorite for Later',
                  title: 'Wishlist'),
            ]),
          ),
        ),
      ),
    );
  }

  Switch() {
    return Obx(
      () => FlutterSwitch(
        width: 60.0,
        height: 35.0,
        toggleSize: 18.0,
        value: homeController.isSwitched.value,
        borderRadius: 30.0,
        padding: 6.0,
        toggleColor: Colors.grey.shade400,
        switchBorder: Border.all(
          color: Colors.grey,
          width: 3.0,
        ),
        toggleBorder: Border.all(
          color: Colors.grey,
          width: 12,
        ),
        activeColor: Colors.black12,
        inactiveColor: Colors.black12,
        onToggle: (val) {
          homeController.changeSwich(val);
        },
      ),
    );
  }

  appBarview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(right: 15),
          child: Align(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Settings',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class ReusebaleListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  Widget? trailing;
  Icon icon;
  ReusebaleListTile(
      {super.key,
      required this.icon,
      required this.subTitle,
      required this.title,
      this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(fontSize: 14),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(fontSize: 12),
      ),
      trailing: trailing,
    );
  }
}
