class ServiceCardModel {
  int? id;
  String? serviceImageUrl;
  String? username;
  String? title;
  double? price;

  ServiceCardModel(
      {this.id, this.serviceImageUrl, this.username, this.title, this.price});

  ServiceCardModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceImageUrl = json['serviceImageUrl'];
    username = json['username'];
    title = json['title'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['serviceImageUrl'] = serviceImageUrl;
    data['username'] = username;
    data['title'] = title;
    data['price'] = price;
    return data;
  }
}