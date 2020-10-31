import 'package:geolocator/geolocator.dart';

Future<List<double>> getLocation() async {
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  print("Lat ${position.latitude}");
  print("Lng ${position.longitude}");
  return [position.longitude, position.latitude];
}
