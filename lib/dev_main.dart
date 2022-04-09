import 'package:flutter/material.dart';
import 'config.dart';
import 'main.dart';

void main() {
  FlavorConfig(flavor: Flavor.prod, flavourValues: FlavourValues(name: "Production", color: Colors.blue));
  runApp(const MyApp());
}