class CategoriesModel {
  int? id;
  String? name;
  String? description;
  String? status;
  String? image;
  int? order;
  int? isDefault;
  String? createdAt;
  String? updatedAt;
  int? parentId;

  CategoriesModel(
      {this.id,
      this.name,
      this.description,
      this.status,
      this.image,
      this.order,
      this.isDefault,
      this.createdAt,
      this.updatedAt,
      this.parentId});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    status = json['status'];
    image = json['image'];
    order = json['order'];
    isDefault = json['is_default'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    parentId = json['parent_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['status'] = status;
    data['image'] = image;
    data['order'] = order;
    data['is_default'] = isDefault;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['parent_id'] = parentId;
    return data;
  }
}
