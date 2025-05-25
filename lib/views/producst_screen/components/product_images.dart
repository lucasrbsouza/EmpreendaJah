import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/auth_screen/widgets/text_style.dart';

Widget productImages({required label, onpress}) {
  return "$label"
      .text
      .size(10)
      .bold
      .makeCentered()
      .color(fontGrey)
      .box
      .color(lightGrey)
      .size(80, 80)
      .roundedSM
      .make();
}
