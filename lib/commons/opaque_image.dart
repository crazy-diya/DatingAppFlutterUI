import 'package:dating_app/styleguide/colors.dart';
import 'package:flutter/material.dart';

class OpequeImage extends StatelessWidget {

  final imageUrl;

  const OpequeImage({Key key, @required this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imageUrl,
          width: double.infinity,
          height: double.maxFinite,
          fit: BoxFit.fitWidth,
        ),
        Container(
          color: primaryColorOpacity.withOpacity(.85),
        ),
      ],
    );
  }
}
