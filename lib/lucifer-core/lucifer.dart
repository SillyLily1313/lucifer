import 'dart:isolate';

abstract class HexagonalArchitectureInterface {
  void create();
  void read();
  void update();
  void delete();
}

class LuciferCore extends HexagonalArchitectureInterface {
  @override
  void create() {
    print("Creating");
  }

  @override
  void read() {
    print("Reading");
  }

  @override
  void update() {
    print("Updating");
  }

  @override
  void delete() {
    print("Deleting");
  }
}

Future luciferEngine() async {
  await Isolate.run(() {
    LuciferCore().create();
    LuciferCore().read();
    LuciferCore().update();
    LuciferCore().delete();
  });
}
