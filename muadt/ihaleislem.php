<?php
include 'baglan.php';

/*doğrudantemin */

$ihaleid = trim(  $_POST['id']);
$ikn =     trim(  $_POST['ikn']);
$ihalead = trim( $_POST['ihalead']);
$tarihi =  trim( $_POST['ihaletari']);



/**ihale ekle */
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['ihaleekle'])) {

    if (empty($ikn) or empty($ihalead) or empty($tarihi)) {
        header("location:ihale.php?durum=no");
        exit;
    } else {
        $ekle = $db->prepare("INSERT INTO ihaleler (iknno, ihalead, ihaletari) values(?,?,?)");
        $ekle->execute(array($ikn, $ihalead, $tarihi));
        if ($ekle) {
            header("location:ihale.php?durum=ok");
            exit;
        } else {
            header("location:ihale.php?durum=bos");
            exit;
        }
    }
}

// Muayene kayıt yaparken verilen hata sonucu ihale ekleme işlemi
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['MuaFalseihaleekle'])) {

    if (empty($ikn) or empty($ihalead) or empty($tarihi)) {
        header("location:ihale.php?durum=no");
        exit;
    } else {
        $ekle = $db->prepare("INSERT INTO ihaleler (iknno, ihalead, ihaletari) values(?,?,?)");
        $ekle->execute(array($ikn, $ihalead, $tarihi));
        if ($ekle) {
            header("location:muayene.php?durum=ok");
            exit;
        } else {
            header("location:ihale.php?durum=bos");
            exit;
        }
    }
}

// ihale düzenleme 

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['ihaleDuzenle'])) {

    if (empty($ikn) or empty($ihalead) or empty($tarihi)) {
        header("location:ihale.php?durum=no");
        exit;
    } else {

       $guncelle = $db->prepare("UPDATE ihaleler SET
            iknno=?,
            ihalead=?,
            ihaletari=?
            WHERE id=?");

        $duzelt = $guncelle->execute(array($ikn, $ihalead, $tarihi, $ihaleid));

        if ($duzelt) {
            header("location:ihale.php");
            exit;
        } else {
            header("location:ihale.php?durum=bos");
            exit;
        }
    }
}



/*dt düzenleme *//*
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['dtduzen'])) {

    if (empty($dttarih) or empty($dtadi) or empty($dtsahibi)) {
        header("location:dtlist.php?durum=no");
        exit;
    } else {

       $guncelle = $db->prepare("UPDATE dt SET
            dttarihi=?,
            dtadi=?,
            dtsahibi=?
            WHERE id=?");

        $duzelt = $guncelle->execute(array($dttarih, $dtadi, $dtsahibi, $tdid));

        if ($duzelt) {
            header("location:dtlist.php");
            exit;
        } else {
            header("location:dtlist.php?durum=bos");
            exit;
        }
    }
}

*/