<?php 	
    error_reporting(0);//Syntax mengatasi error Notice
    //Simpan dengan nama file koneksidb.php

    $server       = ini_get("mysql.default_host"); //Kalau X sama dalam 1 
    //$server       = "localhost";
    $user         = "root";
    $password     = "";
    $database     = "db_gate"; //Nama Database di phpMyAdmin

    $koneksi      = mysqli_connect($server, $user, $password, $database);

    function query($query) {
        global $koneksi;
        $result = mysqli_query($koneksi, $query);
        $box = [];
        while( $sql = mysqli_fetch_assoc($result) ){
            $box[] = $sql;
        }
        return $box;
    }

 ?>