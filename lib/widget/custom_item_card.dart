import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_api_app/model/all_products_model.dart';
import 'package:store_api_app/views/update_product_view.dart';

class CustomItemCard extends StatelessWidget {
  const CustomItemCard({
    super.key,
    required this.data,
  });
  final ProductsModel data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UpdateProductView(
                product: data,
              ),
            )); 
      },
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ]),
        margin: const EdgeInsets.all(5),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        data.title,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          Text('\$ ${data.price}'),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                CupertinoIcons.heart_fill,
                                color: Colors.red,
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: 10,
              right: 10,
              top: 5,
              child: Image.network(
                data.image,
                fit: BoxFit.contain,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
