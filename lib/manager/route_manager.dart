import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tragon/presentation/course_name_screen/course_name_screen.dart';
import 'package:tragon/presentation/course_screen/course_screen.dart';
import 'package:tragon/presentation/home/home_screen.dart';
import 'package:tragon/presentation/sessions_screen/sessions_screen.dart';

List<GetPage>getPages(){
  return [
    GetPage(name: '/', page: () =>const HomeScreen(),),
    GetPage(name: '/MyCourseScreen', page: () =>const MyCourseScreen(),),
    GetPage(name: '/CourseNameScreen', page: () => CourseNameScreen(course: Get.arguments['course'],),),
    GetPage(name: '/SessionsScreen', page: () => const SessionsScreen(),)
  ];
}