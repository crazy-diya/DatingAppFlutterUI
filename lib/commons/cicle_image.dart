import 'package:flutter/material.dart';

class CicleImage extends StatelessWidget {
  final String imgUrl;

  const CicleImage({Key key, this.imgUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return CircleAvatar(
    //   backgroundImage: AssetImage(imgUrl),
    //   radius: 50.0,
    //
    // );

    // return Material(
    //   borderRadius: BorderRadius.circular(100),
    //   elevation: 10,
    //   child: Container(
    //     width: 100.0,
    //     height: 100.0,
    //     decoration: BoxDecoration(
    //       image: DecorationImage(
    //         fit: BoxFit.fitWidth,
    //         image: AssetImage(imgUrl),
    //       ),
    //       shape: BoxShape.circle
    //     )
    //   ),
    // );

    // return ClipRRect(
    //   child: Image.asset(
    //     imgUrl,
    //     height: 100,
    //     width: 100,
    //     fit: BoxFit.fitWidth,
    //   ),
    //   borderRadius: BorderRadius.circular(100),
    // );

    return ClipOval(
      child: Image.asset(
        imgUrl,
        fit: BoxFit.fitWidth,
        width: 100.0,
        height: 100.0,
      ),
    );
  }
}
