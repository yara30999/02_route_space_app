import 'package:flutter/material.dart';
import '../../models/planet.dart';
import 'widgets/details_app_bar.dart';
import 'widgets/details_text.dart';

class PlanetDetailsScreen extends StatelessWidget {
  final PlanetModel planetData;
  const PlanetDetailsScreen({super.key, required this.planetData});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            DetailsAppBar(planetData: planetData),
            Image.asset(
              planetData.planetImg,
              height: 330,
              fit: BoxFit.contain,
            ),
            DetailsText(planetData: planetData),
          ],
        ),
      ),
    );
  }
}
