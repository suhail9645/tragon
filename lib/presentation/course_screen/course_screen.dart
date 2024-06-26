import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tragon/core/cubit/my_course/my_course_cubit.dart';
import 'package:tragon/core/models/subject_model.dart';
import 'package:tragon/manager/color_manager.dart';
import 'package:tragon/manager/font_manager.dart';
import 'package:tragon/manager/space_manager.dart';
import 'package:tragon/presentation/course_screen/widgets/courses.dart';
import 'package:tragon/presentation/course_screen/widgets/header.dart';
import 'package:tragon/utils/dimensions.dart';
import 'widgets/test_series.dart';

class MyCourseScreen extends StatefulWidget {
  const MyCourseScreen({super.key});

  @override
  State<MyCourseScreen> createState() => _MyCourseScreenState();
}

class _MyCourseScreenState extends State<MyCourseScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<MyCourseCubit>(context).getCourseDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<MyCourseCubit,MyCourseState>(
          buildWhen: (previous, current) => current is MyCourseFetchState,
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
       
        if(state is MyCourseFetchSuccessState){
           List<Subjects>allCourses=state.courseData.data!.subjects??[];
        return SingleChildScrollView(
          child: Column(
            children: [
              /// HEADER SECTION
              HeaderSection(),

              ///===========================>
              appSpaces.spaceForHeight30,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(3, (index) {
                        List<String> titles = [
                          'Exams',
                          'Practice',
                          'Materials'
                        ];
                        List<Color> colors = const [
                          Color(0xffDC355F),
                          Color(0xffFE9900),
                          Color(0xff28AFD2),
                        ];
                        List<String> imageUrls = [
                          'https://s3-alpha-sig.figma.com/img/98f1/cc14/1c6e0d5beef73c37b4d507963b93d9cd?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UefPXSlbBYjnp71AZ2mkwj63hFp1YUOlNc3zbKP3qkkJvtFtq0PJL9mnZXUZWJXzpKAes9lQLSDhqGvCC-5OF4KUVPIgFECymf~Do9eIW0Zn0rSNEcY9cCMrE~UFWcxE12rIGdcxskS~ZyiB5-gIqWe7tLskLbGtzlQt-ov6x4Zuu8FzFpFe8GArSz7rq40baxO~abnB~pahnaTWWRYQmGftaFfjVpGt0nvi0PEt3XbTMPOXMzbsdm5GnqS3VeuZR-8ceRvqfIDDMR0ry1NGSt4zPTtLiTq3p6U6l1tBysmfhBRLTQKxNUmxEnQs2nmUaQJHbOD7vdnnvhn-w~8M7g__',
                          'https://s3-alpha-sig.figma.com/img/7e99/3290/4baf3e9ec91cd04ab67a02eb349da3fd?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ScXjmMORl1qjTXgTlPabjyqdCsNIrWmxulXMlSdcWtX0W4s~P0Q5y1g-QcXaEU6-VO5sz7UB0UUtuWMyOP~Q3UVxT05y55YPH9XWg6esVuPtEpUiLUcpSnhY3ynYffF3WieIM0xLqgprAoZc2TmUxb2~wrWwgHdXPUz2ZpyXrlN7hIFEeIZLZsogPhzxuSNf-ucK7hUV6FGrtmJFyMApkyYBzUkLoEthC4pip34qvtzY3j-qSqwxPjwv08tpzDAhalcN771hhiXVsqfNeUE6OxUWrqESAqdsthrr8ZcPAjZQLfNL~kfMHuxt4aNLFwTusWUHfJk8FqGYXWBU8NQyXw__',
                          'https://s3-alpha-sig.figma.com/img/7ea7/785c/2e6f81e01b7b82907f6e0d1fc8f57c70?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=eiEvDIhH0l3yYFG-DAHmW2XhMsStcdrr-fbFs4aMPq2mQqoZzKu2oykR~bjWdFoYW~Mr-i~vC753w3FNVEcCF9ZvaqRZvcl~am1evStOr8JgwNAwNdiEIdpIomq0EFbqnQngcFXPnyZGOtd61Dr8CRKGaV84WxRjKPi1ByYI8csCjwYdUdD0BlqKBWy4LbJAqgSj87iCoyVcyphtZIxNx~lhdWojlmwFEkRPwJoB5w2ch9crwZNt9B4imQSh5~qoh6GLEV9uRzzojLDCm4kzva8pqlh7N8MfrzRJNfY9GUprhWekzB9KWIsCHed9Z-GmNgJiTDgFaX3c1tsdcIj46g__',
                          ''
                        ];

                        return Container(
                          height: 90,
                          width: 86,
                          decoration: BoxDecoration(
                              color: colors[index].withOpacity(0.5),
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                appSpaces.spaceForHeight6,
                                Container(
                                  height: 34,
                                  width: 34,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            imageUrls[index],
                                          ),
                                          fit: BoxFit.fill)),
                                ),
                                Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(8)),
                                      color: colors[index]),
                                  child: Center(
                                    child: Text(
                                      titles[index],
                                      style: appFont.f12w500White,
                                    ),
                                  ),
                                ),
                              ]),
                        );
                      }),
                    ),
                    appSpaces.spaceForHeight25,

                    /// COURSES SECTION
                    Row(
                      children: [
                        Text(
                          'Courses',
                          style: appFont.f16w600Black,
                        ),
                        const Spacer(),
                        Text(
                          'See all',
                          style: appFont.f16w500white
                              .copyWith(color: Color(0xff512E7E)),
                        )
                      ],
                    ),
                    Coursesection(allCourses: allCourses),

                    ///====================================>
                    SizedBox(
                      height: 172,
                      child: Stack(
                        children: [
                          Container(
                            padding:const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 18),
                            margin:const EdgeInsets.only(top: 25),
                            height: 132,
                            decoration: BoxDecoration(
                                color: Color(0xffF6EAB6),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: screenWidth(context) - 180,
                                    child: Text(
                                      'Practice With Previous Year Question Papers',
                                      style: appFont.f16w600Black,
                                    )),
                              ],
                            ),
                          ),
                          Positioned(
                            right: -10,
                            bottom: 20,
                            top: 1,
                            child: Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(pi),
                                child: Image.network(
                                    'https://s3-alpha-sig.figma.com/img/e7f7/45be/b4e74950476c2f0ce885d9dd58596265?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=VNC7Lr-DU1oRD2nqtPSv6DopTdiqE-2T7EMtWwED7a9dcGV9Y4ZswOdFB5ywafe68mt-Mo74lug3HBsPepzB8mihBWCF3WG~K-1v8eIJPd2JpJrjwIppfY9bjAGLad3MFTkT-ayIv9RdL6i3FP0pCokl4dU3hcMdWzQLo0Eovq7xoqtvibXoYRX3ynTK0Wnh0yrq0NBLvgmJ-DksTva-tjv~9yMUzkMyFkOXFyihjb-5zgDqWs2yeSxJW2NBfrliEoFOF9o41DxQtymK9M4svzkdq1N0xCNIeF8rTmImxL-kCEVjEVLhLQpR9ziYFkBywW4vE-8FefT4gCM8S~WXLQ__')),
                          ),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: CircleAvatar(
                                radius: 27,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                    child: CircleAvatar(
                                  radius: 28,
                                  backgroundColor: appColors.primary,
                                  child:const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                )),
                              ))
                        ],
                      ),
                    ),
                    appSpaces.spaceForHeight10,

                    /// LATEST TEST SERIES
                   const TestSeriesSection()

                    ///=============================>
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              )
            ],
          ),
        );
        }else if(state is MyCourseFetchErrorState){
          return Center(child: Text(state.error!.message),);
        }else{
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    ));
  }
}

