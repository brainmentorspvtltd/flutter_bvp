import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';

Future<String> getLocation() async {
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  print("Lat ${position.latitude}");
  print("Lng ${position.longitude}");
  Coordinates cord = Coordinates(position.latitude, position.longitude);

  List<Address> list = await Geocoder.local.findAddressesFromCoordinates(cord);
  Address address = list.first;
  String fullAddress = "${address.countryName} ${address.locality}";
  print("Address is $fullAddress");
  return fullAddress;
  //return [position.longitude, position.latitude];
}
