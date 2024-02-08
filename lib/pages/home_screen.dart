import 'package:english_learn_app/constant.dart';
import 'package:english_learn_app/widgets/Drawer/custom_drawer.dart';
import 'package:english_learn_app/widgets/box_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {

  const Home({super.key,});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Use SystemNavigator to exit the app when the back button is pressed on the home page
        Get.defaultDialog(
            title: "Alert",
            titleStyle: const TextStyle(fontSize: 21),
            middleText: "Are you sure want to exit",
            middleTextStyle:const TextStyle(fontSize: 21),
            buttonColor: primry,
            confirmTextColor: Colors.black,
            cancelTextColor: Colors.black,
            // backgroundColor: primry,
            onCancel: (){
              Navigator.pop(context);
            },
            onConfirm: (){
              SystemNavigator.pop();
            }
        );
        return false;
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: _customAppBar(),
          drawer:  CustomDrawer(),
          body:  Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: BoxPage(),
            ),
          )),
    );
  }

  AppBar _customAppBar() {
    return AppBar(
      backgroundColor: primry,
      iconTheme:const IconThemeData(color: Colors.black,size: 35),
      elevation: 0,
      title: const Text(
        "English learning",
        style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }
}
