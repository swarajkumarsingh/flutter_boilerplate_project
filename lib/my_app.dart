import 'package:flutter/material.dart';
import 'package:flutter_approuter/flutter_approuter.dart';
import 'package:flutter_boilerplate_project/presentation/view/home/temp_home_screen.dart';

import 'core/constants/constants.dart';
import 'core/event_tracker/event_tracker.dart';
import 'core/utils/restart/restart_widget.dart';

class AppWrapper extends StatelessWidget {
  const AppWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const RestartWidget(child: MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await eventTracker.logAppOpen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLutter Boiler Plate code',
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: scaffoldMessengerKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const TempHomeScreen(),
    );
  }
}
