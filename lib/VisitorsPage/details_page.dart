import 'package:flutter/material.dart';

import 'Product.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required Product product});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
