import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:tragon/core/cubit/my_course/my_course_cubit.dart';
import 'package:tragon/core/models/levels_by_course_model.dart';
import 'package:tragon/core/models/subject_model.dart';
import 'package:tragon/manager/color_manager.dart';
import 'package:tragon/manager/font_manager.dart';
import 'package:tragon/manager/space_manager.dart';
import 'package:tragon/widgets/lesson_tile.dart';
import 'package:tragon/widgets/primary_button.dart';

class CourseNameScreen extends StatefulWidget {
  const CourseNameScreen({super.key, required this.course});
  final Subjects course;
  @override
  State<CourseNameScreen> createState() => _CourseNameScreenState();
}

class _CourseNameScreenState extends State<CourseNameScreen> {
  int currentIndex = 2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<MyCourseCubit>(context).getLevelsByCourse(
        widget.course.courseId.toString(), widget.course.levelId.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 234,
          child: Stack(
            children: [
              Container(
                height: 174,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.topCenter, colors: [
                  Color(0xff7F56B3),
                  Color(0xff5A3588).withOpacity(0.8),
                ])),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        widget.course.title.toString(),
                        style: appFont.f18w600White,
                      ),
                      appSpaces.spaceForWidth10
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 100,
                  child: ListView.separated(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 92,
                          width: 60,
                          decoration: BoxDecoration(
                              color: index == currentIndex
                                  ? appColors.primary
                                  : Color(0xffF2E8F5),
                              border: Border.all(width: 2, color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'DAY',
                                style: appFont.f12w500Black.copyWith(
                                    color: index == currentIndex
                                        ? Colors.white
                                        : appColors.primary),
                              ),
                              Text(
                                '${index + 1}',
                                style: appFont.f16w600Black.copyWith(
                                    color: index == currentIndex
                                        ? Colors.white
                                        : appColors.primary),
                              ),
                              Text(
                                '01/04',
                                style: appFont.f12w500Black.copyWith(
                                    color: index == currentIndex
                                        ? Colors.white
                                        : appColors.primary),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          appSpaces.spaceForWidth10,
                      itemCount: 10),
                ),
              )
            ],
          ),
        ),
        appSpaces.spaceForHeight10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                height: 111,
                decoration: BoxDecoration(
                  color: const Color(0xffFBF4DA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      Icons.lock,
                      size: 70,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: 180,
                            child: Text(
                              'Upgrade and unlock the full course',
                              style: appFont.f16w600Black,
                            )),
                        const Spacer(),
                        PrimaryButton(
                          title: 'Upgrade',
                          height: 38,
                          width: 97,
                          backgroundColor: const Color(0xffEB5443),
                          titleStyle: appFont.f16w600White,
                          onTap: () {},
                        )
                      ],
                    ),
                  ],
                ),
              ),
              appSpaces.spaceForHeight20,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: 100,
                decoration: BoxDecoration(
                    color: Color(0xff4CAF50).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' WhatsApp ലെ സഹായത്തിനായി',
                      style: appFont.f14w600Black,
                    ),
                    appSpaces.spaceForHeight10,
                    Row(
                      children: [
                        Text(
                          '8606017527',
                          style: appFont.f18w600Black,
                        ),
                        const Spacer(),
                        Container(
                          height: 35,
                          width: 130,
                          decoration: BoxDecoration(
                              color: const Color(0xff4CAF50),
                              borderRadius: BorderRadius.circular(19)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.call,
                                    size: 15,
                                    color: Color(0xff4CAF50),
                                  )),
                              Text(
                                'WhatsApp',
                                style: appFont.f14w600White,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        appSpaces.spaceForHeight20,

        /// LESSON SECTION
        BlocBuilder<MyCourseCubit, MyCourseState>(
          buildWhen: (previous, current) => current is LevelsByCourseFetchState,
          builder: (context, state) {
            if(state is LevelsByCourseFetchSuccessState){
            return Expanded(
                child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemBuilder: (context, index) {
                      Level levelsByCourse=state.levelsByCourse.data![index];
                      return LessonTile(levelsByCourse: levelsByCourse,);
                  
                    },
                    separatorBuilder: (context, index) =>
                        appSpaces.spaceForHeight10,
                    itemCount: state.levelsByCourse.data!.length));
            }else if(state is LevelsByCourseFetchErrorState){
              return SizedBox(height: 200,child: Center(child: Text(state.error.message),),);
            }else{
              return const SizedBox(height: 200,child: Center(child: CircularProgressIndicator(),),);
            }
          },
          
        )
        // ===========================>
      ],
    ));
  }
}
