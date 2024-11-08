import 'package:flutter/material.dart';
import '../widgets/trip_type_selector.dart';
import '../widgets/location_input.dart';
import '../widgets/date_input.dart';
import '../widgets/traveler_input.dart';

class FlightSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Bagian Header dengan Background, Logo, dan Foto Profil
            Stack(
              children: [
                // Background Image
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/background_header.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Logo yang diperbesar
                Positioned(
                  top: 16,
                  left: 16,
                  child: Image.asset(
                    'assets/logo.png',
                    height:
                        80, // Perbesar ukuran logo (misalnya, dari 40 ke 80)
                  ),
                ),
                // Foto Profil
                Positioned(
                  top: 16,
                  right: 16,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile_icon.png'),
                    radius: 20,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 10),
                        TripTypeSelector(),
                        const SizedBox(height: 20),
                        LocationInput(
                            label: 'From', placeholder: 'Los Angeles (LAX)'),
                        const SizedBox(height: 10),
                        LocationInput(
                            label: 'To', placeholder: 'Toronto Island (YTZ)'),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: DateInput(
                                  label: 'Departure',
                                  placeholder: 'Wed, 21 Aug'),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: DateInput(
                                  label: 'Return', placeholder: 'Fri, 30 Aug'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        TravelerInput(),
                        const SizedBox(height: 30),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFF6200EA), Color(0xFF03DAC5)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // Aksi pencarian penerbangan
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              'Search Flights',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF6200EA),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt), label: 'Transaction'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
