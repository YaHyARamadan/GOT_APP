import 'package:flutter/material.dart';
import 'package:got_api_app/core/styles/my_text_style.dart';

import '../../../core/core_widgets/custom_text.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const CustomText(text: "GOT Characters", style: MyTextStyle.latoSize30WeightBold),
      ),

    );
  }
}
