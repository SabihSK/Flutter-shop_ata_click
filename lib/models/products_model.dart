// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

import 'dart:convert';

ProductsModel productsModelFromJson(String str) => ProductsModel.fromJson(json.decode(str));

String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

class ProductsModel {
  ProductsModel({
    this.error,
    this.code,
    this.message,
    this.url,
    this.imageUrl,
    this.galleryImageUrl,
    this.documentUrl,
    this.products,
  });

  String error;
  String code;
  String message;
  String url;
  String imageUrl;
  String galleryImageUrl;
  String documentUrl;
  Products products;

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    error: json["error"],
    code: json["code"],
    message: json["message"],
    url: json["url"],
    imageUrl: json["image-url"],
    galleryImageUrl: json["gallery-image-url"],
    documentUrl: json["document-url"],
    products: Products.fromJson(json["products"]),
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "code": code,
    "message": message,
    "url": url,
    "image-url": imageUrl,
    "gallery-image-url": galleryImageUrl,
    "document-url": documentUrl,
    "products": products.toJson(),
  };
}

class Products {
  Products({
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

  factory Products.fromJson(Map<String, dynamic> json) => Products(
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
    this.userId,
    this.brandId,
    this.categoryId,
    this.productCode,
    this.status,
    this.type,
    this.name,
    this.slug,
    this.productImage,
    this.longDescription,
    this.shortDescription,
    this.regularPrice,
    this.salePrice,
    this.stock,
    this.quantity,
    this.metaTitle,
    this.metaKeywords,
    this.metaDescription,
    this.itemWeight,
    this.itemDimension,
    this.taxStatus,
    this.taxClass,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.productGrallery,
    this.documentProduct,
    this.category,
    this.brand,
  });

  int id;
  String userId;
  String brandId;
  String categoryId;
  String productCode;
  String status;
  String type;
  String name;
  String slug;
  String productImage;
  String longDescription;
  String shortDescription;
  String regularPrice;
  dynamic salePrice;
  String stock;
  String quantity;
  String metaTitle;
  dynamic metaKeywords;
  String metaDescription;
  String itemWeight;
  String itemDimension;
  String taxStatus;
  dynamic taxClass;
  String createdAt;
  DateTime updatedAt;
  String deletedAt;
  List<ProductGrallery> productGrallery;
  List<DocumentProduct> documentProduct;
  Category category;
  Brand brand;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    userId: json["user_id"],
    brandId: json["brand_id"] == null ? null : json["brand_id"],
    categoryId: json["category_id"],
    productCode: json["product_code"] == null ? null : json["product_code"],
    status: json["status"],
    type: json["type"],
    name: json["name"],
    slug: json["slug"],
    productImage: json["product_image"],
    longDescription: json["long_description"],
    shortDescription: json["short_description"],
    regularPrice: json["regular_price"],
    salePrice: json["sale_price"],
    stock: json["stock"],
    quantity: json["quantity"] == null ? null : json["quantity"],
    metaTitle: json["meta_title"] == null ? null : json["meta_title"],
    metaKeywords: json["meta_keywords"],
    metaDescription: json["meta_description"] == null ? null : json["meta_description"],
    itemWeight: json["item_weight"] == null ? null : json["item_weight"],
    itemDimension: json["item_dimension"] == null ? null : json["item_dimension"],
    taxStatus: json["tax_status"] == null ? null : json["tax_status"],
    taxClass: json["tax_class"],
    createdAt: json["created_at"],
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"] == null ? null : json["deleted_at"],
    productGrallery: List<ProductGrallery>.from(json["product_grallery"].map((x) => ProductGrallery.fromJson(x))),
    documentProduct: List<DocumentProduct>.from(json["document_product"].map((x) => DocumentProduct.fromJson(x))),
    category: Category.fromJson(json["category"]),
    brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "brand_id": brandId == null ? null : brandId,
    "category_id": categoryId,
    "product_code": productCode == null ? null : productCode,
    "status": status,
    "type": type,
    "name": name,
    "slug": slug,
    "product_image": productImage,
    "long_description": longDescription,
    "short_description": shortDescription,
    "regular_price": regularPrice,
    "sale_price": salePrice,
    "stock": stock,
    "quantity": quantity == null ? null : quantity,
    "meta_title": metaTitle == null ? null : metaTitle,
    "meta_keywords": metaKeywords,
    "meta_description": metaDescription == null ? null : metaDescription,
    "item_weight": itemWeight == null ? null : itemWeight,
    "item_dimension": itemDimension == null ? null : itemDimension,
    "tax_status": taxStatus == null ? null : taxStatus,
    "tax_class": taxClass,
    "created_at": createdAt,
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt == null ? null : deletedAt,
    "product_grallery": List<dynamic>.from(productGrallery.map((x) => x.toJson())),
    "document_product": List<dynamic>.from(documentProduct.map((x) => x.toJson())),
    "category": category.toJson(),
    "brand": brand == null ? null : brand.toJson(),
  };
}

class Brand {
  Brand({
    this.id,
    this.title,
    this.description,
    this.image,
    this.metaTitle,
    this.metaKeyword,
    this.metaDescription,
    this.userId,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int id;
  String title;
  dynamic description;
  String image;
  dynamic metaTitle;
  dynamic metaKeyword;
  dynamic metaDescription;
  String userId;
  String status;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    image: json["image"],
    metaTitle: json["meta_title"],
    metaKeyword: json["meta_keyword"],
    metaDescription: json["meta_description"],
    userId: json["user_id"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "image": image,
    "meta_title": metaTitle,
    "meta_keyword": metaKeyword,
    "meta_description": metaDescription,
    "user_id": userId,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}

class Category {
  Category({
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
  String image;
  dynamic icon;
  String status;
  String userId;
  dynamic sectionId;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    parentId: json["parent_id"],
    title: json["title"],
    slug: json["slug"],
    image: json["image"] == null ? null : json["image"],
    icon: json["icon"],
    status: json["status"],
    userId: json["user_id"],
    sectionId: json["section_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "parent_id": parentId,
    "title": title,
    "slug": slug,
    "image": image == null ? null : image,
    "icon": icon,
    "status": status,
    "user_id": userId,
    "section_id": sectionId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}

class DocumentProduct {
  DocumentProduct({
    this.id,
    this.productId,
    this.name,
    this.document,
  });

  int id;
  String productId;
  dynamic name;
  String document;

  factory DocumentProduct.fromJson(Map<String, dynamic> json) => DocumentProduct(
    id: json["id"],
    productId: json["product_id"],
    name: json["name"],
    document: json["document"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product_id": productId,
    "name": name,
    "document": document,
  };
}

class ProductGrallery {
  ProductGrallery({
    this.id,
    this.productId,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String productId;
  String image;
  dynamic createdAt;
  dynamic updatedAt;

  factory ProductGrallery.fromJson(Map<String, dynamic> json) => ProductGrallery(
    id: json["id"],
    productId: json["product_id"],
    image: json["image"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product_id": productId,
    "image": image,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}

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
