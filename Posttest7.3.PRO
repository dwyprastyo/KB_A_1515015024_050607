/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */

predicates
  length_of(list,integer,integer) - procedure (i,o,i)

clauses
  length_of([], Result, Result). %sama seperti sebelumnya fakta klausa ini akan di pending sampai klausa ini mendapatkan nilai list [] dan result newcounter disamakan.
  length_of([_|T],Result,Counter):- %kemudian program akan mengecek terus klausa yang ada sampai listnya [].
	NewCounter = Counter + 1, %nilai newcounter akan terus bertambah 1 setelah melewati tahap ini.
	length_of(T, Result, NewCounter). %kemudian nilai pada klausa ini akan sama seperti nilai pada klausa pertama
					  %dan akan berubah terus selama program melewati tahap-tahap diatasnya.

goal
  length_of([1,2,3],L,0). /* start with Counter = 0 */
  %seperti sebelumnya, goal dari program ini adalah mencari nilai L dimulai dari 0 dengan list 1,2,3 dan akan menghasilkan solusi L=3