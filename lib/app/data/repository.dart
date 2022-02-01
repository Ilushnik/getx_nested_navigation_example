class Repository {
  final List<String> _computers = [
    'iMac',
    'Mac mini',
    'Mac Pro'
  ];

  final List<String> _laptops = [
    'MacBook Air',
    'MacBook',
    'MacBook Pro'
  ];

  Future<List<String>> get getComputers =>  Future.delayed(const Duration(seconds: 4), ()=> _computers);
  Future<List<String>> get getLaptops =>  Future.delayed(const Duration(seconds: 4), ()=> _laptops);
}