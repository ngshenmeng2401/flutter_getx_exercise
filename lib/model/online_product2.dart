class OnlineProduct2 {
  List<Product>? product;

  OnlineProduct2({this.product});

  OnlineProduct2.fromJson(Map<String, dynamic> json) {
    if (json['product'] != null) {
      product = <Product>[];
      json['product'].forEach((v) {
        product!.add(new Product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.product != null) {
      data['product'] = this.product!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Product {
  String? productNo;
  String? productName;
  String? originalPrice;
  String? offeredPrice;
  String? rating;
  String? productDetail;
  String? type;

  Product(
      {this.productNo,
      this.productName,
      this.originalPrice,
      this.offeredPrice,
      this.rating,
      this.productDetail,
      this.type});

  Product.fromJson(Map<String, dynamic> json) {
    productNo = json['product_no'];
    productName = json['product_name'];
    originalPrice = json['original_price'];
    offeredPrice = json['offered_price'];
    rating = json['rating'];
    productDetail = json['product_detail'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_no'] = this.productNo;
    data['product_name'] = this.productName;
    data['original_price'] = this.originalPrice;
    data['offered_price'] = this.offeredPrice;
    data['rating'] = this.rating;
    data['product_detail'] = this.productDetail;
    data['type'] = this.type;
    return data;
  }
}