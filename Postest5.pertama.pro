DOMAINS %memberikan nama lain atau memberikan parameter pada variabel
orang = orang(nama,alamat) %orang berobject jamak yaitu nama dan alamat.
nama = nama(pertama,kedua) %nama berobject jamak yaitu pertama dan kedua. 
alamat = alamat(jalan,kota_kab,propinsi) %alamat berobject jamak yaitu jalan, kota_kab, dan propinsi.
jalan = jalan(nama_jalan,nomor) %jalan berobject jamak yaitu nama_jalan dan nomor.
kota_kab,propinsi,nama_jalan = string %kota_kab,propinsi,nama_jalan bertipe string.
pertama,kedua = symbol %pertama dan kedua bertipe symbol.
nomor = integer %nomor bertipe integer.

GOAL %tujuan akhir dari program.
P1 = orang(nama(diena,fatihah),alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),
P1 = orang(nama(_,fatihah),Alamat),
P2 = orang(nama(nur,fatihah),Alamat),
write("P1=",P1),nl,
write("P2=",P2),nl.

%write pada P1 akan menampilkan isi dari P1 yang bernama diena beserta alamatnya.
%write pada P2 akan menampilkan isi dari P2 yang bernama nur beserta alamatnya.
%kemudian P1 akan menampilkan orang yang memiliki nama belakang fatihah maka akan muncul data 2 orang yaitu diena dan nur. 