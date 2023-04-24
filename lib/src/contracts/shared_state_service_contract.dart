abstract class MineralStateContract<T> {}

abstract class SharedStateServiceContract {
  T use<T> ();

  void register (List<MineralStateContract> mineralStates);
}