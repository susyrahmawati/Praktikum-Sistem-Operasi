#!/bin/sh
z=0
function hotel(){
   clear
   echo "============================================================"
   echo "| 		        WELCOME	              		    |"
   echo "|	            Sitem Reservasi 			    |"
   echo "| 	        Hotel Majapahit Surabaya		    |"
   echo "|	 	[Informasi Tentang Hotel]	 	    |"
   echo "============================================================"
   echo "Hotel Majapahit berada di Jalan Tunjungan No. 65, Surabaya. "
   echo "Jika wisatawan datang dari Bandara Internasional Juanda,    "
   echo "memerlukan waktu sekitar 30 menit berkendara untuk tiba     "
   echo "di penginapan tersebut. Sementara, jika ingin berkunjung    "
   echo "ke Monumen Kapal Selam, hanya perlu berjalan kaki selama    " 
   echo "12 menit. Di samping itu, akomodasi ini juga berlokasi      "
   echo "dekat dengan Tunjungan Plaza, mall terbesar di Surabaya,    "
   echo "dengan jarak hanya 340 meter.                               "
   echo "============================================================"
}
function tipe(){
   clear
   echo "============================================================"
   echo "| 		        WELCOME	              		    |"
   echo "|	            Sitem Reservasi 			    |"
   echo "| 	        Hotel Majapahit Surabaya		    |"
   echo "|	 	      [Tipe Kamar]     	 		    |"
   echo "============================================================"
   echo "|1. Kamar Classic Twin      | 2 orang   | Rp 1.056.451      |"
   echo "|2. Kamar Classic Twin      | 1 orang   | Rp 953.601        |"
   echo "|3. Kamar Classic King      | 2 orang   | Rp 1.397.701      |"
   echo "|4. Kamar Classic King      | 1 orang   | Rp 1.056.451      |"
   echo "|5. Suite Deluxe King       | 2 orang   | Rp 1.647.701      |"
   echo "|6. Suite Deluxe King       | 1 orang   | Rp 1.306.450      |"
   echo "|7. Suite Deluxe Twin       | 2 orang   | Rp 1.442.001      |"
   echo "|8. Suite Deluxe Twin       | 1 orang   | Rp 1.306.450      |" 
   echo "|9. Suite Majapahit King    | 2 orang   | Rp 2.359.300      |"
   echo "|10. Suite Majapahit King   | 1 orang   | Rp 2.256.450      |"                                             
   echo "============================================================"
}
function pemesanan(){
   let z=$z+1
   echo "============================================================"
   echo "| 		        WELCOME	              		    |"
   echo "|	            Sitem Reservasi 			    |"
   echo "| 	        Hotel Majapahit Surabaya		    |"
   echo "|	 	    [Form Pemesanan]   	 		    |"
   echo "============================================================"
   echo "No Nota                                : "
   read no[$z]
   echo "Nama Lengkap                           : "
   read nama[$z]
   echo "No. telp                               : "
   read telp[$z];
   echo "Email                                  : "
   read email[$z];
   echo "Tipe Kamar (gunakan _ untuk spasi)     : "
   read kamar[$z]
   echo "Harga                                  : "
   read harga[$z];
   echo "Tanggal Chek in (dd/mm/yyyy)           : "
   read chekin[$z];
   echo "Tanggal Chek out (dd/mm/yyyy)          : "
   read chekout[$z];
   echo "Total Hari                             : "
   read hari[$z]
   let total[$z]=${hari[$z]}*${harga[$z]}
   echo "Total Pembayaran                       : "
   echo "${total[$z]}"		
   echo "============================================================"   
   read
}
function view(){
			echo "============================================================"
			echo "|                       WELCOME                            |"
  			echo "|                   Sitem Reservasi                        |"
 			echo "|              Hotel Majapahit Surabaya                    |"
			echo "============================================================"
	for((a=1;a<=z;a++))
            do
                        echo "- - -Pemesanan ke-$a- - -"
                        echo "No Nota             : ${no[$a]}"
                        echo "Nama Lengkap        : ${nama[$a]}"
                        echo "No. Telp            : ${telp[$a]}"
                        echo "Email               : ${email[$a]}"
                        echo "Tipe Kamar          : ${kamar[$a]}"
			echo "Harga               : Rp.${harga[$a]}"
			echo "Tanggal Chek in     : ${chekin[$a]}"
			echo "Tanggal Chek out    : ${chekout[$a]}"
			echo "Total Pembayaran    : Rp.${total[$a]}"
            done
}
function search(){
	echo -n "Masukkan Nomor Nota : "
            read cari
            a=0
            b=0
            while [ $a -le $z ] && [ $b == 0 ]
            do
                        let a=$a+1
                        if [ "${no[a]}" == $cari ]
                        then
                                    b=1
                        fi
            done
}
function cetak(){
            search
            if [ $a -le $z ]
            then
			echo "============================================================"
  		 	echo "|                        WELCOME                           |"
   			echo "|                    Sitem Reservasi                       |"
   			echo "|                 Hotel Majapahit Surabaya                 |"
   			echo "============================================================"
                        echo "No Nota           : ${no[$a]}"
                        echo "Nama Lengkap      : ${nama[$a]}"
                        echo "No. Telp          : ${telp[$a]}"
                        echo "Email             : ${email[$a]}"
                        echo "Tipe Kamar        : ${kamar[$a]}"
			echo "Harga             : Rp.${harga[$a]}"
			echo "Tanggal Chek in   : ${chekin[$a]}"
			echo "Tanggal Chek out  : ${chekout[$a]}"
			echo "Total Pembayaran: Rp.${total[$a]}"
			echo "============================================================"
            else
                        echo "Data Tidak Ada"
            fi
}
function pembayaran(){
	cetak
			echo "----------------------------------------------------"
			echo -n "Masukkan nominal pembayaran	: Rp."
			read bayar[$a]
			if [ ${bayar[$a]} -lt ${total[$a]} ]
			then 
			echo "--------------- Uang tidak cukup -------------------"
			elif [ ${bayar[$a]} -eq ${total[$a]} ]
			then
			echo "-------------------- Uang Cukup --------------------"
			else
			let kembali[$a]=${bayar[$a]}-${total[$a]}
			echo "Kembalian 			: Rp.${kembali[$a]}"
			fi
	
	
}
function folder(){
      echo "Nama Folder yang ingin dibuat?"
      read folder
      mkdir $folder

      echo "AWESOME!!!! Folder $folder sudah jadi"
      echo "Cek Lokasi folder?(y/t)"
      read cek

      if [ $cek == y ]
      then
         ls -l
      fi
      
      if [ $cek != y ]
      then
         echo "Okd!"
      fi
      read
}
function ubah(){
	cetak
	echo "========================================================="
	echo "Tipe Kamar (gunakan _ untuk spasi) : "
   	read kamar[$z]; 
   	echo "Harga         			 : "
   	read harga[$z];
   	echo "Tanggal Chek in			 : "
   	read chekin[$z];
   	echo "Tanggal Chek out			 : "
   	read chekout[$z];
   	echo "Total Hari 			 : "
   	read hari[$z]
   	let total[$z]=${hari[$z]}*${harga[$z]}
   	echo "Total Pembayaran			 : ${total[$z]}"
		
}
function hapus(){
	search
	if [ $a -gt $z ]
            then
                        echo "Data Tidak Ada"
            else
                        while [ $a -lt $z ]
                        do
                                    let b=$a+1
                                    no[$a]=${no[$b]}
                                    nama[$a]=${nama[$b]}
                                    telp[$a]=${telp[$b]}
                                    email[$a]=${email[$b]}
                                    kamar[$a]=${kamar[$b]}
                                    harga[$a]=${harga[$b]}
                                    chekin[$a]=${chekin[$b]}
                                    chekout[$a]=${chekout[$b]}
                                    hari[$a]=${hari[$b]}
                                    total[$a]=${total[$b]}
                                    let a=$a+1
                        done
                        let z=$z-1
                        echo "Data $cari Berhasil Dihapus"
            fi
}
read
while :;
do
   echo "============================================================"
   echo "| 		        WELCOME                             |"
   echo "|	            Sitem Reservasi                         |"
   echo "| 	        Hotel Majapahit Surabaya                    |"
   echo "============================================================"
   echo "|1. Informasi Tentang Hotel                                 |"
   echo "|2. Informasi Tipe Kamar                                    |"
   echo "|3. Pemesanan                                               |"
   echo "|4. Pembayaran                                              |"
   echo "|5. Lihat Data Pemesanan                                    |"
   echo "|6. Ubah Data Pemesanan                                     |"
   echo "|7. Hapus Data Pemesanan                                    |"
   echo "|8. folder                                                  |"
   echo "|9. Exit                                                    |"
   echo "============================================================"

echo -n " Silahkan Pilih menu : "
read pil

if [ $pil -eq 1 ]
   then
      hotel
elif [ $pil -eq 2 ]
   then
      tipe
elif [ $pil -eq 3 ]
   then
      pemesanan
elif [ $pil -eq 4 ]
   then
      pembayaran
elif [ $pil -eq 5 ]
   then
      if [ $z -lt 1 ]
                        then
                                    echo "Data kosong "
                        else
                                    view
                        fi
elif [ $pil -eq 6 ]
   then
      ubah
elif [ $pil -eq 7 ]
   then
      hapus
elif [ $pil -eq 8 ]
   then
      folder	
elif [ $pil -eq 9 ]
   then
      echo "Terima Kasih"
      break
else
exit
fi
done
