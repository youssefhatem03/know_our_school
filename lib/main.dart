import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ViewModel/view_model.dart';
import 'view/school_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SchoolViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Know Our School',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SchoolInfo(),
      ),
    );
  }
}
