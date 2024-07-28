// lib/screens/farm_location_screen.dart
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FarmLocationScreen extends StatefulWidget {
  @override
  _FarmLocationScreenState createState() => _FarmLocationScreenState();
}

class _FarmLocationScreenState extends State<FarmLocationScreen> {
  List<LatLng> _selectedLocations = [];
  Set<Polygon> _polygons = {};

  void _addPolygon() {
    if (_selectedLocations.length > 2) {
      final String polygonIdVal = 'polygon_${_polygons.length}';
      _polygons.add(Polygon(
        polygonId: PolygonId(polygonIdVal),
        points: _selectedLocations,
        strokeWidth: 2,
        strokeColor: Colors.blue,
        fillColor: Colors.blue.withOpacity(0.15),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Farm Location')),
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              mapType: MapType.satellite,
              initialCameraPosition: CameraPosition(
                target: LatLng(20.5937, 78.9629), // Default to center of India
                zoom: 5,
              ),
              onTap: (LatLng location) {
                setState(() {
                  _selectedLocations.add(location);
                });
              },
              markers: _selectedLocations
                  .map((location) => Marker(
                markerId: MarkerId(location.toString()),
                position: location,
              ))
                  .toSet(),
              polygons: _polygons,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: _selectedLocations.length > 0
                  ? () {
                _addPolygon();
                // Navigate to the next screen with selected locations
                Navigator.pushNamed(context, '/farm_details', arguments: _selectedLocations);
              }
                  : null,
              child: Text('Next'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedLocations.clear();
                  _polygons.clear();
                });
              },
              child: Text('Clear Selection'),
            ),
          ),
        ],
      ),
    );
  }
}
