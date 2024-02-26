// 3. Async, Await and future
// buatlah file baru dengan nama soal3.dart kemudian dengan menggunakan async await dan future ubahlah string berikut menjadi sebuah subtitle lagu,

// jdi awal masuk akan mencetak "Ready. sing" setelah itu ada jeda 5 detik kemudian akan mucul line ( ) yang akan mencetak pernahkan kau merasa,

// setelah mencetak line() kemudian ada jeda waktu 3 detik untuk mencetak line2( ) yang berisi pernahkah kau merasa ........... 

// setelah mencetak line2() kemudian ada jeda waktu 2 detik untuk mencetak line3( ) yang berisi pernahkah kau merasa,

// dan terakhir yaitu memunculkan  line4( ) dengan jeda 1 detik dari line 3 ke line 4yang berisi,  hatimu hampa pernahkah kau merasa hati mu kosong ............

// void main(List<String> args){
// 	print("Ready. Sing");
// 	line();
// 	line2();
// 	line3();
// 	line4();
// }

// line(){
// 	print("pernahkan kau merasa");
// 	}
// line2(){
// 	print("pernahkan kau merasa.....");
// }

// line3(){
// 	print("pernahkan kau merasa");
// 	}
// line4(){
// 	print("Hatimu hampa, pernahkan kau merasa hati mu kosong...");
// }

import 'dart:async';

void main(List<String> args) async {
  print("Ready. Sing");
  await Future.delayed(Duration(seconds: 5), () {
    line();
  });
  await Future.delayed(Duration(seconds: 3), () {
    line2();
  });
  await Future.delayed(Duration(seconds: 2), () {
    line3();
  });
  await Future.delayed(Duration(seconds: 1), () {
    line4();
  });
}

void line() {
  print("Pernahkah kau merasa");
}

void line2() {
  print("Pernahkah kau merasa.....");
}

void line3() {
  print("Pernahkah kau merasa");
}

void line4() {
  print("Hatimu hampa, pernahkah kau merasa hatimu kosong...");
}
