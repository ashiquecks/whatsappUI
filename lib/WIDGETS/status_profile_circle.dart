import 'package:flutter/material.dart';
import 'package:whatsapp/const.dart';

Widget statusProfileCircle() {
  return Stack(
    children: [
      Container(
        width: 65,
        height: 65,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
      ),
      Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(myPic), fit: BoxFit.cover),
        ),
      ),
      Positioned(
        bottom: 0,
        right: 10,
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: colorPrimary,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 15,
            ),
          ),
        ),
      )
    ],
  );
}
