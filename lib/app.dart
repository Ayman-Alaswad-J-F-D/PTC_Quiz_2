import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/cubit/app_cubit.dart';
import 'core/utils/theme_manager.dart';
import 'screens/onboarding/onboarding_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeManager.light,
        home: const OnboardingScreen(),
      ),
    );
  }
}
