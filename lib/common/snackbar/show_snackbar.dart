import 'package:flutter/material.dart';

import '../../my_app.dart';

void showSnackBar(String message) {
  final SnackBar snackBar = SnackBar(content: Text(message));
  scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
}
