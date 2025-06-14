import 'package:emart_seller/const/colors.dart';
import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/const/strings.dart';
import 'package:emart_seller/views/auth_screen/widgets/text_style.dart';
import 'package:emart_seller/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(text: editProfile, size: 16.0),
        actions: [
          TextButton(onPressed: () {}, child: normalText(text: save)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              imgProduct,
              width: 150,
            ).box.roundedFull.clip(Clip.antiAlias).make(),
            10.heightBox,
            ElevatedButton(
                onPressed: () {},
                child: normalText(text: changeImage, color: fontGrey)),
            10.heightBox,
            const Divider(
              color: white,
            ),
            customTextField(label: name, hint: "eg. Lucass Dev"),
            10.heightBox,
            customTextField(label: password, hint: passowordHint),
            10.heightBox,
            customTextField(label: confirmPassword, hint: passowordHint),
          ],
        ),
      ),
    );
  }
}
