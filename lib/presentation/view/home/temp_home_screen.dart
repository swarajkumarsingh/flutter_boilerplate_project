import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_project/domain/repository/home_repository.dart';
import '../../../../../core/dio/remote_response.dart';
import '../../../../../core/event_tracker/event_tracker.dart';
import 'package:flutter_logger_plus/flutter_logger_plus.dart';

import '../../../domain/models/home/home.dart';


class TempHomeScreen extends StatelessWidget {
  const TempHomeScreen({super.key});
  

  Future<void> checkInternet() async {
    logger.pink("<-- Start Time"); // 10 seconds
    final RemoteResponse<Home> remoteResponse = await homeRepository.getHomeData();
    logger.success("<-- END Time ${remoteResponse.message} -->");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("HOME 1"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton.icon(
                onPressed: () async {
                  await checkInternet();
                },
                icon: const Icon(
                  Icons.ads_click_rounded,
                  color: Colors.black,
                ),
                label: const Text("PUSH"),
              ),
              TextButton(
                onPressed: () => throw Exception("SIMU BABU 2 👶🐥🍼"),
                child: const Text("Throw Test Exception"),
              ),
              TextButton(
                onPressed: () async {
                  await eventTracker.log("f", {"d": "sd"});
                },
                child: const Text("Test firebase analysis"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
