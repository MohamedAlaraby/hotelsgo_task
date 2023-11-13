import 'package:flutter/material.dart';
import 'package:task_project/constants.dart';
import 'package:task_project/widgets/booking_form_body.dart';
import 'package:task_project/widgets/custom_button.dart';
import 'package:task_project/widgets/custom_drop_down_text_field.dart';
import 'package:task_project/widgets/custom_text_field.dart';
import 'package:task_project/widgets/date_range_widget.dart';

class BodyOfFistScreen extends StatelessWidget {
  const BodyOfFistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Container(
          height: height * 0.63,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 4),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            color: Color(
              0xffEC8B24,
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Find hotels",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.search,
                color: Colors.white,
                size: 40,
              ),
            ],
          ),
        ),
        Container(
          height: height * 0.55,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                16,
              ),
            ),
            gradient: LinearGradient(
              colors: [
                kPrimaryColor,
                Color(0xff4FB6FC),
              ],
            ),
          ),
          child: Column(
            children: [
              const CustomTextField(hintText: "Select city"),
              const DateRangePicker(),
              const CustomDropDownFormField(),
              CustomButton(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return const BookingFormBody();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
