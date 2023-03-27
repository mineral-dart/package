import 'package:mineral_ioc/ioc.dart';

abstract class MineralCommandContract {}

abstract class CommandServiceContract extends MineralService {
  void register (List<MineralCommandContract> commands);
}