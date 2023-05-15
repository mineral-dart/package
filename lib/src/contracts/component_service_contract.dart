import 'package:mineral_ioc/ioc.dart';

abstract class InteractiveComponentContract<T, I> {
  abstract String customId;
  Future<void> handle (I interaction);
  T build ();
}

abstract class ComponentServiceContract extends MineralService {
  T get<T extends InteractiveComponentContract>();
  void register (List<InteractiveComponentContract> components);
}