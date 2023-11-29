import 'package:flutter/material.dart';

class OnBoardingContent extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  OnBoardingContent({
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath),
        SizedBox(height: 48),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
