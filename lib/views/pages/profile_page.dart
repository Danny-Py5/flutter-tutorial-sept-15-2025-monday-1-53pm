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

  double sliderValue = 0.0;

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
          Checkbox.adaptive(
            tristate: true,
            value: isChecked,
            onChanged: (bool? value) => setState(() {
              isChecked = !isChecked;
            }),
          ),

          // ListTile that has checkbox
          CheckboxListTile.adaptive(
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

          Switch.adaptive(
            value: isSwitched,
            onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),

          SwitchListTile.adaptive(
            value: isSwitched,
            title: Text('Enter Heaven'),
            onChanged: (bool value) => setState(() => isSwitched = value),
          ),

          // slider
          Slider.adaptive(
            value: sliderValue,
            max: 100.0,
            divisions: 10,
            onChanged: (double value) {
              setState(() {
                sliderValue = value;
              });

              print(value);
            },
          ),
        ],
      ),
    );
  }
}
