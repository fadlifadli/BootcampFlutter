import 'dart:io';
/*
void main(List<String> args) { // input dan print input
 
print("masukan password");
 
String? inputText = stdin.readLineSync()!;
 
print("password : ${inputText}");

}
*/

/** 
void main() { // print variabel 
  
   var name = "John" ;// Tipe
   var angka = 12;
   var todayIsFriday = false ;

   print(name); // "John"
   print(angka) ;// 12
   print(todayIsFriday); // false
  
}
*/


// void main() {  // String 
//   var sentences = "dart"; 
//   print(sentences[0]); // "d"
//   print(sentences[2]);// "r"
// }


// void main() { //Number
//    // declare an integer
//    int num1 = 10;             
     
//    // declare a double value
//    double num2 = 10.50;  

//    // print the values
//    print(num1); //10
//    print(num2); //10.5
// }


// void main() {  //mengubah string menjadi integer, kita dapat mengubah tipe data di dart dengan menggunakan method num.parse()
//    print(num.parse('12')); //12
//    print(num.parse('10.91')); //10.91
// }

// dan jangan salah memasukan angka atau akan error 
// void main() { 
//    print(num.parse('12A')); 
//    print(num.parse('AAAA')); 
// } //kode ini akan menghasilkan error :


// void main() {  //Mengubah dari int ke string 
//    int j = 45;
//    String t = "$j";  
//    print("hello"+ t);
// }

// void main() { //Immutable pada Dart
//   final umur = 21;
//   umur = 22;
//   // error: 'umur', a final variable, can only be set once
//   const age = 21;
//   // age = 22;
//   print(umur);
//   //error: Constant variabels can't be assigned a value
//   // variabel yang bersifat immutable variabel yang tidak bisa dirubah setelah diinialisasi, contoh program di bawah ini akan menghasilkan pesan error, karena kita akan mencoba mengubah nilai awal kedua kalinya.
// }


// yang benar seperti ini :
void main() {
  final umur = 21;
  

  const age = 22;
  
  print(umur);
}