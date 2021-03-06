import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/screens/auth_screens/signup_screen.dart';
import '../constants/constant.dart';
import '../providers/boarding.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<OnBoardingProvider>(context);
    return Column(
      children: [
        const SizedBox(height: 80.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                appState.completeOnBoarding();
                Navigator.pushReplacementNamed(context, SignUpScreen.id);
              },
              child: Text('Skip', style: buttonText),
            ),
          ],
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
