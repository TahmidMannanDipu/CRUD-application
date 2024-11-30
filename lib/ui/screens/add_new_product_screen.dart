import 'package:flutter/material.dart';
import '../../constant.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});
  static const String route = "/add_new_product";

  @override
  State<AddNewProductScreen> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProductScreen> {
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
          "Add new product",
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
              hintText: "Enter Product Name", labelText: "Enter Product Name"),
          buildTextFormController(_priceTEController,
              hintText: "Enter Product Price",
              labelText: "Enter Product Price"),
          buildTextFormController(_codeTEController,
              hintText: "Enter Product Code", labelText: "Enter Product Code"),
          buildTextFormController(_quantityTEController,
              hintText: "Enter Product Quantity",
              labelText: "Enter Product Quantity"),
          buildTextFormController(_imageTEController,
              hintText: "Enter Product Image",
              labelText: "Enter Product Image"),
          buildTextFormController(_totalPriceTEController,
              hintText: "Total Price", labelText: "Total Price"),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () {},
            style: AppStyle.elevatedButtonStyle(context),
            child: const Text("Submit"),
          )
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
