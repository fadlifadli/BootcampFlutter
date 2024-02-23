// Soal 2 Enkapsulasi(Pembungkusan)
// Buatlah folder baru di dalam Tugas-7-oop dengan nama Tugas-Enkapsulasi, Dengan menggunakan teknik engkapsulasi buatlah sebuah class yang menerima parameter untuk menghitung luas lingkaran, rule nya gunakan validasi apabila input nilai -(min) maka harus di di kalikan -1 agar nilai tetap positif, gunakan method getter dan setter 

// main.dart

// import 'lingkaran.dart;
// void main(List<String> args) {
// 	// tulis coding disini
// }

// clas Lingkaran {
// //tulis coding disini
// }

// double get luas => // isi coding disini ;
// }

import 'lingkaran.dart';

void main(List<String> args) {
  Lingkaran lingkaran = Lingkaran(-7); // Contoh penggunaan dengan nilai negatif
  print('Luas Lingkaran: ${lingkaran.hitungLuas()}');
}

class Lingkaran {
  double _jariJari;

  Lingkaran(double jariJari) {
    _jariJari = jariJari.abs(); // Mengambil nilai absolut agar positif
  }

  double hitungLuas() {
    return _jariJari * _jariJari * 3.14;
  }

  // Getter untuk mendapatkan nilai jari-jari
  double get jariJari => _jariJari;

  // Setter untuk mengatur nilai jari-jari
  set jariJari(double value) {
    _jariJari = value.abs(); // Mengambil nilai absolut agar positif
  }
}


