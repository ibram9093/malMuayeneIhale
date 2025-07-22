<?php
include 'baglan.php';

/*doğrudantemin */


$dtid =     trim( $_POST['dtid']);
$dttarih =  trim( $_POST['dttarihi']);
$dtadi =    trim( $_POST['dtadi']);
$dtsahibi = trim($_POST['dtsahibi']);


/**dt ekle */
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['dtekle'])) {
    if (empty($dttarih) or empty($dtadi) or empty($dtsahibi)) {
        header("location:dtlist.php?durum=no");
        exit;
    } else {
        $ekle = $db->prepare("INSERT INTO dt (dttarihi, dtadi, dtsahibi) values(?,?,?)");
        $ekle->execute(array($dttarih, $dtadi, $dtsahibi));
        if ($ekle) {
            header("location:dtlist.php?durum=ok");
            exit;
        } else {
            header("location:dtlist.php?durum=bos");
            exit;
        }
    }
}
/*dt düzenleme */
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

/*dt silme */
/*
if (isset($_GET['id']) && !empty($_GET['id'])) {
    $personelsor = $db->prepare("DELETE FROM `dt` WHERE id=:id");

    $sil = $personelsor->execute(array(
        'id' => $_GET['id']
    ));

    if ($sil) {
        header("Location:dtlist.php");
        exit;
    }
}
*/