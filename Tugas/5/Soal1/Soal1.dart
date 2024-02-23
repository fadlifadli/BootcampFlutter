// Soal 1 (Mengubah Prosedural ke Class)
// buatlah sebuah folder baru dengan nama soal1 lalu di dalamnya buat file baru yaitu soal1.dart, lalu dari sistem prosedural ini ubahlah menjadi class dan object sehingga dapat di panggil luasnya berupa class dan object

// void main(List<String> args){
// 	double setengah, alas, tinggi;
// 	setengah = 0.5;
// 	alas = 20.0;
// 	tinggi = 30.0;
	
// 	var luasSegitiga = setengah * alas * tinggi ;
	
// 	print(luasSegitiga);
// }


class Segitiga {
  double setengah = 0.5;
  double alas;
  double tinggi;

  Segitiga(this.alas, this.tinggi);

  double hitungLuas() {
    return setengah * alas * tinggi;
  }
}

void main(List<String> args) {
  double alas = 20.0;
  double tinggi = 30.0;

  Segitiga segitiga = Segitiga(alas, tinggi);
  var luasSegitiga = segitiga.hitungLuas();

  print(luasSegitiga);
}
