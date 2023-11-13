import 'package:flutter/material.dart';

class SimpleTwoTextRow extends StatelessWidget {
  final String leadingText;
  final String trailingText;
  const SimpleTwoTextRow({
    required this.leadingText,
    required this.trailingText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 8,
      ),
      child: Row(
        children: [
          Text(
            leadingText,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          const Spacer(),
          Text(
            trailingText,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}