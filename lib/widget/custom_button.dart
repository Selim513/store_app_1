import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.name,this.onPressed
  });
final  void Function()? onPressed;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              foregroundColor: Colors.white,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          onPressed: onPressed,
          child:  Text(
           name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
    );
  }
}
