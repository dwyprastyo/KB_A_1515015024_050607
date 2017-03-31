
DOMAINS %memberikan nama lain atau tipe data pada variabel
benda = buku(judul, pengarang) ; %domain disamping menjelaskan bahwa benda samadengan buku yang memiliki judul dan pengarang
kuda(nama) ; kapal ; %kuda memiliki nama dan kapal tidak harus memiliki apa-apa.
bukubank(saldo) %buku bank harus memiliki saldo
judul, pengarang, nama = symbol %judul, pengarang dan nama bertipe symbol.
saldo = real %saldo bertipe real
PREDICATES %memberikan gambaran mengenai fakta-fakta yang ada dalam Clauses
nondeterm milik(nama,benda)%nondeterm berada di depan berarti ada kemungkinan bahwa solusi bisa lebih dari 1.
%untuk clausa diatas berarti nama memiliki benda.

CLAUSES %memberikan fakta-fakta untuk mencari hasil dari goal yang diberikan.
milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")). %klausa disamping memberikan fakta erwin memiliki buku berjudul Markesot Bertutur dengan pengarang Emha Ainun Najib.
milik(erwin, kuda(buraq)). %klausa disamping memberikan fakta bahwa erwin memiliki kuda bernama buraq.
milik(erwin, kapal). %klausa disamping memberikan fakta bawah erwin memiliki kapal.
milik(erwin, bukubank(1000)). %klausa disamping memberikan fakta bahwa erwin memiliki bukubank dengan saldo 1000.
GOAL %tujuan akhir dari program
milik(erwin, Benda). %goal disini bertujuan untuk mencari benda milik erwin , karena fakta yang ada klausa semuanya sesuai dengan
%petunjuk yang ada didomain maka goalnya akan menampilkan semua benda yang ada di klausa yaitu
%buku, kuda(buraq), kapal dan buku tabungan(1000).