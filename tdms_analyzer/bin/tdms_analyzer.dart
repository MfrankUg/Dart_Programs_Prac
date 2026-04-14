import 'package:tdms_analyzer/tdms_analyzer.dart' as tdms_analyzer;

void main(List<String> arguments) {
  List<int> dailyDustReadings = [300, 450, 600, 200, 550, 480, 700];
  int dangerCount = 0;
  for (int readings in dailyDustReadings) {
    if (readings > 500) {
      dangerCount++;
    }
    
  }
  print("Daily Report: The coffee warehouse experienced $dangerCount dangerous dust spikes today.");
}
