class BeverageModel {
  String beverageImage;
  String beverageName;
  String popularChoice;
  String description;
  double rating;
  int orders;

  BeverageModel({
    required this.beverageImage,
    required this.beverageName,
    required this.popularChoice,
    required this.description,
    required this.rating,
    required this.orders,
  });

  factory BeverageModel.fromJson(Map<String, dynamic> json) {
    return BeverageModel(
      beverageImage: json['beverageImage'],
      beverageName: json['beverageName'],
      popularChoice: json['popularChoice'],
      rating: json['rating'].toDouble(),
      orders: json['orders'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'beverageImage': beverageImage,
      'beverageName': beverageName,
      'popularChoice': popularChoice,
      'rating': rating,
      'orders': orders,
      'description': description,
    };
  }
}
