# Praktikum 1
### Langkah 1
```dart
void main () {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}
```
### Langkah 2 - Run Code
```batch
3
2
1

Exited.
```
### Langkah 3
```dart
void main() {

  var finalList = List<dynamic>.filled(5, null);
  finalList[1] = 'Fathurrrozak';
  finalList[2] = 2241720109;
  for (var i = 0; i < finalList.length; i++) {
    print('Index[$i]: ${finalList[i]}');
  }
  print('Max Index: ${finalList.length}');
}
```
Hasil Running Code
```batch
Index[0]: null
Index[1]: Fathurrrozak
Index[2]: 2241720109
Index[3]: null
Index[4]: null
Max Index: 5

Exited.
```
# Praktikum 2
### Langkah 1
```dart
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}
```
### Langkah 2
Array yang menyimpan beberapa value string akan ditampilkan semua isinya dengan memanggil nama variabelnya
```batch
{fluorine, chlorine, bromine, iodine, astatine}

Exited.
```
### Langkah 3
```dart
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
  
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);
}
```
Hasil Run Code
```batch
{fluorine, chlorine, bromine, iodine, astatine}
2{}

Exited.
{}
```
Setelah menambahkan elemen Nama dan NIM pada kedua variabel set dengan fungsi yang berbeda
```dart
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
  
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  names1.add('Fathurrrozak', 2241720109);
  names2.addAll(['Fathurrrozak', '2241720109']);
  print(names1);
  print(names2);
}
```
Akan terjadi Error
```batch
Too many positional arguments: 1 expected, but 2 found.
Try removing the extra arguments.
```
Error tersebut terjadi karena untuk fungsi .add() hanya menerima satu argument sedangkan pada kode program diisikan dua argument yaitu nama dan NIM
```dart
Perbaikan kode
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
```
Hasil Run Code
```batch
{fluorine, chlorine, bromine, iodine, astatine}
{Fathurrrozak}
{Fathurrrozak, 2241720109}

Exited.
```
# Praktikum 3
### Langkah 1
```dart
void main(){
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };
  print(gifts);
  print(nobleGases);
}
```
### Langkah 2
masing masing variabel memiliki key dan value. key merupakan kunci yang dimana memiliki value yang sudah didefinisikan seperti yang ada di kode tersebut. Key dan value dapat menggunakan multiple tipe data. Ditunjukkan pada kode program bahwa key string bisa memiliki value int dan juga bisa sebaliknya.
```batch
{first: partridge, second: turtledoves, fifth: 1}
{2: helium, 10: neon, 18: 2}

Exited.
```
### Langkah 3
```dart
void main(){
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };
  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
}
```
Hasil Run Code <br>
Hasilnya masih sama dengan yang sebelumnya. Namun jika variabel mhs1 dan mhs2 dilakukan print maka hasilnya akan berubah mengikuti variabel mhs1 dan mhs2
```batch
{first: partridge, second: turtledoves, fifth: 1}
{2: helium, 10: neon, 18: 2}

Exited.
```
Penambahan Nama dan NIM pada tiap variabel
```dart
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
```
```batch
{first: partridge, second: turtledoves, fifth: 1, fathurrozak: 2241720109}
{2: helium, 10: neon, 18: 2, 2241720109: fathurrozak}
{}
{}

Exited.
```
# Praktikum 4
### Langkah 1
```dart
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list1);
  print(list2);
  print(list2.length);
}
```
Kode program error karena variabel list1 tidak ada
```batch
Undefined name 'list1'.
Try correcting the name to one that is defined, or defining the name.
```
Hasil setelah perbaikan kode
```batch
[1, 2, 3]
[0, 1, 2, 3]
4

Exited.
```
### Langkah 2
Hasil Run Code
```batch
[1, 2, 3]
[0, 1, 2, 3]
4

Exited.
```
### Langkah 3
```dart
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length)
}
```
Error terjadi karena list1 belum didefinisikan
```batch
Undefined name 'list1'.
Try correcting the name to one that is defined, or defining the name.
```
Perbaikan Kode
```dart
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);
}
```
```batch
[1, 2, 3]
[0, 1, 2, 3]
4
[1, 2, null]
[0, 1, 2, null]
4

Exited.
```
Menambahkan NIM pada variabel list menggunakan spread operator
```dart
void main() {
  var nim = [2241720109];
  var list = [1, 2, 3, ...?nim];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);
}
```
```batch
[1, 2, 3, 2241720109]
[0, 1, 2, 3, 2241720109]
5
[1, 2, null]
[0, 1, 2, null]
4

Exited.
```
### Langkah 4
```dart
void main() {
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}

```
Error terjadi karena promoActive belum terdefinisi
```batch
Undefined name 'promoActive'.
Try correcting the name to one that is defined, or defining the name.
```
promoActive = true
```dart
void main() {
  // var nim = [2241720109];
  // var list = [1, 2, 3, ...?nim];
  // var list2 = [0, ...list];
  // print(list);
  // print(list2);
  // print(list2.length);

  // var list1 = [1, 2, null];
  // print(list1);
  // var list3 = [0, ...?list1];
  // print(list3);
  // print(list3.length);

  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
```
Hasil Run Code
```batch
[Home, Furniture, Plants, Outlet]

Exited.
```
promoActive = false
```dart
void main() {
  // var nim = [2241720109];
  // var list = [1, 2, 3, ...?nim];
  // var list2 = [0, ...list];
  // print(list);
  // print(list2);
  // print(list2.length);

  // var list1 = [1, 2, null];
  // print(list1);
  // var list3 = [0, ...?list1];
  // print(list3);
  // print(list3.length);

  var promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
```
```batch
[Home, Furniture, Plants]

Exited.
```
### Langkah 5
```dart
var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
print(nav2);
```
Error terjadi karena login tidak terdefinisi
```batch
Undefined name 'login'.
Try correcting the name to one that is defined, or defining the name.
```
Perbaikan Code
```dart
  var login = 'Manager';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);
```
```batch
[Home, Furniture, Plants, Inventory]

Exited.
```
### Langkah 6
```dart
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);
```
```batch
[#0, #1, #2, #3]

Exited.
```
# Praktikum 5
### Langkah 1
```dart
void main() {
  var record = {'first', a: 2, b: true, 'last'};
  print(record);
}
```
Terjadi Error
```batch
The literal can't be either a map or a set because it contains at least one literal map entry or a spread operator spreading a 'Map', and at least one element which is neither of these.
Try removing or changing some of the elements so that all of the elements are consistent.
```
Perbaikan Code
```dart
void main() {
  var record = {'first': 1, 'a': 2, 'b': true, 'last': 3};
  print(record);
}
```
Hasil Run Code
```batch
{first: 1, a: 2, b: true, last: 3}

Exited.
```
### Langkah 2

