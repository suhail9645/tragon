

import 'package:tragon/core/models/subject_model.dart';
import 'package:tragon/core/models/user_model.dart';

class MyCourseDataModel {
    int? status;
    String? message;
    Data? data;

    MyCourseDataModel({this.status, this.message, this.data});

    MyCourseDataModel.fromJson(Map<String, dynamic> json) {
        status = json["status"];
        message = json["message"];
        data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }

    static List<MyCourseDataModel> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => MyCourseDataModel.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["status"] = status;
        _data["message"] = message;
        if(data != null) {
            _data["data"] = data?.toJson();
        }
        return _data;
    }
}

class Data {
    Userdata? userdata;
    List<Subjects>? subjects;
    List<dynamic>? pyqExams;
    List<dynamic>? upcomingExams;
    String? syllabus;
    String? practiceLink;

    Data({this.userdata, this.subjects, this.pyqExams, this.upcomingExams, this.syllabus, this.practiceLink});

    Data.fromJson(Map<String, dynamic> json) {
        userdata = json["userdata"] == null ? null : Userdata.fromJson(json["userdata"]);
        subjects = json["subjects"] == null ? null : (json["subjects"] as List).map((e) => Subjects.fromJson(e)).toList();
        pyqExams = json["pyq_exams"] ?? [];
        upcomingExams = json["upcoming_exams"] ?? [];
        syllabus = json["syllabus"];
        practiceLink = json["practice_link"];
    }

    static List<Data> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Data.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(userdata != null) {
            _data["userdata"] = userdata?.toJson();
        }
        if(subjects != null) {
            _data["subjects"] = subjects?.map((e) => e.toJson()).toList();
        }
        if(pyqExams != null) {
            _data["pyq_exams"] = pyqExams;
        }
        if(upcomingExams != null) {
            _data["upcoming_exams"] = upcomingExams;
        }
        _data["syllabus"] = syllabus;
        _data["practice_link"] = practiceLink;
        return _data;
    }
}
