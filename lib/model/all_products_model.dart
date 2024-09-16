// class ProductsModel {
//   final int id;
//   final String title;
//   final dynamic price;
//   final String description;
//   final String category;
//   final String image;
//   final RatingModel? rating;

//   ProductsModel(
//       {required this.id,
//       required this.title,
//       required this.price,
//       required this.description,
//       required this.category,
//       required this.image,
//       this.rating});

//   factory ProductsModel.fromJson(jsonData) {
//     return ProductsModel(
//         id: jsonData['id'],
//         title: jsonData['title'],
//         price: jsonData['price'],
//         description: jsonData['description'],
//         category: jsonData['category'],
//         image: jsonData['image'],
//         rating: RatingModel.fromJson(jsonData['rating'] == null
//             ? null
//             : RatingModel.fromJson(jsonData['rating'])));
//   }
// }

// class RatingModel {
//   final num rate;
//   final int count;

//   RatingModel({required this.rate, required this.count});
//   factory RatingModel.fromJson(jsonData) {
//     return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
//   }
// }
class ProductsModel {
  final int id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final String image;
  final RatingModel? rating; // Allow rating to be nullable

  ProductsModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    this.rating, // Make it optional
  });

  factory ProductsModel.fromJson(Map<String, dynamic> jsonData) {
    return ProductsModel(
      id: jsonData['id'] , // Provide a default value
      title: jsonData['title'] , // Provide a default value
      price: jsonData['price'] , // Provide a default value
      description: jsonData['description'] ??
          'No description', // Provide a default value
      category:
          jsonData['category'] , // Provide a default value
      image: jsonData['image'] , // Provide a default value
      rating: jsonData['rating'] != null
          ? RatingModel.fromJson(jsonData['rating'])
          : null, // Handle potential null rating
    );
  }
}

class RatingModel {
  final num rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(Map<String, dynamic> jsonData) {
    return RatingModel(
      rate: jsonData['rate'] , // Provide a default value
      count: jsonData['count'] , // Provide a default value
    );
  }
}
