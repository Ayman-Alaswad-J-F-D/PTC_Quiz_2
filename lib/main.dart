import 'package:flutter/material.dart';

import 'app.dart' show MyApp;
import 'core/utils/color_manager.dart';
import 'core/utils/styles_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ErrorWidget.builder = (details) => _handelErrorScreen(details.exception);
  runApp(const MyApp());
}

Widget _handelErrorScreen(error) => Container(
      padding: const EdgeInsets.all(20),
      color: ColorManager.error,
      child: SizedBox.expand(
        child: Center(
          child: Text("$error", style: StylesManager.meduim()),
        ),
      ),
    );
