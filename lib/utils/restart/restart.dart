import 'package:flutter/material.dart';
import 'restart_impl.dart';

final RestartClass restart = RestartClassImpl();

abstract class RestartClass {
  Future<bool?> restart();
  void silentRestart(BuildContext? context);
}
