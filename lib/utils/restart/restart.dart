import 'package:flutter/material.dart';
import 'restart_impl.dart';

final RestartClass restart = RestartClassImpl();

abstract class RestartClass {
  void restart();
  void silentRestart(BuildContext? context);
}
