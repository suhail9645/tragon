
class Subjects {
    String? id;
    String? title;
    String? courseId;
    String? levelId;
    String? order;
    String? thumbnail;
    String? background;
    String? icon;
    String? free;
    dynamic instructorId;

    Subjects({this.id, this.title, this.courseId, this.levelId, this.order, this.thumbnail, this.background, this.icon, this.free, this.instructorId});

    Subjects.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        title = json["title"];
        courseId = json["course_id"];
        levelId = json["level_id"];
        order = json["order"];
        thumbnail = json["thumbnail"];
        background = json["background"];
        icon = json["icon"];
        free = json["free"];
        instructorId = json["instructor_id"];
    }

    static List<Subjects> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Subjects.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["title"] = title;
        _data["course_id"] = courseId;
        _data["level_id"] = levelId;
        _data["order"] = order;
        _data["thumbnail"] = thumbnail;
        _data["background"] = background;
        _data["icon"] = icon;
        _data["free"] = free;
        _data["instructor_id"] = instructorId;
        return _data;
    }
}