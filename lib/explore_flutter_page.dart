import 'package:flutter/material.dart';

class ExploreFlutterPage extends StatefulWidget {
  const ExploreFlutterPage({super.key});

  @override
  State<ExploreFlutterPage> createState() => _ExploreFlutterPageState();
}

class _ExploreFlutterPageState extends State<ExploreFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
    );
  }
}
