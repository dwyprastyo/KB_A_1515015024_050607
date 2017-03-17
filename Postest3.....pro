PREDICATES %memberikan gambaran mengenai fakta-fakta yang ada dalam Clauses
nondeterm dapat_membeli(symbol, symbol) % dapat_membeli disini memiliki 1 nilai yaitu symbol dimana symbol dapat_membeli symbol, disini symbol masih belum jelas entah itu orang atau mobil
nondeterm orang(symbol) % symbol itu adalah orang
nondeterm mobil(symbol) % symbol itu adalah mobil
suka(symbol, symbol) % symbol menyukai symbol
dijual(symbol) %symbol dijual

CLAUSES %memberikan fakta-fakta untuk mencari solusi dari Goal yang diberikan
dapat_membeli(X,Y):- % X dapat_membeli Y
orang(X), mobil(Y), suka(X,Y), dijual(Y). % Jika X itu adalah orang, Y itu adalah mobil  dan X menyukai Y dan Y itu dijual.

orang(nur).  % nur adalah orang	
orang(yudi). % yudi adalah orang
orang(dian). %dian adalah orang	
orang(heni). % heni adalah orang
mobil(atoz). % atoz adalah mobil	
mobil(kijang). % kijang adalah mobil
suka(dian, atoz). %dian suka atoz , nah dari fakta ini sudah mulai terlihat bahwa X dan Y itu adalah dian dan atoz , tapi masih belum pasti karena belum tentu atoz dijual	
suka(yudi, pecel). % yudi suka pecel
suka(heri, buku).  % heri suka buku
suka(nur, komputer). %nur suka komputer
dijual(kijang).	% mobil kijang dijual	
dijual(atoz).	%mobil atoz dijual , nah dari fakta ini sudah pasti X dan Y adalah dan atoz karena dari fakta sebelumnya sudah terlihat bahwa dian suka atoz dan fakta yang ini menunujukan bahwa atoz dijual
dijual(buku). %buku dijual

GOAL %Tujuan dari program 
dapat_membeli(Siapa,Apa). %Goal nya Siapa dapat_membeli apa , jawabannya adalah dian dapat membeli atoz, karena sudah sesuai dengan fakta diatas yaitu X adalah orang(dian), Y adalah mobil(atoz),
			  %X menyukai Y(dian menyukai atoz) dan Y dijual(atoz dijual). 
%suka(_,Apa).
%suka(Siapa,_).
%dapat_membeli(_,Apa).
%dapat membeli(Siapa,_).