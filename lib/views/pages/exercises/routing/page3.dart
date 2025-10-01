import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 3')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('This is Page 3', style: TextStyle(fontSize: 20)),
            FilledButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/page1',
                  (route) => false,
                );
              },
              child: const Text('Go to Page 1'),
            ),
          ],
        ),
      ),
    );
  }
}
