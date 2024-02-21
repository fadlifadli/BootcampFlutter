// 1. Ternary operator 
// Petunjuk : untuk membuat sebuah kondisi ternary dimna anda akan di minta untuk menginstall aplikasi dengan jawaban Y/T , jadi tugas teman teman sekrang adalah memberi jawaban y/t saat ada input mau diinstall aplikasi, apabila ( y )maka akan menampilkan "anda akan menginstall aplikasi dart", jika (T)  maka akan keluar pesan "aborted" (Gunakan I/O).
/**
import 'dart:io';

void main() {
  stdout.write('Apakah Anda ingin menginstall aplikasi dart? (Y/T): ');
  String jawaban = stdin.readLineSync() ?? '';

  String pesan = (jawaban.toUpperCase() == 'Y') ? 'anda akan menginstall aplikasi dart' : 'aborted';
  print(pesan);
}

**/

// 2. If-else if dan else
// Petunjuk : Kita akan memasuki dunia game werewolf. Pada saat akan bermain kamu diminta memasukkan nama dan peran . Untuk memulai game pemain harus memasukkan variable nama dan peran. Jika pemain tidak memasukkan nama maka game akan mengeluarkan warning “Nama harus diisi!“. Jika pemain memasukkan nama tapi tidak memasukkan peran maka game akan mengeluarkan warning “Pilih Peranmu untuk memulai game“. Terdapat tiga peran yaitu penyihir, guard, dan werewolf. Tugas kamu adalah membuat program untuk mengecek input dari pemain dan hasil response dari game sesuai input yang dikirimkan.

// Petunjuk:

// Nama dan peran diisi dengan i/o dan bisa diisi apa saja
// Nama perlu dicek persis sesuai dengan input/output
// Buat kondisi if-else untuk masing-masing peran
// Input:

// var nama = "John"
// var peran = ""
// Output:

// // Output untuk Input nama = '' dan peran = '' " , apabila kosong semua Nama harus diisi!"
 
// //Output untuk Input nama = 'John' dan peran = '' "apabila cuman diisi nama akan muncul Halo John, Pilih peranmu untuk memulai game!"
 
// //Output untuk Input nama = 'Jane' dan peran 'Penyihir' "Selamat datang di Dunia Werewolf, Jane" "Halo Penyihir Jane, kamu dapat melihat siapa yang menjadi werewolf!"
 
// //Output untuk Input nama = 'Jenita' dan peran 'Guard' "Selamat datang di Dunia Werewolf, Jenita" "Halo Guard Jenita, kamu akan membantu melindungi temanmu dari serangan werewolf."
 
// //Output untuk Input nama = 'Junaedi' dan peran 'Werewolf' "Selamat datang di Dunia Werewolf, Junaedi" "Halo Werewolf Junaedi, Kamu akan memakan mangsa setiap malam!"
 
//  (Gunakan I/O) 

/**
import 'dart:io';

void main() {
  stdout.write('Masukkan nama: ');
  String nama = stdin.readLineSync() ?? '';

  stdout.write('Masukkan peran (Penyihir/Guard/Werewolf): ');
  String peran = stdin.readLineSync()?.toLowerCase() ?? '';

  if (nama.isEmpty) {
    print('Nama harus diisi!');
  } else if (peran.isEmpty) {
    print('Halo $nama, Pilih peranmu untuk memulai game!');
  } else {
    print('Selamat datang di Dunia Werewolf, $nama');
    if (peran == 'penyihir') {
      print('Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!');
    } else if (peran == 'guard') {
      print('Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.');
    } else if (peran == 'werewolf') {
      print('Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!');
    } else {
      print('Peran yang dimasukkan tidak valid!');
    }
  }
}
**/

// 3. Switch case
// Kamu adalah seorang penyair yang setiap hari memberikan quotes yang sangat berguna untuk orang- orang sekitar mu buatlah sebuah swith case yang dapat menampung quotes tiap harinya : 

// Senin : 

// Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.
// Selasa : 

// Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.
// Rabu : 

// Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.
// Kamis: 

// Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.
// Jumat: 

// Hidup tak selamanya tentang pacar.
// Sabtu : 

// Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.
// Minggu : 

// Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.
 
//  (Gunakan I/O)

/**
import 'dart:io';

void main() {
  stdout.write('Masukkan hari (Senin/Minggu): ');
  String hari = stdin.readLineSync()?.toLowerCase() ?? '';

  switch (hari) {
    case 'senin':
      print('Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.');
      break;
    case 'selasa':
      print('Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.');
      break;
    case 'rabu':
      print('Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.');
      break;
    case 'kamis':
      print('Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.');
      break;
    case 'jumat':
      print('Hidup tak selamanya tentang pacar.');
      break;
    case 'sabtu':
      print('Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.');
      break;
    case 'minggu':
      print('Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.');
      break;
    default:
      print('Hari yang dimasukkan tidak valid!');
  }
}

**/

// 4. Switch Case
// Kamu akan diberikan sebuah data dalam tiga variabel, yaitu hari, bulan, dan tahun. Disini kamu diminta untuk membuat format tanggal. Misal input tanggal, bulan dan tahun yang diberikan adalah hari = 1, bulan = 5, dan tahun = 1945. Maka, output yang harus kamu proses adalah menjadi 1 Mei 1945.

// Gunakan switch case untuk kasus ini, tidak perlu menggunakna i/o!

// Contoh:

// var tanggal = 21; 
// var bulan = 1; 
// var tahun = 1945;
// //  Maka hasil yang akan tampil di console adalah: '21 Januari 1945'; 
// Skeleton Code / Code yang dicontohkan yang perlu diikuti dan dimodifikasi

// var tanggal; // assign nilai variabel tanggal disini! (dengan angka antara 1 - 31) sebagai validator 

// var bulan; // assign nilai variabel bulan disini! (dengan angka antara 1 - 12)

// var tahun; // assign nilai variabel tahun disini! (dengan angka antara 1900 - 2200) sebagai validator


//  (I/O tidak perlu)

void main() {
  var tanggal = 21; 
  var bulan = 1; 
  var tahun = 1945;
  
  String namaBulan;
  
  switch (bulan) {
    case 1:
      namaBulan = 'Januari';
      break;
    case 2:
      namaBulan = 'Februari';
      break;
    case 3:
      namaBulan = 'Maret';
      break;
    case 4:
      namaBulan = 'April';
      break;
    case 5:
      namaBulan = 'Mei';
      break;
    case 6:
      namaBulan = 'Juni';
      break;
    case 7:
      namaBulan = 'Juli';
      break;
    case 8:
      namaBulan = 'Agustus';
      break;
    case 9:
      namaBulan = 'September';
      break;
    case 10:
      namaBulan = 'Oktober';
      break;
    case 11:
      namaBulan = 'November';
      break;
    case 12:
      namaBulan = 'Desember';
      break;
    default:
      namaBulan = 'Bulan tidak valid';
  }
  
  print('$tanggal $namaBulan $tahun');
}
