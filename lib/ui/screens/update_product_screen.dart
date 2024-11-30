import 'package:flutter/material.dart';
import '../../constant.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});
  static const String route = "/update_product";

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _priceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Update Product",
          style: AppStyle.appBarStyle,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white, // Change the back button color here
          ),
          onPressed: () {
            Navigator.pop(context); // This pops the current screen and goes back
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          buildTextFormController(_nameTEController,
              hintText: "Update Product Name", labelText: "Update Product Name"),
          buildTextFormController(_priceTEController,
              hintText: "Update Product Price",
              labelText: "Update Product Price"),
          buildTextFormController(_codeTEController,
              hintText: "Update Product Code", labelText: "Update Product Code"),
          buildTextFormController(_quantityTEController,
              hintText: "Update Product Quantity",
              labelText: "Update Product Quantity"),
          buildTextFormController(_imageTEController,
              hintText: "Update Product Image",
              labelText: "Update Product Image"),
          buildTextFormController(_totalPriceTEController,
              hintText: "Update Total Price", labelText: "Update Total Price"),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () {
              // Handle form submission here
            },
            style: AppStyle.elevatedButtonStyle(context),
            child: const Text("Update"),
          ),
        ]),
      ),
    );
  }

  Widget buildTextFormController(
      final TextEditingController controller, {
        required final String? hintText,
        required final String? labelText,
      }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (String? value) {
          if (value?.trim().isEmpty ?? true) {
            return hintText;
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppStyle.hintTextStyle,
          labelText: labelText,
          labelStyle: AppStyle.labelTextStyle(context),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            borderSide: BorderSide(
              width: 2,
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            borderSide: BorderSide(
              width: 2,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameTEController.dispose();
    _codeTEController.dispose();
    _totalPriceTEController.dispose();
    _imageTEController.dispose();
    _quantityTEController.dispose();
    _priceTEController.dispose();
    super.dispose();
  }
}
