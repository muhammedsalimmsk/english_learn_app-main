import 'package:english_learn_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HeaderPage extends StatelessWidget {
  final String buttonText;
  final dynamic routePage;
  final String iconAssetPath; // Add this line

  const HeaderPage({
    Key? key,
    required this.buttonText,
    required this.routePage,
    required this.iconAssetPath, // Add this line
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (routePage is String) {
          // Check if routePage is a function
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
        } else if (routePage is Widget) {
          // Check if routePage is a widget
          Get.to(routePage);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.2, // Adjust the multiplier as needed
            width: MediaQuery.of(context).size.width * 0.2,
            decoration: BoxDecoration(
              // color: primry,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  iconAssetPath,
                  width: 60,
                  height: 60,
                  //color: Colors.blueGrey,
                ),
                const SizedBox(height: 10),
                Text(
                  buttonText,
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showCustomAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          title: Text('Exit Confirmation'),
          content: Text('Are you sure you want to exit?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the alert dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the alert dialog
                // Add your exit action here
              },
              child: Text('Exit'),
            ),
          ],
        );
      },
    );
  }
}
