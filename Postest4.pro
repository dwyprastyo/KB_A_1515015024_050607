DOMAINS %memberikan nama lain atau tipe data pada variabel
nama,jender,pekerjaan,benda,alasan,zat = symbol %nama,jender,pekerjaan,benda,alasan,zat memiliki tipe symbol
umur=integer %umur bertipe integer

PREDICATES %memberikan gambaran mengenai fakta-fakta yang ada dalam Clauses
nondeterm orang(nama, umur, jender, pekerjaan) %orang memiliki nama,umur,jender,dan pekerjaan dengan nondeterm berada didepan yang berarti tidak peduli input maupun output.
nondeterm selingkuh(nama, nama) %nama selingkuh dengan nama.
terbunuh_dengan(nama, benda)%predikat di samping menjelaskan bahwa nama terbunuh_dengan benda.
terbunuh(nama)%nama telah terbunuh
nondeterm pembunuh(nama) %nama adalah pembunuh.
motif(alasan) %alasannya adalah motif dari pembunuhan
ternodai(nama, zat) %nama ternodai oleh suatu zat.
milik(nama, benda) %nama memiliki benda untuk membunuh
nondeterm cara_kerja_mirip(benda, benda) %benda memiliki cara_kerja_mirip dengan benda.
nondeterm kemungkinan_milik(nama, benda) %nama kemungkinan_memiliki benda.
nondeterm dicurigai(nama) %nama adalah orang yang dicurigai.
/* * * Fakta-fakta tentang pembunuhan * * */ 
CLAUSES %memberikan fakta-fakta untuk mencari hasil dari goal yang diberikan.

orang(budi,55,m,tukang_kayu). %budi adalah orang yang berumur 55 tahun memiliki jender m dan bekerja sebagai tukang kayu.
orang(aldi,25,m,pemain_sepak_bola). %aldi adalah orang yang berumur 25 tahun memiliki jender m dan bekerja sebagai pemain sepak bola.
orangg(aldi,25,m,tukang_jagal). %aldi adalah orang yang berumur 25 tahun memiliki jender m dan bekerja sebagai tukang jagal.
orang(joni,25,m,pencopet). %joni adalah orang yang berumur 25 tahun memiliki jender m dan bekerja sebagai pencopet.
selingkuh(ina,joni). %ina selingkuhan joni.
selingkuh(ina,budi). %ina selingkuhan budi.
selingkuh(siti,joni). %siti selingkuhan joni.
terbunuh_dengan(siti,pentungan). %siti terbunuh_dengan menggunakan pentungan.
terbunuh(siti). %siti adalah orang yang terbunuh.
motif(uang). %uang adalah motif pembunuhan.
motif(cemburu). %cemburu adalah motif pembunuhan.
motif(dendam). %dendam adalah motif pembunuhan.
ternodai(budi, darah). %budi ternodai dengan darah.
ternodai(siti, darah). %siti ternodai dengan darah.
ternodai(aldi, lumpur). %aldi ternodai dengan lumpur.
ternodai(joni, coklat). %joni ternodai dengan coklat.
ternodai(ina, coklat). %ina ternodai dengan coklat.
milik(budi,kaki_palsu). %budi adalah pemilik kaki palsu.
milik(joni,pistol). %joni adalah pemilik pistol.
/* * * Basis Pengetahuan * * */ 	%mencari fakta benda yang digunakan untuk membunuh.
cara_kerja_mirip(kaki_palsu, pentungan). %kaki_palsu memiliki cara_kerja_mirip pentungan.
cara_kerja_mirip(balok, pentungan). %balok memiliki cara_kerja_mirip pentungan.
cara_kerja_mirip(gunting, pisau). %gunting memiliki cara_kerja_mirip pisau.
cara_kerja_mirip(sepatu_bola, pentungan). %sepatu_bola memiliki cara_kerja_mirip pentungan.
kemungkinan_milik(X,sepatu_bola):- % X adalah orang yang kemungkinan_memiliki sepatu_bola jika
orang(X,_,_,pemain_sepak_bola).	   % X adalah orang dan bekerja sebagai pemain_sepak_bola.
kemungkinan_milik(X,gunting):- % X adalah orang yang kemungkinan_memiliki gunting jika
orang(X,_,_,pekerja_salon).    % X adalah orang dan bekerja sebagai pekerja_salon.
kemungkinan_milik(X,Benda):- % X adalah orang yang kemungkinan_memiliki benda jika X dalah pemilik benda tersebut.
milik(X,Benda).
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai semua orang yang memiliki senjata yang *
* kerjanya mirip dengan senjata penyebab siti terbunuh. *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):- % X adalah orang yang dicurigai jika
terbunuh_dengan(siti,Senjata) , %siti terbunuh_dengan menggunakan senjata
cara_kerja_mirip(Benda,Senjata) , %benda yang memiliki cara_kerja_mirip dengan senjata
kemungkinan_milik(X,Benda). % X adalah orang yang kemungkinan_memiliki benda.
/* * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai laki-laki yang selingkuh dengan siti. * %mencari selingkuhan siti
* * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):- % X adalah orang dicurigai jika
motif(cemburu), % Cemburu adalah motif pembunuhan
orang(X,_,m,_), % X adalah orang yang memiliki jender m
selingkuh(siti,X). % siti adalah selingkuhan X.
/* * * * * * * * * * * * * * * * * * * * * * *
* dicurigai perempuan yang selingkuh dengan *
* laki-laki yang juga selingkuh dengan siti *
* * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):- % X adalah orang yang dicurigai jika
motif(cemburu), % cemburu adalah motif pembunuhan
orang(X,_,f,_), % X adalah orang yang memiliki jender f
selingkuh(X,Lakilaki), % X adalah selingkuhan laki-laki
selingkuh(siti,Lakilaki). % siti adalah selingkuhan laki-laki
/* * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai pencopet yang mempunyai motif uang. *
* * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):- % X adalah orang yang di curigai jika
motif(uang), % uang adalah motif pembunuhan
orang(X,_,_,pencopet). % X adalah orang da n bekerja sebagai pencopet
pembunuh(Pembunuh):-  % pembunuh adalah pembunuh jika
orang(Pembunuh,_,_,_), % pembunuh adalah orang dan tidak peduli berapaun umurnya dan apapun jender serta pekerjaannya
terbunuh(Terbunuh), % Terbunuh adalah orang yang terbunuh
Terbunuh <> Pembunuh, /* Bukan bunuh diri */ 
dicurigai(Pembunuh), % pembunuh adalah orang yang di curigai 
ternodai(Pembunuh,Zat), %pembunuh ternodai oleh suatu zat
ternodai(Terbunuh,Zat). % orang yang terbunuh ternodai oleh suatu zat.
GOAL %tujuan dari atau hasil dari program
pembunuh(X). % X adalah pembunuh. jadi jawabannya adalah budi karena budi dan siti ternodai dengan zat yang sama yaitu darah
	     % dengan motif cemburu, karena budi cemburu dengan siti yang selingkuh dengan joni.