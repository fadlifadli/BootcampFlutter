// Soal 3 (Inheritance)
// Buatlah folder baru di dalam Tugas-7-oop dengan nama Tugas-Inheritance lalu di dalam folder tersebut beri lagi file pada soal ini buatlah 5 class dan 1 main, isinya adalah

// armor_titan.dart
// attack_titan.dart
// beast_titan.dart
// human.dart
// main.dart
// titan.dart
// pada

// class 1 armor_titan memiliki object string yaitu terjang()=>"dush.. dush.." ,

// class 2 attack_titan memiliki object string yaitu punch()=>"blam.. blam.."

// class 3 beast_titan memiliki object string yaitu lempar()=>"wush wush..",

// class 4 human memiliki object string yaitu killAlltitan()=>" Sasageyo ... Shinzo Sasageyo..."

// selanjautnya di file titan.dart

// buatlah class titan yang memiliki _powerPoint; yang akan men-get dan men-set nilai dari powerPoint masing masing turunannya

// pada kelas 1 - 4 akan inheritance dari class titan, jadi otomatis akan memiliki power point setiap class nya

// pada main.dart isilah value powerPoint yang ada pada 5 class dan juga tampilkan masing masing powertpoint nya jika powerPoint di bawah 5 maka akan di cetak 5 dan juga cetak masing masing object yang ada pada class masing-masing yang terdapat pada child class 1-4.

import 'titan.dart';

class ArmorTitan extends Titan {
  String terjang() => "dush.. dush..";
}

import 'titan.dart';

class AttackTitan extends Titan {
  String punch() => "blam.. blam..";
}

import 'titan.dart';

class BeastTitan extends Titan {
  String lempar() => "wush wush..";
}

class Human {
  String killAllTitan() => "Sasageyo ... Shinzo Sasageyo...";
}


class Titan {
  int _powerPoint = 0;

  int get powerPoint => _powerPoint;

  set powerPoint(int value) {
    _powerPoint = value;
  }
}

import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  // Membuat objek untuk masing-masing kelas
  var armorTitan = ArmorTitan();
  var attackTitan = AttackTitan();
  var beastTitan = BeastTitan();
  var human = Human();

  // Mengatur nilai powerPoint untuk masing-masing kelas
  armorTitan.powerPoint = 7;
  attackTitan.powerPoint = 3;
  beastTitan.powerPoint = 6;
  human.powerPoint = 2;

  // Menampilkan nilai powerPoint untuk masing-masing kelas
  print('PowerPoint Armor Titan: ${armorTitan.powerPoint}');
  print('PowerPoint Attack Titan: ${attackTitan.powerPoint}');
  print('PowerPoint Beast Titan: ${beastTitan.powerPoint}');
  print('PowerPoint Human: ${human.powerPoint}');

  // Memanggil metode dari masing-masing objek
  print('Armor Titan terjang: ${armorTitan.terjang()}');
  print('Attack Titan punch: ${attackTitan.punch()}');
  print('Beast Titan lempar: ${beastTitan.lempar()}');
  print('Human killAllTitan: ${human.killAllTitan()}');
}