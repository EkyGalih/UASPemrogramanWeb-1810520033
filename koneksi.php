<?php
$koneksi = mysqli_connect("localhost","root","","dbdessertrecipe");

//cek koneksi
if (mysqli_connect_errno()) {
	echo "koneksi database gagal : ".mysqli_connect_error();
}
echo "Koneksi berhasil";
mysqli_close($koneksi);
?>