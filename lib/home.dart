import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
      ),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return ExpansionTile(
            title: Text(
              'item $index',
            ),
            children: const [
              ListTile(
                title: Text(
                  'sub item 2',
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
