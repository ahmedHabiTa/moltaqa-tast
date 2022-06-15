// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
   required this.status,
   required this.code,
    this.message,
 required   this.data,
    this.paginator,
  });

  bool status;
  int code;
  String? message;
  List<Product> data;
  Paginator? paginator;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    status: json["status"],
    code: json["code"],
    message: json["message"],
    data: List<Product>.from(json["data"].map((x) => Product.fromJson(x))),
    paginator: Paginator.fromJson(json["paginator"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "code": code,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "paginator": paginator!.toJson(),
  };
}

class Product {
  Product({
   required this.id,
   required this.name,
    this.sku,
   required this.image,
    required   this.isOutOfStock,
    required   this.storehouseManagement,
    required this.quantity,
    required  this.views,
    required this.reviewsCount,
    required this.isFavorite,
    required  this.price,
    this.salePrice,
    required   this.priceSymbol,
    required   this.salePercentage,
    required this.isProductOnSale,
    required  this.brand,
    required   this.createdAt,
    required   this.updatedAt,
  });

  int id;
  String name;
  dynamic sku;
  String image;
  bool isOutOfStock;
  bool storehouseManagement;
  int quantity;
  int views;
  int reviewsCount;
  bool isFavorite;
  dynamic price;
  dynamic salePrice;
  String priceSymbol;
  String salePercentage;
  bool isProductOnSale;
  Brand brand;
  String createdAt;
  String updatedAt;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    name: json["name"],
    sku: json["sku"],
    image: json["image"],
    isOutOfStock: json["is_out_of_stock"],
    storehouseManagement: json["storehouse_management"],
    quantity: json["quantity"],
    views: json["views"],
    reviewsCount: json["reviews_count"],
    isFavorite: json["is_favorite"],
    price: json["price"],
    salePrice: json["sale_price"],
    priceSymbol:json["price_symbol"],
    salePercentage: json["sale_percentage"],
    isProductOnSale: json["is_product_on_sale"],
    brand: Brand.fromJson(json["brand"]),
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "sku": sku,
    "image": image,
    "is_out_of_stock": isOutOfStock,
    "storehouse_management": storehouseManagement,
    "quantity": quantity,
    "views": views,
    "reviews_count": reviewsCount,
    "is_favorite": isFavorite,
    "price": price,
    "sale_price": salePrice,
    "price_symbol": priceSymbol,
    "sale_percentage": salePercentage,
    "is_product_on_sale": isProductOnSale,
    "brand": brand.toJson(),
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}

class Brand {
  Brand({
   required this.id,
 required   this.name,
    required this.logo,
  });

  dynamic id;
  dynamic name;
  String logo;

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
    id: json["id"],
    name: json["name"],
    logo: json["logo"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "logo": logo,
  };
}


class Paginator {
  Paginator({
  required  this.totalCount,
    required  this.totalPages,
    required   this.currentPage,
    required this.perPage,
  });

  int totalCount;
  int totalPages;
  int currentPage;
  int perPage;

  factory Paginator.fromJson(Map<String, dynamic> json) => Paginator(
    totalCount: json["total_count"],
    totalPages: json["total_pages"],
    currentPage: json["current_page"],
    perPage: json["per_page"],
  );

  Map<String, dynamic> toJson() => {
    "total_count": totalCount,
    "total_pages": totalPages,
    "current_page": currentPage,
    "per_page": perPage,
  };
}


