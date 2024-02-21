/**
// No. 1 
// Tulislah sebuah function dengan nama teriak() yang mengembalikan nilai “Halo Sanbers!” yang kemudian dapat ditampilkan di console.
// print(teriak()) // "Halo Sanbers!" 

String teriak() {
  return "Halo Sanbers!";
}

void main() {
  print(teriak()); // Output: "Halo Sanbers!"
}

*/

// No. 2 
// Tulislah sebuah function dengan nama kalikan() yang mengembalikan hasil perkalian dua parameter yang di kirim.

// /*
//     Tulis code function di sini
// */
 
// var num1 = 12
// var num2 = 4
 
// var hasilKali = kalikan(num1, num2)
// print(hasilKali) // 48
/**
int kalikan(int num1, int num2) {
  return num1 * num2;
}

void main() {
  var num1 = 12;
  var num2 = 4;

  var hasilKali = kalikan(num1, num2);
  print(hasilKali); // Output: 48
}
**/

// No. 3 
// Tulislah sebuah function dengan nama introduce() yang memproses paramater yang dikirim menjadi sebuah kalimat perkenalan seperti berikut: “Nama saya "name", umur saya "age" tahun, alamat saya di "address", dan saya punya hobby yaitu "hobby"!”

// /* 
//     Tulis kode function di sini
// */
 
// final String name = "Achmad"
// final int age = 30
// final String address = "Jln. Malioboro, Yogyakarta"
// final String hobby = "Gaming"
 
// final perkenalan = (name, age, address, hobby);
// print(perkenalan) // Menampilkan "Nama saya Agus, umur saya 30 tahun, alamat saya di Jln. Malioboro, Yogyakarta,
//  dan saya punya hobby yaitu Gaming!" 
/**
String introduce(String name, int age, String address, String hobby) {
  return 'Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!';
}

void main() {
  final String name = "Achmad";
  final int age = 30;
  final String address = "Jln. Malioboro, Yogyakarta";
  final String hobby = "Gaming";

  final perkenalan = introduce(name, age, address, hobby);
  print(perkenalan); // Output: Nama saya Achmad, umur saya 30 tahun, alamat saya di Jln. Malioboro, Yogyakarta, dan saya punya hobby yaitu Gaming!
}
**/

// No.4
// Tulislah sebuah function untuk memfaktorialkan angka, misal 6! = 720, didapat dari 6 = 6*5*4*3*2*1 dan jika angka kurang dari sama <= dengan 0, maka akan me return 1, selain itu menampilkan hasil faktorialnya

int faktorial(int n) {
  if (n <= 0) {
    return 1;
  } else {
    int result = 1;
    for (int i = 1; i <= n; i++) {
      result *= i;
    }
    return result;
  }
}

void main() {
  int angka = 6;
  int hasilFaktorial = faktorial(angka);
  print('$angka! = $hasilFaktorial'); // Output: 6! = 720
}
