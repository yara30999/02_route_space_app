class PlanetModel {
  final String planetName, planetTitle, planetImg, about, glb;
  final double distanceFromSun,
      lengthOfDay,
      orbitalPeriod,
      radius,
      mess,
      gravity,
      surfaceArea;
  PlanetModel({
    required this.planetName,
    required this.planetImg,
    required this.glb,
    required this.planetTitle,
    required this.about,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mess,
    required this.gravity,
    required this.surfaceArea,
  });
}
