// To parse this JSON data, do
//
//     final bannerModel = bannerModelFromJson(jsonString);

import 'dart:convert';

BannerModel bannerModelFromJson(String str) => BannerModel.fromJson(json.decode(str));

String bannerModelToJson(BannerModel data) => json.encode(data.toJson());

class BannerModel {
  BannerModel({
    this.error,
    this.code,
    this.message,
    this.url,
    this.imageUrl,
    this.banners,
  });

  String error;
  String code;
  String message;
  String url;
  String imageUrl;
  List<Banner> banners;

  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
    error: json["error"],
    code: json["code"],
    message: json["message"],
    url: json["url"],
    imageUrl: json["image-url"],
    banners: List<Banner>.from(json["banners"].map((x) => Banner.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "code": code,
    "message": message,
    "url": url,
    "image-url": imageUrl,
    "banners": List<dynamic>.from(banners.map((x) => x.toJson())),
  };
}

class Banner {
  Banner({
    this.id,
    this.link,
    this.title,
    this.description,
    this.image,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  dynamic link;
  dynamic title;
  dynamic description;
  String image;
  String status;
  DateTime createdAt;
  DateTime updatedAt;

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
    id: json["id"],
    link: json["link"],
    title: json["title"],
    description: json["description"],
    image: json["image"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "link": link,
    "title": title,
    "description": description,
    "image": image,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
