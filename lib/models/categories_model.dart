// To parse this JSON data, do
//
//     final categoriesModel = categoriesModelFromJson(jsonString);

import 'dart:convert';

CategoriesModel categoriesModelFromJson(String str) => CategoriesModel.fromJson(json.decode(str));

String categoriesModelToJson(CategoriesModel data) => json.encode(data.toJson());

class CategoriesModel {
  CategoriesModel({
    this.error,
    this.code,
    this.message,
    this.url,
    this.categories,
  });

  String error;
  String code;
  String message;
  String url;
  Categories categories;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) => CategoriesModel(
    error: json["error"],
    code: json["code"],
    message: json["message"],
    url: json["url"],
    categories: Categories.fromJson(json["categories"]),
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "code": code,
    "message": message,
    "url": url,
    "categories": categories.toJson(),
  };
}

class Categories {
  Categories({
    this.currentPage,
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
    this.total,
  });

  int currentPage;
  List<Datum> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  List<Link> links;
  String nextPageUrl;
  String path;
  int perPage;
  dynamic prevPageUrl;
  int to;
  int total;

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
    currentPage: json["current_page"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    firstPageUrl: json["first_page_url"],
    from: json["from"],
    lastPage: json["last_page"],
    lastPageUrl: json["last_page_url"],
    links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
    nextPageUrl: json["next_page_url"],
    path: json["path"],
    perPage: json["per_page"],
    prevPageUrl: json["prev_page_url"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "first_page_url": firstPageUrl,
    "from": from,
    "last_page": lastPage,
    "last_page_url": lastPageUrl,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
    "next_page_url": nextPageUrl,
    "path": path,
    "per_page": perPage,
    "prev_page_url": prevPageUrl,
    "to": to,
    "total": total,
  };
}

class Datum {
  Datum({
    this.id,
    this.parentId,
    this.title,
    this.slug,
    this.image,
    this.icon,
    this.status,
    this.userId,
    this.sectionId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int id;
  dynamic parentId;
  String title;
  String slug;
  Image image;
  String icon;
  String status;
  String userId;
  String sectionId;
  String createdAt;
  String updatedAt;
  String deletedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    parentId: json["parent_id"],
    title: json["title"],
    slug: json["slug"],
    image: json["image"] == null ? null : imageValues.map[json["image"]],
    icon: json["icon"] == null ? null : json["icon"],
    status: json["status"],
    userId: json["user_id"],
    sectionId: json["section_id"] == null ? null : json["section_id"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    deletedAt: json["deleted_at"] == null ? null : json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "parent_id": parentId,
    "title": title,
    "slug": slug,
    "image": image == null ? null : imageValues.reverse[image],
    "icon": icon == null ? null : icon,
    "status": status,
    "user_id": userId,
    "section_id": sectionId == null ? null : sectionId,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "deleted_at": deletedAt == null ? null : deletedAt,
  };
}

enum Image { THE_1615285675_ATM_MACHINES_PNG, EMPTY }

final imageValues = EnumValues({
  "": Image.EMPTY,
  "1615285675_atm machines.png": Image.THE_1615285675_ATM_MACHINES_PNG
});

class Link {
  Link({
    this.url,
    this.label,
    this.active,
  });

  String url;
  String label;
  bool active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    url: json["url"] == null ? null : json["url"],
    label: json["label"],
    active: json["active"],
  );

  Map<String, dynamic> toJson() => {
    "url": url == null ? null : url,
    "label": label,
    "active": active,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
