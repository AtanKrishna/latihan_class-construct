void main () {
// 1,2 var baju1 = pakaian('biru','celana');
// 3 var baju1 = pakaian(jenisinput: 'celana', warnainput:'biru');
var baju1 = pakaian(jenis: 'celana', warna: 'biru'); //4
  baju1.cetak();

}

class pakaian{
  String? warna, jenis;

  // //1. positional indirect argument
  // pakaian(warnainput,jenisinput){
  //   this.warna = warnainput;
  //   this.jenis = jenisinput;
  // }

  // //2. positional direct argument
  // pakaian(this.warna, this.jenis);

  // //3. named indirect argument
  // pakaian({warnainput,jenisinput}){
  //   this.warna = warnainput;
  //   this.jenis = jenisinput;
  // }

  //4. named direct argument
  pakaian({this.jenis,this.warna});


  cetak(){
    print('pakaian ini adalah $jenis');
    print('pakaian ini berwarna $warna');
  }


  
}