import 'package:crudapp/ui/screens/add_new_product_screen.dart';
import 'package:crudapp/ui/screens/product_list_screen.dart';
import 'package:crudapp/ui/screens/update_product_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CRUDApp());
}

class CRUDApp extends StatelessWidget {
  const CRUDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffF27457),

      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ProductListScreen(),
        AddNewProductScreen.route: (context) => const AddNewProductScreen(),
        UpdateProductScreen.route: (context) => const UpdateProductScreen(),
      },
    );
  }
}
