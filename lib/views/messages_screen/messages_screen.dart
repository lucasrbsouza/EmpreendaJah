import 'package:emart_seller/const/colors.dart';
import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/const/strings.dart';
import 'package:emart_seller/views/auth_screen/widgets/text_style.dart';
import 'package:emart_seller/views/messages_screen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: boldText(text: messages, size: 16.0, color: fontGrey),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
              20,
              (index) => ListTile(
                onTap: () {
                  Get.to(() => const ChatScreen());
                },
                leading: const CircleAvatar(
                  backgroundColor: purpleColor,
                  child: Icon(
                    Icons.person,
                    color: white,
                  ),
                ),
                title: boldText(text: "Username", color: fontGrey),
                subtitle: normalText(text: "last message...", color: darkGrey),
                trailing: normalText(text: "10:45pm", color: darkGrey),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
