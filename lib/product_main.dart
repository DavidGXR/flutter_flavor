import 'package:flutter/material.dart';
import 'package:flutter_flavor/config.dart';
import 'main.dart';

void main() {

  FlavorConfig config = FlavorConfig(flavor: Flavor.prod, flavourValues: FlavourValues(name: "Production", color: Colors.red));
  runApp(const MyApp(flavorConfig: config));
}