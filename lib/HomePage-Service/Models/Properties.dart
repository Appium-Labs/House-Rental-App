class Data {
  List<Properties>? properties;

  Data({this.properties});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['properties'] != null) {
      properties = <Properties>[];
      json['properties'].forEach((v) {
        properties!.add(new Properties.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.properties != null) {
      data['properties'] = this.properties!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Properties {
  String? sId;
  String? title;
  String? city;
  String? userId;
  String? country;
  int? bedrooms;
  int? bathrooms;
  int? kitchens;
  int? infants;
  int? adults;
  int? children;
  bool? isSold;
  String? rentStartDate;
  String? rentEndDate;
  int? totalArea;
  int? rating;
  String? propertyType;
  String? rentOrBuy;
  String? neighbourhoodDetail;
  int? totalPrice;
  int? averageLivingCost;
  List<String>? facilities;
  List<Reviews>? reviews;
  List<Photos>? photos;
  int? iV;

  Properties(
      {this.sId,
      this.title,
      this.city,
      this.userId,
      this.country,
      this.bedrooms,
      this.bathrooms,
      this.kitchens,
      this.infants,
      this.adults,
      this.children,
      this.isSold,
      this.rentStartDate,
      this.rentEndDate,
      this.totalArea,
      this.rating,
      this.propertyType,
      this.rentOrBuy,
      this.neighbourhoodDetail,
      this.totalPrice,
      this.averageLivingCost,
      this.facilities,
      this.reviews,
      this.photos,
      this.iV});

  Properties.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    city = json['city'];
    userId = json['user_id'];
    country = json['country'];
    bedrooms = json['bedrooms'];
    bathrooms = json['bathrooms'];
    kitchens = json['kitchens'];
    infants = json['infants'];
    adults = json['adults'];
    children = json['children'];
    isSold = json['is_sold'];
    rentStartDate = json['rent_start_date'];
    rentEndDate = json['rent_end_date'];
    totalArea = json['total_area'];
    rating = json['rating'];
    propertyType = json['property_type'];
    rentOrBuy = json['rentOrBuy'];
    neighbourhoodDetail = json['neighbourhood_detail'];
    totalPrice = json['total_price'];
    averageLivingCost = json['average_living_cost'];
    facilities = json['facilities'].cast<String>();
    if (json['reviews'] != null) {
      reviews = <Reviews>[];
      json['reviews'].forEach((v) {
        reviews!.add(new Reviews.fromJson(v));
      });
    }
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(new Photos.fromJson(v));
      });
    }
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['city'] = this.city;
    data['user_id'] = this.userId;
    data['country'] = this.country;
    data['bedrooms'] = this.bedrooms;
    data['bathrooms'] = this.bathrooms;
    data['kitchens'] = this.kitchens;
    data['infants'] = this.infants;
    data['adults'] = this.adults;
    data['children'] = this.children;
    data['is_sold'] = this.isSold;
    data['rent_start_date'] = this.rentStartDate;
    data['rent_end_date'] = this.rentEndDate;
    data['total_area'] = this.totalArea;
    data['rating'] = this.rating;
    data['property_type'] = this.propertyType;
    data['rentOrBuy'] = this.rentOrBuy;
    data['neighbourhood_detail'] = this.neighbourhoodDetail;
    data['total_price'] = this.totalPrice;
    data['average_living_cost'] = this.averageLivingCost;
    data['facilities'] = this.facilities;
    if (this.reviews != null) {
      data['reviews'] = this.reviews!.map((v) => v.toJson()).toList();
    }
    if (this.photos != null) {
      data['photos'] = this.photos!.map((v) => v.toJson()).toList();
    }
    data['__v'] = this.iV;
    return data;
  }
}

class Reviews {
  String? sId;
  String? review;
  int? stars;
  String? propertyId;
  UserId? userId;
  int? iV;

  Reviews(
      {this.sId,
      this.review,
      this.stars,
      this.propertyId,
      this.userId,
      this.iV});

  Reviews.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    review = json['review'];
    stars = json['stars'];
    propertyId = json['property_id'];
    userId =
        json['user_id'] != null ? new UserId.fromJson(json['user_id']) : null;
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['review'] = this.review;
    data['stars'] = this.stars;
    data['property_id'] = this.propertyId;
    if (this.userId != null) {
      data['user_id'] = this.userId?.toJson();
    }
    data['__v'] = this.iV;
    return data;
  }
}

class UserId {
  Photos? photos;
  String? sId;
  String? name;
  String? email;
  String? password;
  List<String>? saved;
  List<String>? purchaseHistory;
  List<String>? hostedProperties;
  List<String>? requests;
  int? iV;
  int? age;
  String? gender;
  bool? isHost;
  bool? maritalStatus;
  int? phone;

  UserId(
      {this.photos,
      this.sId,
      this.name,
      this.email,
      this.password,
      this.saved,
      this.purchaseHistory,
      this.hostedProperties,
      this.requests,
      this.iV,
      this.age,
      this.gender,
      this.isHost,
      this.maritalStatus,
      this.phone});

  UserId.fromJson(Map<String, dynamic> json) {
    photos = json['photo'] != null ? new Photos.fromJson(json['photo']) : null;
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    saved = json['saved'].cast<String>();
    purchaseHistory = json['purchase_history'].cast<String>();
    hostedProperties = json['hosted_properties'].cast<String>();
    // if (json['hosted_properties'] != null) {
    //   hostedProperties = <String>[];
    //   json['hosted_properties'].forEach((v) {
    //     hostedProperties?.add(v);
    //   });
    // }
    requests = json['requests'].cast<String>();
    iV = json['__v'];
    age = json['age'];
    gender = json['gender'];
    isHost = json['is_host'];
    maritalStatus = json['marital_status'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.photos != null) {
      data['photo'] = this.photos?.toJson();
    }
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['saved'] = this.saved;
    data['purchase_history'] = this.purchaseHistory;
    if (this.hostedProperties != null) {
      data['hosted_properties'] = this.hostedProperties?.map((v) => v).toList();
    }
    data['requests'] = this.requests;
    data['__v'] = this.iV;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['is_host'] = this.isHost;
    data['marital_status'] = this.maritalStatus;
    data['phone'] = this.phone;
    return data;
  }
}

class Photos {
  String? url;
  String? sId;

  Photos({this.url, this.sId});

  Photos.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['_id'] = this.sId;
    return data;
  }
}
