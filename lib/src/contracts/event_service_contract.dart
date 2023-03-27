abstract class MineralEventContract {}

abstract class EventServiceContract extends MineralEventContract {
  void register (List<MineralEventContract> events);
}