### Langkah 3
```dart
void main() {
  var record = {'first': 1, 'a': 2, 'b': true, 'last': 3};
  print(record);

}
  (int,int) tukar ((int,int)record){
    var (a,b) = record;
    return (b,a);
  }
```
Hasil Run Code - tidak terjadi error namum karena kode program tersebut berada di luar scope void main() maka tidak terjadi apa apa
```batch
{first: 1, a: 2, b: true, last: 3}

Exited.
```
Perbaikan Code - karena variabel record memiliki map dan isinya string maka tidak bisa dibalik menggunakan fungsi tukar. Oleh karnea itu harus dibuat variabel baru bernama record2 yang memiliki value int
```dart
void main() {
  var record = {'first': 1, 'a': 2, 'b': true, 'last': 3};
  print(record);

  var record2 = (1,2);
  (int,int) tukar ((int,int)record){
    var (a,b) = record;
    return (b,a);
  }
  print(tukar(record2));
}
```
Hasil Run Code
```batch
{first: 1, a: 2, b: true, last: 3}
(2, 1)

Exited.
```
### Langkah 4
```dart
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
  (String, int) mahasiswa;
  print(mahasiswa);
  
}
```
Error terjadi karena variabel mahasiwa harus dilakukan assign
```batch
The non-nullable local variable 'mahasiswa' must be assigned before it can be used.
Try giving it an initializer expression, or ensure that it's assigned on every execution path.
```
Perbaikan Code
```dart
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
  (String, int) mahasiswa = ('Fathurrozak', 2241720109);
  print(mahasiswa);

}
```
Hasil Run Code
```batch
(Fathurrozak, 2241720109)

Exited.
```
### Langkah 5
```dart
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

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'

}
```
```batch
first
2
true
last

Exited.
```
Setelah penggantian satu record
```dart
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
```
```batch
first
2
true
Fathurrozak 2241720109

Exited.
```
 
