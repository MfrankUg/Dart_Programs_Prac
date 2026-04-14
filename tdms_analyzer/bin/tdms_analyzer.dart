import 'package:tdms_analyzer/tdms_analyzer.dart' as tdms_analyzer;

void main(List<String> arguments) {
  List<double> temperatures = [26.5, 29.1, 27.8, 30.2, 28.5];
  double maxTemp = 0.0;
  for (double currentTemp in temperatures) {
    if (currentTemp > maxTemp) {
      maxTemp = currentTemp;
    }
  }

  print("ALERT: The hottest zone in the warehouse reached $maxTemp°C!");
}
