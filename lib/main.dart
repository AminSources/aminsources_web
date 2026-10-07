import 'package:aminsources_web/core/theme/app_theme.dart';
import 'package:aminsources_web/features/main_wrapper/presentation/pages/main_wrapper.dart';
import 'package:aminsources_web/features/works/presentation/bloc/work_bloc.dart';
import 'package:aminsources_web/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  //? init locator
  setupLocator();

  //? run app
  runApp(BlocProvider(create: (_) => sl<WorkBloc>(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Aminsources',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.theme,
          home: MainWrapper(),
        );
      },
    );
  }
}
