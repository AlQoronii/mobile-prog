void main() {
  // var record = {'first': 1, 'a': 2, 'b': true, 'last': 3};
  // print(record);

  // var record2 = (1, 2);
  // (int, int) tukar((int, int) record) {
  //   var (a, b) = record;
  //   return (b, a);
  // }

  // print(tukar(record2));
  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa = ('Fathurrozak', 2241720109);
  // print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 'Fathurrozak 2241720109');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'

}
