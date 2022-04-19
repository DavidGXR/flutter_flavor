import 'package:flutter/material.dart';
import 'config.dart';
import 'main.dart';

void main() {

  FlavorConfig flavorConfig = FlavorConfig(flavor: Flavor.dev, flavourValues: FlavourValues(name: "Development", color: Colors.red));
  runApp(MyApp(flavorConfig: flavorConfig));
}