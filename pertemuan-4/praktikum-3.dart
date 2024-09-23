void main(){
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'fathurrozak': 2241720109,
  };
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    2241720109: 'fathurrozak',
  };
  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['fathurrozak'] = '2241720109';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[2241720109] = 'fathurrozak';

  print(mhs1);
  print(mhs2);
}