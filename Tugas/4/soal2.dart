// Soal No.2 (Range with Step) #
// Pada soal kali ini kamu diminta membuat function rangeWithStep yang mirip dengan function range di soal sebelumnya namun parameternya ditambah dengan parameter ketiga yaitu angka step yang menyatakan selisih atau beda dari setiap angka pada List. Jika parameter pertama lebih besar dibandingkan parameter kedua maka angka-angka tersusun secara menurun (descending) dengan step sebesar parameter ketiga. 

// struktur fungsinya seperti berikut rangeWithStep(startNum, finishNum, step) {}

// void main (){
// print(rangeWithStep(1,10));
// }

// // code disini
// rangeWithStep(startNum, finishNum, step) {}
// print(rangeWithStep(1, 10, 2)) // [1, 3, 5, 7, 9]
// print(rangeWithStep(11, 23, 3)) // [11, 14, 17, 20, 23]
// print(rangeWithStep(5, 2, 1)) // [5, 4, 3, 2]


List<int> rangeWithStep(int startNum, int finishNum, int step) {
  List<int> result = [];

  if (startNum <= finishNum) {
    for (int i = startNum; i <= finishNum; i += step) {
      result.add(i);
    }
  } else {
    for (int i = startNum; i >= finishNum; i -= step) {
      result.add(i);
    }
  }

  return result;
}

void main() {
  print(rangeWithStep(1, 10, 2)); // [1, 3, 5, 7, 9]
  print(rangeWithStep(11, 23, 3)); // [11, 14, 17, 20, 23]
  print(rangeWithStep(5, 2, 1)); // [5, 4, 3, 2]
}
