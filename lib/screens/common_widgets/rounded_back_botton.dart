import 'package:flutter/material.dart';

import '../../resourses/colors_manager.dart';

class RoundedBackButton extends StatelessWidget {
  final Function() onTap;
  const RoundedBackButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const CircleAvatar(
        backgroundColor: ColorsManager.red,
        radius: 22,
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
