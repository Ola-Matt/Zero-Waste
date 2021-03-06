import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//App Images
String appImage = "assets/images/appImage.svg";
String fbSvg = "assets/images/facebook.svg";
String googleSvg = "assets/images/google.svg";
String linklnSvg = "assets/images/linkln.svg";
String accValidSvg = "assets/images/acct_valid.svg";
String successSvg = "assets/images/success.svg";
String noteSvg = "assets/images/notes.svg";
String backGroundJpeg = "assets/images/background.jpeg";

//User Type
const contentOne = "Crop Farmer";
const contentTwo = "Black Solder Fly Farmer";
const contentThree = "Fish/Poultry Farmer";
const contentFour = "Manual Labourers";

//Colors
const inputWhite = Color.fromRGBO(252, 252, 252, 1);
const primaryColor = Color.fromRGBO(10, 157, 86, 1);
const hintTextColor = Color.fromRGBO(151, 151, 151, 1);
const white = Color.fromRGBO(255, 255, 255, 1);
const headColor = Color.fromRGBO(0, 0, 0, 1);
const tileColor = Color.fromRGBO(226, 226, 226, 1);
const contentOneColor = Color.fromRGBO(34, 34, 34, 1);
const contentTwoColor = Color.fromRGBO(115, 115, 119, 1);
const contentThreeColor = Color.fromRGBO(77, 77, 77, 1);
const dividerColor = Color.fromRGBO(229, 229, 229, 1);
const orColor = Color.fromRGBO(22, 22, 29, 1);
const userTypeColor = Color.fromRGBO(136, 255, 222, 1);
const userTypeTextColor1 = Color.fromRGBO(128, 128, 128, 1);
const userTypeTextColor2 = Color.fromRGBO(64, 64, 64, 1);
const profileButtonColor = Color.fromRGBO(157, 51, 10, 1);
const blend = Color.fromRGBO(7, 110, 82, 0.8);

//TextStyles
TextStyle headerText = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: headColor,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  ),
);

TextStyle contentText = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: contentOneColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle contentTextTwo = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: contentThreeColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle linkText = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  ),
);

TextStyle orTextStyle = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: orColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
);

TextStyle userTypeStyle = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: Color.fromRGBO(22, 22, 29, 1),
    fontSize: 16,
    fontWeight: FontWeight.w700,
  ),
);

TextStyle forgotPasswordText = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: primaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle labelTextStyle = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: hintTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle tileTextStyle = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: headColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  ),
);

TextStyle buttonTextStyleOne = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: white,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle buttonTextStyleTwo = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle haveAccTextStyle() {
  return const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: headColor,
  );
}

TextStyle buttonText = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: headColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
);

//Button Styles
ButtonStyle elevatedButtonStyleOne = ElevatedButton.styleFrom(
  primary: primaryColor,
  textStyle: buttonTextStyleTwo,
);

ButtonStyle elevatedButtonStyleTwo = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  minimumSize: Size.infinite,
  primary: primaryColor,
  textStyle: buttonTextStyleTwo,
);

// Container Styles
socialLoginContainer({required Widget child, Color? color}) {
  return Container(
    color: color,
    width: 55,
    height: 55,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
    ),
    child: child,
  );
}
