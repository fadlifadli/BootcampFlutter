// 2. Future delayed
// buatlah file baru dengan nama soal2.dart kemudian dengan menggunakan function future delayed buatlah output dari coding ini menjadi life is never flat, tidak perlu menggunakan async await

// main(List<String> args){
// 	print("Life");
// 	print("never flat");
// 	print("is");
// }

import 'dart:async';

void main(List<String> args) {
  print("Life");
  print("never flat");
  print("is");

  // Menerapkan Future.delayed
  Future.delayed(Duration(seconds: 1), () {
    print("Life is never flat");
  });
}