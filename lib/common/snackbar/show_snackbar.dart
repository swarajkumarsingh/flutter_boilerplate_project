import 'package:flutter/material.dart';

import '../../config.dart';

void showSnackBar(String message) {
  final SnackBar snackBar = SnackBar(content: Text(message));
  scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
}
