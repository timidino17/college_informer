// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class Map extends StatefulWidget {
//   const Map({Key? key}) : super(key: key);
//
//   @override
//   _MapState createState() => _MapState();
// }
//
// class _MapState extends State<Map> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: LatLng(21.2514, 81.6296),
//           zoom: 15,
//         ),
//         markers: {
//           Marker(markerId: MarkerId('nitrr'),
//               position: LatLng(21.2514, 81.6296),
//               infoWindow: InfoWindow(title: 'National Institute of Technology', snippet: 'Raipur'))
//         },
//         // Marker(markerId: MarkerId('nitrr'), position: LatLng(), infoWindow: InfoWindow(title: 'National Institute Of Technology Raipur')),
//       ),
//     );
//   }
// }
