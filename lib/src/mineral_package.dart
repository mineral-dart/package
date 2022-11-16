import 'dart:io';

import 'package:mineral_ioc/ioc.dart';

abstract class MineralPackage {
  abstract String namespace;
  abstract String label;
  abstract String description;

  final Directory root = Directory.current;
  final Ioc container = ioc;

  Future<void> init ();
}