<?php 
   
   require "koneksidb.php";

   $botToken = '6126886073:AAGB6qaa8XRMiNf_q1WkcbpZdqtXDsgyH2Y';
   $ambilrfid = $_GET["no_kartu"];
   $tgl = date("Y-m-d h:i:s");
   
   // Cari id_rekap yang sesuai dengan no_kartu
$query = "SELECT id_rekap, tbl_pengunjung.chat_id FROM tbl_rekap_pgj INNER JOIN tbl_pengunjung ON tbl_rekap_pgj.no_kartu = tbl_pengunjung.no_kartu WHERE tbl_rekap_pgj.no_kartu = '$ambilrfid' AND tbl_rekap_pgj.waktu_keluar IS NULL";
$result = $koneksi->query($query);

if ($result->num_rows > 0) {
    $data = $result->fetch_assoc();
    $chatId = $data["chat_id"]; //ambil chat_id dari tabel tbl_pengunjung
    $id_rekap = $data["id_rekap"];
   
	// Check status pada tabel tbl_pengunjung
    $query2 = "SELECT status FROM tbl_pengunjung WHERE no_kartu = '$ambilrfid'";
    $result2 = $koneksi->query($query2);

    if ($result2->num_rows > 0) {
        $row2 = $result2->fetch_assoc();
        $status = $row2["status"];

        // Update variabel waktu_keluar pada tabel tbl_rekap_pgj jika status bernilai 0
        if ($status == 0) {
            $sql = "UPDATE tbl_rekap_pgj SET waktu_keluar = '$tgl' WHERE id_rekap = '$id_rekap'";
            $koneksi->query($sql);

            // Kirim pesan ke Telegram
            $message = "\nWaktu Keluar: $tgl";

         // URL endpoint untuk mengirim pesan menggunakan Telegram Bot API
         $telegramUrl = "https://api.telegram.org/bot$botToken/sendMessage?chat_id=$chatId&text=".urlencode($message);

         // Kirim permintaan HTTP GET ke API Telegram
         $response = file_get_contents($telegramUrl);

         // Cetak respon dari API Telegram
         echo $response;

        }
    }
  }

    


		//MENJADIKAN JSON DATA
		//$response = query("SELECT * FROM tb_monitoring")[0];
		$response = query("SELECT * FROM  tbl_pengunjung WHERE tbl_pengunjung.no_kartu='$ambilrfid'" )[0];
      	$result = json_encode($response);
		if($response!=null){
		echo $result;
		}else{
		//KIRIM DATA PALSU KE ARDUINO JIKA REQUEST RFID TIDAK TERDAFTAR
		//echo "{"id_pengunjung":"101","no_kartu":"A4F12BB","nama":"Muhammad Rifqi Fadhilah","no_induk":"2147483647","fakultas":"TEKNIK","kategori":"3","status":"1","plat_nomor":"F 1114 FF","saldo":"0","date_add":"2022-08-17 20:26:00","tipe_pgj":"0"}";
		$datadumy=array('id_pengunjung'=>'0','no_kartu'=>$ambilrfid,'nama'=>'Tidak Terdaftar','no_induk'=>'Tidak Terdaftar','fakultas'=>'Tidak Terdaftar','saldo'=>'0');
		$result = json_encode($datadumy); //MENJADIKAN JSON DATA
		echo $result;
		
		}

    // Update status pada tabel tbl_pengunjung
    $sql2 = "UPDATE tbl_pengunjung SET status = '1' WHERE no_kartu = '$ambilrfid'";
    $koneksi->query($sql2);
	


 ?>