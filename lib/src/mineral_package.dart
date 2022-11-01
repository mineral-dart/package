import 'dart:io';

abstract class MineralPackage {
  abstract String namespace;
  abstract String label;
  abstract String description;

  final Directory root = Directory.current;

  Future<void> init ();
}