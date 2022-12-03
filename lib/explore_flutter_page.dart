import 'package:flutter/material.dart';

class ExploreFlutterPage extends StatefulWidget {
  const ExploreFlutterPage({super.key});

  @override
  State<ExploreFlutterPage> createState() => _ExploreFlutterPageState();
}

class _ExploreFlutterPageState extends State<ExploreFlutterPage> {
  bool isSwitch = false;
  bool? isCheckedBox = false;

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
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('action button clicked');
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/einstein-on-bg.jpeg'),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint('elevated button clicked');
              },
              child: const Text(
                'Elevated button',
              ),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('outlined button clicked');
              },
              child: const Text(
                'Outlined button',
              ),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text button clicked');
              },
              child: const Text(
                'Text button',
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is row clicked');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
            Checkbox(
              value: isCheckedBox,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckedBox = newBool;
                });
              },
            ),
            Image.network(
                'https://i.pinimg.com/736x/f5/d2/e2/f5d2e2d221fca60040496be8ec555523.jpg')
          ],
        ),
      ),
    );
  }
}
