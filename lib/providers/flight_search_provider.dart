import 'package:flutter/material.dart';

class FlightSearchProvider with ChangeNotifier {
  String _tripType = 'Round Trip'; // Default value
  String _fromLocation = '';
  String _toLocation = '';
  DateTime? _departureDate;
  DateTime? _returnDate;
  int _travelerCount = 1;
  String _travelClass = 'Economy';

  // Getters
  String get tripType => _tripType;
  String get fromLocation => _fromLocation;
  String get toLocation => _toLocation;
  DateTime? get departureDate => _departureDate;
  DateTime? get returnDate => _returnDate;
  int get travelerCount => _travelerCount;
  String get travelClass => _travelClass;

  // Setters and notifiers
  void setTripType(String tripType) {
    _tripType = tripType;
    notifyListeners();
  }

  void setFromLocation(String location) {
    _fromLocation = location;
    notifyListeners();
  }

  void setToLocation(String location) {
    _toLocation = location;
    notifyListeners();
  }

  void setDepartureDate(DateTime date) {
    _departureDate = date;
    notifyListeners();
  }

  void setReturnDate(DateTime date) {
    _returnDate = date;
    notifyListeners();
  }

  void setTravelerCount(int count) {
    _travelerCount = count;
    notifyListeners();
  }

  void setTravelClass(String travelClass) {
    _travelClass = travelClass;
    notifyListeners();
  }
}
