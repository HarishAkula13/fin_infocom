import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'di/app_injector.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MaterialApp(home: AppInjector.instance.app));
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //statusBarColor: Colors.white, // status bar color
  ));

}
