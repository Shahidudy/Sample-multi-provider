import 'package:flutter/material.dart';
import 'package:multi_provider/pages/home_page.dart';
import 'package:multi_provider/pages/setting_page.dart';
import 'package:multi_provider/provider/home_provider.dart';
import 'package:multi_provider/provider/setting_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //at time of multi provider, we have to initialize like this
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SettingProvider(),
        ),
      ],
      child: MaterialApp(
        home: HomePage(),

        //i used named routing here
        initialRoute: 'home_page',
        routes: {
          'home_page': (context) => HomePage(),
          'setting_page': (context) => SettingPage(),
        },
      ),
    );
  }
}
