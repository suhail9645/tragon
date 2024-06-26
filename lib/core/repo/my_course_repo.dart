import 'dart:convert';


import 'package:either_dart/either.dart';
import 'package:tragon/core/models/error_model.dart';
import 'package:tragon/core/models/lesson_videos_model.dart';
import 'package:tragon/core/models/levels_by_course_model.dart';
import 'package:tragon/core/models/my_course_model.dart';
import 'package:http/http.dart';
import 'package:tragon/manager/url_manager.dart';
import 'package:tragon/utils/error_handler.dart';

class MyCourseRepo{
  Future<Either<ErrorModel,MyCourseDataModel>>getCourseDetails()async{
    try {
       final response=await get(Uri.parse('$baseUrl/my_course/?auth_token=$token'),);
     if(response.statusCode==200){
      MyCourseDataModel courseDataModel=MyCourseDataModel.fromJson(jsonDecode(response.body));
      return Right(courseDataModel);
     }else{
      return Left(errorHandler(response, null));
     }
    } catch (e) {
      return Left(errorHandler(null, e));
    }
   
  }

  ///FETCHING LEVELES BY COURSE
  Future<Either<ErrorModel,LevelsByCourse>>getLevelsByCourse(String courseId, String sessionId)async{
    try {
      final response=await get(Uri.parse('$baseUrl/levels_by_course?auth_token=$token&course_id=$courseId&session_id=$sessionId'));
      if(response.statusCode==200){
        LevelsByCourse levelsByCourse=LevelsByCourse.fromJson(jsonDecode(response.body));
        return Right(levelsByCourse);
      }else{
        return Left(errorHandler(response, null));
      }
    } catch (e) {
      return Left(errorHandler(null, e));
    }
  }
  //FETCHING LESSON VIDEOS
  Future<Either<ErrorModel,LessonVideosModel>>getLessonVideos(String lessonId)async{
    try {
      final response=await get(Uri.parse('$baseUrl/get_lesson_videos?auth_token=$token&lesson_id=$lessonId'));
      if(response.statusCode==200){
        LessonVideosModel lessonVideosModel =LessonVideosModel.fromJson(jsonDecode(response.body));
        return Right(lessonVideosModel);
      }else{
        return Left(errorHandler(response, null));
      }
    } catch (e) {
      return Left(errorHandler(null, e));
    }
  }
}