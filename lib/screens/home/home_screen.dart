import 'package:flutter/material.dart';
import '../../models/planet.dart';
import '../../resourses/assets_manager.dart';
import '../../resourses/styles_manager.dart';
import '../common_widgets/app_bar_background_image.dart';
import '../common_widgets/app_bar_gradiant.dart';
import '../common_widgets/app_bar_title.dart';
import '../common_widgets/custom_elevated_button.dart';

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
        body: HomeBody(),
      ),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({
    super.key,
  });

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  late String _planetName;
  late final PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
    _planetName = planets.first.planetName;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _goNext() {
    if (_controller.page!.toInt() == planets.length - 1) {
      _controller.animateToPage(
        0,
        duration: const Duration(milliseconds: 1800),
        curve: Curves.easeInOut,
      );
    } else {
      _controller.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goPrevious() {
    if (_controller.page!.toInt() == 0) {
      int page = planets.length - 1;
      _controller.animateToPage(
        page,
        duration: const Duration(milliseconds: 1800),
        curve: Curves.easeInOut,
      );
    } else {
      _controller.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  List<PlanetModel> get planets => [
        PlanetModel(
          planetName: "Sun",
          planetImg: PngAssets.sun,
          about:
              "The Sun is the star at the center of the Solar System and provides energy and light essential for life on Earth.",
          distanceFromSun: 0.0,
          lengthOfDay: 0.0, // The Sun does not have a day as planets do
          orbitalPeriod: 0.0,
          radius: 696340, // In kilometers
          mess: 1.989 * 1e30, // In kg
          gravity: 274.0, // m/s²
          surfaceArea: 6.088 * 1e12, // km²
        ),
        PlanetModel(
          planetName: "Mercury",
          planetImg: PngAssets.mercury,
          about:
              "Mercury is the smallest planet in the Solar System and the closest to the Sun. It has a rocky surface with extreme temperatures.",
          distanceFromSun: 57.91, // Million kilometers
          lengthOfDay: 1407.6, // In hours
          orbitalPeriod: 88.0, // In Earth days
          radius: 2439.7, // In kilometers
          mess: 3.285 * 1e23, // In kg
          gravity: 3.7, // m/s²
          surfaceArea: 7.48 * 1e7, // km²
        ),
        PlanetModel(
          planetName: "Venus",
          planetImg: PngAssets.venus,
          about:
              "Venus is the second planet from the Sun and has a thick atmosphere rich in carbon dioxide, with high surface temperatures.",
          distanceFromSun: 108.2, // Million kilometers
          lengthOfDay: 5832.5, // In hours
          orbitalPeriod: 225.0, // In Earth days
          radius: 6051.8, // In kilometers
          mess: 4.867 * 1e24, // In kg
          gravity: 8.87, // m/s²
          surfaceArea: 4.60 * 1e8, // km²
        ),
        PlanetModel(
          planetName: "Earth",
          planetImg: PngAssets.earth,
          about:
              "Earth is the only known planet to support life, with water, a breathable atmosphere, and a magnetic field protecting it.",
          distanceFromSun: 149.6, // Million kilometers
          lengthOfDay: 24.0, // In hours
          orbitalPeriod: 365.25, // In Earth days
          radius: 6371.0, // In kilometers
          mess: 5.972 * 1e24, // In kg
          gravity: 9.8, // m/s²
          surfaceArea: 5.10 * 1e8, // km²
        ),
        PlanetModel(
          planetName: "Mars",
          planetImg: PngAssets.mars,
          about:
              "Mars is known as the Red Planet due to its reddish appearance caused by iron oxide on its surface.",
          distanceFromSun: 227.9, // Million kilometers
          lengthOfDay: 24.6, // In hours
          orbitalPeriod: 687.0, // In Earth days
          radius: 3389.5, // In kilometers
          mess: 6.39 * 1e23, // In kg
          gravity: 3.71, // m/s²
          surfaceArea: 1.44 * 1e8, // km²
        ),
        PlanetModel(
          planetName: "Jupiter",
          planetImg: PngAssets.jupiter,
          about:
              "Jupiter is the largest planet in the Solar System, with a strong magnetic field and at least 79 moons.",
          distanceFromSun: 778.5, // Million kilometers
          lengthOfDay: 9.93, // In hours
          orbitalPeriod: 4333.0, // In Earth days
          radius: 69911.0, // In kilometers
          mess: 1.898 * 1e27, // In kg
          gravity: 24.79, // m/s²
          surfaceArea: 6.14 * 1e10, // km²
        ),
        PlanetModel(
          planetName: "Saturn",
          planetImg: PngAssets.saturn,
          about:
              "Saturn is famous for its prominent ring system, composed of ice particles and rocky debris.",
          distanceFromSun: 1434.0, // Million kilometers
          lengthOfDay: 10.7, // In hours
          orbitalPeriod: 10759.0, // In Earth days
          radius: 58232.0, // In kilometers
          mess: 5.683 * 1e26, // In kg
          gravity: 10.44, // m/s²
          surfaceArea: 4.27 * 1e10, // km²
        ),
        PlanetModel(
          planetName: "Uranus",
          planetImg: PngAssets.uranus,
          about:
              "Uranus has a unique blue-green color due to methane in its atmosphere and rotates on its side.",
          distanceFromSun: 2871.0, // Million kilometers
          lengthOfDay: 17.2, // In hours
          orbitalPeriod: 30687.0, // In Earth days
          radius: 25362.0, // In kilometers
          mess: 8.681 * 1e25, // In kg
          gravity: 8.69, // m/s²
          surfaceArea: 8.08 * 1e9, // km²
        ),
        PlanetModel(
          planetName: "Neptune",
          planetImg: PngAssets.neptune,
          about:
              "Neptune is the furthest planet from the Sun, with strong winds and a vibrant blue appearance.",
          distanceFromSun: 4495.0, // Million kilometers
          lengthOfDay: 16.1, // In hours
          orbitalPeriod: 60190.0, // In Earth days
          radius: 24622.0, // In kilometers
          mess: 1.024 * 1e26, // In kg
          gravity: 11.15, // m/s²
          surfaceArea: 7.62 * 1e9, // km²
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 330,
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (value) {
                setState(() {
                  _planetName = planets[value].planetName;
                });
              },
              itemCount: planets.length,
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(planets[index].planetImg);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                ),
                onPressed: _goPrevious,
                child: const Icon(Icons.arrow_back),
              ),
              Text(
                _planetName,
                style: Styles.style24Bold(),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                ),
                onPressed: _goNext,
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
          CustomElevatedButton(
            label: 'Explore $_planetName',
            onPress: () {
              //Navigator.pushNamed(context, Routes.homeRoute);
            },
          ),
        ],
      ),
    );
  }
}
