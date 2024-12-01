import 'package:flutter/material.dart';
import '../../../resourses/assets_manager.dart';

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({
    super.key,
  });

  @override
  State<AnimatedImage> createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Transform.translate(
      offset: Offset(-screenWidth / 2, screenHeight / 60),
      child: RotationTransition(
        turns: _controller,
        child: Image.asset(
          PngAssets.fullLogin,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
