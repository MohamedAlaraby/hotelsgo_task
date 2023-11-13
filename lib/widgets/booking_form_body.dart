import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:task_project/constants.dart';
import 'package:task_project/widgets/row_widget.dart';
import 'package:task_project/widgets/simple_two_text_row.dart';

class BookingFormBody extends StatefulWidget {
  const BookingFormBody({super.key});

  @override
  State<BookingFormBody> createState() => _BookingFormBodyState();
}

class _BookingFormBodyState extends State<BookingFormBody> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffEBECED),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            height: 70,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Center(
                  child: Text(
                    "Rooms and Guests",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.close),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const RowWidget(
                leadingText: "Rooms",
                number: "1",
                minusColor: kSecondaryColor,
                plusColor: kPrimaryColor,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8,
                      top: 16,
                    ),
                    child: Text(
                      "Room1",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  RowWidget(
                    leadingText: "Adults",
                    number: "4",
                    minusColor: kPrimaryColor,
                    plusColor: kSecondaryColor,
                  ),
                  RowWidget(
                    leadingText: "Children",
                    number: "2",
                    minusColor: kPrimaryColor,
                    plusColor: kPrimaryColor,
                  ),
                  SimpleTwoTextRow(
                    leadingText: "Age of child 1",
                    trailingText: "14 years",
                  ),
                  SimpleTwoTextRow(
                    leadingText: "Age of child 2",
                    trailingText: "14 years",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: const Row(
                  children: [
                    Text(
                      "Pet-friendly",
                      style: TextStyle(
                        color: Color(0xff646F75),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.info_outline),
                  ],
                ),
                subtitle: const Text(
                  "Only show stays that allow pets",
                ),
                trailing: SizedBox(
                  width: 60,
                  child: FlutterSwitch(
                    width: 60.0,
                    height: 35.0,
                    valueFontSize: 12.0,
                    toggleSize: 30.0,
                    value: status,
                    borderRadius: 30.0,
                    inactiveColor: const Color(0xffE9E9EB),
                    padding: 3,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
