import 'package:tdms_analyzer/tdms_analyzer.dart' as tdms_analyzer;

// finding the maximum values using for loops
void main(List<String> arguments) {
  List<double> temperatures = [26.5, 29.1, 27.8, 30.2, 28.5];
  List<double> humidityLevels = [-1, -2, -4, -0.5];
  double maxTemp = 0.0;
  for (double currentTemp in temperatures) {
    if (currentTemp > maxTemp) {
      maxTemp = currentTemp;
    }
  }

  double maxHumidity = humidityLevels[0];

  for (double humid in humidityLevels) {
    if (maxHumidity > humid) {
      maxHumidity = humid;
    }
  }

  print("ALERT: The hottest zone in the warehouse reached $maxTemp°C!");
  print("ALERT: The least dump zone in the warehouse reached $maxHumidity %!");

  prac();
}

// maps
void prac() {
  Map<String, double> warehouseZones = {
    'North Wing' : 26.5,
    'South Wing' : 29.1,
    'Loading Wing':  30.2,
    'Strong A' : 27.8
  };
}
