import 'dart:io';

void main(){
  var jalan = true;
  var perpustakaan = Library();
  
  var buku1 = Book();
  buku1.title = 'Habis Gelap Terbitlah Terang';
  buku1.author = 'RA.Kartini';
  buku1.tahun = 1911;

  var buku2 = Book();
  buku2.title = 'Rich Dad Poor Dad';
  buku2.author = 'Robert T.Kiyosaki';
  buku2.tahun = 1997;
  
  var buku3 = Book();
  buku3.title = 'The Psychology of Money';
  buku3.author = 'Morgan Housel';
  buku3.tahun = 2020;

  perpustakaan.addbook(buku1);
  perpustakaan.addbook(buku2);
  perpustakaan.addbook(buku3);



pinjam(){
  stdout.write('Masukkan judul buku yang ingin dipinjam: ');
  var inputjudul = (stdin.readLineSync()!);

    if (inputjudul == 'Habis Gelap Terbitlah Terang') {
    perpustakaan.borrowBook('Habis Gelap Terbitlah Terang');
    print('berhasil meminjam buku : Habis Gelap Terbitlah Terang');
  } else if (inputjudul == 'Rich Dad Poor Dad') {
    perpustakaan.borrowBook('Rich Dad Poor Dad');
    print('berhasil meminjam buku : Rich Dad Poor Dad');
  } else if (inputjudul == 'The Psychology of Money') {
    perpustakaan.borrowBook('The Psychology of Money');
    print('berhasil meminjam buku : The Psychology of Money');
  } else {
    print('input tidak valid');
  }
}



keluar(){
  exit(0);
}



  while (jalan=true) {
  print('Jumlah Buku: ${perpustakaan.books.length}');
  perpustakaan.displayBooks();

  print('\n================================');
  print('Sistem Pinjam Buku');
  print('================================');
  print('1. Pinjam Buku');
  print('2. Keluar');

  stdout.write('Pilih menu (1/2):');
  int pilihan = int.parse(stdin.readLineSync()!);
  switch(pilihan) {
      case 1 :
      pinjam();
      case 2 :
      keluar();
  }
}
}


class Book {
  String? title,author;
  int? tahun;
  bool isborrowed = false;

  borrowbook(){
    if (isborrowed == true) {
      print('Buku sudah dipinjam');
    } else {
      isborrowed = true;
      print('Buku siap dipinjam');
    }
  }
}


class Library {
  List<Book> books= []; //daftar buku yang ada di perpus
  addbook(Book book){
  books.add(book);
  }
  displayBooks() {
    for (var i = 0; i < books.length; i++) {
      print('Judul Buku: ${books[i].title}');
      print('Penulis Buku: ${books[i].author}');
      print('Tahun Terbit: ${books[i].tahun}');
      print('Status: ${books[i].isborrowed ==true ? 'Dipinjam' : 'Tersedia'}');
      print('------------------------------');
    }
  }
  borrowBook(String title) { // meminjam buku berdasarkan judul buku
    for (var i = 0; i < books.length; i++) {
      print(books[i]);
      if(books[i].title == title) {
        books[i].borrowbook();
        return;
      }
    }
    // print('Buku tidak ditemukan');
  }
}