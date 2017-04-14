/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */

predicates
  length_of(list,integer) - procedure (i,o)

clauses
  length_of([], 0). %untuk sementara fakta klausa ini akan di pending sampai klausan ini mendapatkan nilai listnya [].
  length_of([_|T],L):- 
	length_of(T,TailLength), %kemudian nilai L akan terus berubah setiap melewati tahap ini
	L = TailLength + 1. %yaitu tahap L=tailength + 1, sebenarnya L dengan TailLength memiliki nilai yang sama
			    %yaitu nilai awal 0.

goal
  length_of([1,2,3],L). %goalnya bertujuan untuk mencari nilai L dengan nilai length [1,2,3] dan jika di run
  %menghasilkan solusi L=3
