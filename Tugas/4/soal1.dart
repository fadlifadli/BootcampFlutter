// Soal No. 1(Range)

// buatlah sebuah function dengan nama range() yang menerima dua parameter berupa number.Function mengembalikan sebuah list berisi angka-angka mulai dari angka parameter pertama hingga angka pada parameter kedua. jika parameter lebih besar dibandingkan parameter kedua maka angka-angka tersusun secara menurun (descending).

// struktur fungsinya seperti berikut range(startNum, finishNum) {}
// void main (){
// print(range(1,10));
// }

// //code disini
// print(range(1, 10))//[1,2,3,4,5,6,7,8,9,10]
// print(range(11,18))//[11,12,13,14,15,16,17,18]

List<int> range(int startNum, int finishNum) {
  List<int> result = [];
  if (startNum <= finishNum) {
    for (int i = startNum; i <= finishNum; i++) {
      result.add(i);
    }
  } else {
    for (int i = startNum; i >= finishNum; i--) {
      result.add(i);
    }
  }
  return result;
}

void main() {
  print(range(1, 10)); // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  print(range(11, 18)); // [11, 12, 13, 14, 15, 16, 17, 18]
  print(range(20, 11)); // [20, 19, 18, 17, 16, 15, 14, 13, 12 , 11]
}