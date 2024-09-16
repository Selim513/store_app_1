import 'package:store_api_app/api/helper/api.dart';

class GetAllCategoryApi {
  Future<dynamic> get_all_products_model() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
