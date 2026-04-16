import 'package:tdms_analyzer_test2/tdms_analyzer_test2.dart'
    as tdms_analyzer_test2;

class WarehouseSensor {
  String zoneName;
  double temperature;
  int dustLevel;
  WarehouseSensor(this.zoneName, this.temperature, this.dustLevel);

  void diagnose() {
    print("Running diagnostics for $zoneName...");
    if (temperature > 30 || dustLevel > 500) {
      print(" WARNING: Conditions are critical!");
    } else {
      print(" Status Normal.");
    }
  }
}

void main(List<String> arguments) {
  WarehouseSensor northSensor = WarehouseSensor("North Wing", 26.5, 450);
  WarehouseSensor dockSensor = WarehouseSensor("Loading Dock", 31.0, 600);
  print('Hello world: ${tdms_analyzer_test2.calculate()}!');

  
}
