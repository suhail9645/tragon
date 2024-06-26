part of 'my_course_cubit.dart';

 class MyCourseState {}

final class MyCourseInitial extends MyCourseState {}

/// THIS STATES FOR MY COURSE PAGE 
class MyCourseFetchState extends MyCourseState {
  
}

class MyCourseFetchLoadingState extends MyCourseFetchState{}

class MyCourseFetchSuccessState extends MyCourseFetchState{
  final MyCourseDataModel courseData;

  MyCourseFetchSuccessState({required this.courseData});
}

class MyCourseFetchErrorState extends MyCourseFetchState{
  final ErrorModel? error;

  MyCourseFetchErrorState(this.error);
}

///THIS STATES FOR FETCHING LEVELS BY COURSE
class LevelsByCourseFetchState extends MyCourseState{
  
}

class LevelsByCourseFetchSuccessState extends LevelsByCourseFetchState{
  final LevelsByCourse levelsByCourse;

  LevelsByCourseFetchSuccessState({required this.levelsByCourse});
}

class LevelsByCourseFetchLoadingState extends LevelsByCourseFetchState{}

class LevelsByCourseFetchErrorState extends LevelsByCourseFetchState{
  final ErrorModel error;

  LevelsByCourseFetchErrorState({required this.error});
}
