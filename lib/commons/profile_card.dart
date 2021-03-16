import 'dart:ffi';

import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class ProfileInfoCard extends StatelessWidget {
  final String firstText, secondText;
  final Widget icon;
  final bool hasImage;

  const ProfileInfoCard(
      {Key key,
      this.hasImage = false,
      this.firstText,
      this.secondText,
      this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 100,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: hasImage
            ? icon
            : Column(
                children: [
                  Text(
                    firstText,
                    style: titleStyle,
                  ),
                  Text(
                    secondText,
                    style: subTitleStyle,
                  ),
                ],
              ),
      ),
    );
  }
}
