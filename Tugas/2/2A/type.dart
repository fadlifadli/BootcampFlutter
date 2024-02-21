// A. Tugas String
// Soal No. 1 (Membuat kalimat),
// Terdapat kumpulan variable dengan data string sebagai berikut                                                                                                                 
/**
void main() {
var word = 'dart';
var second = 'is';
var third = 'awesome';
var fourth = 'and';
var fifth = 'I';
var sixth = 'love';
var seventh = 'it!'; //Buatlah agar kata-kata di atas menjadi satu kalimat . Output: Dart is awesome and I love it!

var sentence = '$word $second $third $fourth $fifth $sixth $seventh';
  print(sentence); // Output: Dart is awesome and I love it!
}
**/

/*
//  Soal No.2 Mengurai kalimat (Akses karakter dalam string),
// Terdapat satu kalimat seperti berikut: var sentence = "I am going to be Flutter Developer";
void main() {
var sentence = "I am going to be Flutter Developer";
var exampleFirstWord = sentence[0] ; // I 
var exampleSecondWord = sentence[2] + sentence[3] ; // am
var thirdWord= sentence[5] + sentence[6] + sentence[7] + sentence[8]+ sentence[9]; //going
var fourthWord= sentence[11] + sentence[12] ; // to
var fifthWord= sentence[14] + sentence[15] + sentence[16] ; // be
var sixthWord= sentence[17] + sentence[18] + sentence[19] + sentence[20] + sentence[21] + sentence[22] + sentence[23]; //flutter
var seventhWord= sentence[24] + sentence[25] + sentence[26] + sentence[27] + sentence[28] + sentence[29] + sentence[30] + sentence[31] + sentence[32] + sentence[33]; // developer


print('First Word: ' + exampleFirstWord);
print('Second Word: ' + exampleSecondWord);
print('Third Word: ' + thirdWord);
print('Fourth Word: ' + fourthWord);
print('Fifth Word: ' + fifthWord);
print('Sixth Word: ' + sixthWord);
print('Seventh Word: ' + seventhWord);

// Buat menjadi Output berikut: First word: I
// Second word: am
// Third word: going
// Fourth word: to
// Fifth word: be
// Sixth word: Flutter
// Seventh word: Developer
}


/**
void main() {
  var sentence = "I am going to be Flutter Developer";
  
  var words = sentence.split(' ');
  
  var exampleFirstWord = words[0];
  var exampleSecondWord = words[1];
  var thirdWord = words[2];
  var fourthWord = words[3];
  var fifthWord = words[4];
  var sixthWord = words[5];
  var seventhWord = words[6];

  print('First Word: ' + exampleFirstWord);
  print('Second Word: ' + exampleSecondWord);
  print('Third Word: ' + thirdWord);
  print('Fourth Word: ' + fourthWord);
  print('Fifth Word: ' + fifthWord);
  print('Sixth Word: ' + sixthWord);
  print('Seventh Word: ' + seventhWord);
}
*/
*/


// 3. Dengan menggunakan I/O pada dart buatlah input dinamis yang akan menginput nama depan dan belakang dan jika di enter
// akan menggabungkan nama depan dan belakang

// contoh :

// masukan nama depan :
// hilmy
// masukan nama belakang :
// firdaus

// nama lengkap anda adalah:
// hilmy firdaus
/**
import 'dart:io';
void main() {
  stdout.write('Masukkan nama depan: ');
  String? firstName = stdin.readLineSync();
  
  stdout.write('Masukkan nama belakang: ');
  String? lastName = stdin.readLineSync();
  
  if (firstName != null && lastName != null) {
    String fullName = '$firstName $lastName';
    print('Nama lengkap anda adalah: $fullName');
  } else {
    print('Nama depan atau belakang tidak boleh kosong.');
  }
}
*/

// 4. Dengan menggunakan operator operasikan variable berikut ini menjadi bentuk operasi perkalian, penjumlahan,
// pengurangan dan pembagian a = 5,  b = 10 jadi misal a * b = 5 * 10 = 50 dst.
// output perkalian :50
// pembagian : 0.5
// penambahan : 15
// pengurangan : -5
void main() {
  int a = 5;
  int b = 10;
  
  // Operasi perkalian
  int multiplicationResult = a * b;
  print('Perkalian: $multiplicationResult');
  
  // Operasi pembagian
  double divisionResult = a / b;
  print('Pembagian: $divisionResult');
  
  // Operasi penambahan
  int additionResult = a + b;
  print('Penambahan: $additionResult');
  
  // Operasi pengurangan
  int subtractionResult = a - b;
  print('Pengurangan: $subtractionResult');
}