void main() async{

  String result = await function2();
  function3(result);
  
}

Future<String> function2() async {
  Duration d = const Duration (seconds: 3);
  String data = 'old data';
  print ('before delay:');
  await Future.delayed(d, () {
    print ('data after delay:');
    data = 'new data';
    print ("Function 2: $data");
  });
  return data;
}

void function3(String value) {
  print ("Function 3: $value");
}