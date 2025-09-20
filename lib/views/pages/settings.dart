import 'package:flutter/material.dart';

import '../../data/value_notifier.dart';

class Settings extends StatefulWidget {
  const Settings({super.key, required this.title});

  final String title;

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextEditingController controller = TextEditingController();

  bool isChecked = false;

  bool isSwitched = false;

  double sliderValue = 0.0;
  String? selectedItem = 'i1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        titleSpacing: 0,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        automaticallyImplyLeading: false,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FilledButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("FLutter"),
                        content: Text("You are using a flutter demo app"),
                        actions: [
                          OutlinedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Close"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Show alert'),
              ),
              DropdownButton(
                value: selectedItem,
                icon: Icon(Icons.list_sharp),

                items: [
                  DropdownMenuItem(value: "i1", child: Text("Item 1")),
                  DropdownMenuItem(value: "i2", child: Text("Item 2")),
                  DropdownMenuItem(value: "i3", child: Text("Item 3")),
                  DropdownMenuItem(value: "i4", child: Text("Item 4")),
                  DropdownMenuItem(value: "i5", child: Text("Item 5")),
                ],
                onChanged: (String? value) {
                  setState(() {
                    selectedItem = value!;
                  });
                },
              ),
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

              InkWell(
                onTap: () {
                  setState(() {
                    isSwitched = !isSwitched;
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              // styled button (Elevated button) // other types of button
              // can also be styled. but styles should be minimum as many
              // buttons defined for us already and styled.
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Text("Styled ElevatedButton"),
              ),
              // normal elevated button
              ElevatedButton(onPressed: () {}, child: Text('ElevatedButton')),
              FilledButton(onPressed: () => {}, child: Text("FilleButton")),
              TextButton(onPressed: () => {}, child: Text("TextButton")),
              OutlinedButton(
                onPressed: () => {},
                child: Text("OutlinedButton"),
              ),
              CloseButton(),
              Row(
                children: [
                  ValueListenableBuilder(
                    valueListenable: selectedPageNotifier,
                    builder: (context, value, child) {
                      return BackButton(
                        onPressed: () {
                          selectedPageNotifier.value = 0;
                        },
                      );
                    },
                  ),
                  Text("Back to Home"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
