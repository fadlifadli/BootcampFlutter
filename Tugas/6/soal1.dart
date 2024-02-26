// Soal 1 Synchronous to Asynchronous
// Buatlah folder baru yaitu Tugas-6-AsyncAwaitFuture, setelah itu buat file baru untuk mengerjakan soal 1 yaitu soal1.dart kemudian ketikan coding di bawah ini, selanjutnya ubahlah coding synchronous berikut kedalam coding asynchronous dengan menggunakan async await dan future, untuk output yang diharpakan yaitu saat di compile pertama munculnya yaitu luffy, zoro, killer dan nama character one piece selanjutnya 3 detik kemudian muncul get data [done] , name 3: hilmy

// Nb: coding boleh di ubah- ubah sesuai kebutuhan dan logic dari teman-teman

// Nb: coding boleh di ubah- ubah sesuai kebutuhan dan logic dari teman-teman

// void main(List<String> args){
// 	var h = human();
	
// 	print("Luffy");
// 	print("zoro");
// 	print("killer");
// 	h.getData();
// 	print(h.name);
// }

// class human {
// 	String name = "nama character one piece";
	
// 	void getData(){
// 		name= "hilmy";
// 		print("get data [done]");
// 	}

import 'dart:async';

void main(List<String> args) async {
  var h = Human();

  print("Luffy");
  print("Zoro");
  print("Killer");

  await h.getData(); // Menunggu pengambilan data
  print(h.name);
}

class Human {
  String name = "nama character one piece";

  Future<void> getData() async {
    await Future.delayed(Duration(seconds: 3)); // Menunggu 3 detik
    name = "hilmy";
    print("get data [done]");
  }
}