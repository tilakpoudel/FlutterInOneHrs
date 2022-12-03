import 'package:flutter/material.dart';
import './explore_flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const ExploreFlutterPage();
              },
            ),
          );
        },
        child: const Text('Explore Flutter'),
      ),
    );
  }
}
