import 'package:crudapp/ui/screens/product_list.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const CRUDApp());
}

class CRUDApp extends StatelessWidget {
  const CRUDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductList(),
    );
  }
}
