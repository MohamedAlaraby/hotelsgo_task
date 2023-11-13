import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_project/widgets/custom_add_minus_icon.dart';

class RowWidget extends StatelessWidget {
  final String leadingText;
  final String number;
  final Color plusColor;
  final Color minusColor;
  const RowWidget({
    super.key,
    required this.leadingText,
    required this.number,
    required this.minusColor,
    required this.plusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 10.0,
      ),
      child: Row(
        children: [
          Text(
            leadingText,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          const Spacer(),
          CustomAddAndMinusIcon(
            color: minusColor,
            icon: FontAwesomeIcons.minus,
          ),
          Text(
            number,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          CustomAddAndMinusIcon(
            color: plusColor,
            icon: FontAwesomeIcons.plus,
            
          ),
        ],
      ),
    );
  }
}
