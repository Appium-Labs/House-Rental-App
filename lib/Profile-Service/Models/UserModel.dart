class UserModel {
  String? sId;
  String? name;
  String? email;
  String? password;
  int? phone;
  int? age;
  String? gender;
  bool? maritalStatus;
  Photo? photo;
  bool? isHost;

  UserModel(
      {this.sId,
      this.name,
      this.email,
      this.password,
      this.phone,
      this.age,
      this.gender,
      this.maritalStatus,
      this.photo,
      this.isHost});

  UserModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    age = json['age'];
    gender = json['gender'];
    maritalStatus = json['marital_status'];
    photo = json['photo'] != null ? new Photo.fromJson(json['photo']) : null;
    isHost = json['is_host'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['phone'] = this.phone;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['marital_status'] = this.maritalStatus;
    if (this.photo != null) {
      data['photo'] = this.photo!.toJson();
    }
    data['is_host'] = this.isHost;
    return data;
  }
}

class Photo {
  String? url;

  Photo({this.url});

  Photo.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}
