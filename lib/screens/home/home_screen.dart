import 'package:flutter/material.dart';
import '../common_widgets/app_bar_background_image.dart';
import '../common_widgets/app_bar_gradiant.dart';
import '../common_widgets/app_bar_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(237),
          child: Stack(
            children: [
              //backgound image
              AppBarBackgroundImage(),
              // Gradient Overlay
              AppBarGradiant(),
              // Text Content
              AppBarTitle(
                topCenterTitle: 'Explore',
                bottomLeftTitle: 'Which planet \nwould you like to explore?',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
