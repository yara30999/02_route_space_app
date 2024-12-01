import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function()? onPress;
  final String label;
  const CustomElevatedButton({
    super.key,
    required this.onPress,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(label), const Icon(Icons.arrow_forward)],
        ),
      ),
    );
  }
}
