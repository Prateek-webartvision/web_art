import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_art/res/app_colors.dart';
import 'package:web_art/ui/sing_in_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(children: [
        Align(
            alignment: const Alignment(.2, -0.5),
            child: Image.asset(
              "assets/images/app_logo.png",
              // web_art\assets\images\app_logo.png
              height: 300,
            )),

        // SingIn
        Align(
          alignment: const Alignment(0, 0.2),
          child: ElevatedButton(
            onPressed: () {
              Get.to(() => const SingInPage());
            },
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(160, 36)),
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: Text(
              "SingIn",
              style: TextStyle(color: buttonTextColor),
            ),
          ),
        ),

        // SingUp
        Align(
          alignment: const Alignment(0, 0.32),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(160, 36)),
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: Text(
              "SingUp",
              style: TextStyle(color: buttonTextColor),
            ),
          ),
        ),

        // FaceBook
        Align(
          alignment: const Alignment(0, 0.5),
          child: SizedBox(
            width: 259,
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  // minimumSize: MaterialStateProperty.all(const Size(160, 36)),
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/facebook1.png",
                      height: 25,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      "Continue With Facebook",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )),
          ),
        ),
      ]),
    );
  }
}
