import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/presentation/logic/app_cubit/app_cubit.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/presentation/pages/all_launches_page.dart';

import 'inject.dart';
import 'features/view_launches_feature/presentation/pages/resources/theme_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AppCubit>()..getAllLaunches(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeManager.lightTheme,
        home: const AllLaunchesScreen(),
      ),
    );
  }
}
