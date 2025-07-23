int add(String numbers) {
  if (numbers.isEmpty) return 0;

  String delimiter = ',';
  if (numbers.startsWith('//')) {
    var parts = numbers.split('\n');
    delimiter = parts[0].substring(2);
    numbers = parts[1];
  }

  numbers = numbers.replaceAll('\n', delimiter);
  List<String> parts = numbers.split(delimiter);
  List<int> nums = parts.map(int.parse).toList();

  List<int> negatives = nums.where((n) => n < 0).toList();
  if (negatives.isNotEmpty) {
    throw Exception('negative numbers not allowed ${negatives.join(',')}');
  }

  return nums.reduce((a, b) => a + b);
}
