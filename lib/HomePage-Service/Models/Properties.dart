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
  String? userId;
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
    userId = json['user_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['review'] = this.review;
    data['stars'] = this.stars;
    data['property_id'] = this.propertyId;
    data['user_id'] = this.userId;
    data['__v'] = this.iV;
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
