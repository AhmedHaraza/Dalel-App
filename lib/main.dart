import 'package:dalel_app/app/dalel_app.dart';
import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/functions/Check_current_auth_state.dart';
import 'package:dalel_app/core/service/service_locator.dart';
import 'package:dalel_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
   //! Check User in the Firebase
  checkCurrentAuthState();
  setUpServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const Dalel());
}