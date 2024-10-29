import 'package:flutter/material.dart';
import 'package:got_api_app/core/styles/my_text_style.dart';
import '../../../../../../../core/core_widgets/custom_text.dart';




class CharactersContainer extends StatelessWidget {
  const CharactersContainer({
    super.key, required this.imgPath, required this.characterName, required this.characterDescription,

  });

  final String imgPath;
  final String characterName;
  final String characterDescription;

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Container(
      width: mediaQueryWidth * 0.2,
      height: mediaQueryHeight * 0.5,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            width: mediaQueryWidth * 0.2,
            height: mediaQueryHeight * 0.25,
            child: Image.asset(
              imgPath,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: mediaQueryHeight * 0.01),
          ListTile(
            title: CustomText(
                text: characterName, style: MyTextStyle.latoSize18WeightBoldGrey),
            subtitle: CustomText(
                text:
                characterDescription,
                style: MyTextStyle.latoSize18WeightBoldGrey.copyWith(fontSize: 12)),
          ),
          SizedBox(height: mediaQueryHeight * 0.01),
          OutlinedButton.icon(
            onPressed: () {},
            label: CustomText(
                text: "Learn More",
                style: MyTextStyle.latoSize18WeightBoldGrey
                    .copyWith(fontSize: 12, color: const Color(0xffFFB400))),
            icon: const Icon(
              Icons.arrow_forward_rounded,
              color: Color(0xffFFB400),
            ),
          )
        ],
      ),
    );
  }
}
