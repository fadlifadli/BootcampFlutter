// Soal No.3 (List Multidimensi)
// Sering kali data yang diterima dari database adalah List yang multidimensi (List di dalam List). Sebagai developer, tugas kita adalah mengolah data tersebut agar dapat menampilkan informasi yang diinginkan.

// Buatlah sebuah fungsi dengan nama dataHandling dengan sebuah parameter untuk menerima argumen.Argumen yang akan diterima adalah sebuah list yang berisi beberapa listsejumlah n. contoh input dapat dilihat dibawah : 

// //contoh input
// var input = [
// 				["001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
// 				["002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
// 				["003", "Winona", "Ambon", "25/12/1965", "Memasak"],
// 				["004", "Bintang Senjaya", "Martapura", "6/4/1970", "Berkebun"]
// 			]

// Tugas kamu adalah mengimplementasikan fungsi dataHandling() agar dapat menampilkan data-data pada dari argumen seperti dibawah ini:


// Nomor ID : 0001
// Nama Lengkap: Roman Alamsyah
// TTL : Bandar Lampung 21/05/1989
// Hobi: Membaca

// Nomor ID : 0002
// Nama Lengkap: Dika Sembiring
// TTL : Medan 10/10/1992
// Hobi: Bermain Gitar

// Nomor ID : 0003
// Nama Lengkap: Winona
// TTL : Ambon 25/12/1965
// Hobi: Memasak

// Nomor ID : 0004
// Nama Lengkap: Bintang Senjaya
// TTL : Martapura 6/4/1970
// Hobi: Berkebun


void dataHandling(List<List<String>> data) {
  for (var i = 0; i < data.length; i++) {
    var id = data[i][0];
    var nama = data[i][1];
    var ttl = data[i][2] + " " + data[i][3];
    var hobi = data[i][4];

    print("Nomor ID : $id");
    print("Nama Lengkap: $nama");
    print("TTL : $ttl");
    print("Hobi: $hobi\n");
  }
}

void main() {
  var input = [
    ["001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
    ["003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["004", "Bintang Senjaya", "Martapura", "6/4/1970", "Berkebun"]
  ];

  dataHandling(input);
}