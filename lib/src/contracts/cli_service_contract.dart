import './console_service_contract.dart';

abstract class CliCommandContract {
  final ConsoleServiceContract _console;
  final String _name;
  final String _description;
  final List<String> _args;

  CliCommandContract(this._console, this._name, this._description, this._args);

  ConsoleServiceContract get console => _console;
  String get name => _name;
  String get description => _description;
  List<String> get arguments => _args;

  Future<void> handle (Map args);
}

abstract class CliServiceContract {
  ConsoleServiceContract get console;

  Future<void> handle (List<String> arguments);
  void register (List<CliCommandContract> commands);
}