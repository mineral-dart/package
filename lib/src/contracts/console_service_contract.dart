import 'package:mineral_ioc/ioc.dart';

abstract class ConsoleServiceContract extends MineralService {
  void info (String message);
  void success (String message);
  void warn (String message);
  void error (String message);
}