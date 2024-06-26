

class Userdata {
    String? id;
    String? firstName;
    String? lastName;
    String? phone;
    String? countryCode;
    dynamic phoneSecondary;
    String? userEmail;
    String? email;
    String? gender;
    String? place;
    String? roleId;
    String? roleLabel;
    String? deviceId;
    String? status;
    String? courseId;
    String? courseName;
    String? courseType;
    String? image;
    dynamic androidVersion;
    String? deviceIdMessage;
    String? noCourseText;
    String? noCourseImage;
    String? contactEmail;
    String? contactPhone;
    String? contactWhatsapp;
    String? contactAddress;
    String? contactAbout;
    String? zoomId;
    String? zoomPassword;
    String? zoomApiKey;
    String? zoomSecretKey;
    String? zoomWebDomain;
    String? token;
    String? privacyPolicy;
    String? privacyPolicyText;
    int? coins;

    Userdata({this.id, this.firstName, this.lastName, this.phone, this.countryCode, this.phoneSecondary, this.userEmail, this.email, this.gender, this.place, this.roleId, this.roleLabel, this.deviceId, this.status, this.courseId, this.courseName, this.courseType, this.image, this.androidVersion, this.deviceIdMessage, this.noCourseText, this.noCourseImage, this.contactEmail, this.contactPhone, this.contactWhatsapp, this.contactAddress, this.contactAbout, this.zoomId, this.zoomPassword, this.zoomApiKey, this.zoomSecretKey, this.zoomWebDomain, this.token, this.privacyPolicy, this.privacyPolicyText, this.coins});

    Userdata.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        firstName = json["first_name"];
        lastName = json["last_name"];
        phone = json["phone"];
        countryCode = json["country_code"];
        phoneSecondary = json["phone_secondary"];
        userEmail = json["user_email"];
        email = json["email"];
        gender = json["gender"];
        place = json["place"];
        roleId = json["role_id"];
        roleLabel = json["role_label"];
        deviceId = json["device_id"];
        status = json["status"];
        courseId = json["course_id"];
        courseName = json["course_name"];
        courseType = json["course_type"];
        image = json["image"];
        androidVersion = json["android_version"];
        deviceIdMessage = json["device_id_message"];
        noCourseText = json["no_course_text"];
        noCourseImage = json["no_course_image"];
        contactEmail = json["contact_email"];
        contactPhone = json["contact_phone"];
        contactWhatsapp = json["contact_whatsapp"];
        contactAddress = json["contact_address"];
        contactAbout = json["contact_about"];
        zoomId = json["zoom_id"];
        zoomPassword = json["zoom_password"];
        zoomApiKey = json["zoom_api_key"];
        zoomSecretKey = json["zoom_secret_key"];
        zoomWebDomain = json["zoom_web_domain"];
        token = json["token"];
        privacyPolicy = json["privacy_policy"];
        privacyPolicyText = json["privacy_policy_text"];
        coins = json["coins"];
    }

    static List<Userdata> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Userdata.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["first_name"] = firstName;
        _data["last_name"] = lastName;
        _data["phone"] = phone;
        _data["country_code"] = countryCode;
        _data["phone_secondary"] = phoneSecondary;
        _data["user_email"] = userEmail;
        _data["email"] = email;
        _data["gender"] = gender;
        _data["place"] = place;
        _data["role_id"] = roleId;
        _data["role_label"] = roleLabel;
        _data["device_id"] = deviceId;
        _data["status"] = status;
        _data["course_id"] = courseId;
        _data["course_name"] = courseName;
        _data["course_type"] = courseType;
        _data["image"] = image;
        _data["android_version"] = androidVersion;
        _data["device_id_message"] = deviceIdMessage;
        _data["no_course_text"] = noCourseText;
        _data["no_course_image"] = noCourseImage;
        _data["contact_email"] = contactEmail;
        _data["contact_phone"] = contactPhone;
        _data["contact_whatsapp"] = contactWhatsapp;
        _data["contact_address"] = contactAddress;
        _data["contact_about"] = contactAbout;
        _data["zoom_id"] = zoomId;
        _data["zoom_password"] = zoomPassword;
        _data["zoom_api_key"] = zoomApiKey;
        _data["zoom_secret_key"] = zoomSecretKey;
        _data["zoom_web_domain"] = zoomWebDomain;
        _data["token"] = token;
        _data["privacy_policy"] = privacyPolicy;
        _data["privacy_policy_text"] = privacyPolicyText;
        _data["coins"] = coins;
        return _data;
    }
}