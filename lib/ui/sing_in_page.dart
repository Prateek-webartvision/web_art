// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SignIn")),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(),
            Align(
              alignment: const Alignment(.2, -0.5),
              child: Image.asset(
                "assets/images/app_logo.png",
                height: 280,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Form(
                  child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                        backgroundBlendMode: BlendMode.darken),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  //password
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                        backgroundBlendMode: BlendMode.darken),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Sign In"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 160, 65, 65))),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
