import 'package:flutter/material.dart';

// Text Styles

const label = TextStyle(fontWeight: FontWeight.w600);
const hintTextStyle = TextStyle(color: Colors.grey);


// Decorations

var textBox = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        width: 0,
        style: BorderStyle.none,),),
    filled: true,
    hintStyle: hintTextStyle,
    hintText: "Swiggy",
    fillColor: Color(0xFFEEEEEE));

var textbox1 = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        width: 0,
        style: BorderStyle.none,
      ),
    ),
    filled: true,
    hintStyle: TextStyle(color: Colors.grey[800]),
    hintText: "5",
    fillColor: Color(0xFFEEEEEE));

var btnStyle = BoxDecoration(
  color: Colors.black,
  borderRadius: BorderRadius.circular(10.0),
);

var containersStyle = BoxDecoration(
        color: Color(0xCCCCCCBA),
        borderRadius: BorderRadius.circular(10.0)
      );


//////////////////////////////////////////////////////////////////////////////////////////////
//...WIDGETS//

class Button extends StatelessWidget {
  final String label;
  final void Function()? onPress;
  Button({Key? key, required this.label, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: btnStyle,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(fontSize: 15.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class Containers extends StatelessWidget {
  Containers({Key? key, required this.index}) : super(key: key);
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: containersStyle,
      child: Center(child: Text("SCT10$index")),
    );
  }
}
