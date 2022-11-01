import 'package:mineral_package/mineral_package.dart';
import 'package:test/test.dart';

class FooPackage extends MineralPackage {
  @override
  String label = 'Foo service';

  @override
  String description = 'Foo service description';

  @override
  String namespace = 'Mineral/Plugins/FooService';

  @override
  Future<void> init () async {
  }
}

void main() {
}
