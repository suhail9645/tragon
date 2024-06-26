import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:tragon/core/models/subject_model.dart';
import 'package:tragon/manager/font_manager.dart';
import 'package:tragon/manager/space_manager.dart';
class Coursesection extends StatelessWidget {
 const Coursesection({super.key, required this.allCourses});
 final  List<Subjects> allCourses;
 @override
 Widget build(BuildContext context) {
 return SizedBox(
                      height:allCourses.length<=3?150: 300,
                      child: GridView.builder(
                        itemCount:allCourses.length,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          List<Color> backgroundColors = const [
                            Color(0xff14C8C5),
                            Color(0xffFDDD7A),
                            Color(0xffF5C589),
                            Color(0xffFCA7A9),
                            Color(0xffBDA0FB),
                            Color(0xffF868AF),
                          ];
                          Subjects course=allCourses[index];
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed('/CourseNameScreen',arguments: {
                                'course':course
                              });
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                DottedBorder(
                                    borderType: BorderType.Circle,
                                    dashPattern: const [18, 6],
                                    strokeWidth: 2,
                                    color: backgroundColors[index]
                                        .withOpacity(0.8),
                                    child: CircleAvatar(
                                      backgroundColor: backgroundColors[index],
                                      backgroundImage:  NetworkImage(
                                      course.thumbnail.toString()),
                                      radius: 36,
                                    )),
                                appSpaces.spaceForHeight6,
                                Text(
                                  course.title.toString(),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: appFont.f14w500Black,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    );
 }
}