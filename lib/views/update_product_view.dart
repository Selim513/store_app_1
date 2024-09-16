import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_api_app/api/update_product_api.dart';
import 'package:store_api_app/model/all_products_model.dart';
import 'package:store_api_app/widget/custom_button.dart';
import 'package:store_api_app/widget/custom_text_field.dart';

class UpdateProductView extends StatefulWidget {
  const UpdateProductView({
    super.key,
    required this.product,
  });
  final ProductsModel product;
  @override
  State<UpdateProductView> createState() => _UpdateProductViewState();
}

class _UpdateProductViewState extends State<UpdateProductView> {
  String? title, desc, image, category;
  String? price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              CustomTextFormField(
                labelText: 'Title',
                inputType: TextInputType.text,
                onchange: (data) {
                  title = data;
                },
              ),
              const Gap(10),
              CustomTextFormField(
                labelText: 'Price',
                inputType: TextInputType.number,
                onchange: (data) {
                  price = data;
                },
              ),
              const Gap(10),
              CustomTextFormField(
                labelText: 'Description',
                inputType: TextInputType.text,
                onchange: (data) {
                  desc = data;
                },
              ),
              const Gap(10),
              CustomTextFormField(
                labelText: 'Category',
                inputType: TextInputType.text,
                onchange: (data) {
                  category = data;
                },
              ),
              const Gap(10),
              CustomTextFormField(
                inputType: TextInputType.text,
                labelText: 'Image',
                onchange: (data) {
                  image = data;
                },
              ),
              const Gap(30),
              CustomButton(
                name: 'Update Product',
                onPressed: () async {
                  try {
                    await UpdateProductApi().updateProduct(
                        id: widget.product.id,
                        title: title == null ? widget.product.title : title!,
                        price: price == null
                            ? widget.product.price.toString()
                            : price!,
                        desc: desc == null ? widget.product.description : desc!,
                        image: image == null ? widget.product.image : image!,
                        category: widget.product.category);
                  } catch (e) {}
                  print('success');
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
