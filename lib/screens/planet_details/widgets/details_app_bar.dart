import 'package:flutter/material.dart';
import '../../../models/planet.dart';
import '../../../resourses/colors_manager.dart';
import '../../common_widgets/app_bar_background_image.dart';
import '../../common_widgets/app_bar_gradiant.dart';
import '../../common_widgets/app_bar_title.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({
    super.key,
    required this.planetData,
  });

  final PlanetModel planetData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 144,
      child: Stack(
        children: [
          //backgound image
          const AppBarBackgroundImage(),
          // Gradient Overlay
          const AppBarGradiant(),
          // Text Content
          AppBarTitle(
            topCenterTitle: planetData.planetName,
            bottomLeftTitle: planetData.planetTitle,
          ),
          //top left back button
          Padding(
            padding: const EdgeInsets.only(top: 6.0, left: 6.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const CircleAvatar(
                backgroundColor: ColorsManager.red,
                radius: 22,
                child: Icon(Icons.arrow_back),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
