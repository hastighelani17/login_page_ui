import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page/components/rounded_button.dart';
import 'package:login_page/constant.dart';
import 'package:login_page/screens/components/background.dart';
import 'package:login_page/screens/login/login_screen.dart';
import 'package:login_page/screens/signup/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //this line prefered us total height and width of our screen
    return Background(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Center(
              child: SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.height * 0.46,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Sign Up",
              color: kPrimaryLightColor,
              textcolor: Colors.black,
              press: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SignUpScreen();
              }));},
            )
          ]),
    );
  }
}
