import 'package:flutter/material.dart';

// Text Styles
const labelStyle = TextStyle(fontWeight: FontWeight.w600);

// Edge Insets
const EdgeInsets textBoxPadding =  EdgeInsets.symmetric(horizontal: 30.0);

// Decorations
var customerDecoration = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        width: 0,
        style: BorderStyle.none,
      ),
    ),
    filled: true,
    hintStyle: TextStyle(color: Colors.grey[800]),
    hintText: "Infynity Box",
    fillColor: const Color(0xFFEEEEEE));

var phoneDecoration = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        width: 0,
        style: BorderStyle.none,
      ),
    ),
    filled: true,
    hintStyle: TextStyle(color: Colors.grey[800]),
    hintText: "865485225",
    fillColor: const Color(0xFFEEEEEE));


// Button class widget
class Btn extends StatelessWidget {
  final String label;
  const Btn({Key? key, required this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: (){
        },
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10.0),
          ),
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

// Containers Widget
class Containers extends StatelessWidget {
  const Containers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xCCCCCCBA),
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: const Center(child: Text("SCT101")),
    );
  }
}