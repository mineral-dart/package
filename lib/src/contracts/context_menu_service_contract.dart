abstract class ContextMenuServiceContract<T> {
  Future<void> handle (T event);
}