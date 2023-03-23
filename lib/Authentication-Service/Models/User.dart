import 'package:house_rental_app/Authentication-Service/Models/Property.dart';

class User {
  String? sId;
  String? name;
  String? email;
  String? password;
  List<Property>? saved;
  List<Property>? purchaseHistory;
  List<Property>? hostedProperties;
  List<Property>? requests;
  int? iV;

  User(
      {this.sId,
      this.name,
      this.email,
      this.password,
      this.saved,
      this.purchaseHistory,
      this.hostedProperties,
      this.requests,
      this.iV});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    if (json['saved'] != null) {
      saved = <Property>[];
      json['saved'].forEach((v) {
        saved!.add(new Property.fromJson(v));
      });
    }
    if (json['purchase_history'] != null) {
      purchaseHistory = <Property>[];
      json['purchase_history'].forEach((v) {
        purchaseHistory!.add(new Property.fromJson(v));
      });
    }
    if (json['hosted_properties'] != null) {
      hostedProperties = <Property>[];
      json['hosted_properties'].forEach((v) {
        hostedProperties!.add(new Property.fromJson(v));
      });
    }
    if (json['requests'] != null) {
      requests = <Property>[];
      json['requests'].forEach((v) {
        requests!.add(new Property.fromJson(v));
      });
    }
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    if (this.saved != null) {
      data['saved'] = this.saved!.map((v) => v.toJson()).toList();
    }
    if (this.purchaseHistory != null) {
      data['purchase_history'] =
          this.purchaseHistory!.map((v) => v.toJson()).toList();
    }
    if (this.hostedProperties != null) {
      data['hosted_properties'] =
          this.hostedProperties!.map((v) => v.toJson()).toList();
    }
    if (this.requests != null) {
      data['requests'] = this.requests!.map((v) => v.toJson()).toList();
    }
    data['__v'] = this.iV;
    return data;
  }
}
