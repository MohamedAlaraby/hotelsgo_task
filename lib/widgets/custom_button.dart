import 'package:flutter/material.dart';
import 'package:task_project/constants.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  const CustomButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        width: MediaQuery.of(context).size.width,
        child: const Row(
          children: [
            Text(
              "1 Room, 2 Adults, 0 Children",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 18,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
