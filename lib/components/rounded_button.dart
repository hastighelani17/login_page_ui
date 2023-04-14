import 'package:flutter/material.dart';
import 'package:login_page/constant.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color, textcolor;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textcolor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10,),
      width: size.width * 0.8,
      child: SizedBox(
        height: size.height * 0.06,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(color),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26.0),
                ))),
            onPressed: press,
            child: Text(text, style: TextStyle(color: textcolor))),
      ),
    );
  }
}
