import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:meta/meta.dart';
import 'package:tragon/core/models/error_model.dart';
import 'package:tragon/core/models/levels_by_course_model.dart';
import 'package:tragon/core/models/my_course_model.dart';
import 'package:tragon/core/repo/my_course_repo.dart';

part 'my_course_state.dart';

class MyCourseCubit extends Cubit<MyCourseState> {
  final MyCourseRepo repo;
  MyCourseCubit(this.repo) : super(MyCourseInitial());

Future<void>getCourseDetails()async{
  emit(MyCourseFetchLoadingState());
   final data=await repo.getCourseDetails();
   if(data.isRight){
      emit(MyCourseFetchSuccessState(courseData: data.right));
   }else{
    emit(MyCourseFetchErrorState(data.left));
   }
}

Future<void>getLevelsByCourse(String courseId, String sessionId)async{
  emit(LevelsByCourseFetchLoadingState());
  final data=await repo.getLevelsByCourse(courseId, sessionId);
   if(data.isRight){
    emit(LevelsByCourseFetchSuccessState(levelsByCourse: data.right));
   }else{
    emit(LevelsByCourseFetchErrorState(error: data.left));
   }
}
}
