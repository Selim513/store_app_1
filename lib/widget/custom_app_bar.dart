import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_api_app/api/add_product_api.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        name,
      ),
      actions: [
        IconButton(
            onPressed: () {
              AddProductApi().addProduct(
                  title: 'ahmed',
                  price: "21",
                  desc: 'welcome man',
                  image: " https://i.pravatar.cc",
                  category: 'electronic',
                  );
            },
            icon: const Icon(CupertinoIcons.cart)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
