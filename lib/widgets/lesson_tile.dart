
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:tragon/core/models/lesson_videos_model.dart';
import 'package:tragon/core/models/levels_by_course_model.dart';
import 'package:tragon/manager/font_manager.dart';
import 'package:tragon/manager/space_manager.dart';
/// THIS WIDGET USED IN SESSION SCREEN AND COURSE NAME SCREEN
/// 
class LessonTile extends StatefulWidget {
  const LessonTile({
    super.key, this.levelsByCourse, this.lessonVideosModel,
  });
final Level? levelsByCourse;
final LessonVideosModel ? lessonVideosModel;
  @override
  State<LessonTile> createState() => _LessonTileState();
}

class _LessonTileState extends State<LessonTile> {
  late String title;
  late String leadingUrl;
  late String level;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.levelsByCourse!=null){
      title=widget.levelsByCourse!.title.toString();
      leadingUrl='';
    }else{
      title='All about did';
      leadingUrl='';
    }
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/SessionsScreen');
      },
      child: Container(
        padding: const EdgeInsets.all(9),
        height: 107,
        decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: const Color(0xffECEAEA)),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  height: 82,
                  width: 86,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                            'https://s3-alpha-sig.figma.com/img/8a0b/489a/ddc1ec7d29a97fb38632a20387804543?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=VHfj6TEOXjU5RRmB1DAhSaorI4BYeYOYBrYH6ryaY9LXwzoLCivCGWVZ1GfDGgNr4LdwMI025yybAu9-sUvb38SN8mUqa0tcpTGO9RdTtmhcNisyI~qYFQYdhCKH1Pr1kNH~2IqcgOmCpcNzxn7voJCxzrZjrnasTcaJbD7GL22EPB6V9ttsAhIvlUQNHUyVaKY06ZWRgl94KL7W5uCvE7~56MFvrZ4jQUSYhpblsLK0ZjxP4NOhm2g2GNG-1i-BYXPG-6mZOsEV7niFcGQCJjxD8DLbM5OP9CsPY7hA5t~fXxPj88PI3aKZStZD2aJvoruFgnu3gDnnbwDgbPZfJA__',
                          ),
                          fit: BoxFit.fill)),
                ),
              ],
            ),
            appSpaces.spaceForWidth10,
            Column(
              children: [
                Text(
                  'Day 3 - Lesson 1',
                  style: appFont.f12w500Black
                      .copyWith(color: const Color(0xff553283)),
                ),
                Text(title,style: appFont.f16w600Black,)
              ],
            ),
            const Spacer(),
            SizedBox(child: Stack(
              alignment: Alignment.center,
              children: [
                Text('10.3 min',style: appFont.f10w0Grey,),
                SizedBox(height: 50,width: 50, child: CircularProgressIndicator(value: 0.7,backgroundColor: Colors.grey.withOpacity(0.7),)),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
