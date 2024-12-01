import 'package:flutter/material.dart';
import '../../resourses/assets_manager.dart';

class AppBarBackgroundImage extends StatelessWidget {
  const AppBarBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
        quarterTurns: 2,
        child: Image.asset(
          PngAssets.appBarImg,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ));
  }
}
