<?php 
   require "koneksidb.php";
   
   $botToken = '6126886073:AAGB6qaa8XRMiNf_q1WkcbpZdqtXDsgyH2Y';
   $ambilrfid = $_GET["no_kartu"];
   $tgl = date("Y-m-d h:i:s");
   
   //SELECT data dari tbl_pengunjung berdasarkan no_kartu yang diterima
   $query = "SELECT * FROM tbl_pengunjung WHERE no_kartu = '$ambilrfid'";
   $result = $koneksi->query($query);

   //Chat_ID
   // $chatId = '1351052142';

   //Jika data ditemukan, isi variabel dengan data dari tabel tbl_pengunjung
   if ($result->num_rows > 0) {
      $data = $result->fetch_assoc();
      $no_induk = $data["no_induk"];
      $status = $data["status"];
      $plat_masuk = $data["plat_nomor"];
      $no_kartu = $data["no_kartu"];
      $tipe_pgj = $data["tipe_pgj"];
      $pembayaran_terakhir = $data["pembayaran_terakhir"];
      $chatId = $data["chat_id"]; //ambil chat_id dari tabel tbl_pengunjung

    

      if ($status == 1) {

         // Kirim pesan ke Telegram
            $message = "Halo, berikut detail transaksi Anda:\n\nNo. Kartu: $no_kartu\nNo. Induk: $no_induk\nNama: {$data['nama']}\nFakultas: {$data['fakultas']}\nKendaraan: {$data['kendaraan']}\nSaldo: Rp $saldo\nWaktu Masuk: $tgl";

         // URL endpoint untuk mengirim pesan menggunakan Telegram Bot API
         $telegramUrl = "https://api.telegram.org/bot$botToken/sendMessage?chat_id=$chatId&text=".urlencode($message);

         // Kirim permintaan HTTP GET ke API Telegram
         $response = file_get_contents($telegramUrl);

         // Cetak respon dari API Telegram
         echo $response;

         //INSERT data ke tabel tbl_rekap_pgj
         $query_insert = "INSERT INTO tbl_rekap_pgj (no_induk, status, plat_masuk, waktu_masuk, transaksi, no_kartu, keterangan)
         VALUES ('$no_induk', '$status', '$plat_masuk', '$tgl', '$biaya', '$no_kartu', '')";
         
         // INSERT data ke filed keterangan tabel tbl_rekap_pgj
         if ($tipe_pgj == 0) {
            $kendaraan = $data["kendaraan"];
            if ($kendaraan == "motor") {
                $keterangan = "1000";
            } elseif ($kendaraan == "mobil") {
                $keterangan = "3000";
            }
        } elseif ($tipe_pgj == 1) {
            $keterangan = "0";
        }
        
        $query_insert = "INSERT INTO tbl_rekap_pgj (no_induk, nama, status, plat_masuk, waktu_masuk, no_kartu, keterangan)
            VALUES ('$no_induk', '$nama', '$status', '$plat_masuk', '$tgl', '$no_kartu', '$keterangan')";
        }
         $koneksi->query($query_insert);
            
         
      }
   


$response = query("SELECT * FROM tbl_pengunjung WHERE tbl_pengunjung.no_kartu='$ambilrfid'");

if($response!=null){
    $row = $response[0]; //MENGAMBIL DATA BARIS PERTAMA
    if($row['tipe_pgj'] == 0){
        $biaya = 0;
    } elseif($row['tipe_pgj'] == 1){
        if($row['jenis_kendaraan'] == 'motor'){
            $biaya = 1000;
        } elseif($row['jenis_kendaraan'] == 'mobil'){
            $biaya = 3000;
        }
    }
         
    if ($row['saldo'] >= $biaya) {
        $result = json_encode($row); //MENJADIKAN JSON DATA
        echo $result;
        //UPDATE variabel status pada tabel tbl_pengunjung menjadi 0
        $query_update = "UPDATE tbl_pengunjung SET status = 0 WHERE no_kartu = '$ambilrfid'";
        $koneksi->query($query_update);
    } else {
        $result = json_encode($row); //MENJADIKAN JSON DATA
        echo $result;
    }
} else {
    //KIRIM DATA PALSU KE ARDUINO JIKA REQUEST RFID TIDAK TERDAFTAR
    $datadumy=array('id_pengunjung'=>'0','no_kartu'=>$ambilrfid,'nama'=>'Tidak Terdaftar','no_induk'=>'Tidak Terdaftar','fakultas'=>'Tidak Terdaftar','saldo'=>'0');
    $result = json_encode($datadumy); //MENJADIKAN JSON DATA
    echo $result;
}




   



 ?>