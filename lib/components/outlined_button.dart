import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key? key,
    required this.imageSrc,
    required this.text,
  }) : super(key: key);
  final String imageSrc, text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  imageSrc,
                  height: 60,
                ),
                Text(
                  text,
                  style: const TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
          const SizedBox(
            width: kDefaultPadding,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xE2E2EACE),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  'images/download.png',
                  height: 60,
                ),
                const Text(
                  'Download CV',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
