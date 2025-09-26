import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        // height: 200.0,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.teal)),
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 4, 117, 0),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container(color: Colors.amber.shade200)),
          ],
        ),
      ),
    );
  }
}