# TUGAS PRAKTIKUM
# Praktikum 1
## 1. Jelaskan yang dimaksud functions dalam bahasa dart

Functions dalam bahasa Dart adalah blok kode yang dapat dieksekusi yang memiliki nama dan dapat dipanggil dari bagian lain dalam program. Functions digunakan untuk mengelompokkan kode yang dapat digunakan kembali dan untuk memecah program menjadi bagian-bagian yang lebih kecil dan lebih mudah dikelola.

## 2. Jelaskan jenis jenis parameter di functions beserta contoh sintaksnya
- **Positional Parameters**: Adalah parameter yang harus diisi sesuai urutan.
  ```dart
  void printInfo(String name, int age) {
    print('Name: $name, Age: $age');
  }
  ```

- **Named Parameters**: Adalah parameter yang telah diberi nama dan dapat diisi dalam urutan apa pun. Biasanya digunakan dengan `{}`.
  ```dart
  void printInfo({String name, int age}) {
    print('Name: $name, Age: $age');
  }
  ```

- **Optional Positional Parameters**: Adalah parameter yang bersifat opsional dan ditandai dengan `[]`.
  ```dart
  void printInfo(String name, [int age]) {
    print('Name: $name, Age: $age');
  }
  ```

## 3. Jelaskan maksud functions sebagai first-class objects beserta contoh sintaksnya

Functions sebagai first-class objects yaitu functions yang dapat disimpan dalam variabel, diteruskan sebagai argumen ke functions lain, dan dikembalikan dari functions lain. 

Contoh:
```dart
void sayHello() {
  print('Hello');
}

void executeFunction(Function func) {
  func();
}

void main() {
  var myFunction = sayHello;
  executeFunction(myFunction); // Output: Hello
}
```

## 4. Apa itu anonymous functions? Jelaskan dan berikan contohnya

Anonymous functions yatu functions yang tidak memiliki nama. Sering digunakan sebagai argumen untuk functions lain atau untuk mendefinisikan fungsi singkat yang hanya digunakan sekali saja.

Contoh:
```dart
var list = ['apples', 'bananas', 'oranges'];
list.forEach((item) {
  print(item);
});
```

## 5. Jelaskan perbedaan lexical scope dan lexical closures dan berikan contohnya

- **Lexical Scope**: Lexical scope yaitu aturan yang menentukan bagaimana variabel diakses berdasarkan lokasi fisik  dalam source code. Variabel yang didefinisikan dalam suatu fungsi hanya bisa diakses dalam fungsi tersebut.

  Contoh:
  ```dart
  void main() {
    var name = 'Alice';
    void printName() {
      print(name); // 'name' dapat diakses di sini
    }
    printName();
  }
  ```

- **Lexical Closures**: Lexical closures yaitu fungsi yang dapat mengakses variabel dari lingkup luar serta setelah lingkup luar tersebut telah dieksekusi.

  Contoh:
  ```dart
  Function makeAdder(int addBy) {
    return (int i) => addBy + i;
  }

  void main() {
    var add2 = makeAdder(2);
    print(add2(3)); // Output: 5
  }
  ```

## 6. Jelaskan dengan contoh cara membuat return multiple value di functions

Dart tidak mendukung pengembalian beberapa nilai secara langsung, tetapi kita dapat menggunakan tuple atau objek untuk mengembalikan beberapa nilai.

Contoh menggunakan tuple:
```dart
List<int> swap(int a, int b) {
  return [b, a];
}

void main() {
  var result = swap(1, 2);
  print(result); // Output: [2, 1]
}
```

Contoh menggunakan objek:
```dart
class Pair {
  int first;
  int second;
  Pair(this.first, this.second);
}

Pair swap(int a, int b) {
  return Pair(b, a);
}

void main() {
  var result = swap(1, 2);
  print('First: ${result.first}, Second: ${result.second}'); // Output: First: 2, Second: 1
}
```
