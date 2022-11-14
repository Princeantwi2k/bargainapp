import 'package:flutter/material.dart';

class VisitDashboad extends StatefulWidget {
  const VisitDashboad({super.key});

  @override
  State<VisitDashboad> createState() => _VisitDashboadState();
}

class _VisitDashboadState extends State<VisitDashboad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("it has happend"),
      ),
    );
  }
}
