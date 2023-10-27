<?php 

   require "koneksidb.php";

   $ambilrfid = $_GET["no_kartu"];
   $tgl = date("Y-m-d H:i:s");
   
   // hapus data lama dari tabel scan_nokartu
   $koneksi->query("TRUNCATE TABLE scan_nokartu");
   
   // insert data baru ke tabel scan_nokartu
   $query = "INSERT INTO scan_nokartu (no_kartu, waktu_scan) VALUES ('$ambilrfid', '$tgl')";
   $koneksi->query($query);

   ?>
