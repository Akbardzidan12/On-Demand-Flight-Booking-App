import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/flight_search_screen.dart';
import 'providers/flight_search_provider.dart';

void main() {
  runApp(GlidelineApp());
}

class GlidelineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FlightSearchProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Glideline Airways',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/flight_search': (context) => FlightSearchScreen(),
        },
      ),
    );
  }
}
