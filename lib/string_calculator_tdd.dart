int add(String numbers) {
  if (numbers.isEmpty) return 0;
  String delimiter = ',';
  if (numbers.startsWith('//')) {
    var parts = numbers.split('\n');
    delimiter = parts[0].substring(2);
    numbers = parts[1];
  }
  numbers = numbers.replaceAll('\n', ',');
  List<String> parts = numbers.split(',');
  return parts.map(int.parse).reduce((a, b) => a + b);
}
