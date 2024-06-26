class LessonVideosModel {
    String? status;
    String? message;
    Data? data;

    LessonVideosModel({this.status, this.message, this.data});

    LessonVideosModel.fromJson(Map<String, dynamic> json) {
        status = json["status"];
        message = json["message"];
        data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }

    static List<LessonVideosModel> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => LessonVideosModel.fromJson(map)).toList();
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
    List<VideoList>? videoList;
    LastWatched? lastWatched;

    Data({this.videoList, this.lastWatched});

    Data.fromJson(Map<String, dynamic> json) {
        videoList = json["video_list"] == null ? null : (json["video_list"] as List).map((e) => VideoList.fromJson(e)).toList();
        lastWatched = json["last_watched"] == null ? null : LastWatched.fromJson(json["last_watched"]);
    }

    static List<Data> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Data.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(videoList != null) {
            _data["video_list"] = videoList?.map((e) => e.toJson()).toList();
        }
        if(lastWatched != null) {
            _data["last_watched"] = lastWatched?.toJson();
        }
        return _data;
    }
}

class LastWatched {
    dynamic uniqueId;
    String? duration;

    LastWatched({this.uniqueId, this.duration});

    LastWatched.fromJson(Map<String, dynamic> json) {
        uniqueId = json["unique_id"];
        duration = json["duration"];
    }

    static List<LastWatched> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => LastWatched.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["unique_id"] = uniqueId;
        _data["duration"] = duration;
        return _data;
    }
}

class VideoList {
    String? id;
    String? uniqueId;
    String? videoType;
    String? videoUrl;
    String? vimeoId;
    String? title;
    String? free;
    String? duration;
    String? thumbnail;

    VideoList({this.id, this.uniqueId, this.videoType, this.videoUrl, this.vimeoId, this.title, this.free, this.duration, this.thumbnail});

    VideoList.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        uniqueId = json["unique_id"];
        videoType = json["video_type"];
        videoUrl = json["video_url"];
        vimeoId = json["vimeo_id"];
        title = json["title"];
        free = json["free"];
        duration = json["duration"];
        thumbnail = json["thumbnail"];
    }

    static List<VideoList> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => VideoList.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["unique_id"] = uniqueId;
        _data["video_type"] = videoType;
        _data["video_url"] = videoUrl;
        _data["vimeo_id"] = vimeoId;
        _data["title"] = title;
        _data["free"] = free;
        _data["duration"] = duration;
        _data["thumbnail"] = thumbnail;
        return _data;
    }
}