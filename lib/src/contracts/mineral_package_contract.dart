import 'dart:io';
import 'package:mineral_ioc/ioc.dart';

import '../../contracts.dart';

abstract class MineralPackageContract extends MineralService {
  /// Root [Directory] of your project
  final Directory root = Directory.current;

  final String _label;
  final String _description;

  MineralPackageContract(this._label, this._description);

  /// Package name
  String get label => _label;

  /// Package description
  String get description => _description;

  EventServiceContract get events => ioc.services.entries
    .firstWhere((service) => service.key.toString() == 'EventService')
    .value as EventServiceContract;

  CommandServiceContract get commands => ioc.services.entries
    .firstWhere((service) => service.key.toString() == 'CommandService')
    .value as CommandServiceContract;

  SharedStateServiceContract get states => ioc.services.entries
    .firstWhere((service) => service.key.toString() == 'SharedStateService')
    .value as SharedStateServiceContract;

  ContextMenuServiceContract get contextMenus => ioc.services.entries
    .firstWhere((service) => service.key.toString() == 'ContextMenuService')
    .value as ContextMenuServiceContract;

  Future<void> init ();
}