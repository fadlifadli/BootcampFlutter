// Soal 4 Constructor
// Buatlah folder baru di dalam Tugas-5-oop dengan nama Tugas-constructor, di folder ini berisi main.dart dan juga employee.dart di dalam class employee buatlah object yang berisi id, name , departement , lalu panggil ke main.dart sebagai object yang akan bisa diisi value nya isi value bebas boleh nama pribadi teman-teman.

// Jika sudah selesai dikerjakan, silahkan push hasil pekerjaan Anda ke repository Gitlab masing-masing (gunakan repository project yang sama bootcampFlutter yang digunakan folder Tugas-5-oop). Jangan lupa submit link commit Anda ke sanbercode.com.

class Employee {
  int id;
  String name;
  String department;

  Employee(this.id, this.name, this.department);
}

import 'employee.dart';

void main() {
  // Membuat objek employee
  var employee1 = Employee(1, 'John Doe', 'IT');
  var employee2 = Employee(2, 'Jane Smith', 'HR');

  // Menampilkan informasi employee
  print('Employee 1:');
  print('ID: ${employee1.id}');
  print('Name: ${employee1.name}');
  print('Department: ${employee1.department}');

  print('\nEmployee 2:');
  print('ID: ${employee2.id}');
  print('Name: ${employee2.name}');
  print('Department: ${employee2.department}');
}