import 'package:flutter/material.dart';

class TripTypeSelector extends StatefulWidget {
  @override
  _TripTypeSelectorState createState() => _TripTypeSelectorState();
}

class _TripTypeSelectorState extends State<TripTypeSelector> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildChoiceChip('One Way', 0),
        _buildChoiceChip('Round Trip', 1),
        _buildChoiceChip('Multi City', 2),
      ],
    );
  }

  Widget _buildChoiceChip(String label, int index) {
    return ChoiceChip(
      label: Text(label),
      selected: selectedIndex == index,
      onSelected: (selected) {
        setState(() {
          selectedIndex = index;
        });
      },
      selectedColor: Colors.blue,
      backgroundColor: Colors.grey[200],
      labelStyle: TextStyle(
        color: selectedIndex == index ? Colors.white : Colors.black,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Membuat kelengkungan
      ),
    );
  }
}
