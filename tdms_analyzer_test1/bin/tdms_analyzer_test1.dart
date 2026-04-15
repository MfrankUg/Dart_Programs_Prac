import 'package:tdms_analyzer_test1/tdms_analyzer_test1.dart'
    as tdms_analyzer_test1;

class WarehouseSensor {
  String zoneName;
  double temperature;
  int dustLevel;

  // constructor
  WarehouseSensor(this.zoneName, this.temperature, this.dustLevel);
}

void main(List<String> arguments) {
  List<WarehouseSensor> mySensor = [
    WarehouseSensor("North Wing", 26.5, 450),
    WarehouseSensor("South Wing", 29.1, 800),
    WarehouseSensor('Loading Dock', 30.2, 550),
    WarehouseSensor('Storage A', 27.8, 300),
  ];

  int maxDust = 0;
  String dustiestZone = '';

  for (WarehouseSensor currentDust in mySensor) {
    if (currentDust.dustLevel > maxDust) {
      maxDust = currentDust.dustLevel;
      dustiestZone = currentDust.zoneName;
    }
  }

  print("ALERT: maximum zone is $dustiestZone at $maxDust");
}
