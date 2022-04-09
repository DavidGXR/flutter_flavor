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
  Flavor flavor;
  FlavourValues flavourValues;

  FlavorConfig({required this.flavor, required this.flavourValues});

}
