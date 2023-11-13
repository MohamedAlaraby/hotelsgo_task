import 'package:flutter/material.dart';
import 'package:task_project/constants.dart';

class CustomDropDownFormField extends StatefulWidget {
  const CustomDropDownFormField({super.key});

  @override
  CustomDropDownFormFieldState createState() => CustomDropDownFormFieldState();
}

class CustomDropDownFormFieldState extends State<CustomDropDownFormField> {
  String selectedNationality = 'USA';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: DropdownButtonFormField(
        padding: EdgeInsets.zero,
        decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
        ),
        hint: const Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            "Select Nationality",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 18,
            ),
          ),
        ),
        items: nationalities.map((String nationality) {
          return DropdownMenuItem(
            
            value: nationality,
            child: Text(nationality),
          );
        }).toList(),
        onChanged: (String? text) {
          setState(() {
            selectedNationality = text ?? "";
          });
        },
        icon: const Icon(Icons.arrow_drop_down),
      ),
    );
  }
}
