// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;

// ignore: non_constant_identifier_names
Widget GoogleMapWidget() {
  String htmlId = "7";

  // ignore: undefined_prefixed_name
  ui.platformViewRegistry.registerViewFactory(
    htmlId,
    (int viewId) {
      final myLatlng = LatLng(-25.060960948705734, -50.16517559809995);

      final mapOptions = MapOptions()
        ..zoom = 17
        ..center = LatLng(-25.060960948705734, -50.16517559809995);

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      final map = GMap(elem, mapOptions);

      Marker(MarkerOptions()
        ..position = myLatlng
        ..map = map
        ..title = 'Follador Advocacia, Francisco Ferreira, 106');

      return elem;
    },
  );

  return HtmlElementView(viewType: htmlId);
}
