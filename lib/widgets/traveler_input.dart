import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/flight_search_provider.dart';

class TravelerInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final flightSearchProvider = Provider.of<FlightSearchProvider>(context);

    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        labelText: 'Traveler & Class',
        hintText:
            '${flightSearchProvider.travelerCount}, ${flightSearchProvider.travelClass}',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: Icon(Icons.person),
      ),
      onTap: () {
        // Implementasi untuk memilih jumlah penumpang dan kelas
        // Update `flightSearchProvider` jika ada perubahan
      },
    );
  }
}
