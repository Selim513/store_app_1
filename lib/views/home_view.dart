import 'package:flutter/material.dart';
import 'package:store_api_app/widget/CustomItemCardGridView.dart';
import 'package:store_api_app/widget/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        name: 'New Trend',
      ),
      body: CustomItemCardGridView(),
    );
  }
}
