import 'package:flutter/material.dart';
import '../../resourses/assets_manager.dart';
import '../../resourses/styles_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            PngAssets.login,
            width: double.infinity,
            height: double.infinity,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Explore \nThe \nUniverse ',
                style: Styles.style48Bold(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(
                16.0,
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: const SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Explore'), Icon(Icons.arrow_forward)],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
