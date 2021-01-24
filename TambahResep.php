<?php 
// koneksi database
include 'koneksi.php';

// menangkap data yang di kirim dari form
$NamaResep = $_POST['NamaResep'];
$Durasi = $_POST['Durasi'];
$Porsi = $_POST['Porsi'];
$BahanMakanan = $_POST['BahanMakanan'];
$LangkahMasak = $_POST['LangkahMasak'];

// menginput data ke database
mysqli_query($koneksi,"insert into resep values('','','$NamaResep','$Durasi','$Porsi','BahanMakanan','LangkahMasak')");

// mengalihkan halaman kembali ke index.php
header("location:index.php");

?>