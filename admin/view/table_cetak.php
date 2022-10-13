<?php

require '../controller/function.php';
// $product = query("select product.id_product, user.id_user, product.nama, product.harga,product.gambar,user.nama as username,jumlah_barang, id_order,tanggal from product, user, orders where orders.id_product = product.id_product and orders.id_user = user.id_user");
$product = query("SELECT * FROM cetak");
?>
<main>
                    <div class="container-fluid">

                    	<div class="row">
                        <div class="col-md-12">
                            <div class="card strpied-tabled-with-hover" style="margin-top: 15px;">
                                <div class="card-header ">
                                	<h4>Table Cetak</h4>
                                    
                                </div>
                                <div class="card-body table-full-width table-responsive">
                                    <table class="table table-hover table-striped text-center">
                                        <thead style="text-align: center;">
                                                <th style="text-align: center;">No</th>
                                                <th style="text-align: center;">Nama</th>
                                                <th style="text-align: center;">Email</th>
                                                <th style="text-align: center;">nomor</th>
                                                <th style="text-align: center;">jenis</th>
                                                <th style="text-align: center;">jumlah</th>
                                                <th style="text-align: center;">tanggal</th>
                                                <th></th>
                                                <th></th>
                                        </thead>
                                        <tbody>

                                           <?php $i=1; foreach ($product as $data) : ?>
                                            <tr>
                                                
                                                <td><?= $i; ?></td>
                                                <!-- <td><img src="../images/cetak/<?=$data['gambar'] ?>" alt=""></td> -->
                                                <td><?= $data['nama'] ?></td>
                                                <td><?= $data['email'] ?></td>
                                                <td><?= $data['nomor'] ?></td>
                                                <td><?= $data['jenis'] ?></td>
                                                <td><?= $data['jumlah'] ?></td>
                                                <td><?= $data['tanggal'] ?></td>
                                                <!-- <td>
                                                	<h5 style="color: green;">active</h5>
                                                </td> -->
                                                <td style="text-align: center;">
                                                    <a href="./controller/download.php?file=<?= $data['gambar'] ?>" class="btn btn-success " style="margin-right: 5px;"><i class="fas fa-download"></i></a>
                                                    <a href="index.php?tabel=cetak&page=hapus&id=<?= $data['id_cetak'] ?>"  class="btn btn-danger "><i class="fas fa-trash-alt"></i></a>
                                                </td>
                                            </tr>
                                            <?php $i++; endforeach; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                </main>