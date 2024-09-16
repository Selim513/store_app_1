import 'package:flutter/material.dart';
import 'package:store_api_app/api/get_catgegory_by_name_api.dart';
import 'package:store_api_app/model/all_products_model.dart';
import 'package:store_api_app/widget/custom_item_card.dart';

class CustomItemCardGridView extends StatelessWidget {
  const CustomItemCardGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductsModel>>(
      future: GetCatgegoryByNameApi().getCatgegoryByName(category: 'jewelery'),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Text('Erorrrrrrrrrrrr ${snapshot.error}');
        } else if (snapshot.hasData) {
          List<ProductsModel> data = snapshot.data!;
          return GridView.builder(
            itemCount: data.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return CustomItemCard(data: data[index]);
            },
          );
        } else {
          return const Center(
            child: Text(
              'Erorrrrrrrrrrrrrrrr',
              style: TextStyle(color: Colors.black),
            ),
          );
        }
      },
    );
  }
}
