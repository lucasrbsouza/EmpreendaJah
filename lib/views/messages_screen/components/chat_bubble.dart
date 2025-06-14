import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/auth_screen/widgets/text_style.dart';

Widget chatBubble() {
  return Directionality(
      //textDirection: data['uid'], child: child)
      textDirection: TextDirection.ltr,
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: const BoxDecoration(
            color: purpleColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            normalText(text: "your message here..."),
            10.heightBox,
            normalText(text: "10:45pm")
          ],
        ),
      ));
}
