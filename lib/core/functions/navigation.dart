import 'package:flutter/material.dart';

goNext({required BuildContext context, required String path}){
  Navigator.pushReplacementNamed(context, path);
}
