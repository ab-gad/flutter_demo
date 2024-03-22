import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.topLeftColor,
    required this.bottomRightColor,
  });

  const GradientContainer.purple({super.key})
      : topLeftColor = const Color.fromARGB(255, 46, 12, 104),
        bottomRightColor = Colors.deepPurple;

  final begin = Alignment.topLeft;
  final end = Alignment.bottomRight;
  final Color topLeftColor;
  final Color bottomRightColor;

  @override
  Container build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [topLeftColor, bottomRightColor],
          begin: begin,
          end: end,
        ),
      ),
      child: Center(
        child: Text("Hello world!"),
      ),
    );
  }
}
