import 'dart:io';

void conversiToCelcius() {
  stdout.write(
      "Konversi Suhu to Celcius\nKonversi fahrenheit to Celcius ketik = 1\nKonversi reamur to Celcius ketik = 2\nKonversi kelvin to Celcius ketik = 3\npilih nomer = ");
  String? pilihan = stdin.readLineSync();

  try {
    switch (pilihan) {
      case "1":
        {
          inputSuhu(func: fahrenheitToCelcius, conv: "Fahrenheit");
        }
        break;
      case "2":
        {
          inputSuhu(func: reamurToCelcius, conv: "Reamur");
        }
        break;
      case "3":
        {
          inputSuhu(func: kelvinToCelcius, conv: "Kelvin");
        }
      default:
        {
          print("kode yang dimasukkan tidak sesuai");
        }
    }
  } on Exception {
    print("Format suhu tidak valid gunakan angka dan titik!");
  } catch (e, s) {
    print("error : $e");
    print("in code : $s");
  }
}

void inputSuhu({
  double Function({required num suhu})? func,
  String? conv,
}) {
  stdout.write("Masukkan suhu = ");
  String? suhu = stdin.readLineSync()?.trim();
  double? result = func!(suhu: num.parse(suhu!));
  print("$suhu derajat $conv = ${result.toString()} derajat celcius");
}

double fahrenheitToCelcius({required num suhu}) {
  return (suhu - 32) * 5 / 9;
}

double reamurToCelcius({required num suhu}) {
  return (5 / 4) * suhu;
}

double kelvinToCelcius({required num suhu}) {
  return suhu - 273;
}
