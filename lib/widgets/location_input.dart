import 'package:flutter/material.dart';

class LocationInput extends StatelessWidget {
  final String label;
  final String placeholder;

  LocationInput({required this.label, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: placeholder,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), // Membuat kelengkungan
        ),
        suffixIcon: Icon(Icons.location_on),
      ),
    );
  }
}
