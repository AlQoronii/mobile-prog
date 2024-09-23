void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  var finalList = List<dynamic>.filled(5, null);
  finalList[1] = 'Fathurrrozak';
  finalList[2] = 2241720109;
  for (var i = 0; i < finalList.length; i++) {
    print('Index[$i]: ${finalList[i]}');
  }
  print('Max Index: ${finalList.length}');
}
