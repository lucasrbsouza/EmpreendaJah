import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/const/strings.dart';
import 'package:emart_seller/views/auth_screen/widgets/text_style.dart';
import 'package:emart_seller/views/profile_screen/edit_profile_screen.dart';
import 'package:emart_seller/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

class ShopSetting extends StatelessWidget {
  const ShopSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(text: shopSettings, size: 16.0),
        actions: [
          TextButton(onPressed: () {}, child: normalText(text: save)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            customTextField(label: shopName, hint: nameHint),
            10.heightBox,
            customTextField(label: addres, hint: shopAddresHint),
            10.heightBox,
            customTextField(label: mobile, hint: shopMobileHint),
            10.heightBox,
            customTextField(label: webSite, hint: shopWebSitHint),
            10.heightBox,
            customTextField(
                isDesc: true, label: description, hint: shopDescHint)
          ],
        ),
      ),
    );
  }
}
