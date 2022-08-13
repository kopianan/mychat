import 'package:flutter/material.dart';
import 'package:my_chat/core/qb_setup.dart';
import 'package:my_chat/presentation/appwidget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  QBSetup.init();
  runApp(const AppWidget());
}
