import 'package:flutter/cupertino.dart';

import '../constants.dart';
import 'glass_content.dart';

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Image.asset("images/Logo.png"),
        ),
        GlassContent(size: size),
        const Spacer(
          flex: 3,
        )
      ],
    );
  }
}