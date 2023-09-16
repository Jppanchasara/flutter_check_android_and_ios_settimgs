// ignore_for_file: non_constant_identifier_names, unnecessary_import, prefer_const_constructors

import 'dart:io';

import 'package:exam/app/modules/home/controllers/home_controller.dart';
import 'package:exam/app/modules/home/views/iossettingsscreen.dart';
import 'package:exam/app/modules/home/views/settingsScreen.dart';
import 'package:exam/utills/displayfunction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeView extends StatelessWidget {
  
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    bool isAndroid = Platform.isAndroid;
    Color Navigationbuttoncolor = Color(0xff007efa);

    var page = [
      Center(
          child: Text(
        'Home',
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      )),
      Center(
          child: Text(
        'Cart',
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      )),
      
      Center(
          child: Text(
        'Orders',
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      )),
      DisplayFunction.isAndroid
          ? SettingsScreen()
          : IOSSettingsScreen()
    ];
    return Scaffold(
        body: Obx(() => page[homeController.tabIndex.value]),
        bottomNavigationBar:  DisplayFunction.isAndroid
            ? Obx(
                () => NavigationBar(
                  backgroundColor: Color(0xff252831),
                  
                  selectedIndex: homeController.tabIndex.value,
                  onDestinationSelected: (int index) {
                    homeController.changeTabIndex(index);
                  },
                 
                  destinations:const <NavigationDestination>[
                
                    NavigationDestination(
                      icon: Icon(
                              Icons.house_rounded,
                              
                            ),
                            
                          
                      label: 'Home',
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.badge_outlined),
                    
                      label: 'Cart',
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.shopping_bag_outlined),
                      label: 'Orders',
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.person),
                     
                      label: 'Account',
                    ),
                  ],
                ),
              )
            : Obx(() => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Navigationbuttoncolor,
              //selectedLabelStyle: TextStyle(fontWeight: FontWeight.w100),
              backgroundColor:Color(0xff1c1c1e),
              iconSize: 25,
              currentIndex: homeController.tabIndex.value,
              unselectedItemColor: Color(0xff656565),
              onTap: (index) {
                homeController.changeTabIndex(index);
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.phone_fill,),
                  label: 'Calls',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.cart,),
                      label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.bag,),
                      label: 'Orders',
                ),
                BottomNavigationBarItem(
                   icon: Icon(CupertinoIcons.person,),
                      label: 'Account',
                ),
              ],
            ))

       
        );
  }
}
