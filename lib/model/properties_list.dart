class PropertiesList {
  int? currentPage;
  List<Data>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  String? prevPageUrl;
  int? to;
  int? total;

  PropertiesList(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.links,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  PropertiesList.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current_page'] = currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = firstPageUrl;
    data['from'] = from;
    data['last_page'] = lastPage;
    data['last_page_url'] = lastPageUrl;
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = nextPageUrl;
    data['path'] = path;
    data['per_page'] = perPage;
    data['prev_page_url'] = prevPageUrl;
    data['to'] = to;
    data['total'] = total;
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? description;
  String? content;
  String? location;
  List<String>? images;
  int? numberBedroom;
  int? numberBathroom;
  int? numberFloor;
  int? square;
  String? price;
  int? currencyId;
  int? cityId;
  int? stateId;
  int? countryId;
  String? period;
  int? authorId;
  String? authorType;
  int? categoryId;
  int? isFeatured;
  dynamic isExcelsius;
  String? moderationStatus;
  String? expireDate;
  int? autoRenew;
  int? neverExpired;
  int? latitude;
  int? longitude;
  int? typeId;
  String? createdAt;
  String? updatedAt;
  int? subcategoryId;
  String? youtubelink;
  String? facelink;
  String? phone;
  String? whatsapp;
  int? viewsCount;
  String? image;
  String? image1;
  String? imageUrl;
  String? slug;

  Data(
      {this.id,
      this.name,
      this.description,
      this.content,
      this.location,
      this.images,
      this.numberBedroom,
      this.numberBathroom,
      this.numberFloor,
      this.square,
      this.price,
      this.currencyId,
      this.cityId,
      this.stateId,
      this.countryId,
      this.period,
      this.authorId,
      this.authorType,
      this.categoryId,
      this.isFeatured,
      this.isExcelsius,
      this.moderationStatus,
      this.expireDate,
      this.autoRenew,
      this.neverExpired,
      this.latitude,
      this.longitude,
      this.typeId,
      this.createdAt,
      this.updatedAt,
      this.subcategoryId,
      this.youtubelink,
      this.facelink,
      this.phone,
      this.whatsapp,
      this.viewsCount,
      this.image,
      this.image1,
      this.imageUrl,
      this.slug});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    content = json['content'];
    location = json['location'];
    images = json['images'].cast<String>();
    numberBedroom = json['number_bedroom'];
    numberBathroom = json['number_bathroom'];
    numberFloor = json['number_floor'];
    square = json['square'];
    price = json['price'];
    currencyId = json['currency_id'];
    cityId = json['city_id'];
    stateId = json['state_id'];
    countryId = json['country_id'];
    period = json['period'];
    authorId = json['author_id'];
    authorType = json['author_type'];
    categoryId = json['category_id'];
    isFeatured = json['is_featured'];
    isExcelsius = json['is_excelsius'];
    moderationStatus = json['moderation_status'];
    expireDate = json['expire_date'];
    autoRenew = json['auto_renew'];
    neverExpired = json['never_expired'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    typeId = json['type_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    subcategoryId = json['subcategory_id'];
    youtubelink = json['youtubelink'];
    facelink = json['facelink'];
    phone = json['phone'];
    whatsapp = json['whatsapp'];
    viewsCount = json['views_count'];
    image = json['image'];
    image1 = json['image1'];
    imageUrl = json['image_url'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['content'] = content;
    data['location'] = location;
    data['images'] = images;
    data['number_bedroom'] = numberBedroom;
    data['number_bathroom'] = numberBathroom;
    data['number_floor'] = numberFloor;
    data['square'] = square;
    data['price'] = price;
    data['currency_id'] = currencyId;
    data['city_id'] = cityId;
    data['state_id'] = stateId;
    data['country_id'] = countryId;
    data['period'] = period;
    data['author_id'] = authorId;
    data['author_type'] = authorType;
    data['category_id'] = categoryId;
    data['is_featured'] = isFeatured;
    data['is_excelsius'] = isExcelsius;
    data['moderation_status'] = moderationStatus;
    data['expire_date'] = expireDate;
    data['auto_renew'] = autoRenew;
    data['never_expired'] = neverExpired;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['type_id'] = typeId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['subcategory_id'] = subcategoryId;
    data['youtubelink'] = youtubelink;
    data['facelink'] = facelink;
    data['phone'] = phone;
    data['whatsapp'] = whatsapp;
    data['views_count'] = viewsCount;
    data['image'] = image;
    data['image1'] = image1;
    data['image_url'] = imageUrl;
    data['slug'] = slug;
    return data;
  }
}

class Links {
  String? url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['label'] = label;
    data['active'] = active;
    return data;
  }
}
