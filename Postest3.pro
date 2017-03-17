DOMAINS %memberikan nama lain atau tipe data pada variabel
merek,warna = symbol % merek dan warna beritipe symbol
usia = byte %usia bertipe byte
harga, kilometer = ulong %harga dan kilometer bertipe ulong

PREDICATES %memberikan gambaran atau keterangan mengenai fakta-fakta yang ada dalam Clauses
nondeterm mobil(merek,kilometer,usia,warna,harga) 
%predicates di atas menjelaskan bahwa mobil memeliki merek,kilometer,usia,warna serta harga.

CLAUSES  %memberikan fakta-fakta untuk mencari solusi dari Goal yang diberikan
mobil(atoz,130000,3,merah,120000000).
mobil(karimun,90000,4,silver,100000000).
mobil(ceria,8000,1,hitam,75000000).
%Clauses ditas menjelaskan merek,kilometer,usia,warna serta harga dari masing-masing mobil

GOAL %tujuan atau hasil akhir dari program
mobil(karimun, 90000,4, silver, 100000000). 
%dari goal yang ingin di cari yaitu mobil karimun, yang nantinya sebelum sampai di goal, program akan mengecek atau
%menelusuri fakta-fakta yang di sediakan dan sesuai dengan goal atau tujuan dari program.
%dimana pada goal diatas akan menunjukan hasil "YES" karena goal yang dicari sesuai dengan fakta yang ada disebutkan yaitu
%mobil(karimun,90000,4,silver,100000000).
