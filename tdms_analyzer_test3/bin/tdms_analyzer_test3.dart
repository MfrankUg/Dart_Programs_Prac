class WarehouseSensor {
  String zoneName;
  double temperature;
  int dustLevel;

  WarehouseSensor(this.zoneName, this.temperature, this.dustLevel);

  void diagnose() {
    print("Running diagnostics for $zoneName...");
    if (temperature > 30 || dustLevel > 500) {
      print(" ->  WARNING: Conditions are critical!");
    } else {
      print(" ->  Status Normal.");
    }
    print("-------------------------");
  }

  void updateTemperature(double newTemp) {
    temperature = newTemp;
    print("Update: The new temperature is $newTemp°C");
  }
}

// Step 1: Add 'async' to the main function signature
void main() async {
  // Step 2: The Initial Ping
  print("Connecting to ESP32 North Wing...");

  // Step 3 & 4: The Pause Button and the Timer
  await Future.delayed(Duration(seconds: 3));

  // Step 5: The Execution
  print("Connection established! Downloading data...\n");

  // Bonus Challenge: Using 'final' to lock the variable
  final northSensor = WarehouseSensor("North Wing", 26.5, 450);
  
  northSensor.diagnose();
  northSensor.updateTemperature(45.0);
  northSensor.diagnose();
}