import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();

  bool isChecked = false;

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Checkbox(
            tristate: true,
            value: isChecked,
            onChanged: (bool? value) => setState(() {
              isChecked = !isChecked;
            }),
          ),

          // ListTile that has checkbox
          CheckboxListTile(
            tristate: true,
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked =
                    value ??
                    false; // be set to value else false if value is null
              });
            },
            title: Text("List of item"),
          ),

          Switch(
            value: isSwitched,
            onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),

          SwitchListTile(
            value: isSwitched,
            onChanged: (bool value) => setState(() => isSwitched = value),
          ),
        ],
      ),
    );
  }
}
