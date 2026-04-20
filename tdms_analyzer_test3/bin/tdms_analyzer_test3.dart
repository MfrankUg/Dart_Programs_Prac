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

  void updateTemperature(double newTemp) {
    temperature = newTemp;
    print("this is the new temperature of $newTemp");
  }
}


void main(List<String> arguments) {
  WarehouseSensor northSensor = WarehouseSensor("North Wing", 26.5, 450);
  
  // 1. Initial check (Should be Normal)
  northSensor.diagnose(); 

  // 2. The Heat Spike!
  northSensor.updateTemperature(45.0); 

  // 3. The Follow-up check (Should trigger the CODE RED)
  northSensor.diagnose(); 
}
