import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
          "https://cdn.dxomark.com/wp-content/uploads/medias/post-125834/Apple-iPhone-14_FINAL_featured-image-packshot-review-1024x691.jpg"),
      title: const Text("Product Name"),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Product code: #CODE"),
          Text("Quantity: 12"),
          Text(
            "Price:75000",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      trailing: Wrap(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
