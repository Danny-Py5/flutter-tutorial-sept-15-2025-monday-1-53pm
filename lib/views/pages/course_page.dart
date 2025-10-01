import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/classes/todo_class.dart';
import 'package:flutter_application_1/data/constants/defaults.dart';
import 'package:flutter_application_1/views/widgets/hero_widget.dart';
import 'package:http/http.dart' as http;

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  Future fetchData() async {
    final uri = Uri.https('jsonplaceholder.typicode.com', '/todos/1');

    try {
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        return Todo.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Course Page')),
      body: Padding(
        padding: const EdgeInsets.all(Defaults.padding),
        child: SingleChildScrollView(
          child: FractionallySizedBox(
            widthFactor: MediaQuery.of(context).size.width < 376
                ? 1.0
                : MediaQuery.of(context).size.width < 412
                ? 0.9
                : 0.75,
            child: Column(
              spacing: 16,
              children: [
                FutureBuilder(
                  future: fetchData(),
                  builder: (context, snapshot) {
                    Widget? widget;
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      widget = CircularProgressIndicator();
                    } else if (snapshot.hasData) {
                      Todo todo = snapshot.data;
                      widget = Column(
                        spacing: 16,
                        children: [
                          HeroWidget(title: "Course"),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                spacing: 16,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      50,
                                    ),
                                    child: Image.asset(
                                      'assets/images/flutter.webp',
                                      fit: BoxFit.cover,
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          todo.title,
                                          style: TextStyle(fontSize: 18),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ),
                                      Text(
                                        todo.completed.toString(),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      widget = Text('Error: no data found');
                    }
                    return widget;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
