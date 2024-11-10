# Praktikum 1 - Dasar State dengan Model-View
## Hasil Praktikum 
![alt text](images/praktikum-1.gif)


## Penjelasan langkah 4
```batch
Agar lebih ringkas untuk import modelnya, sehingga jika memiliki model lebih dari satu maka tidak perlu mengimport satu persatu model yang dimiliki
``` 

## Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta
```batch
Karena variabel plan nantinya akan diisi dengan value yang berisi tugas dan menggunakan const karena untuk menyimpan value yang tidak berubah selama program dieksekusi atau valuenya tetap.
```


## Hasil langkah 9
```batch
Pada Langkah 9 ini membuat kode untuk menampilkan dan mengelola task yang ada di daftar plan. status task yang ditampilkan dalam list dapat diubah selesai atau tidaknya dengan menekan checkbox 
```
![alt text](images/praktikum-1.gif)


## Kegunaan method langkah 11 & 13 dalam lifecycle state
```batch
- Method initState pada langkah 11 digunakan untuk inisialisasi scrollController dan menambahkan listener di dalamnya. sehingga setiap scroll fokus input akan otomatis hilang

- Method dispose pada langkah 13 digunakan untuk menghapus atau menghilangkan scrollController
```