void main(){
  var komputer1 = Komputer(); //semua atribut di class akan masuk ke objek (komputer1)
  komputer1.merek = 'Asus';
  komputer1.slotram.add(8);
  komputer1.slotpenyimpanan.add(512);
  komputer1.slotpenyimpanan.add(1024);
  komputer1.cpu = 'I7 12700H';
  komputer1.cetak(); //semua atribut dan fungsi yang ada di class Komputer bisa dipakai oleh objek (komputer1)
  print('\==================================================');
  var komp2 = Komputer(); //hasil cetak akan beda karena berdasarkan isi dari objek
  komp2.merek = 'Lenovo';
  komp2.slotram.add(8);
  komp2.slotram.add(8);
  komp2.slotpenyimpanan.add(128);
  komp2.cpu = 'I3 Gen 12';
  komp2.cetak();

  print('\==================================================');

  // var mahasiswa1 = Mahasiswa(npm: 25112233, nama: 'Adi', prodi: 'Sistem Informasi', JK: 'Laki-laki');
  // var mahasiswa1 = Mahasiswa(25112233, 'Adi', 'Sistem Informasi', 'Laki-laki');
  var mahasiswa1 = Mahasiswa(npmin: 25112233, namain: 'Adi', prodiin: 'Sistem Informasi', JKin: 'Laki-laki');
  mahasiswa1.cetakmhs();
  print('\==================================================');
  // var mahasiswa2 = Mahasiswa(npm: 25445566, nama: 'Budi', prodi: 'Informatika', JK: 'Laki-laki');
  // var mahasiswa2 = Mahasiswa(25445566, 'Budi', 'Informatika', 'Laki-laki');
  var mahasiswa2 = Mahasiswa(npmin:  25445566, namain: 'Budi', prodiin: 'Informatika', JKin: 'Laki-laki');
  mahasiswa2.cetakmhs();
}

class Komputer{
  String? merek;
  List slotram = [];
  List slotpenyimpanan = [];
  String? cpu;

  cetak(){ //function dalam class
    print('komputer ini merek $merek');
    print('komputer ini menggunakan CPU $cpu');
    for (var i = 0; i < slotram.length; i++) {
      print('komputer ini punya slot ram ke ${i+1} sebesar ${slotram[i]} GB');
    }
    for (var i = 0; i < slotpenyimpanan.length; i++) {
      print('komputer ini punya slot penyimpanan ke ${i+1} sebesar ${slotpenyimpanan[i]} GB');
    }
  }
}



class Mahasiswa{
  int? npm;
  String? nama, prodi,JK;
  // String? prodi;
  // String? JK;

  // Mahasiswa({this.npm, this.nama, this.prodi, this.JK});

  // Mahasiswa(npm,nama,prodi,JK){
  //   this.npm = npm;
  //   this.nama = nama;
  //   this.prodi = prodi;
  //   this.JK = JK;
  // }

  // Mahasiswa(this.npm,this.nama, this.prodi, this.JK);

  Mahasiswa({npmin,namain,prodiin,JKin}){
    this.npm = npmin;
    this.nama = namain;
    this.prodi = prodiin;
    this.JK = JKin;
  }

  cetakmhs(){
    print('nama: $nama');
    print('jenis kelamin: $JK');
    print('NPM: $npm');
    print('prodi: $prodi');
  }
}


