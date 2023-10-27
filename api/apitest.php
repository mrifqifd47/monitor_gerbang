<?php 
   
   require "koneksidb.php";

   $ambilrfid	 = $_GET["no_kartu"];
   $tgl=date("Y-m-d h:i:s");


		
		$sql      = "UPDATE tb_gate SET 
					time	= '$tgl', 
					rfid	= '$ambilrfid'";
		$koneksi->query($sql);
			
		//INSERT DATA REALTIME PADA TABEL tb_save  	
	
		// $sqlsave = "INSERT INTO tb_simpan (tanggal, rfid) VALUES ('" . $tgl . "', '" . $ambilrfid . "')";
		// $koneksi->query($sqlsave);

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
     	



 ?>