import 'package:flutter/material.dart';
import 'package:task_project/constants.dart';

class DateRangePicker extends StatefulWidget {
  const DateRangePicker({super.key});
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<DateRangePicker> {
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(const Duration(days: 7));

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _selectDateRange(context);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: kPrimaryColor,
            width: 1,
            strokeAlign: -16,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              22,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              formatDate(startDate),
              style: const TextStyle(
                fontSize: 16,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' ==> ${formatDate(endDate)}',
              style: const TextStyle(
                  fontSize: 16,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const Icon(
              Icons.close,
              color: Colors.grey,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDateRange(BuildContext context) async {
    final picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime.now().subtract(const Duration(days: 365)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      initialDateRange: DateTimeRange(
        start: startDate,
        end: endDate,
      ),
    );

    if (picked != null &&
        picked != DateTimeRange(start: startDate, end: endDate)) {
      setState(() {
        startDate = picked.start;
        endDate = picked.end;
      });
    }
  }
}
