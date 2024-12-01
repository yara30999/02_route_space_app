import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
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
            Planet3D(planetData: planetData),
            DetailsText(planetData: planetData),
          ],
        ),
      ),
    );
  }
}

class Planet3D extends StatelessWidget {
  const Planet3D({
    super.key,
    required this.planetData,
  });

  final PlanetModel planetData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: Flutter3DViewer(
        src: planetData.glb,
      ),
    );
  }
}
