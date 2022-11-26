import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:onaccess/shared/components/cards/view_local.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(SplashView());
}

class local extends StatefulWidget {
  local({Key? key}) : super(key: key);

  var locationMessage = '';
  String latitude = '';
  String longitude = '';

  Future<Position> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Serviços de localização estão desabilitados!');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Permissão rejeitada');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Localização permanentemente rejeitada');
    }

    return await Geolocator.getCurrentPosition();

    // var position = await Geolocator.getCurrentPosition(
    //     desiredAccuracy: LocationAccuracy.high);

    // var lati = position.latitude;
    // var long = position.longitude;

    // latitude = "$lati";
    // longitude = "$long";

    // setState() {
    //   locationMessage = "Latitude: $lati and Longitude: $long";
    // }
  }

  //funcao para abrir com o google maps

  void googleMap() async {
    String googleUrl =
        "https://www.google.com/maps/search/?api=16query=$latitude,$longitude";

    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else
      throw ("Couldn't open google maps");
  }

  @override
  State<local> createState() => _localState();
}

class _localState extends State<local> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


// void main() {
//   var distance = Position(
//     required double startLatitude(52.518611), 
//     required double startLongitude(13.408056),
//     required double endLatitude(51.519475),
//     required double endLongitude(7.46694444),
//   );


//   final int meter = distance(
//         LatLng(52.518611,13.408056),
//         LatLng(51.519475,7.46694444),
//         );

//   final num distanceInMeter = (6378.100 * 3.14 / 4).round();

//   final p1 = position(0.0, 0.0);
//   final p2 = distance.offset(p1, distanceInMeter, 180);

// }

