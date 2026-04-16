// Teaching the Sensor to Speak
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
  northSensor.diagnose();
  dockSensor.diagnose();
}
