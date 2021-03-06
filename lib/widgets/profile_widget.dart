import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';

Column userPopularity(String num, String category) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(num,
          style: buttonTextStyleTwo.copyWith(
              fontSize: 14, fontWeight: FontWeight.w700)),
      Text(category,
          style: buttonTextStyleTwo.copyWith(
              fontSize: 14, fontWeight: FontWeight.w700)),
    ],
  );
}

ElevatedButton profileButtons(String buttonText, bool canSavePost) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      primary:
          canSavePost ? const Color.fromRGBO(233, 233, 233, 1) : primaryColor,
      textStyle: buttonTextStyleTwo,
    ),
    child: Text(
      buttonText,
    ),
  );
}
