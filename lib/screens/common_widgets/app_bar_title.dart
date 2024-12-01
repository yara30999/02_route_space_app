import 'package:flutter/material.dart';
import '../../resourses/styles_manager.dart';

class AppBarTitle extends StatelessWidget {
  final String topCenterTitle, bottomLeftTitle;
  const AppBarTitle({
    super.key,
    required this.topCenterTitle,
    required this.bottomLeftTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Top-Center Title
          Align(
            alignment: Alignment.topCenter,
            child: Text(topCenterTitle, style: Styles.style24Bold()),
          ),
          // Bottom-Left Title
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(bottomLeftTitle, style: Styles.style24Bold()),
          ),
        ],
      ),
    );
  }
}
