// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import '../../models/category_model.dart';
import 'components/app_bar.dart';
import 'components/body.dart';
import '../../utils/constants.dart';

class DetailScreen extends StatelessWidget {
  Category model;
  bool isComeFromMoreSection;
  DetailScreen({required this.model, required this.isComeFromMoreSection});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: AppConstantsColor.backgroundColor,
          appBar: customAppBarDe(
            context,
          ),
          body: DetailsBody(
            model: model,
            isComeFromMoreSection: isComeFromMoreSection,
          )),
    );
  }
}
