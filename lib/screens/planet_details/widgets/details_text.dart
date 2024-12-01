import 'package:flutter/material.dart';
import '../../../models/planet.dart';
import '../../../resourses/styles_manager.dart';

class DetailsText extends StatelessWidget {
  const DetailsText({
    super.key,
    required this.planetData,
  });

  final PlanetModel planetData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 24.0),
      child: RichText(
        text: TextSpan(
          style: Styles.style16Bold(), // default style
          children: [
            TextSpan(
              text: 'About ',
              style: Styles.style24Bold(),
            ),
            TextSpan(
              text: '\n\n${planetData.about}',
              style: Styles.style16Regular(),
            ),
            TextSpan(
              text:
                  '\n\nDistance from Sun (km) : ${planetData.distanceFromSun}',
            ),
            TextSpan(
              text: '\n\nLength of Day (hours) :  ${planetData.lengthOfDay}',
            ),
            TextSpan(
              text:
                  '\n\nOrbital Period (Earth days) : ${planetData.orbitalPeriod}',
            ),
            TextSpan(
              text: '\n\nRadius (km) : ${planetData.radius}',
            ),
            TextSpan(
              text: '\n\nMass (kg) : ${planetData.mess}',
            ),
            TextSpan(
              text: '\n\nGravity (m/s²) : ${planetData.gravity}',
            ),
            TextSpan(
              text: '\n\nSurface Area (km²) : ${planetData.surfaceArea}',
            ),
          ],
        ),
      ),
    );
  }
}
