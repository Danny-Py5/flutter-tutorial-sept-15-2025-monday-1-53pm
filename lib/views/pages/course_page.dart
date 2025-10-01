import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/classes/activity_class.dart';
import 'package:flutter_application_1/data/constants/defaults.dart';
import 'package:flutter_application_1/views/widgets/hero_widget.dart';
import 'package:http/http.dart' as http;

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  Map<String, dynamic>? data;

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  Future<void> fetchData() async {
    final uri = Uri.https('bored-api.appbrewery.com', '/random');
    try {
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final responseData =
            Activity.fromJson(json.decode(response.body))
                as Map<String, dynamic>;
        setState(() {
          data = responseData;
        });
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error fetching data: $e');
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
            child: Center(
              child: Column(
                spacing: 16,
                children: [
                  HeroWidget(title: "Course"),
                  data == null
                      ? CircularProgressIndicator()
                      : Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              spacing: 16,
                              children: [
                                FittedBox(
                                  child: ClipRRect(
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
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                      child: Text(
                                        data!['activity'],
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    Text(
                                      data!['accessibility'] ??
                                          "something went wrong",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
