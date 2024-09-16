import 'package:store_api_app/api/helper/api.dart';
import 'package:store_api_app/model/all_products_model.dart';

class GetAllProductService {
  Future<List<ProductsModel>> getAllproducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    List<ProductsModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductsModel.fromJson(data[i]));
    }
    return productList;
  }
}
