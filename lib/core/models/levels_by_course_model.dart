class LevelsByCourse {
    int? status;
    String? message;
    List<Level>? data;
    Package? package;

    LevelsByCourse({this.status, this.message, this.data, this.package});

    LevelsByCourse.fromJson(Map<String, dynamic> json) {
        status = json["status"];
        message = json["message"];
        data = json["data"] == null ? null : (json["data"] as List).map((e) => Level.fromJson(e)).toList();
        package = json["package"] == null ? null : Package.fromJson(json["package"]);
    }

    static List<LevelsByCourse> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => LevelsByCourse.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["status"] = status;
        _data["message"] = message;
        if(data != null) {
            _data["data"] = data?.map((e) => e.toJson()).toList();
        }
        if(package != null) {
            _data["package"] = package?.toJson();
        }
        return _data;
    }
}

class Package {
    String? id;
    String? packageName;
    String? type;
    String? courseId;
    String? sectionId;
    String? discount;
    dynamic isFree;
    String? packageType;
    String? remarks;
    String? razorpayApiKey;
    String? subtitle;
    String? totalAmount;
    String? payableAmount;

    Package({this.id, this.packageName, this.type, this.courseId, this.sectionId, this.discount, this.isFree, this.packageType, this.remarks, this.razorpayApiKey, this.subtitle, this.totalAmount, this.payableAmount});

    Package.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        packageName = json["package_name"];
        type = json["type"];
        courseId = json["course_id"];
        sectionId = json["section_id"];
        discount = json["discount"];
        isFree = json["is_free"];
        packageType = json["package_type"];
        remarks = json["remarks"];
        razorpayApiKey = json["razorpay_api_key"];
        subtitle = json["subtitle"];
        totalAmount = json["total_amount"];
        payableAmount = json["payable_amount"];
    }

    static List<Package> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Package.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["package_name"] = packageName;
        _data["type"] = type;
        _data["course_id"] = courseId;
        _data["section_id"] = sectionId;
        _data["discount"] = discount;
        _data["is_free"] = isFree;
        _data["package_type"] = packageType;
        _data["remarks"] = remarks;
        _data["razorpay_api_key"] = razorpayApiKey;
        _data["subtitle"] = subtitle;
        _data["total_amount"] = totalAmount;
        _data["payable_amount"] = payableAmount;
        return _data;
    }
}

class Level {
    String? id;
    String? title;
    String? isLocked;
    List<Sections>? sections;
    String? completion;

    Level({this.id, this.title, this.isLocked, this.sections, this.completion});

    Level.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        title = json["title"];
        isLocked = json["is_locked"];
        sections = json["sections"] == null ? null : (json["sections"] as List).map((e) => Sections.fromJson(e)).toList();
        completion = json["completion"];
    }

    static List<Level> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Level.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["title"] = title;
        _data["is_locked"] = isLocked;
        if(sections != null) {
            _data["sections"] = sections?.map((e) => e.toJson()).toList();
        }
        _data["completion"] = completion;
        return _data;
    }
}

class Sections {
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
    int? isAttended;
    int? isCompleted;
    int? total;
    String? videoCount;
    int? completed;

    Sections({this.id, this.title, this.courseId, this.levelId, this.order, this.thumbnail, this.background, this.icon, this.free, this.instructorId, this.isAttended, this.isCompleted, this.total, this.videoCount, this.completed});

    Sections.fromJson(Map<String, dynamic> json) {
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
        isAttended = json["is_attended"];
        isCompleted = json["is_completed"];
        total = json["total"];
        videoCount = json["video_count"];
        completed = json["completed"];
    }

    static List<Sections> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Sections.fromJson(map)).toList();
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
        _data["is_attended"] = isAttended;
        _data["is_completed"] = isCompleted;
        _data["total"] = total;
        _data["video_count"] = videoCount;
        _data["completed"] = completed;
        return _data;
    }
}