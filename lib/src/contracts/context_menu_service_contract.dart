abstract class MineralContextMenuContract<T> {}

abstract class ContextMenuServiceContract<T> {
  void register (List<MineralContextMenuContract<T>> contextMenus);
}