import 'package:flutter/material.dart';
import 'package:tragon/manager/color_manager.dart';
import 'package:tragon/manager/font_manager.dart';
import 'package:tragon/presentation/course_screen/course_screen.dart';
class HomeScreen extends StatefulWidget {
 const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=1;
 @override
 Widget build(BuildContext context) {
 return Scaffold(
  extendBody: true,
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  floatingActionButton: FloatingActionButton(
    backgroundColor: appColors.primary.withOpacity(0.8),
   shape:const CircleBorder() ,
    onPressed: () {
    
  },
    child:const Icon(Icons.emoji_events,size: 35,color: Color(0xffF9B93C),),),
  bottomNavigationBar: BottomAppBar(
    color: Colors.white,
    notchMargin: 6,
    surfaceTintColor: Colors.white,
    shadowColor: Colors.grey,
    padding: EdgeInsets.symmetric(vertical: 10),
    height: 65,
     shape: CircularNotchedRectangle(),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: List.generate(4, (index) {
      List<IconData>icons=[Icons.home_outlined,Icons.book_outlined,Icons.analytics_outlined,Icons.person_2_outlined];
      List<String>titles=['Home','My Course','Analysis','Profile'];
    return Column(children: [Icon(icons[index],color: index==currentIndex? appColors.primary:const Color(0xffD9D9D9),),Text(titles[index],style: appFont.f12w500Black.copyWith(color:index==currentIndex? appColors.primary:const Color(0xffD9D9D9)),)],);
    }),),),
//  bottomNavigationBar: BottomNavigationBar(
//   type:BottomNavigationBarType.fixed,
//   items: List.generate(4, (index) {
//   return BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home');
//  })),
 body:MyCourseScreen()
 );
 }
}