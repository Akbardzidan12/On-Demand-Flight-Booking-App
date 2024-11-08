import 'package:flutter/material.dart';

class DateInput extends StatefulWidget {
  final String label;
  final String placeholder;

  DateInput({required this.label, required this.placeholder});

  @override
  _DateInputState createState() => _DateInputState();
}

class _DateInputState extends State<DateInput> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: selectedDate != null
            ? "${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}"
            : widget.placeholder,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: Icon(Icons.calendar_today),
      ),
      onTap: () async {
        DateTime? date = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(Duration(days: 365)),
        );
        if (date != null) {
          setState(() {
            selectedDate = date;
          });
        }
      },
    );
  }
}
