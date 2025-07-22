<?php
include 'baglan.php';

/**muayene işlemleri */

    // POST verilerini al

    $iddd = $_POST['iddd'];
    $tarih = trim($_POST['datetar']);
    $firmaadi = trim($_POST['firmaadi']);
    $faturano = trim($_POST['faturano']);
    $iknno = trim($_POST['iknno']);
    $faturasahibi =  trim($_POST['faturasahibi']) ;
    $faturasahibi1 = trim($_POST['faturasahibi1'])  ;
    $faturasahibi2 = trim($_POST['faturasahibi2'])  ;

 

/*muayene ekleme işlemi */
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['personelekle'])) {


    // Boş alan kontrolü
    if (empty($tarih) || empty($firmaadi) || empty($faturano) || empty($faturasahibi) || empty($faturasahibi1) || empty($faturasahibi2)) {
        header("Location: muayene.php?durum=burda");
        exit;
    }

    try {
        // 1. Muayene kaydı ekle
        $ekle = $db->prepare("INSERT INTO muayene (muayenetarihi, firmaadi, faturano, iknno, faturasahibi, faturasahibi1, faturasahibi2) 
                              VALUES (?, ?, ?, ?, ?, ?, ?)");
        $basarili = $ekle->execute([$tarih, $firmaadi, $faturano, $iknno, $faturasahibi, $faturasahibi1, $faturasahibi2]);

        if ($basarili) {
            // 2. İhale var mı kontrolü
            $kontrol = $db->prepare("SELECT COUNT(*) FROM ihaleler WHERE iknno = ?");
            $kontrol->execute([$iknno]);
            $ihaleVarMi = $kontrol->fetchColumn();

            if ($ihaleVarMi == 0) {
                // İhale yoksa yönlendir
                header("Location: ihaleEkle.php?iknno=" . urlencode($iknno));
                exit;
            } else {
                // İhale varsa başarılı mesajıyla yönlendir
                header("Location: muayene.php?durum=ok");
                exit;
            }
        } else {
            header("Location: muayene.php?durum=fail");
            exit;
        }

    } catch (PDOException $e) {
        error_log("Veritabanı Hatası: " . $e->getMessage());
        header("Location: muayene.php?durum=error");
        exit;
    }
}
/*personel düzenleme*/

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['perduzen'])) {

    if (empty($tarih) or empty($firmaadi) or empty($faturano) or empty($faturasahibi) or empty($faturasahibi1) or empty($faturasahibi2)) {
        header("location:muayene.php?durum=no");
        exit;
    } else {

        $guncelle = $db->prepare("UPDATE muayene SET 
        muayenetarihi=?,
        firmaadi=?,
        faturano=?,
        iknno=?,
        faturasahibi=?,
        faturasahibi1=?,
        faturasahibi2=?
        WHERE id=?");

        $duzelt = $guncelle->execute(array($tarih, $firmaadi, $faturano, $iknno, $faturasahibi, $faturasahibi1, $faturasahibi2, $iddd));

        if ($duzelt) {
            header("location:muayene.php");
            exit;
        } else {
            header("location:muayene.php?durum=bos");
            exit;
        }
    }
}
/*silme işlemi 

if (isset($_GET['id']) && !empty($_GET['id'])) {
    $personelsor = $db->prepare("DELETE FROM `muayene` WHERE id=:id");

    $sil = $personelsor->execute(array(
        'id' => $_GET['id']
    ));

    if ($sil) {
        header("Location:muayene.php");
        exit;
    }
}
*/