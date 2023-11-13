import 'package:flutter/material.dart';
import 'package:task_project/widgets/trapezoid_shape.dart';

class TrapezoidWidget extends StatelessWidget {
  final double height, width;
  const TrapezoidWidget({
    required this.height,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 0,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          SizedBox(
            width: width * 0.44,
            height: 60,
            child: CustomPaint(
              painter: TrapezoidShape(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 16,
            ),
            child: Text(
              "Hotels Search",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
