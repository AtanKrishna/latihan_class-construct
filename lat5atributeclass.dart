void main() {
  var buku1 = Book();
  buku1.title = 'ini hanya mimpi';
  buku1.author = 'Deni';
  buku1.year = 1999;

  var buku2 = Book();
  buku2.title = 'hidup tidak seindah mimpi';
  buku2.author = 'garry';
  buku2.year = 2022;
  buku2.isBorrowed = true;
  
  var buku3 = Book();
  buku3.title = 'zona nyaman';
  buku3.author = 'Merry';
  buku3.year = 2024;
  

  var perpuswd = Library();
  perpuswd.addbook(buku1);
  perpuswd.addbook(buku2);
  perpuswd.addbook(buku3);
  
  perpuswd.displaybooks();
  perpuswd.borrowbook('zona nyaman');
  perpuswd.displaybooks();
}

//kelas Book 
class Book {
  String? title; // Judul buku
  String? author; // Nama penulis buku
  int? year; // Tahun terbit
  bool? isBorrowed = false; // Status peminjaman buku

//meminjam buku
borrowbook() {
   if (isBorrowed = false) {
    isBorrowed = true;
    print('Buku berhasil dipinjam.');
    } else {
    print('Buku sedang dipinjam.');
    }
  }
  
  cetak() {
    print('Judul Buku: $title');
    print('Nama Penulis: $author');
    print('Tahun Terbit: $year');
    print('Status Peminjaman: ${isBorrowed == true ? "Dipinjam" : "Tersedia"}');
  }
}
//kelas Library untuk mengelola daftar buku
class Library {
  List<Book> books = [];
addbook(Book book) {
    books.add(book);
    print('Buku berhasil ditambahkan ke perpustakaan.');
  }
//metode untuk menampilkan daftar buku
  displaybooks(){
    for (var element in books) {

      print('Judul Buku: ${element.title} | Nama Penulis: ${element.author} | Tahun Terbit: ${element.year} | Status Peminjaman: ${element.isBorrowed == true ? "Dipinjam" : "Tersedia"}');
      print('-------------------');
    }
  }
  //metode untuk meminjam buku berdasarkan judul
  borrowbook(String title) {
    for (var element in books) {
      if (element.title == title) {
        element.isBorrowed = true;
        print('Buku dengan judul ${element.title} sudah dipinjam.');
        return;
      }
    }
    
  }
}
