import 'package:flutter/material.dart';
import 'config.dart';
import 'main.dart';

void main() {

  FlavorConfig flavorConfig = FlavorConfig(flavor: Flavor.dev, flavorValues: FlavourValues(name: "Development", color: Colors.red));
  runApp(const MyApp());
}