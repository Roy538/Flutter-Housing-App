import 'package:flutter/material.dart';
import 'package:trustify/src/constants/sizes.dart';
import 'package:trustify/src/features/authentication/models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  Color _parseColor(String colorString) {
    if (colorString.startsWith("Color(") && colorString.endsWith(")")) {
      colorString = colorString.substring(6, colorString.length - 1);
    }
    String formattedColor = colorString.replaceAll("#", "");
    int parsedColor = int.tryParse(formattedColor, radix: 16) ?? 0xFFFFFFFF;
    return Color(parsedColor);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: _parseColor(model.bgColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.45,
          ),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(
            model.counterText,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 80.0,
          )
        ],
      ),
    );
  }
}
