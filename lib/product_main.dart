import 'package:flutter/material.dart';
import 'package:flutter_flavor/config.dart';
import 'main.dart';

void main() {

  FlavorConfig flavorConfig = FlavorConfig(flavor: Flavor.prod, flavorValues: FlavourValues(name: "Production", color: Colors.red));
  runApp(const MyApp());
}
