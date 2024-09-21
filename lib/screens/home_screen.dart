import 'package:flutter/material.dart';
import 'package:parvati_path/widgets/custom_scaffold.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return customscaffold(
        child: SingleChildScrollView(
            child: Padding(
      padding: EdgeInsets.fromLTRB(
          20, MediaQuery.of(context).size.height * 0.2, 20, 0),
    )));
  }
}
