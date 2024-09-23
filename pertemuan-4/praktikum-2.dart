void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
  
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  names1.add('Fathurrrozak');
  names2.addAll(['Fathurrrozak', '2241720109']);
  print(names1);
  print(names2);
}
