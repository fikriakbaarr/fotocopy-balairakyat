<?php 

require '../controller/function.php';
// session_start();

$id = $_GET["id"];
$tabel = $_GET['tabel'];

if (hapus($id,$tabel) > 0 ) {
    echo (" <script>
                alert('data berhasil dihapus');
                document.location.href = 'index.php?page=data_produk';
            </script>");
} else {
    echo (" <script>
            alert('data gagal dihapus');
            document.location.href = 'index.php?page=profile';
        </script>");
}



?>