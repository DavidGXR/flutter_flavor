import 'package:flutter/material.dart';

enum Flavor {
  dev,
  prod
}

class FlavourValues {

  final String name;
  final Color color;

  FlavourValues({required this.name, required this.color});
}

class FlavorConfig {
  late Flavor flavor;
  late FlavourValues flavourValues;

  static FlavorConfig? _instance;

  factory FlavorConfig({
    required flavor,
    required flavorValues}) =>
    _instance ??= FlavorConfig(flavor: flavor, flavorValues: flavorValues);

  static FlavorConfig? get instance => _instance;
  //FlavorConfig({required this.flavor, required this.flavourValues});

}
