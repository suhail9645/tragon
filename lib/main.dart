import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tragon/core/cubit/my_course/my_course_cubit.dart';
import 'package:tragon/core/repo/my_course_repo.dart';
import 'package:tragon/manager/route_manager.dart';
import 'package:tragon/presentation/course_name_screen/course_name_screen.dart';
import 'package:tragon/presentation/course_screen/course_screen.dart';
import 'package:tragon/presentation/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => MyCourseRepo(),
        ),
      ],
      child: MultiBlocProvider(
       providers: [
        BlocProvider(create: (context) => MyCourseCubit(context.read<MyCourseRepo>()),)
       ],
        child: GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
              textTheme: GoogleFonts.interTextTheme()),
          initialRoute: '/',
          getPages: getPages(),
        ),
      ),
    );
  }
}
