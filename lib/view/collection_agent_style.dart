import 'package:flutter/material.dart';

// Text Styles
const customTextStyle = TextStyle(color: Colors.black,fontWeight: FontWeight.bold);

// Edge Insets
const marginInsets = EdgeInsets.symmetric(vertical: 10.0);
const paddingInsets =  EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0);

// Decorations
var buttonDecoration = BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(10.0)
);

// Custom Text Widget
class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.tag,required this.label}) : super(key: key);
  final String tag;
  final String label;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          text: "$tag: ",
          style: customTextStyle,
          children: <TextSpan>[
            TextSpan(
                text: label,
                style: customTextStyle
            )]));}}