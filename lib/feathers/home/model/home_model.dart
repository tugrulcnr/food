class HomeModel {
  List<Business>? businesses;
  int? total;
  Region? region;

  HomeModel({this.businesses, this.total, this.region});

  HomeModel.fromJson(Map<String, dynamic> json) {
    if (json['businesses'] != null) {
      businesses = <Business>[];
      json['businesses'].forEach((v) {
        businesses!.add(Business.fromJson(v));
      });
    }
    total = json['total'];
    region =
        json['region'] != null ? Region.fromJson(json['region']) : null;
  }

}

class Business {
  String? id;
  String? alias;
  String? name;
  String? imageUrl;
  bool? isClosed;
  String? url;
  int? reviewCount;
  List<Categories>? categories;
  double? rating;
  Coordinates? coordinates;
  String? price;
  Location? location;
  String? phone;
  String? displayPhone;
  double? distance;

  Business(
      {this.id,
      this.alias,
      this.name,
      this.imageUrl,
      this.isClosed,
      this.url,
      this.reviewCount,
      this.categories,
      this.rating,
      this.coordinates,
      this.price,
      this.location,
      this.phone,
      this.displayPhone,
      this.distance});

  Business.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    alias = json['alias'];
    name = json['name'];
    imageUrl = json['image_url'];
    isClosed = json['is_closed'];
    url = json['url'];
    reviewCount = json['review_count'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
    rating = json['rating'];
    coordinates = json['coordinates'] != null
        ? Coordinates.fromJson(json['coordinates'])
        : null;
    
    price = json['price'];
    location = json['location'] != null
        ? Location.fromJson(json['location'])
        : null;
    phone = json['phone'];
    displayPhone = json['display_phone'];
    distance = json['distance'];
  }

  
}

class Categories {
  String? alias;
  String? title;

  Categories({this.alias, this.title});

  Categories.fromJson(Map<String, dynamic> json) {
    alias = json['alias'];
    title = json['title'];
  }

  
}

class Coordinates {
  double? latitude;
  double? longitude;

  Coordinates({this.latitude, this.longitude});

  Coordinates.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }


}

class Location {
  String? address1;
  String? address2;
  String? address3;
  String? city;
  String? zipCode;
  String? country;
  String? state;
  List<String>? displayAddress;

  Location(
      {this.address1,
      this.address2,
      this.address3,
      this.city,
      this.zipCode,
      this.country,
      this.state,
      this.displayAddress});

  Location.fromJson(Map<String, dynamic> json) {
    address1 = json['address1'];
    address2 = json['address2'];
    address3 = json['address3'];
    city = json['city'];
    zipCode = json['zip_code'];
    country = json['country'];
    state = json['state'];
    displayAddress = json['display_address'].cast<String>();
  }

  
}

class Region {
  Coordinates? center;

  Region({this.center});

  Region.fromJson(Map<String, dynamic> json) {
    center = json['center'] != null
        ? Coordinates.fromJson(json['center'])
        : null;
  }

}


