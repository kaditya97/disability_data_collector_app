import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class Mymap extends StatefulWidget {
  @override
  _MymapState createState() => _MymapState();
}

class _MymapState extends State<Mymap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new FlutterMap(
        options: new MapOptions(
          center: new LatLng(28.2096, 83.9856),
          zoom: 14.0,
        ),
        layers: [
          new TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c']),
          new MarkerLayerOptions(
            markers: [
              new Marker(
                width: 60.0,
                height: 60.0,
                point: new LatLng(28.2096, 83.9856),
                builder: (ctx) => new Container(
                  child: new IconButton(
                    icon: Icon(Icons.person_pin_circle),
                    color: Colors.blue,
                    iconSize: 60.0,
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Data',
        child: Icon(Icons.center_focus_strong),
      ),
    );
  }
}
