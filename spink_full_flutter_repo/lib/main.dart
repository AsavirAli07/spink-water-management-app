
import 'package:flutter/material.dart';
import 'src/app.dart';
import 'src/services/local_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  runApp(MyApp());
}
