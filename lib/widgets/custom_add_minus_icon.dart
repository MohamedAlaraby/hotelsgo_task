import 'package:flutter/material.dart';
import 'package:task_project/constants.dart';

class CustomAddAndMinusIcon extends StatelessWidget {
  final Color color;
  final IconData icon;
  const CustomAddAndMinusIcon({
    super.key,
    this.color = kPrimaryColor,
    this.icon = Icons.add,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        width: 40,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: color,
            width: 1.4,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              22,
            ),
          ),
        ),
        child: SizedBox(
          child: Align(
            alignment: Alignment.center,
            child: IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              icon: Icon(
                
                icon,
                size: 20,
              ),
              color: color,
            ),
          ),
        ));
  }
}
