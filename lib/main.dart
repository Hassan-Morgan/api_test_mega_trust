import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_trust_api_task/logic/cubit/app_cubit.dart';
import 'package:mega_trust_api_task/presentation/pages/all_launches_page.dart';
import 'package:mega_trust_api_task/presentation/resources/theme_manager.dart';

import 'data/services/dio/dio_helper.dart';

void main() {
  DioHelper.initDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..getAllLaunches(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeManager.lightTheme,
        home: const HomePage(),
      ),
    );
  }
}
