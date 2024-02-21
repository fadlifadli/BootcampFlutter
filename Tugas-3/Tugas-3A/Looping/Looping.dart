// No. 1 Looping While 
// Pada tugas ini kamu diminta untuk melakukan looping dalam dart dengan menggunakan syntax while. Untuk membuat tantangan ini lebih menarik, kamu juga diminta untuk membuat suatu looping yang menghitung maju dan menghitung mundur. Jangan lupa tampilkan di console juga judul ‘LOOPING PERTAMA’ dan ‘LOOPING KEDUA’.”

/**
void main() {
  print('LOOPING PERTAMA');
  int i = 1;
  while (i <= 20) {
    if (i % 2 == 0) {
      print('$i - I love coding');
    }
    i++;
  }
  
  print('LOOPING KEDUA');
  int j = 20;
  while (j >= 2) {
    if (j % 2 == 0) {
      print('$j - I will become a mobile developer');
    }
    j -= 2;
  }
}
**/

// No. 2 Looping menggunakan for
// Pada tugas ini kamu diminta untuk melakukan looping dalam dart dengan menggunakan syntax for. Untuk membuat tantangan ini lebih menarik, kamu juga diminta untuk memenuhi syarat tertentu yaitu:

// SYARAT:
// A. Jika angka ganjil maka tampilkan Santai
// B. Jika angka genap maka tampilkan Berkualitas
// C. Jika angka yang sedang ditampilkan adalah kelipatan 3 DAN angka ganjil maka tampilkan I Love Coding.

/**
void main() {
  for (int i = 1; i <= 20; i++) {
    if (i % 3 == 0 && i % 2 != 0) {
      print('$i - I Love Coding');
    } else if (i % 2 == 0) {
      print('$i - Berkualitas');
    } else {
      print('$i - Santai');
    }
  }
}
**/


// No. 3 Membuat Persegi Panjang #
// Kamu diminta untuk menampilkan persegi dengan dimensi 8×4 dengan tanda pagar (#) dengan perulangan atau looping. Looping boleh menggunakan syntax apa pun (while, for, do while).

/**
void main() {
  for (int i = 0; i < 4; i++) {
    String line = '';
    for (int j = 0; j < 8; j++) {
      line += '#';
    }
    print(line);
  }
}
**/

/**
// No. 4 Membuat Tangga 
// Kali ini kamu diminta untuk menampilkan sebuah segitiga dengan tanda pagar (#) dengan dimensi tinggi 7 dan alas 7. Looping boleh menggunakan syntax apa pun (while, for, do while).

void main() {
  for (int i = 1; i <= 7; i++) {
    String line = '';
    for (int j = 0; j < i; j++) {
      line += '#';
    }
    print(line);
  }
}

**/