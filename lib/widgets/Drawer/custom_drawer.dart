import 'package:english_learn_app/constant.dart';
import 'package:english_learn_app/pages/ComingSoon.dart';
import 'package:english_learn_app/widgets/Drawer/widget/drawerList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Helper/helper_function.dart';
import '../../pages/home_screen.dart';
class CustomDrawer extends StatelessWidget {
   CustomDrawer({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  void _closeDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            //padding: const EdgeInsets.only(top: 50),
            color:Theme.of(context).primaryColor,
            child: Column(
              children: [
                Image.asset("assets/Logo/LearnLingo.png",width:MediaQuery.of(context).size.width,),
              ],
            ) ,
            
          ),
          const Divider(
            height: 2,
          ),
          DrawerList(
              text: "home",
              icon: Icons.home,
              onTap:  (){
               nextScreenReplace(context, Home());
              }),
          const SizedBox(
            height: 2,
          ),
          DrawerList(
            text: "remove ads",
            icon: Icons.highlight_remove_rounded,
            onTap: () {
              nextScreen(context,const ComingSoonPage());
            },
          ),
          const SizedBox(
            height: 2,
          ),
          DrawerList(
              text: "Share App", icon: Icons.share_rounded,
              onTap: () {
            // nextScreen(context,settings_page());
          }),
          const SizedBox(
            height: 2,
          ),
          DrawerList(
              text: "Rate us",
              icon: Icons.star_border,
              onTap: () {
                
              }),
          const SizedBox(
            height: 2,
          ),
          DrawerList(
              text: "Privacy and policy",
              icon: Icons.policy_rounded,
              onTap: () {

              }),
          const SizedBox(
            height: 2,
          ),
          DrawerList(
              text: "About us",
              icon: Icons.info_outline_rounded,
              onTap: () {

              })
        ],
      ),
    );
  }
}
