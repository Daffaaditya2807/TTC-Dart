import 'dart:io';

void getDataDiriUser() {
  stdout.write("Nama Kamu adalah : ");
  String? yourName = stdin.readLineSync();
  stdout.write("Jurusan kamu adalah : ");
  String? yourJurusan = stdin.readLineSync();

  print(
      "Berdasarkan yang data yang kamu masukkan namu kamu adalah $yourName dan kamu dari jurusan $yourJurusan");
}
