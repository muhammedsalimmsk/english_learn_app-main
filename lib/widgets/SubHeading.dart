import 'package:flutter/material.dart';

class SubHeaderWidget extends StatelessWidget {
  final String buttonText;
  final Widget routePage;
  final String image; // Add this line

  const SubHeaderWidget({
    Key? key,
    required this.buttonText,
    required this.routePage,
    required this.image, // Add this line
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => routePage),
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: 60,
                height: 60,
                //color: Colors.blueGrey,
              ),
              const SizedBox(height: 8),
              Text(
                buttonText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
