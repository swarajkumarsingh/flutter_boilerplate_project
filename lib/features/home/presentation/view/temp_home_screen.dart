import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_project/features/home/domain/models/home.dart';
import 'package:flutter_logger_plus/flutter_logger_plus.dart';

import '../../../../di/remote_response.dart';
import '../../application/services/home_service.dart';

class TempHomeScreen extends StatelessWidget {
  const TempHomeScreen({super.key});

  Future<void> checkInternet() async {
    logger.info("<-- Start Time"); // 10 seconds
    final RemoteResponse<Home> remoteResponse = await homeService.getData();
    logger.info("<-- END Time ${remoteResponse.data!.title} -->");
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
                onPressed: () => throw Exception(),
                child: const Text("Throw Test Exception"),
              ),
              TextButton(
                onPressed: () async {
              await FirebaseAnalytics.instance.logEvent(
                    name: "share_image",
                    parameters: {
                      "image_name": "name",
                      "full_text": "text",
                    },
                  );
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
