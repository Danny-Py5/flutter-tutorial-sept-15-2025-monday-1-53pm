import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(
            autocorrect: true,
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hint: Text("Type something.."),
            ),
            onEditingComplete: () {
              setState(() {});
            },
          ),
          Text(controller.text),
        ],
      ),
    );
  }
}
