import 'dart:io';
import 'package:mineral_contract/src/exceptions/unknown_service_exception.dart';
import 'package:mineral_ioc/ioc.dart';
import 'package:collection/collection.dart';

import '../../mineral_contract.dart';

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

  EventServiceContract get events => _findService<EventServiceContract>('EventService');

  CommandServiceContract get commands => _findService<CommandServiceContract>('CommandService');

  SharedStateServiceContract get states => _findService<SharedStateServiceContract>('SharedStateService');

  ContextMenuServiceContract get contextMenus => _findService<ContextMenuServiceContract>('ContextMenuService');

  EnvironmentServiceContract get environment => _findService<EnvironmentServiceContract>('EnvironmentService');

  ConsoleServiceContract get console => _findService<ConsoleServiceContract>('ConsoleService');

  T _findService<T> (String service) {
    final targetService = ioc.services.entries
      .firstWhereOrNull((element) => element.key.toString() == service);

    if (targetService == null) {
      throw UnknownServiceException(service);
    }

    return targetService.value as T;
  }

  List<CliCommandContract> injectCommands () => [];

  Future<void> init ();
}