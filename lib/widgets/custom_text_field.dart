import 'package:flutter/material.dart';
import 'package:task_project/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final void Function(String)? onChanged;

  final int maxLines;
  final void Function(String?)? onSaved;
  const CustomTextField({
    super.key,
    this.maxLines = 1,
    this.onChanged,
    required this.hintText,
    this.onSaved,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.only(
        top: 8,
        left: 8,
        bottom: 8,
        right: 8,
      ),
      margin: const EdgeInsets.only(
        left: 8.0,
        right: 8,
        top: 16,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            26,
          ),
        ),
      ),
      child: TextFormField(
        //The advantage of onSave is that it called after the validation
        textAlign: TextAlign.center,
        onSaved: onSaved,
        onChanged: onChanged,
        validator: (value) {
          if (value != null && value.isNotEmpty) {
            return null;
          } else {
            return "Please fill this field";
          }
        },

        cursorColor: kPrimaryColor,
        maxLines: maxLines,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              16,
            ),
            borderSide:
                const BorderSide(color: Color(0xffB4E4FD), strokeAlign: -6),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              16,
            ),
            borderSide:
                const BorderSide(color: Color(0xffB4E4FD), strokeAlign: -6),
          ),
          hintText: hintText,
          labelStyle: const TextStyle(
            color: kPrimaryColor,
            fontSize: 20,
          ),
          hintStyle: const TextStyle(
            color: kPrimaryColor,
            fontSize: 20,
          ),
        ),
        style: const TextStyle(color: kPrimaryColor),
      ),
    );
  }
}
