import 'dart:io';

void main() {
  // Daftar Kode Paket Pelajaran dan Mata Pelajaran terkait beserta Tarif Kursus
  var daftarKodePaket = {
    "12345": {"mata_pelajaran": "Ilmu Pengetahuan Alam", "tarif": 50000},
    "67890": {"mata_pelajaran": "Ilmu Pengetahuan Sosial", "tarif": 50000},
    "54321": {"mata_pelajaran": "Matematika", "tarif": 100000},
    "09876": {"mata_pelajaran": "Bahasa Indonesia", "tarif": 50000},
    "13579": {"mata_pelajaran": "Bahasa Inggris", "tarif": 75000},
    "24680": {"mata_pelajaran": "Bahasa Daerah", "tarif": 60000},
  };

  String namaSiswa;
  String? kodePaket;
  var mataPelajaranDipilih = <String>[];
  int? totalBiaya = 0;

  // Menampilkan daftar kode paket
  print("Daftar Kode Paket Pelajaran:");
  daftarKodePaket.forEach((kode, data) {
    print(
        "Kode: $kode, Mata Pelajaran: ${data["mata_pelajaran"]}, Tarif: Rp ${data["tarif"]}");
  });

  // Meminta pengguna memasukkan nama siswa
  stdout.write("Masukkan Nama Siswa: ");
  namaSiswa = stdin.readLineSync()!;

  while (true) {
    // Meminta pengguna memasukkan kode paket
    stdout.write("Masukkan Kode Paket: ");
    kodePaket = stdin.readLineSync();

    if (kodePaket?.toLowerCase() == "selesai") {
      break;
    }

    // Memeriksa apakah kode paket ada dalam daftar
    if (daftarKodePaket.containsKey(kodePaket)) {
      var mataPelajaran = daftarKodePaket[kodePaket]!["mata_pelajaran"];
      var tarif = daftarKodePaket[kodePaket]!["tarif"];
      mataPelajaranDipilih.add("mataPelajaran");
      totalBiaya = (tarif as int?)!;
      print(
          "Siswa $namaSiswa telah mendaftar kursus $mataPelajaran dengan tarif Rp $tarif.");
    } else {
      print("Kode paket tidak ditemukan.");
    }
  }

  // Menampilkan hasil
  print("Nama Siswa: $namaSiswa");
  print("Kode Paket: ${kodePaket}");
  print("Mata Pelajaran Dipilih: ${mataPelajaranDipilih.join(', ')}");
  print("Total Biaya Kursus: Rp $totalBiaya");
}
