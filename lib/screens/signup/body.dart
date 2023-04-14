import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/components/already_have_an_account_check.dart';
import 'package:login_page/components/rounded_button.dart';
import 'package:login_page/components/rounded_input_field.dart';
import 'package:login_page/components/rounded_password_field.dart';
import 'package:login_page/screens/login/login_screen.dart';
import 'package:login_page/screens/signup/background.dart';
import 'package:login_page/screens/signup/or_divider.dart';
import 'package:login_page/screens/signup/social_icon.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(hintText: "Your Email", onChanged: (value) {}),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(text: "SIGNUP", press: () {}),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }));
              },
            ),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                   iconsrc: 'assets/icons/facebook.svg',
                   press: () {},

                ),
                SocialIcon(
                  iconsrc: 'assets/icons/twitter.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconsrc: 'assets/icons/google-plus.svg',
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

