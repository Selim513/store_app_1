import 'package:store_api_app/api/helper/api.dart';
import 'package:store_api_app/model/all_products_model.dart';

class UpdateProductApi {
  Future<ProductsModel> updateProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required int id,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      "title": title,
      "price": price,
      "description": desc,
      "image": image,
      "category": category,
    });
    return ProductsModel.fromJson(data);
  }
}
