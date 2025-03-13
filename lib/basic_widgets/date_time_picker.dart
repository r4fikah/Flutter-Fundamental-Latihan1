import 'dart:async';
import 'package:flutter/material.dart';

class DateTimePickerWidget extends StatefulWidget {
  const DateTimePickerWidget({Key? key}) : super(key: key);

  @override
  _DateTimePickerWidgetState createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}",
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            _selectDate(context);
          },
          child: const Text('Pilih Tanggal'),
        ),
      ],
    );
  }
}
