import 'package:flutter/material.dart';
import 'package:task_project/widgets/body_first_screen.dart';

import 'package:task_project/widgets/title_card.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              "assets/images/attachment3.webp",
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView(
            children: [
              SizedBox(
                height: height * 0.2,
              ),
              TrapezoidWidget(
                height: height,
                width: width,
              ),
              const SizedBox(
                height: 16,
              ),
              const BodyOfFistScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
