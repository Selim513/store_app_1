import 'package:store_api_app/api/helper/api.dart';
import 'package:store_api_app/model/all_products_model.dart';

class GetCatgegoryByNameApi {
  Future<List<ProductsModel>> getCatgegoryByName(
      {required String category}) async {
    List<dynamic> result = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$category');
    List<ProductsModel> categoryList = [];
    for (var i = 0; i < result.length; i++) {
      categoryList.add(ProductsModel.fromJson(result[i]));
    }
    return categoryList;
  }
}
