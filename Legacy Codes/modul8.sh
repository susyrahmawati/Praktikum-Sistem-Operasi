#! /bin/bash

creatdata(){
	echo "Masukkan Nama : "
	read nama;
	echo "Masukkan npm : "
	read npm;
	echo "Masukkan nama Program studi : "
	read jurusan;
	echo "Masukkan nama Fakultas : "
	read fakultas;	
}
ln 
viewdata(){
	if [ $creatdata != $nama  ]
	then 
	echo "data tidak ada"
	else
	printf "Nama : "$nama"\nNpm : "$npm"\nProgram Studi : "$jurusan"\nFakultas : "$fakultas"\n\n"
	fi
}

updatedata(){
	echo "Masukkan nama yang datanya ingin dicari : "
	read cari;
	if [ $cari == $nama ]
	then
	echo "Masukkan Nama : "
	read nama;
	echo "Masukkan npm : "
	read npm;
	echo "Masukkan nama Program studi : "
	read jurusan;
	echo "Masukkan nama Fakultas : "
	read fakultas;	
	else
	echo "Data tidak ada"
	fi
}
select pilihan in "Input Data Mhs" "View Data Mhs" "Update Data Mhs" "Exit"
do
case $pilihan in 
	"Input Data Mhs")
	creatdata
	;;

	"View Data Mhs")
	viewdata
	;;

	"Update Data Mhs")
	updatedata
	;;

	"Exit")
	break
	;;
*) echo "Tidak dalam program"
;;
esac
done
