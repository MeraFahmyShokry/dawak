import 'package:clean_arc/app.dart';
import 'package:clean_arc/core/app/bloc_observer.dart';
import 'package:clean_arc/core/app/env.variable.dart';
import 'package:clean_arc/core/data/services/shared_prefs/shared_pref.dart';
// import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await setupInjector();
  await EnvVariable.instance.init(envType: EnvTypeEnum.prod);
  await SharedPref.instantiatePreferences();
  Bloc.observer = AppBlocObserver();
  // await FaceCamera.initialize(); //Add this

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  ).then((_) {
    runApp(AgzgantyApp());
  });
}

String userCurrency = 'جنيه';
//https://agza5nty.vercel.app/