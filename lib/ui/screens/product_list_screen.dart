import 'package:crudapp/ui/screens/add_new_product_screen.dart';
import 'package:crudapp/ui/widgets/product_item.dart';
import 'package:flutter/material.dart';
import '../../constant.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListState();
}

class _ProductListState extends State<ProductListScreen> {

  @override
  Widget build(BuildContext context) {
    var primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List", style: AppStyle.appBarStyle),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, int index) {
          return const ProductItem();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddNewProductScreen.route);
        },
        backgroundColor: primaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
